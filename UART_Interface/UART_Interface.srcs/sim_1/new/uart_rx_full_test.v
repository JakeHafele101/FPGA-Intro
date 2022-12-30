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
    
    parameter DVSR      = 1,  //counter for baud rate of 2 (T/BAUD)
              DVSR_BIT  = 4,  //number of bits for DVSR counter for baud rate tick generator
              FIFO_DBIT = 8,  //number of data bits in FIFO buffer
              FIFO_W    = 2;  //number of address bits for words in FIFO buffer              
    
    //test inputs
    reg clk, reset;
    reg rx;
    reg rd_uart;
    reg [1:0] data_num, stop_num, par;
    
    //test interconnects 
    wire tick, rx_done_tick;
    wire [7:0] rx_data_out;
    
    //test outputs
    wire rx_empty, rx_full;
    wire [7:0] rd_data;
    wire par_err, frm_err, over_err;
    
    baud_rate_generator #(.M(DVSR), .N(DVSR_BIT))baud_gen(.i_clk(clk), .i_reset(reset), .o_count(), .o_baud_tick(tick));
        
    uart_rx_full rx_unit(.i_clk(clk), .i_reset(reset), .i_rx(rx), .i_s_tick(tick), .i_data_num(data_num), .i_stop_num(stop_num), 
                         .i_par(par), .o_err({frm_err, par_err}), .o_rx_done_tick(rx_done_tick), .o_data(rx_data_out));
    
    FIFO_full #(.B(FIFO_DBIT), .W(FIFO_W)) fifo_rx(.i_clk(clk), .i_reset(reset), .i_wr(rx_done_tick), .i_rd(rd_uart), .i_wr_data(rx_data_out), 
                                                   .o_empty(rx_empty), .o_full(rx_full), .o_rd_data(rd_data));
    
    assign over_err = rx_done_tick && rx_full; //data overrun error active if FIFO full and going to write again (when rx done recieving after stop bit)
    
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
    
    //things to test:
    // different data bits transmitted, different stop bits, parity settings, errors
    
    initial begin
        rx = 1'b1;
        data_num = 2'b10; //8 data bits received
        stop_num = 2'b00; //1 stop bit received
        par = 2'b00;      //no parity bit received
        rd_uart = 1'b0;
        @(negedge clk);
        
        //<----- Data bit num Testing ----->
//        data_num_test();
        
        //<----- Stop bit num Testing ----->
        stop_num_test();
        
        //<----- Parity Testing ----->
        
        
        //<----- Parity error Testing ----->
        
        
        //<----- Frame Error Testing ----->
        
        
        //<----- Data Overrun Error Testing ----->
        
        
        //<----- Mix of everything ----->
        
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
    
    task data_num_test();
        begin
            data_num = 2'b11; //8 data bits receieved by default since should not be used
            repeat(2) @(negedge clk);
            receive(.data_in(8'b01111100), .data_num('d8), .parity(2'b00), .stop_tick('d16)); //124
            read_FIFO();
            
            data_num = 2'b10; //8 data bit received, all bits read
            repeat(2) @(negedge clk);
            receive(.data_in(8'b01111100), .data_num('d8), .parity(2'b00), .stop_tick('d16)); //124
            read_FIFO();
            
            data_num = 2'b01; //7 data bits recieved, MSB not read
            repeat(2) @(negedge clk);
            receive(.data_in(8'b00111101), .data_num('d7), .parity(2'b00), .stop_tick('d16)); //61 
            read_FIFO();
            
            data_num = 2'b00; //6 data bits receieved, 2 MSB's not read
            repeat(2) @(negedge clk);
            receive(.data_in(8'b00011110), .data_num('d6), .parity(2'b00), .stop_tick('d16)); //30 
            read_FIFO();
            
            data_num = 2'b10; //8 data bits recieved
        
        end
    endtask
    
    task stop_num_test();
        begin
            stop_num = 2'b11; //2 stop bits recieved by default since 2'b11 not specified (32 ticks and 128ns)
            repeat(2) @(negedge clk);
            receive(.data_in(8'b01111111), .data_num('d8), .parity(2'b00), .stop_tick('d32));
            read_FIFO();
            
            stop_num = 2'b10; //2 stop bits recieved (32 ticks and 128ns) 96 measured
            repeat(2) @(negedge clk);
            receive(.data_in(8'b01111111), .data_num('d8), .parity(2'b00), .stop_tick('d32)); 
            read_FIFO();
            
            stop_num = 2'b01; //1.5 stop bit recieved (24 ticks and 96 ns) 64 measured
            repeat(2) @(negedge clk);
            receive(.data_in(8'b01111111), .data_num('d8), .parity(2'b00), .stop_tick('d24));
            read_FIFO();
            
            stop_num = 2'b00; //1 stop bit recieved (16 ticks and 64 ns) 32 measured
            repeat(2) @(negedge clk);
            receive(.data_in(8'b01111111), .data_num('d8), .parity(2'b00), .stop_tick('d16));
            read_FIFO();
            
            stop_num = 2'b00;
        end
    endtask
    
endmodule
