`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2022 12:29:46 AM
// Design Name: 
// Module Name: heartbeat
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


module heartbeat(
    input clk, 
    input reset,
    input en,
    output reg [3:0] an,
    output reg [7:0] segment
    );
    
    parameter DVSR = 1388888; //Mod-M counter for 72 Hz heartbeat frequency
    
    //counter for clock frequency
    reg [31:0] ms_reg;         
    wire [31:0] ms_next;
    
    wire ms_tick;
    
    //counter for 8 rotating square states
    reg [1:0] count_reg;
    wire [1:0] count_next;
            
//    seven_seg_square_mux segment_square(.clk(clk), .reset(reset), .up(up), .an_en(an_en), .an(an), .segment(segment));
    
    always @(posedge clk, posedge reset)
        if(reset)
            begin
                ms_reg <= 0;
                count_reg <= 0;
            end
        else if (en)
            begin
                ms_reg <= ms_next;
                count_reg <= count_next;
            end
    
    //next-state logic
    
    assign ms_next = (reset || (ms_reg == DVSR && en)) ? 0 :
                     (en) ?   ms_reg + 1 :
                              ms_reg;
    //asserts ms_tick if DVSR at max for counter                      
    assign ms_tick = (ms_reg == DVSR) ? 1'b1 : 1'b0;
    
    //if clock tick and clock wise, increment. if clock tick and counter clockwise, decrement. otherwise, keep count same
    assign count_next = (ms_tick && count_reg == 3) ? 2'b00 : 
                                          (ms_tick) ? count_reg + 1 : 
                                                      count_reg;
        
    //output logic
    //an output, three states
    always @*
        begin
            case(count_reg)
                2'b00: an = 4'b1001;
                2'b01: an = 4'b1001;
                2'b10: an = 4'b0110;
            endcase
        end
    
    //segment output - FIGURE THIS OUT WITH A MUXXXXX
    always @*
        begin
            segment[7] = 1'b1; //DP never on for square seg display

            if(count_reg <= 3'b011) //7'b G,F,E,D,C,B,A
                segment[6:0] = 7'b0100011; //displays square in lower half
            else
                segment[6:0] = 7'b0011100; //displays square in upper half 
        end
endmodule
