`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 02:54:07 PM
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(
    input [3:0] X, //array of four input bits
    input [1:0] S, //Select line
    output reg Y //Output
    );

    always @* 
        case(S)
            2'b00: Y = X[0];
            2'b01: Y = X[1];
            2'b10: Y = X[2];
            2'b11: Y = X[3];
        endcase
endmodule

