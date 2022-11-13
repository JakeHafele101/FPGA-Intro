`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 08:34:34 PM
// Design Name: 
// Module Name: sim_dec2x4
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


module sim_dec2x4;

    reg [1:0] X;
    reg en;
    wire [3:0] Y;
    
    decoder2x4 dec(.X(X), .en(en), .Y(Y));
    
    initial begin
    en = 1'b1; //sets enable to ON
    X = 2'b00; //Y output will be 1
    #2;
    X = 2'b01; //Y output will be 2
    #2;
    X = 2'b10; //Y output will be 4
    #2;
    X = 2'b11; //Y output will be 8
    #2;
    en = 0'b0; //sets enable to OFF
    X = 2'b00; //Y output will be 0
    #2;
    X = 2'b01; //Y output will be 0
    #2;
    X = 2'b10; //Y output will be 0
    #2;
    X = 2'b11; //Y output will be 0
    #2;
    $finish;
    end
    
endmodule
