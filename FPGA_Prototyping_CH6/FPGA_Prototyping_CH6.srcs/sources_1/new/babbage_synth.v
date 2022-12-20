`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2022 04:00:10 PM
// Design Name: 
// Module Name: babbage_synth
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


module babbage_synth(
    input CLK100MHZ,
    input btnC, btnR,
    input [15:0] sw,
    output [15:0] LED, 
    output [3:0] an,
    output dp,
    output [6:0] seg
    );
    
    wire [12:0] f;
    wire babbage_done_tick, BCD_done_tick;
    
    wire [3:0] bcd3, bcd2, bcd1, bcd0;
    
    assign LED[14] = babbage_done_tick;
    assign LED[5:0] = sw[5:0];
    
    babbage babbage(.i_clk(CLK100MHZ), .i_reset(btnC), .i_start(btnR), .i_n(sw[5:0]), .o_ready(LED[15]), .o_done_tick(babbage_done_tick), .o_f(f));
    
    binary_to_BCD bin_to_BCD(.clk(CLK100MHZ), .reset(btnC), .start(babbage_done_tick), .bin({1'b0, f}), .ready(LED[13]), .done_tick(BCD_done_tick), .bcd3(bcd3), .bcd2(bcd2), .bcd1(bcd1), .bcd0(bcd0)); 

    seven_seg_mux segment(.clk(CLK100MHZ), .reset(btnC), .duty_cycle(4'b1000), .hex3(bcd3), .hex2(bcd2), .hex1(bcd1), .hex0(bcd0),
                          .dp(4'b0000), .an_en(4'b1111), .seg_out({dp, seg}), .an_out(an));
    
endmodule
