`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 09:26:06 PM
// Design Name: 
// Module Name: DFF_Pos_Edge
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


module DFF_Pos_Edge(
    input D,
    input Clk,
    output Q,
    output not_Q
    );
    
    wire Qm;
    
    D_Latch master(D, !Clk, Qm, 0);
    D_Latch slave(Qm, Clk, Q, not_Q);
    
endmodule
