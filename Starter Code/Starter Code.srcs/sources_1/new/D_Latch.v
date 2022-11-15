`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 09:19:48 PM
// Design Name: 
// Module Name: D_Latch
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


module D_Latch(
    input D,
    input Clk,
    output Q,
    output not_Q
    );
    
    wire out_S, out_R;
    
    nand(out_S, D, clk);
    nand(out_R, !D, clk);
    
    nand(Q, out_S, not_Q);
    nand(not_Q, out_R, Q);
    
endmodule
