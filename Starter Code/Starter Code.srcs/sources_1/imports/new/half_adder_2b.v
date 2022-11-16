`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 06:49:46 PM
// Design Name: 
// Module Name: half_adder_2b
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


module half_adder_2b(
    input A,
    input B,
    output S,
    output C
    );
    
    assign S = (!A&&B)||(A&&!B);
    assign C = A&&B;
    
endmodule
