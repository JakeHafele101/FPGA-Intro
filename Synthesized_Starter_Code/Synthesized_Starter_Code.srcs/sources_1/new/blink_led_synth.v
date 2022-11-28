`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2022 10:22:01 AM
// Design Name: 
// Module Name: blink_led_synth
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

//switch 0 is enable pin, switch 1/2 is clk frequency select 
//Using 100 MHZ clock on Basys 3 board
//LED 0 is frequency output (100 Hz, 50 Hz, 10 Hz, or 1 Hz depending on select lines/MUX)
//LED 1 is 100MHZ clk output (very fast)
module blink_led_synth(
    input [15:0] sw,
    input CLK100MHZ,
    output [15:0] LED
    );
    
    blink_led blink(.i_sw_enable(sw[0]), .i_sw_clk1(sw[2]), .i_sw_clk0(sw[1]), .i_clk(CLK100MHZ), .o_LED(LED[0]));
    
    assign LED[1] = CLK100MHZ;
    
endmodule
