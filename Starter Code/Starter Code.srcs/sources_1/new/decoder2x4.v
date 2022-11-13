`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 08:33:33 PM
// Design Name: 
// Module Name: decoder2x4
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


module decoder2x4(
    input [1:0] X,
    input en,
    output [3:0] Y
    );
    
    assign Y[0] = en&(!X[1])&(!X[0]);
    assign Y[1] = en&(!X[1])&(X[0]);
    assign Y[2] = en&(X[1])&(!X[0]);
    assign Y[3] = en&(X[1])&(X[0]);
    
endmodule