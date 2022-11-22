`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2022 10:10:37 PM
// Design Name: 
// Module Name: comparator_2b_switch
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


module comparator_2b_switch(
    input [15:0] sw,
    output [15:0] LED
    );
    
    comparator_2b comp(.A(sw[0]), .B(sw[1]), .Y(LED[0]));
    
endmodule
