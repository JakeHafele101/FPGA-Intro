`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 05:57:49 PM
// Design Name: 
// Module Name: rotating_banner_test
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


module rotating_banner_test(

    );
    
    localparam T = 2; //period of clock in timeunit (10 ns period to match FPGA)
    
    reg clk;
    reg reset;
    reg en;
    reg dir;
    reg [31:0] m;
    
    wire [15:0] hex;
    
    wire [3:0] an;
    wire dp;
    wire [6:0] segment;
    
    rotating_banner #(.DVSR(20)) banner(.clk(clk), .reset(reset), .en(en), .dir(dir), .m(m), .hex(hex));
    
    seven_seg_mux #(.N(2))segment_mux(.clk(clk), .reset(reset), .duty_cycle(4'b1000), .hex3(hex[15:12]), .hex2(hex[11:8]), .hex1(hex[7:4]), .hex0(hex[3:0]), .dp(4'b1111), .an_en(4'b1111), .an_out(an), .seg_out({dp, segment}));

    
    //period of clock
    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    //reset in first period of clk
    initial begin
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
    end
    
    initial begin
        en = 1'b0;
        dir = 1'b1;
        m = 31'h01234567;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk);   //wait for one clock period
        en = 1'b1;
        repeat(200) @(negedge clk);
        dir = 1'b0;
        reset = 1'b1;
        repeat(1) @(negedge clk);
        reset = 1'b0;
        repeat(200) @(negedge clk); 
        $stop;
    end
    
endmodule
