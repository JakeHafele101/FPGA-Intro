`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01/14/2023 12:27:35 AM
// Design Name:
// Module Name: enhanced_stopwatch_ps2_test
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


module enhanced_stopwatch_ps2_test();
    
    localparam [7:0] BRK = 8'hf0, //BRK code after key released
    SHIFT = 8'h12; //code for shift key
    
    parameter T = 2,  //clk period
    T_PS2 = 50, //ps2c period
    DVSR = 0,   //count stopwatch every clk period
    FIFO_W = 2;    //number of address bits in FIFO buffer (4 words)
    
    reg clk, reset;
    reg ps2d, ps2c;
    
    wire [8:0] key_code;
    wire [7:0] ascii_code;
    wire kb_buf_empty;
    wire kb_time_out;
    
    wire go, clr, up;
    wire [3:0] d3, d2, d1, d0;
    
    kb_code_shift #(.FIFO_W(FIFO_W)) kb(.i_clk(clk), .i_reset(reset), .i_ps2d(ps2d), .i_ps2c(ps2c), .i_rd_key_code(~kb_buf_empty), .o_key_code(key_code), .o_time_out(kb_time_out), .o_kb_buf_empty(kb_buf_empty));
    
    key_to_ascii_shift key_to_ascii_shift(.i_key_code(key_code), .o_ascii_code(ascii_code));
    
    //receive interface to handle ascii inputs from PS2 keyboard
    enhanced_stopwatch_receive_interface recieve_ascii(.i_clk(clk), .i_reset(reset), .i_ascii(ascii_code), .i_rd_ascii(~kb_buf_empty), .o_go(go),
    .o_clr(clr), .o_up(up));
    
    //stopwatch unit
    enhanced_stopwatch #(.DVSR(DVSR))enhanced_stopwatch(.clk(clk), .go(go), .clr(clr), .up(up), .d3(d3), .d2(d2), .d1(d1), .d0(d0));
    
    //clk period of FPGA
    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    //ps2 clock period
    always begin
        ps2c = 1'b1;
        #(T_PS2/2);
        ps2c = 1'b0;
        #(T_PS2/2);
    end
    
    //initial values and reset
    initial begin
        ps2d = 1'b1;
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
    end

    initial begin
        
        receive(BRK);    // BRK code, will read following
        receive(8'h34);  // G, resume counting
        
        // repeat(100 * T) @(negedge clk) //count 100 ms up

        receive(8'h4D);  // P, pause counting
        receive(8'h4D);  // P, pause counting
        receive(BRK);    // BRK code, will read following
        receive(8'h4D);  // P, pause counting
        
        repeat(5) @(negedge clk); //no counting

        receive(8'h3C);  // U, reverse counting direction
        receive(8'h3C);  // U, reverse counting direction
        receive(BRK);    // BRK code, will read following
        receive(8'h3C);  // U, reverse counting direction

        receive(8'h34);  // G, resume counting
        receive(8'h34);  // G, resume counting
        receive(BRK);    // BRK code, will read following
        receive(8'h34);  // G, resume counting
        
        repeat(50 * T) @(negedge clk); //counting 50 ms down
        
        receive(8'h21);  // C, set timer to 0, stop counting
        receive(8'h21);  // C, set timer to 0, stop counting
        receive(BRK);    // BRK code, will read following
        receive(8'h21);  // C, set timer to 0, stop counting
        
        repeat(50 * T) @(negedge clk); //counting 50 ms down
        
        $finish;
    end
    
    //loads receive data word one bit at a time
    task receive(input [7:0] data_in);
        integer i;
        reg parity;
        begin
            parity = 1'b1; //if 0, odd number of 1 data bits. if 1, even number of 1 data bits
            ps2d   = 1'b1; //idle
            @(posedge ps2c); //wait to start until positive edge of ps2c, so data bits tx bits synced up to falling edge
            ps2d = 1'b0; //start bit
            @(posedge ps2c);
            
            for(i = 0; i < 8; i = i + 1) //load data bits
            begin
                if (data_in[i] == 1'b1) //inverts parity count between even and odd if 1 data bit detected
                    parity = ~parity;
                
                ps2d = data_in[i];
                @(posedge ps2c);
            end
            
            //parity bit
            ps2d = parity;
            @(posedge ps2c);
            
            ps2d = 1'b1; //stop bit
            @(posedge ps2c);
            repeat(10) @(negedge clk); //count 100 ms up
        end
    endtask
    
endmodule
