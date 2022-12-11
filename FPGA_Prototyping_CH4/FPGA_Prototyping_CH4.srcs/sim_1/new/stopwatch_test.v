`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2022 09:17:00 PM
// Design Name: 
// Module Name: stopwatch_test
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


module stopwatch_test(

    );
    
    parameter T = 10; //10 ns period on FPGA
    
    reg clk, go, clr;
    wire [3:0] d2, d1, d0;
    
    stopwatch #(.DVSR(1)) watch(.clk(clk), .go(go), .clr(clr), .d2(d2), .d1(d1), .d0(d0));
    
    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    initial begin
        clr = 1'b1;
        #(T/2);
        clr = 1'b0;
    end
    
    initial begin
        go = 1'b0;
        @(negedge clr); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        go = 1'b1;
        wait(d1 == 5);
        clr = 1'b1;
        repeat(5) @(negedge clk);
        clr = 1'b0;
        wait (d2 == 9);
        wait(d1 == 1);
        $stop;
    
    end
    
    
endmodule
