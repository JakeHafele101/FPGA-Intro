`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2022 03:46:07 PM
// Design Name: 
// Module Name: seven_seg_synth
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


module seven_seg_synth(
    input CLK100MHZ,       //clock to MUX between segment displays
    input btnC,            //reset button
    input [15:0] sw,       //switches from FPGA
    output dp,             //Decimal point LED on seven seg display 
    output [6:0] seg,      //7 different LED outputs on seven seg display. 0 ON, 1 OFF. MSB is decimal point LED DP
    output [3:0] an        //Select line for which segment display is on or off. MUX between at high frequency to update. 
    );
    
    seven_seg_mux display_all(.clk(CLK100MHZ), .reset(btnC), .hex3(hex3), .hex2(sw[3:0]), .hex1(sw[7:4]), .hex0(sw[3:0]), .dp(sw[11:8]), .an_en(sw[15:12]), .seg_out({dp, seg}), .an_out(an));
    
endmodule
