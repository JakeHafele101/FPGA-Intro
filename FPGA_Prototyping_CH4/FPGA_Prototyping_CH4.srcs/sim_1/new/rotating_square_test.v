`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 11:10:59 PM
// Design Name: 
// Module Name: rotating_square_test
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


module rotating_square_test(

    );
    
    localparam T = 4; //period of clock in timeunit (10 ns period to match FPGA)
    
    reg clk;
    reg reset;
    reg en;
    reg cw;
    wire [3:0] an;
    wire dp;
    wire [6:0] segment;
    
    rotating_square #(.DVSR(2)) wave(.clk(clk), .reset(reset), .en(en), .cw(cw), .an(an), .segment({dp, segment}));
    
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
        cw = 1'b1;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk);   //wait for one clock period
        en = 1'b1;
        repeat(50) @(negedge clk); //wait 20 periods (200 ns)
        cw = 1'b0;
        repeat(50) @(negedge clk);
        $stop;
    end
    
endmodule
