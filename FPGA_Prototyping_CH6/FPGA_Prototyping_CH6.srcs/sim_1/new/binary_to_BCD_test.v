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
    reg [6:0] bin;
    wire [3:0] bcd1, bcd0;
    wire ready, done_tick;
    
    binary_to_BCD BCD(.clk(clk), .reset(reset), .start(start), .bcd1(bcd1), .bcd0(bcd0), .ready(ready), .done_tick(done_tick), .bin(bin)); 
    
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
        bin = 7'b1100011; //99
        start = 1'b0;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(10) @(negedge clk);
        
        bin = 7'b0000000; //0
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(10) @(negedge clk);
        
        bin = 7'b0101010; //42
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(10) @(negedge clk);
        
        bin = 7'b1001111; //79
        start = 1'b1;
        repeat(1) @(negedge clk);
        start = 1'b0;
        repeat(10) @(negedge clk);
        $stop;
    end
endmodule
