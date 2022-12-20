`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2022 12:55:03 PM
// Design Name: 
// Module Name: reaction_timer_test
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


module reaction_timer_test(

    );
    
    parameter T = 2;
    parameter DVSR = 0; //0.001 ns increments
    
    reg clk, reset;
    reg start, stop;
    
    wire stimulus;
    wire [3:0] seg3, seg2, seg1, seg0;
    wire [3:0] dp;
    wire [3:0] an;

    wire o_dp;
    wire [6:0] o_seg;
    wire [3:0] o_an;
    
    wire [3:0] rand;
    
    reaction_timer #(.DVSR(DVSR))react(.i_clk(clk), .i_reset(reset), .i_start(start), .i_stop(stop), .o_stimulus(stimulus), 
                         .o_seg3(seg3), .o_seg2(seg2), .o_seg1(seg1), .o_seg0(seg0), .o_dp(dp), .o_an(an), .o_rand(rand));
                         
    seven_seg_mux_reaction #(.N(2))seg_mux(.clk(clk), .reset(reset), .seg3(seg3), .seg2(seg2), .seg1(seg1), .seg0(seg0), 
                                   .dp_en(dp), .an_en(an), .segment({o_dp, o_seg}), .an(o_an));
                         
    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    initial begin
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
    end
    
    initial begin
        start = 1'b0;
        stop = 1'b0;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        repeat(5) @(negedge clk);
        start = 1'b1;
        repeat(2) @(negedge clk);
        start = 1'b0;
        @(posedge stimulus); //wait until stimulus set to active and count begins
        #(T*20);
        stop = 1'b1;
        repeat(2) @(negedge clk);
        stop = 1'b0;
        repeat(3) @(negedge clk);
        
        //stop before stimulus set, output is "9.999"
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
        repeat(2) @(negedge clk);
        start = 1'b1;
        repeat(2) @(negedge clk);
        start = 1'b0;
        stop = 1'b1;
        repeat(2) @(negedge clk);
        stop = 1'b0;
        repeat(3) @(negedge clk);
        
        //Don't select stop after stimulus active for 1 second, output is "1.000" and enters done state
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
        repeat(2) @(negedge clk);
        start = 1'b1;
        repeat(2) @(negedge clk);
        start = 1'b0;
        @(posedge seg3);
        repeat(3) @(negedge clk);
        $stop;
    end
    
endmodule
