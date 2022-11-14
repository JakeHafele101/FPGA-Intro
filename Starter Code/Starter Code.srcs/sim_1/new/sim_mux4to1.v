`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 03:42:39 PM
// Design Name: 
// Module Name: sim_mux4to1
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


module sim_mux4to1;

    reg  [3:0] X; //Sets test X inputs into MUX as registers to store data during SIM
    reg [1:0] S; //Sets S Select Line into MUX as registers to store data during SIM
    wire Y; //Sets Y output line as a wire to read through sim, does not need saved

    mux4x1 mux(.X(X), .S(S), .Y(Y)); //Adding instantiate test inputs to mux ports

    initial begin //In this test, Y should always output 1 to display correct MUX'ed input with select line
        X = 4'b0001;
        S = 2'b00; //Will select X0
        #2; //wait for 2 nanoseconds
        X = 4'b0010;
        S = 2'b01; //Will select X1
        #2;
        X = 4'b0100;
        S = 2'b10; //Will select X2
        #2;
        X = 4'b1000;
        S = 2'b11; //Will select X3
        #2;
        $stop;
    end //end of first test case
endmodule
