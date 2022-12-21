`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2022 12:59:21 PM
// Design Name: 
// Module Name: uart_tx
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


module uart_tx(
    input i_clk, i_reset, 
    input i_tx_start,           //receive bit
    input i_s_tick,             //enable start tick from baud rate generator. samples 16 times per bit
    input [DBIT-1:0] i_data,
    output reg o_tx_done_tick, 
    output o_tx
    );
    
    parameter DBIT = 8, //data bits in message
              SB_TICK = 16; //ticks to sample stop bit
              
    localparam [1:0] idle = 2'b00, 
                     start = 2'b01, 
                     data = 2'b10, 
                     stop = 2'b11;
                     
    reg [1:0]      s_state_reg, s_state_next;  //state register
    reg [4:0]      s_s_reg,     s_s_next;      //reg for 16 tick samples per bit
    reg [2:0]      s_n_reg,     s_n_next;      //n keeps track of sampling data bit
    reg [DBIT-1:0] s_b_reg,     s_b_next;      //reg to store received data bits, max set by DBIT parameter
    reg            s_tx_reg,    s_tx_next;     //1 bit output buffer to avoid glitches
    
    always @(posedge i_clk, posedge i_reset)
        if(i_reset)
            begin
                s_state_reg <= idle;
                s_s_reg     <= 0;
                s_n_reg     <= 0;
                s_b_reg     <= 0;
                s_tx_reg    <= 1'b1;
            end
        else
            begin
                s_state_reg <= s_state_next;
                s_s_reg     <= s_s_next;
                s_n_reg     <= s_n_next;
                s_b_reg     <= s_b_next;
                s_tx_reg    <= s_tx_next;
            end
    
    always @*
        begin
            //default assignments
            s_state_next = s_state_reg;
            s_s_next     = s_s_reg;
            s_n_next     = s_n_reg;
            s_b_next     = s_b_reg;
            s_tx_next    = s_tx_reg;
            
            o_tx_done_tick = 1'b0;
        
            case(s_state_reg)
                idle:
                    begin
                        s_tx_next = 1'b1;
                        if(i_tx_start)
                            begin
                                s_state_next = start;
                                s_s_next = 0;
                                s_b_next = i_data;
                            end
                    end
                start:
                    begin
                        s_tx_next = 1'b0;
                        if(i_s_tick)
                            if(s_s_reg == 15)
                                begin
                                    s_state_next = data;
                                    s_s_next = 0;
                                    s_n_next = 0;
                                end
                            else 
                                s_s_next = s_s_reg + 1;
                    end
                data:
                    begin
                    s_tx_next = s_b_reg[0];
                        if(i_s_tick)
                            if (s_s_reg == 15) //samples after 15 more ticks since goes from middle of start bit to middle of data bit
                                begin
                                    s_s_next = 0; //reset tick counter to 0
                                    s_b_next = s_b_reg >> 1; //shift transmit bits right 1 since LSB received first
                                    if (s_n_reg == DBIT - 1) //if read last data bit
                                        s_state_reg = stop;
                                    else
                                        s_n_next = s_n_reg + 1;
                                end
                            else
                                s_s_next = s_s_reg + 1;
                     end
                stop:
                    begin
                        s_tx_next = 1'b1;
                        if(i_s_tick)
                            if(s_s_reg == (SB_TICK - 1)) //monitors stop bit after 16 ticks by default
                                begin
                                    s_state_next = idle;
                                    o_tx_done_tick = 1'b1;
                                end
                            else
                                s_s_next = s_s_reg + 1;
                    end
            
            endcase
        end
     
     assign o_tx = s_tx_reg;
     
endmodule
