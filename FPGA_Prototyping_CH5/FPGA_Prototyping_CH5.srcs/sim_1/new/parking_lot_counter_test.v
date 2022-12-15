`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2022 09:28:13 PM
// Design Name: 
// Module Name: parking_lot_counter_test
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


module parking_lot_counter_test(

    );
    
    parameter T = 6;
    
    reg clk, reset;
    reg [1:0] ab;
    wire enter, exit;
    
    parking_lot_counter lot(.clk(clk), .reset(reset), .a(ab[1]), .b(ab[0]), .enter(enter), .exit(exit));
    
    
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
        ab = 2'b00;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        
        //tick enter for one cycle
        ab = 2'b10;
        repeat(4) @(negedge clk);
        ab = 2'b11;
        repeat(4) @(negedge clk);
        ab = 2'b01;
        repeat(4) @(negedge clk);
        ab = 2'b00;
        repeat(4) @(negedge clk);
        
        //tick exit for one cycle
        ab = 2'b01;
        repeat(4) @(negedge clk);
        ab = 2'b11;
        repeat(4) @(negedge clk);
        ab = 2'b10;
        repeat(4) @(negedge clk);
        ab = 2'b00;
        repeat(4) @(negedge clk);

        $stop;
    end
    
endmodule
