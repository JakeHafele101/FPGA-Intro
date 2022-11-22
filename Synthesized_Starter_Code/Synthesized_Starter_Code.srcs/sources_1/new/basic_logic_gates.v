`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2022 10:30:20 PM
// Design Name: 
// Module Name: basic_logic_gates
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


module basic_logic_gates(
    input [15:0] sw,
    output [15:0] LED
    );
    
    assign LED[0] = sw[0] && sw[1]; //AND gate
    assign LED[2] = sw[2] || sw[3]; //OR gate
    assign LED[4] = !sw[4]; //NOT gate
    assign LED[5] = sw[5] ^ sw[6]; //XOR gate
endmodule
