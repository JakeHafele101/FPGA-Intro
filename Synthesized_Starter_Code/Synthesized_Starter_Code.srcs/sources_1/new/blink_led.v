`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2022 11:15:05 PM
// Design Name: 
// Module Name: blink_led
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


module blink_led(
    input CLK100MHZ,
    output [15:0] LED
    );
    
    assign LED = 16'b1111111111111111;
    
endmodule
