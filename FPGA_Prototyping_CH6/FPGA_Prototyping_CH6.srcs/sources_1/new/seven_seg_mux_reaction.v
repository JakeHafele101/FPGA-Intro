`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2022 10:51:51 PM
// Design Name: 
// Module Name: seven_seg_mux_reaction
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


module seven_seg_mux_reaction(
    input clk,
    input reset,
    input [3:0] seg3, seg2, seg1, seg0,  
    input [3:0] dp_en, 
    input [3:0] an_en,                   
    output reg [7:0] segment,
    output reg [3:0] an                 
    );
    
    parameter N = 18;

    reg [N-1:0] q_reg;
    wire [N-1:0] q_next;
    
    reg [3:0] seg_next;
    reg       dp_next;
            
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
                begin
                    an = ~(4'b0001 & an_en);
                    seg_next = seg0;
                    dp_next = ~dp_en[0];
                end
            2'b01:
                begin
                    an = ~(4'b0010 & an_en);
                    seg_next = seg1;
                    dp_next = ~dp_en[1];
                end
            2'b10: 
                begin
                    an = ~(4'b0100 & an_en);
                    seg_next = seg2;
                    dp_next = ~dp_en[2];
                end
            2'b11:
                begin
                    an = ~(4'b1000 & an_en);
                    seg_next = seg3;
                    dp_next = ~dp_en[3];
                end
        endcase
    end
    
    always @*
        begin
            case(seg_next) //7'b G,F,E,D,C,B,A
                4'h0: segment[6:0] = 7'b1000000; //displays 0,
                4'h1: segment[6:0] = 7'b1111001; //displays 1
                4'h2: segment[6:0] = 7'b0100100; //displays 2
                4'h3: segment[6:0] = 7'b0110000; //displays 3
                4'h4: segment[6:0] = 7'b0011001; //displays 4
                4'h5: segment[6:0] = 7'b0010010; //displays 5
                4'h6: segment[6:0] = 7'b0000010; //displays 6
                4'h7: segment[6:0] = 7'b1111000; //displays 7
                4'h8: segment[6:0] = 7'b0000000; //displays 8
                4'h9: segment[6:0] = 7'b0010000; //displays 9
                4'hA: segment[6:0] = 7'b0001001; //displays H
                4'hB: segment[6:0] = 7'b1001111; //displays I
             default: segment[6:0] = 7'b1000000; //defaults to displaying 0
        endcase
        segment[7] = dp_next; //Sets MSB to decimal point LED output for seven seg
        end
    //output logic
    
endmodule
