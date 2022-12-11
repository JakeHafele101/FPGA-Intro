`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2022 07:35:55 PM
// Design Name: 
// Module Name: pwm_test
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


module pwm_test(

    );
    
    parameter T = 2; //10 ns period on FPGA
    
    reg clk, reset;
    reg [3:0] w;
    wire pwm;
    
    wire [7:0] seg_out;
    wire [3:0] an_seg, an_out;
    
    pwm_4b pwm_4b(.clk(clk), .reset(reset), .w(w), .pwm(pwm));
    
    seven_seg_mux #(.N(4)) segment_display(.clk(clk), .reset(reset), .duty_cycle(w), .hex3(4'h3), .hex2(4'h2), .hex1(4'h1), .hex0(4'h0),
                            .dp(4'b1010), .an_en(4'b1111), .seg_out(seg_out), .an_out(an_seg));
                            
    assign an_out = an_seg & {4{~pwm}};
    
    
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
        w = 4'd8;  //50% duty cycle
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        repeat(100) @(negedge clk);
        w = 4'd0;  //never positive
        repeat(100) @(negedge clk);
        w = 4'd15; //1 tick is 0
        repeat(100) @(negedge clk);
        w = 4'd4;  //25% duty cycle
        repeat(100) @(negedge clk);
        w = 4'd12; //75% duty cycle
        repeat(100) @(negedge clk);
        $stop;
    
    end
    
endmodule
