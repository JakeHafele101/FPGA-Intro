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
    input [1:0] X0, //Input 1
    input [1:0] X1, //Input 2
    input [1:0] X2, //Input 3
    input [1:0] X3, //Input 4
    input [1:0] S, //Select line
    output [1:0] Y //Output
    );
    
    reg [1:0] Y; //Set Y to register so = value below works. Has to save bits before exiting module! Don't forget to set array of bits either
     
    always @(X0 or X1 or X2 or X3 or S) //This block runs whenever X0/1/2/3 or S changes. Can also use "always @*"
        case(S)
            2'b00: Y = X0;
            2'b01: Y = X1;
            2'b10: Y = X2;
            2'b11: Y = X3;
        endcase
endmodule

