`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2022 11:00:29 PM
// Design Name: 
// Module Name: fibonacci_test
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


module fibonacci_test(

    );
    
    parameter T = 2;
    
    reg clk, reset, start;
    reg [7:0] bcd;
    wire ready, done_tick;
    wire [3:0] bcd3, bcd2, bcd1, bcd0;
    
//    fibonacci fib(.i_clk(clk), .i_reset(reset), .i_start(start), .i_bcd1_n(bcd[7:4]), .i_bcd0_n(bcd[3:0]), .o_ready(ready), .o_done_tick(done_tick),
//                  .o_bcd3(bcd3), .o_bcd2(bcd2), .o_bcd1(bcd1), .o_bcd0(bcd0)); 
    
    fibb_combined fib_comb(.i_clk(clk), .i_reset(reset), .i_start(start), .i_bcd1_n(bcd[7:4]), .i_bcd0_n(bcd[3:0]), .o_ready(ready), .o_done_tick(done_tick),
                       .o_bcd3(bcd3), .o_bcd2(bcd2), .o_bcd1(bcd1), .o_bcd0(bcd0)); 
    
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
    
    task start_fibb;
        input [3:0] bcd1, bcd0;
        begin
            bcd = {bcd1, bcd0};
            repeat(1) @(negedge clk);
            start = 1'b1;
            repeat(1) @(negedge clk);
            start = 1'b0;
            @(negedge done_tick);
        end
    endtask
    
    initial begin

        start = 1'b0;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        
        start_fibb(.bcd1(4'd0), .bcd0(4'd0)); //output 0001
        
        start_fibb(.bcd1(4'd0), .bcd0(4'd1)); //output 0001
        
        start_fibb(.bcd1(4'd0), .bcd0(4'd3)); //output 0002
        
        start_fibb(.bcd1(4'd0), .bcd0(4'd6)); //output 0008
        
        start_fibb(.bcd1(4'd1), .bcd0(4'd5)); //output 0610
        
        start_fibb(.bcd1(4'd9), .bcd0(4'd9)); //output 9999
        
        $stop;
    end
    
endmodule
