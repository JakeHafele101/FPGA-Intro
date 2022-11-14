`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 10:13:54 PM
// Design Name: 
// Module Name: sim_encoder
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


module sim_decoder;

    reg [1:0] X;
    reg en;
    wire [3:0] Y;
    
    decoder2x4 dec(.X(X), .en(en), .Y(Y));
    
    initial begin //Test case checks all states of decoder.
        en = 0;
        X = 2'b00; //enable bit off, Y will be 0
        #2;
        X = 2'b01; //enable bit off, Y will be 0
        #2;
        X = 2'b10; //enable bit off, Y will be 0
        #2;
        X = 2'b11; //enable bit off, Y will be 0
        #2;
        en = 1;
        X = 2'b00; //enable bit on, Y will be 1
        #2;
        X = 2'b01; //enable bit on, Y will be 2
        #2;
        X = 2'b10; //enable bit on, Y will be 4
        #2;
        X = 2'b11; //enable bit on, Y will be 8
        #2;
        $stop;
    end


endmodule