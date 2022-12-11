`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 08:40:17 PM
// Design Name: 
// Module Name: seven_seg_square_mux
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


module seven_seg_square_mux(
    input clk,
    input reset,
    input up,                    //determines if segment display will be upper (1) or lower (0) square
    input [3:0] an_en,           //enable input determining which seg displays on (should only be 1)
    output reg [3:0] an,         //output an for FPGA
    output reg [7:0] segment     //output seg for FPGA
    );
    
    parameter N = 18;

    reg [N-1:0] q_reg;
    wire [N-1:0] q_next;
            
    //Register
    always @(posedge clk, posedge reset)
        if(reset)
            q_reg <= 0;
        else
            q_reg <= q_next;
    
    //next-state logic
    assign q_next = q_reg + 1; //if at max value, addition jumps back to 0
    
    //output logic
    always @*
    begin
        case(q_reg[N-1:N-2]) //Checks two most significant bits of counter for case selection
            2'b00: 

an = 4'b1110 & ~an_en;
            2'b01: an = 4'b1101 & ~an_en;
            2'b10: an = 4'b1011 & ~an_en;
            2'b11: an = 4'b0111 & ~an_en;
        endcase
    end
    
    always @*
        begin
            case(up) //7'b G,F,E,D,C,B,A
                1'b0: segment[6:0] = 7'b0011100; //displays square in lower half
                1'b1: segment[6:0] = 7'b0100011; //displays square in upper half 
            endcase
            segment[7] = 1'b1; //DP never on for square seg display
        end
    //output logic
    
endmodule
