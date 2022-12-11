`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 03:23:51 PM
// Design Name: 
// Module Name: heartbeat_test
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


module heartbeat_test(

    );
    
    localparam T = 2; //period of clock in timeunit (10 ns period to match FPGA)
    
    reg clk;
    reg reset;
    reg en;
    
    wire [3:0] an_en;
    wire [3:0] line;
    
    wire [3:0] an;
    wire dp;
    wire [6:0] segment;
    
    heartbeat #(.DVSR(20)) heartbeat(.clk(clk), .reset(reset), .en(en), .an_en(an_en), .line(line));
    
    seven_seg_heartbeat_mux #(.N(2))segment_heart(.clk(clk), .reset(reset), .line(line), .an_en(an_en), .an(an), .segment({dp, segment}));

    
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
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk);   //wait for one clock period
        en = 1'b1;
        repeat(200) @(negedge clk); //wait 20 periods (200 ns)
        $stop;
    end
endmodule
