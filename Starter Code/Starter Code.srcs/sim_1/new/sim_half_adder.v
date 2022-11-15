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


module sim_half_adder;

    reg A, B;
    wire S, C;
    
    half_adder_2b half(.A(A), .B(B), .S(S), .C(C));
    
    initial begin
        A = 1'b0;
        B = 1'b0;
        #2; //S 0, C 0
        B = 1'b1;
        #2; //S 1, C 0
        A = 1'b1;
        B = 1'b0;
        #2; // S 1, C 0
        B = 1'b1;
        #2; //S 1, C 1
        $stop;
    end

endmodule
