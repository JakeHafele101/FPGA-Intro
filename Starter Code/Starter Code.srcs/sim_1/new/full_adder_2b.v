`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 06:45:06 PM
// Design Name: 
// Module Name: full_adder_2b
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


module full_adder_2b(
    input A,
    input B,
    input C0,
    output S1,
    output C1
    );
    
    wire S_Int1;
    wire C_Int1, C_Int2;
    
    half_adder_2b half1(A, B, S_Int1, C_Int1);
    half_adder_2b half2(C0, S_Int1, S1, C_Int2);
    
    assign C1 = C_Int1||C_Int2;
    
endmodule
