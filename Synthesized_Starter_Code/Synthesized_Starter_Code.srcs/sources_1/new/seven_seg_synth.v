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
    input btnR,            //button for counter increment
    input [15:0] sw,       
    output [6:0] seg,      //7 different LED outputs on seven seg display. 0 ON, 1 OFF. MSB is decimal point LED DP
    output [3:0] an,       //Select line for which segment display is on or off. MUX between at high frequency to update. 
    output dp              //Decimal point LED on seven seg display 
    );
    
    reg [7:0] counter;
    
    wire [15:0] hex_disp = {counter, sw[7:0]}; //Hex values for four seven segment displays
    
    always @(btnR)
    begin
        if(counter == 2**7 - 1)
            counter <= 0;
        else
            counter <= counter + 1;
    end
    
    seven_seg_mux display_total(.i_clk(CLK100MHZ), .i_rst(btnC), .i_hex(hex_disp), .i_dp(sw[11:8]), .i_an_en(sw[15:12]), .o_seg({dp, seg}), .o_an(an));

endmodule
