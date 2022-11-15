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


module encoder4x2(
    input [3:0] X,
    input en,
    output [1:0] Y
    );
    
    assign Y[0] = en&&(X[3]||(!X[2]&&X[1]));
    assign Y[1] = en&&(X[3]||X[2]);
    
endmodule