`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 06:47:30 PM
// Design Name: 
// Module Name: ripple_carry_4b
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


module ripple_carry_4b(
    input [3:0] A,
    input [3:0] B,
    input C0,
    output [3:0] Y,
    output C4
    );
    
    wire C1, C2, C3;
    
    //This is so cool
    full_adder_2b full_0(A[0], B[0], C0, Y[0], C1);
    full_adder_2b full_1(A[1], B[1], C1, Y[1], C2);
    full_adder_2b full_2(A[2], B[2], C2, Y[2], C3);
    full_adder_2b full_3(A[3], B[3], C3, Y[3], C4);
    
endmodule
