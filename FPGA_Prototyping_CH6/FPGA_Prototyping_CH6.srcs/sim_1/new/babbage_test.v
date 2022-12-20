`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2022 03:37:11 PM
// Design Name: 
// Module Name: babbage_test
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


module babbage_test(

    );
    
    parameter T = 2;
    
    reg clk, reset, start;
    reg [5:0] n;
    wire ready, done_tick;
    wire [12:0] f;
    
    babbage babbage(.i_clk(clk), .i_reset(reset), .i_start(start), .i_n(n), .o_ready(ready), .o_done_tick(done_tick), .o_f(f));
    
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
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        
        start_f(.i_n(6'd0)); //0, output 5
        start_f(.i_n(6'd1)); //1, output 10
        start_f(.i_n(6'd5)); //5, output 70
        start_f(.i_n(6'd63)); //63, output 8132
        
        $stop;
    end
    
    task start_f;
        input [5:0] i_n;
        begin
            n = i_n;
            repeat(1) @(negedge clk);
            start = 1'b1;
            repeat(1) @(negedge clk);
            start = 1'b0;
            @(negedge done_tick);
            repeat(3) @(negedge clk);
        end
    endtask
    
endmodule
