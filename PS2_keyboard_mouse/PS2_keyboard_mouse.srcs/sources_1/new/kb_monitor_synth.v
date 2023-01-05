`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2023 03:11:30 PM
// Design Name: 
// Module Name: kb_monitor_synth
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


module kb_monitor_synth(
    input CLK100MHZ,
    input btnC,
    input PS2Data,
    input PS2Clk,
    output [7:0] JA,
    output [15:0] LED,
    output RsTx
    );
    
    assign JA[0] = PS2Data;
    assign JA[1] = 1'b0;
    assign JA[2] = RsTx;
    
    //1200 baud rate, 8 data bits, 1 stop bit, no parity
    kb_monitor kb(.i_clk(CLK100MHZ), .i_reset(btnC), .i_ps2d(PS2Data), .i_ps2c(PS2Clk), .o_tx(RsTx));
    
endmodule
