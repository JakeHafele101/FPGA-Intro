`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2022 11:03:53 PM
// Design Name: 
// Module Name: uart_rx_full_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_rx_full_test(

    );
    
    parameter T = 2; //clk period
    
    parameter DVSR     = 1,  //counter for baud rate of 2 (T/BAUD)
              DVSR_BIT = 4,  //number of bits for DVSR counter for baud rate tick generator
              FIFO_W   = 2;  //number of address bits for words in FIFO buffer              
    
    //test inputs
    reg clk, reset;
    reg rx;
    reg rd_uart;
    reg [1:0] data_num, stop_num, par;
    
    //test interconnects 
    
    //test outputs
    wire tick, rx_done_tick;
    wire [7:0] rx_data_out;
    wire rx_empty, rx_full;
    wire [7:0] rd_data;
    wire par_err, frm_err, over_err;
    
    baud_rate_generator #(.M(DVSR), .N(DVSR_BIT))baud_gen(.i_clk(clk), .i_reset(reset), .o_count(), .o_baud_tick(tick));
        
    uart_rx_full rx_unit(.i_clk(clk), .i_reset(reset), .i_rx(rx), .i_s_tick(tick), .i_data_num(data_num), .i_stop_num(stop_num), 
                         .i_par(par), .o_err({frm_err, par_err}), .o_rx_done_tick(rx_done_tick), .o_data(rx_data_out));
    
    FIFO_full #(.B(DBIT), .W(FIFO_W)) fifo_rx(.i_clk(clk), .i_reset(reset), .i_wr(rx_done_tick), .i_rd(rd_uart), .i_wr_data(rx_data_out), 
                                         .o_empty(rx_empty), .o_full(rx_full), .o_rd_data(rd_data));

    
    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    initial begin
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
    end
    
    initial begin
        rx = 1'b1;
        data_num = 2'b00;
        stop_num = 2'b00;
        par = 2'b00;
        rd_uart = 1'b0;
        @(negedge clk);

        $stop;
    end
    
    /* receive task to load rx one bit at a time
        input [7:0] data_in: data bits to transmit to rx unit one at a time after start bit. can load 6, 7, or 8 bits based on data_bits input
        input [3:0] data_num: should be 6,7, or 8 to determine amount of times data bits sent in for loop
        input [1:0] parity: if MSB is 1, then parity bit is sent. parity bit sent is LSB of parity
        input [5:0] stop_tick: can be 16, 24, or 32. specifies length of stop bits at end of recieve
    */
    task receive(input [7:0] data_in, input [3:0] data_num, input [1:0] parity, input [5:0] stop_tick);
        integer i;
        begin
            rx = 1'b1; //idle
            repeat(16) @(negedge tick);
            rx = 1'b0; //start bit
            repeat(16) @(negedge tick);
            
            for(i = 0; i < data_num; i = i + 1) //load data bits
                begin
                    rx = data_in[i];
                    repeat(16) @(negedge tick);
                end
            
            if(parity[1] == 1)
                begin
                    rx = parity[0];
                    repeat(16) @(negedge tick);
                end

            rx = 1'b1; //stop bit
            repeat(stop_tick) @(negedge tick);
        end
    endtask
    
    task read_FIFO();
        begin
            repeat(1) @(negedge clk);
            rd_uart = 1'b1;
            repeat(1) @(negedge clk);
            rd_uart = 1'b0;
            repeat(2) @(negedge clk);
        end
    endtask
    
endmodule
