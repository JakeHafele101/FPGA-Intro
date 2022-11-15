`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 10:12:35 PM
// Design Name: 
// Module Name: sim_DFF
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


module sim_DFF;

    reg D, Clk;
    wire Q, not_Q;
    
    DFF_Pos_Edge DFF(.D(D), .Clk(Clk), .Q(Q), .not_Q(not_Q));

    initial begin
        D = 1'b0;
        Clk = 1'b0;
        #2;
        Clk = 1'b1;
        #2
        D = 1'b1;
        #2;
        Clk = 1'b0;
        #2;
        Clk = 1'b1;
        #2;
        D = 1'b1;
        Clk = 1'b0;
        #2;
        $stop;
    end

endmodule
