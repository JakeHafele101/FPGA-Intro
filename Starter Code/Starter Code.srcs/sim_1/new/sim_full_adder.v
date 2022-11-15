`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 06:55:37 PM
// Design Name: 
// Module Name: sim_half_adder
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

module sim_full_adder;

    reg A, B, C0;
    wire S1, C1;
    
    full_adder_2b full(.A(A), .B(B), .C0(C0), .S1(S1), .C1(C1));
    
    initial begin
        A = 1'b0;
        B = 1'b0;
        C0 = 1'b0;
        #2;
        C0 = 1'b1;
        #2;
        B = 1'b1;
        C0 = 1'b0;
        #2;
        C0 = 1'b1;
        #2;
        A = 1'b1;
        B = 1'b0;
        C0 = 1'b0;
        #2;
        C0 = 1'b1;
        #2;
        B = 1'b1;
        C0 = 1'b0;
        #2;
        C0 = 1'b1;
        #2;
        $stop;
    end


endmodule