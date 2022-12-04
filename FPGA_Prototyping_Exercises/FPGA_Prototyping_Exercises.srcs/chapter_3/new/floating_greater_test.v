`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2022 06:32:26 PM
// Design Name: 
// Module Name: floating_greater_test
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


module floating_greater_test(

    );
    
    localparam DELAY = 5;
    
    reg [12:0] a, b;
    wire gt;
    
    floating_greater greater(.a(a), .b(b), .gt(gt));
    
    initial begin
        a = 13'b0000000000000; //gt 0
        b = 13'b0000000000000;
        #DELAY;
        a = 13'b1000000000000; //gt 0
        b = 13'b0000000000000;
        #DELAY;
        a = 13'b0000000000000; //gt 0
        b = 13'b1000000000000;
        #DELAY;
        a = 13'b1000000000000; //gt 0
        b = 13'b1000000000000;
        #DELAY;
        a = 13'b1000000011000; //gt 1
        b = 13'b1000001100000;
        #DELAY;
        a = 13'b1011000000000; //gt 0
        b = 13'b000000101000;
        #DELAY;
        a = 13'b0000001000100; //gt 1
        b = 13'b1011000011000;
        #DELAY;
        a = 13'b0011111110000; //gt 1
        b = 13'b0001111000000;
        #DELAY;
        $stop;
    end
    
    
endmodule
