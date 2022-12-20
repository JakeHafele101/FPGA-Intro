`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2022 02:57:58 PM
// Design Name: 
// Module Name: babbage
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


module babbage(
    input i_clk, i_reset, 
    input i_start, 
    input [5:0] i_n,         //6 bit unsigned integer n for polynomial f(n) = 2(n^2) + 3n + 5
    output reg o_ready, o_done_tick, 
    output [12:0] o_f        //max output is 8132 if i_n is 63
    );
    
    //state definitions
    localparam [1:0] idle = 2'b00, //shows "HI" on seven seg, stimulus 0. press i_start to initiate test, seven seg goes off at this point
                     op = 2'b01,  
                     done = 2'b11;
    
    //register definitions 
    reg [1:0] s_state_reg, s_state_next;
    reg [5:0] s_n_reg, s_n_next;
    reg [12:0] s_f_reg, s_g_reg;
    reg [12:0] s_f_next, s_g_next;
    
    always @(posedge i_clk, posedge i_reset)
        if (i_reset)
            begin
                s_state_reg  <= 0;
                s_n_reg      <= 0;
                s_f_reg      <= 0;
                s_g_reg      <= 0;
            end
        else
            begin
                s_state_reg  <= s_state_next;
                s_n_reg      <= s_n_next;
                s_f_reg      <= s_f_next;
                s_g_reg      <= s_g_next;
            end
    
    always @*
        begin
            //default definitions
            s_state_next  = s_state_reg;
            s_n_next      = s_n_reg;
            s_f_next      = s_f_reg;
            s_g_next      = s_g_reg;
            
            o_ready = 1'b0;
            o_done_tick = 1'b0;
            
            case(s_state_reg)
                idle: 
                    begin
                        o_ready = 1'b1;
                        if (i_start)
                            begin
                                s_state_next = op;
                                s_n_next = 0;        //reset n to increment
                                s_f_next = 0;
                                s_g_next = 0;
                            end
                    end
                op: 
                    begin
                        
                        s_n_next = s_n_reg + 1;
                        
                        s_g_next = (s_n_reg == 1) ? 5 : s_g_reg + 4;
                        
                        s_f_next = (s_n_reg == 0) ? 5 : s_f_reg + s_g_next;

                        if(s_n_reg == i_n)
                            s_state_next = done;
                    end
                done: 
                    begin
                        o_done_tick = 1'b1;
                        s_state_next = idle;
                    end
                default: s_state_next = idle;
            endcase
        end
    
    //output data
    assign o_f = s_f_reg;
    
endmodule

//63