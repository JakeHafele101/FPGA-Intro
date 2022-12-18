`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2022 07:43:55 PM
// Design Name: 
// Module Name: binary_to_BCD_test
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


module binary_to_BCD_test(

    );
    
    parameter T = 6;
    
    reg clk, reset, start;
    reg [13:0] bin;
    wire [3:0] bcd3, bcd2, bcd1, bcd0;
    wire ready, done_tick;
    
    binary_to_BCD BCD(.clk(clk), .reset(reset), .bin(bin), .start(start), .bcd3(bcd3), .bcd2(bcd2), .bcd1(bcd1), .bcd0(bcd0), .ready(ready), .done_tick(done_tick)); 
    
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
        bin = 14'd9999;
        start = 1'b0;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(20) @(negedge clk);
        
        bin = 14'd0;
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(20) @(negedge clk);
        
        bin = 14'd1728;
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(20) @(negedge clk);
        
        bin = 14'd12678;
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(20) @(negedge clk);
        $stop;
    end
endmodule
