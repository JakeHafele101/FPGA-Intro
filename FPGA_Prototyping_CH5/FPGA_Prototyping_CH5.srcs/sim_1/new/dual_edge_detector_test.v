`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 09:58:40 PM
// Design Name: 
// Module Name: dual_edge_detector_test
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


module dual_edge_detector_test(

    );
    
    parameter T = 6;
    
    reg clk, reset;
    reg level;
    wire tick;
    
    dual_edge_detector_moore moore_edge(.clk(clk), .reset(reset), .level(level), .tick(tick));
    
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
        level = 1'b0;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        
        //check for tick assertion for one clock cycle on rising and falling
        level = 1'b1; //tick is 1 for one cycle following
        repeat(4) @(negedge clk);
        level = 1'b0; //tick is 1 for one cycle following
        repeat(4) @(negedge clk);
        
        //check to make sure tick transfers from rise to fall cases after one cycle
        level = 1'b1; //tick is 1 for one cycle following
        repeat(1) @(negedge clk);
        level = 1'b0; //tick is 1 for one cycle following
        repeat(4) @(negedge clk);

        $stop;
    end
    
endmodule
