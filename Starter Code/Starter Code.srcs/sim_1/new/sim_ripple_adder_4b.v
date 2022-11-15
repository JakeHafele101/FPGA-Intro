`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 06:55:37 PM
// Design Name: 
// Module Name: sim_half_adder
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

module sim_ripple_adder_4b;
    
    reg [3:0] A, B;
    reg C0;
    
    wire [3:0] Y;
    wire C4;
    
    ripple_carry_4b ripple(.A(A), .B(B), .C0(C0), .Y(Y), .C4(C4));
    
    initial begin
        C0 = 1'b0;
        A = 4'b0000;
        B = 4'b0000;
        #2;
        A = 4'b0001;
        B = 4'b0001;
        #2;
        A = 4'b1010;
        B = 4'b0101;
        #2;
        A = 4'b0011;
        B = 4'b0001;
        #2;
        A = 4'b1111;
        B = 4'b1111;
        #2;
        C0 = 1'b1;
        A = 4'b0001;
        B = 4'b0001;
        #2;
        A = 4'b0001;
        B = 4'b0000;
        #2;
        A = 4'b0000;
        B = 4'b0001;
        #2;
        A = 4'b1010;
        B = 4'b0101;
        #2;
        A = 4'b1111;
        B = 4'b1111;
        #2;
    end
endmodule