`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 06:27:58 PM
// Design Name: 
// Module Name: ripple_carry_Nb
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


module ripple_carry_Nb
    #(parameter N=4) //number of bits to be added together from A and B. Only passed in to module. Default value of 4
    (
    input [N-1:0] A, //uses parameter for variable bit lengths!
    input [N-1:0] B,
    input Cin,
    output [N-1:0] Sum,
    output Cout
    );
        
    wire [N: 0] Sum_Inter; //Intermittent sum with extra concatenated bit to hold Cout
    
    assign Sum_Inter = {1'b0, A} + {1'b0, B} + Cin;
    assign Sum = Sum_Inter[N-1:0]; //Sum except for MSB, which includes COut
    assign Cout = Sum_Inter[N]; //MSB of sum, which uses output carry bit
    
endmodule
