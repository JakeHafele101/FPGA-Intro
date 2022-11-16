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
    #(parameter N=4) //cannot be modified inside module, only passed in. default value is 4 bits
    (
    input [N-1:0] A, //uses parameter for variable bit lengths!
    input [N-1:0] B,
    input [N-1:0] Sum,
    input Cout
    );
        
    wire Sum_Inter;
    
    assign Sum_Inter = {1'b0, A} + {1'b0, B};
    assign Sum = Sum_Inter[N:0];
    assign Cout = Sum_Inter[N];
    
endmodule
