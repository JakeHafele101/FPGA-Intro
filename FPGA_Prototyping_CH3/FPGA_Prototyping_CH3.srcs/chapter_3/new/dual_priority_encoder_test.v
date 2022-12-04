`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 11:57:55 PM
// Design Name: 
// Module Name: dual_priority_encoder_test
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


module dual_priority_encoder_test(

    );
    
    localparam DELAY = 5;
    
    reg [11:0] req;
    wire [3:0] first, second;
    
    dual_priority_encoder_12b enc(.req(req), .first(first), .second(second));
    
    initial begin
        req = 12'b000000000000;
        #DELAY
        req = 12'b000000010000;
        #DELAY
        req = 12'b001000000000;
        #DELAY
        req = 12'b000100100000;
        #DELAY
        req = 12'b100000000100;
        #DELAY
        req = 12'b000011000000;
        #DELAY
        req = 12'b000000001010;
        #DELAY
        req = 12'b001010100100;
        #DELAY
        req = 12'b111111111111;
        #DELAY
        req = 12'b000000000011;
        #DELAY
        $stop;
    end
    
    
endmodule
