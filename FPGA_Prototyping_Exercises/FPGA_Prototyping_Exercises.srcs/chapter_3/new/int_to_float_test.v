`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2022 10:05:13 PM
// Design Name: 
// Module Name: int_to_float_test
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


module int_to_float_test(

    );
    
    localparam DELAY = 5;
    
    reg [7:0] int;
    wire sign;
    wire [3:0] exp;
    wire [7:0] mantissa;
    
    int_to_float conversion(.int(int), .float({sign, exp, mantissa}));
    
    initial begin
    int = 8'b10000000; //-128
    #DELAY;
    int = 8'b00101010; //+42
    #DELAY;
    int = 8'b11111111; //-1
    #DELAY;
    int = 8'b10010010; //-110
    #DELAY;
    int = 8'b01100011; //+
    #DELAY;
    int = 8'b11100011; //-
    #DELAY;
    $stop;
    
    end
endmodule
