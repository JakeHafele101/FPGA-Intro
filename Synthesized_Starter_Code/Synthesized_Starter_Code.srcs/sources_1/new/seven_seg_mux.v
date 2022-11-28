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


module seven_seg_mux(
    input i_clk,             //clock to MUX between segment displays
    input i_rst,
    input [15:0] i_hex,      //4 hex values for different 7 seg displays
    input [3:0] i_dp,        //Decimal point active or no
    input [3:0] i_an_en,     //Enable input for each seven segment display. 1 for ON, 0 for OFF
    output reg [7:0] o_seg,  //7 different LED outputs on seven seg display. 0 ON, 1 OFF. MSB is decimal point LED DP
    output [3:0] o_an        //Select line for which segment display is on or off. 0 is ON, 1 is OFF
    );
    
    //N bit counter for clock increments
    parameter  N = 18;
    
    //Frequency count register to store count data as it increments from every rising clock pulse
    reg [N-1:0] r_CNT = 0;
    
    reg [3:0] mux_an;
    
    always @ (posedge i_clk or posedge i_rst)
    begin
        if(i_rst) //If Reset set to high, set counter to 0 and update AN MUX shifter
            r_CNT <= 0;
        else
            r_CNT <= r_CNT + 1;
    end
    
    wire [7:0] seg0, seg1, seg2, seg3;
    
    seven_seg display0(i_hex[3:0], i_dp[0], seg0);
    seven_seg display1(i_hex[7:4], i_dp[1], seg1);
    seven_seg display2(i_hex[11:8], i_dp[2], seg2);
    seven_seg display3(i_hex[15:12], i_dp[3], seg3);
    
    always @*
    begin
        case(r_CNT[N-1:N-2]) //Checks two most significant bits of counter
            2'b00: 
                begin
                    mux_an <= 4'b0001;
                    o_seg <= seg0;
                end
            2'b01:
                begin
                    mux_an <= 4'b0010;
                    o_seg <= seg1;
                end
            2'b10:
                begin
                    mux_an <= 4'b0100;
                    o_seg <= seg2;
                end
            2'b11:
                begin
                    mux_an <= 4'b1000;
                    o_seg <= seg3;
                end
        endcase
    end
    
    assign o_an = ~(mux_an & i_an_en); //uses logic level HIGH to enable, but inverted since pin is 0 to be on for FPGA board
    
endmodule
