`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2022 05:21:26 PM
// Design Name: 
// Module Name: BCD_to_binary_test
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


module BCD_to_binary_test(

    );
    
    parameter T = 6;
    
    reg clk, reset, start;
    reg [3:0] bcd1, bcd0;
    wire ready, done_tick;
    wire [6:0] bin;
    
    BCD_to_binary binary(.clk(clk), .reset(reset), .start(start), .bcd1(bcd1), .bcd0(bcd0), .ready(ready), .done_tick(done_tick), .bin(bin)); 
    
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
        bcd1 = 4'd9;
        bcd0 = 4'd9;
        start = 1'b0;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(10) @(negedge clk);
        
        bcd1 = 4'd0;
        bcd0 = 4'd0;
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(10) @(negedge clk);
        
        bcd1 = 4'd4;
        bcd0 = 4'd2;
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(10) @(negedge clk);
        
        bcd1 = 4'd7;
        bcd0 = 4'd9;
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(10) @(negedge clk);
        $stop;
    end
    
    
endmodule
