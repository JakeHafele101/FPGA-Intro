`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 10:44:03 PM
// Design Name: 
// Module Name: ps2_rx_watchdog_test
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


module ps2_rx_watchdog_test(

    );
    
    localparam [7:0] BRK = 8'hf0, //BRK code after key released
                     SHIFT = 8'h12; //code for shift key
    
    parameter T = 2,  //clk period
              T_PS2 = 50; //ps2c period
              
    parameter DBIT = 8,      //bits of data in word
              SB_TICK = 16,  //ticks for stop bit. 16 = 1 bit, 24 for 1.5 bits, 32 for 2 bits
              DVSR = 1,     //counter for baud rate of 2 (T/BAUD)
              DVSR_BIT = 2,  //number of bits for DVSR counter for baud rate tick generator
              FIFO_W = 2,    //number of address bits in FIFO buffer (4 words)
              TIMEOUT_DVSR = 100; //count to 100 for ps2 rx timeout (takes 200 ns with clock period  of 2)
              
    reg clk, reset;
    reg ps2d, ps2c;
    
    reg ps2c_hold;
    
    wire [8:0] key_code;
    wire [7:0] ascii_code;
    wire kb_buf_empty;
    
    wire tx;
    
    wire time_out;
    
    reg [7:0] tx_ascii;
        
    kb_code_shift #(.FIFO_W(FIFO_W), .TIMEOUT_DVSR(TIMEOUT_DVSR)) kb(.i_clk(clk), .i_reset(reset), .i_ps2d(ps2d), .i_ps2c(ps2c), .i_rd_key_code(~kb_buf_empty), .o_key_code(key_code), .o_kb_buf_empty(kb_buf_empty), .o_time_out(time_out));
    
    key_to_ascii_shift key_to_ascii_shift(.i_key_code(key_code), .o_ascii_code(ascii_code));
    
    uart #(.DBIT(DBIT), .SB_TICK(SB_TICK), .DVSR(DVSR), .DVSR_BIT(DVSR_BIT), .FIFO_W(FIFO_W)) 
         uart(.i_clk(clk), .i_reset(reset), .i_rd_uart(1'b0), .i_wr_uart(~kb_buf_empty), .i_rx(1'b1), .i_wr_data(ascii_code), 
              .o_tx_full(), .o_rx_empty(), .o_tx(tx), .o_rd_data());
    
    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    always begin
        ps2c = 1'b1;
        #(T_PS2/2);
        
        if(~ps2c_hold)
            begin
                ps2c = 1'b0;
                #(T_PS2/2);
            end
    end
    
    initial begin
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
    end
    
    initial begin
        ps2d = 1'b1;
        tx_ascii = 1'b0;
        ps2c_hold = 1'b0;
        repeat(5) @(negedge clk); //rx_empty
        
        receive(BRK);    // BRK code, will read following 
        receive(8'h1C);  // a
        transmit_ASCII();
        
        trigger_time_out();
        
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
    
    task transmit_ASCII();
        integer i;
        begin
            
            @(negedge tx); //start bit begins
            repeat(DVSR * 16) @(negedge clk); //middle of start bit after wait
            
            for(i = 0; i < 8; i = i + 1) //shift in data bits for hex1
                begin
                    repeat((DVSR + 1) * 16) @(negedge clk); //middle of data bit after wait
                    tx_ascii = {tx, tx_ascii[7:1]};
                end
            
            repeat((DVSR + 1) * 16) @(negedge clk); //middle of stop bit
        
        end
    endtask
    
    task trigger_time_out();
        begin
            ps2d = 1'b1; //idle
            @(posedge ps2c); //wait to start until positive edge of ps2c, so data bits tx bits synced up to falling edge
            ps2d = 1'b0; //start bit
            @(posedge ps2c);
            ps2c_hold = 1'b1; //hold active so no falling edge occurs
            repeat((TIMEOUT_DVSR * T) + 20) @(posedge clk); //wait until time exceeds watchdog timer
            ps2c_hold = 1'b0;
        end
    endtask
    
endmodule
