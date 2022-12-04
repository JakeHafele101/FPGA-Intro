`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2022 12:42:04 PM
// Design Name: 
// Module Name: BCD_incrementor_12b_test
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


module BCD_incrementor_12b_test(

    );
    
    localparam DELAY = 5;
    
    reg [11:0] bcd_in;
    reg switch;
    wire [11:0] bcd_out;
    
    reg clk;
    wire dp;
    wire [6:0] seg;
    wire [3:0] an;
    
    BCD_incrementor_12b BCD(.bcd_in(bcd_in), .en(switch), .bcd_out(bcd_out));
    
    seven_seg_mux #(.N(2)) segment_display(.clk(clk), .reset(1'b0), .hex3(4'h8), .hex2(bcd_out[11:8]), 
                                           .hex1(bcd_out[7:4]), .hex0(bcd_out[3:0]), .dp(4'b1111), .an_en(4'b0111), 
                                           .seg_out({dp, seg}), .an_out(an));
    
    initial begin
        bcd_in = 12'h000;
        #(DELAY * 1000);
        $stop;
    end
    
    initial begin
        switch = 0; //on startup, set switch to 0
        #(DELAY * 10);
        switch = 1;
    end
    
    initial begin
        forever begin
            #(DELAY*5) bcd_in = bcd_out;
        end
    end
    
    initial begin
        clk = 0;
        forever begin
            #DELAY clk = ~clk;
        end
    end
    
    
endmodule
