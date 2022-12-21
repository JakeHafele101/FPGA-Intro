`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2022 02:56:45 PM
// Design Name: 
// Module Name: uart_test
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


module uart_test(

    );
    
    parameter T = 20;
    
    parameter DBIT = 8,      //bits of data in word
              SB_TICK = 16,  //ticks for stop bit. 16 = 1 bit, 24 for 1.5 bits, 32 for 2 bits
              DVSR = 2,     //counter for baud rate of 10 (T/BAUD)
              DVSR_BIT = 4,  //number of bits for DVSR counter for baud rate tick generator
              FIFO_W = 2;    //number of address bits in FIFO buffer (4 words)
    
    reg clk, reset;
    reg rd_uart, rx;
    reg wr_uart;
    reg [7:0] wr_data;
    
    wire tx_full, tx;
    wire rx_empty;
    wire [7:0] rd_data;
    
    uart #(.DBIT(DBIT), .SB_TICK(SB_TICK), .DVSR(DVSR), .DVSR_BIT(DVSR_BIT), .FIFO_W(FIFO_W))
         uart(.i_clk(clk), .i_reset(reset), .i_rd_uart(rd_uart), .i_wr_uart(wr_uart), .i_rx(rx), 
              .i_wr_data(wr_data), .o_tx_full(tx_full), .o_rx_empty(rx_empty), .o_tx(tx), 
              .o_rd_data(rd_data));
    
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
        rd_uart = 1'b0;
        wr_uart = 1'b0;
        rx = 1'b1;
        wr_data = 8'd0;
        @(negedge clk); //rx_empty
        
        receive(8'd5);
        read_FIFO(); //5
        
        //receieve five words. should only take 4 in FIFO buffer
        receive(8'd10);
        receive(8'd20);
        receive(8'd30);
        receive(8'd40);
        receive(8'd50);
        
        read_FIFO(); //10
        read_FIFO(); //20
        read_FIFO(); //30
        read_FIFO(); //40, empty now
        read_FIFO(); //empty
        
    end
    
    //loads receive data word one bit at a time
    task receive(input [DBIT-1:0] data_in);
        integer i;
        begin
            rx = 1'b1; //idle
            @(negedge clk)
            rx = 1'b0; //start bit
            @(negedge clk)
            for(i = 0; i < DBIT; i = i + 1); //load data bits
                begin
                    rx = data_in[i];
                    @(negedge clk);
                end
            rx = 1'b1; //stop bit
            @(negedge clk);
        end
    endtask
    
    task read_FIFO();
        begin
            rd_uart = 1'b1;
            @(negedge clk);
            rd_uart = 1'b0;
            @(negedge clk);
        end
    endtask
    
    
    
endmodule
