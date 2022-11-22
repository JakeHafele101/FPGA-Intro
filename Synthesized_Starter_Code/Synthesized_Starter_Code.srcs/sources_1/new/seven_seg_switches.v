`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2022 10:42:34 PM
// Design Name: 
// Module Name: seven_seg_switches
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


module seven_seg_switches(
    input [15:0] sw,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    
    assign seg = sw[6:0];
    assign dp = sw[7];
    assign an = sw[11:8];
    
endmodule
