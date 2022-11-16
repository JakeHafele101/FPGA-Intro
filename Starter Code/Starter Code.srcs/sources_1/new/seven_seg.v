`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 08:56:50 PM
// Design Name: 
// Module Name: seven_seg
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

//On Basys 3, anode and cathode are driven low to drive LED
// Anode pins include: AN0,AN1,AN2,AN3
//Cathode pins include: CA, CB, CC, CD, CE, CF, CG, DP (decimal point)

module seven_seg(
    input [3:0] hex,
    input dp,
    output reg [7:0] seg //dp will be MSB, then A, B, C, D, E, F, G as LSB
    );
    
    
    always @*
    begin
        case(hex) //7'b A,B,C,D,E,F,G
            4'h0: seg[6:0] = 7'b0000001; //displays 0,
            4'h1: seg[6:0] = 7'b1001111; //displays 1
            4'h2: seg[6:0] = 7'b0010010; //displays 2
            4'h3: seg[6:0] = 7'b0000110; //displays 3
            4'h4: seg[6:0] = 7'b1001100; //displays 4
            4'h5: seg[6:0] = 7'b0100100; //displays 5
            4'h6: seg[6:0] = 7'b0100000; //displays 6
            4'h7: seg[6:0] = 7'b0001111; //displays 7
            4'h8: seg[6:0] = 7'b0000000; //displays 8
            4'h9: seg[6:0] = 7'b0000100; //displays 9
            4'hA: seg[6:0] = 7'b0001000; //displays A
            4'hB: seg[6:0] = 7'b1100000; //displays B
            4'hC: seg[6:0] = 7'b0110001; //displays C
            4'hD: seg[6:0] = 7'b1000010; //displays D
            4'hE: seg[6:0] = 7'b0110000; //displays E
            default: seg[6:0] = 7'b0011000; //defaults to displaying F
        endcase
        seg[7] = dp; //Sets MSB to decimal point LED output for seven seg
    end
endmodule
