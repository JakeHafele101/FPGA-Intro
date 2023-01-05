`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2023 10:51:05 PM
// Design Name: 
// Module Name: ps2_rx_test
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


module ps2_rx_test(

    );
    
    parameter T = 2,  //clk period
              T_PS2 = 50; //ps2c period
              
    reg clk, reset;
    reg ps2d, ps2c;
    reg rx_en;
    
    wire rx_done_tick;
    wire [7:0] o_data;
    
    ps2_rx ps2_rx(.i_clk(clk), .i_reset(reset), .i_ps2d(ps2d), .i_ps2c(ps2c), .i_rx_en(rx_en), .o_rx_done_tick(rx_done_tick), .o_data(o_data));
    
    
    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    always begin
        ps2c = 1'b1;
        #(T_PS2/2);
        ps2c = 1'b0;
        #(T_PS2/2);
    end
    
    initial begin
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
    end
    
    initial begin
        ps2d = 1'b1;
        rx_en = 1'b0;
        @(negedge clk); //rx_empty
        
        rx_en = 1'b1;
        @(negedge clk);
        receive(8'b00000001);  //receive 1
        
        rx_en = 1'b0;
        @(negedge clk);
        receive(8'd10); //enable not on, no receive occurs
        
        rx_en = 1'b1;
        @(negedge clk); //rx_empty
        receive(8'd0);  //receive 5
        receive(8'd173);  //receive 5
        receive(8'd255);  //receive 5
        
        $stop;
    end
    
    //loads receive data word one bit at a time
    task receive(input [7:0] data_in);
        integer i;
        reg parity;
        begin
            parity = 1'b1; //if 0, odd number of 1 data bits. if 1, even number of 1 data bits
            ps2d = 1'b1; //idle
            @(posedge ps2c); //wait to start until positive edge of ps2c, so data bits tx bits synced up to falling edge
            ps2d = 1'b0; //start bit
            @(posedge ps2c);
            
            for(i = 0; i < 8; i = i + 1) //load data bits
                begin
                    if(data_in[i] == 1'b1) //inverts parity count between even and odd if 1 data bit detected
                        parity = ~parity;
                        
                    ps2d = data_in[i];
                    @(posedge ps2c);
                end
            
            //parity bit
            ps2d = parity;
            @(posedge ps2c);
            
            ps2d = 1'b1; //stop bit
            @(posedge ps2c);
        end
    endtask
    
endmodule