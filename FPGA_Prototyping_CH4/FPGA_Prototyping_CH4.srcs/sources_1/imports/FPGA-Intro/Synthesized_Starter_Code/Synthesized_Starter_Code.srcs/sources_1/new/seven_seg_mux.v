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


module seven_seg_mux (
    input clk,                 //clock to MUX between segment displays
    input reset,               //reset active when set to 1
    input [3:0] hex3,          //hex 3 input. 0 to F
    input [3:0] hex2,          //hex 2 input
    input [3:0] hex1,          //hex 1 input
    input [3:0] hex0,          //hex 0 input
    input [3:0] dp,            //Decimal point active or no. ON when 0, OFF when 1
    input [3:0] an_en,         //Determines if seven seg display is on or off. ON when 1, OFF when 0
    output reg [7:0] seg_out,  //7 different LED outputs on seven seg display. 0 ON, 1 OFF for Basys 3 FPGA. MSB is decimal point LED DP. wired to [7:0] seg on FPGA
    output [3:0] an_out        //Determines if seven seg display is on or off. ON when 1, OFF when 0. Wired to [3:0] an on FPGA
    );
    
    parameter N = 18;

    //Frequency count register to store count data as it increments from every rising clock pulse
    reg [N-1:0] r_CNT = 0;
    
    //register to store mux'ed enable to refresh seven segment display
    reg [3:0] an_mux;
    
    //clk increments on rising edge, reset occurs on rising edge setting counter to 0
    always @ (posedge clk, posedge reset)
    begin
        if(reset) //If Reset set to high, set counter to 0 and update AN MUX shifter
            r_CNT <= 0;
        else
            r_CNT <= r_CNT + 1;
    end
    
    //segment wires to be routed to MUX'ed output 
    wire [7:0] seg0, seg1, seg2, seg3;
    
    //Instantiate each seven seg display and give supply it with input hex and dp
    seven_seg display0(hex0, dp[0], seg0);
    seven_seg display1(hex1, dp[1], seg1);
    seven_seg display2(hex2, dp[2], seg2);
    seven_seg display3(hex3, dp[3], seg3);
    
    always @*
    begin
        case(r_CNT[N-1:N-2]) //Checks two most significant bits of counter for case selection
            2'b00: 
                begin
                    an_mux <= 4'b0001;
                    seg_out <= seg0;
                end
            2'b01:
                begin
                    an_mux <= 4'b0010;
                    seg_out <= seg1;
                end
            2'b10:
                begin
                    an_mux <= 4'b0100;
                    seg_out <= seg2;
                end
            2'b11:
                begin
                    an_mux <= 4'b1000;
                    seg_out <= seg3;
                end
        endcase
    end
    
    //inverted output so 
    assign an_out = ~(an_mux & an_en); 
    
endmodule
