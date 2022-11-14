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

//Priority encoder, will output highest bit that is logic high
module sim_encoder; 

    reg [3:0] X;
    reg en;
    wire [1:0] Y;
    
    encoder4x2 encoder(.X(X), .en(en), .Y(Y)); //.[module name]([test name])
    
    initial begin
        en = 0; //encoder disabled, output Y will  be 0
        X = 4'b0000;
        #2;
        repeat(15) begin //Don't need the begin/end part if only one statement, I need the delay though for testbench
            X = X + 1;
            #2;
        end
    
        en = 1; //encoder enabled
        X = 4'b0000;
        #2;
        repeat(15) begin
            X = X + 1;
            #2;
        end
        
        $stop;
    end


endmodule
