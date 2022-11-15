`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 06:30:33 PM
// Design Name: 
// Module Name: sim_comparator2b
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


module sim_comparator2b;

    reg A, B; //Set test inputs as registers
    wire Y; //set test output as wire
    
    comparator_2b comp2b(.A(A), .B(B), .Y(Y));

    initial begin
        A = 1'b0;
        B = 1'b0;
        #2; //Y will output 1
        B = 1'b1;
        #2; //Y will output 0
        A = 1'b1;
        B = 1'b0;
        #2; //Y will output 0
        B = 1'b1;
        #2; //Y will output 1
        $stop;
    end
    

endmodule
