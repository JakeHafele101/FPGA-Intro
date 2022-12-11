`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2022 06:50:58 PM
// Design Name: 
// Module Name: square_wave_test
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


module square_wave_test(

    );
    
    localparam T = 10; //period of clock in timeunit (10 ns period to match FPGA)
    
    reg clk;
    reg reset;
    reg en;
    reg [3:0] m, n;
    wire square;
    
    square_wave wave(.clk(clk), .reset(reset), .en(en), .m(m), .n(n), .out(square));
    
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
        m = 4'b0001; //100ns 1
        n = 4'b0001; //100ns 0
        en = 1'b0;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk);   //wait for one clock period
        en = 1'b1;
        repeat(20) @(negedge clk); //wait 20 periods (200 ns)
        m = 4'b0011; //300ns 1
        n = 4'b0010; //200ns 0
        repeat(50) @(negedge clk); //wait 50 periods (500 ns)
        m = 4'b0001; //100ns 1
        n = 4'b0101; //500ns 0
        repeat(60) @(negedge clk); //wait 60 periods (600 ns)
        m = 4'b1000; //800ns 1
        n = 4'b0001; //100ns 0
        repeat(100) @(negedge clk); //wait 100 periods (1000 ns)
        $stop;
    end
    
endmodule
