`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2023 03:10:29 PM
// Design Name: 
// Module Name: kb_monitor_test
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


module kb_monitor_test(

    );
    
    
    parameter T = 2,  //clk period
              T_PS2 = 50; //ps2c period
              
    parameter DBIT = 8,      //bits of data in word
              SB_TICK = 16,  //ticks for stop bit. 16 = 1 bit, 24 for 1.5 bits, 32 for 2 bits
              DVSR = 1,     //counter for baud rate of 2 (T/BAUD)
              DVSR_BIT = 2,  //number of bits for DVSR counter for baud rate tick generator
              FIFO_W = 2;    //number of address bits in FIFO buffer (4 words)
              
    reg clk, reset;
    reg ps2d, ps2c;
    
    wire tx;
    
    reg [7:0] tx_ascii_1, tx_ascii_2, tx_ascii_SP;
    
    kb_monitor #(.DBIT(DBIT), .SB_TICK(SB_TICK), .DVSR(DVSR), .DVSR_BIT(DVSR_BIT), .FIFO_W(FIFO_W)) kb(.i_clk(clk), .i_reset(reset), .i_ps2d(ps2d), .i_ps2c(ps2c), .o_tx(tx));
    
    
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
        tx_ascii_1 = 8'b0;
        tx_ascii_2 = 8'b0;
        tx_ascii_SP = 8'b0;
        repeat(5) @(negedge clk); //rx_empty
        
        receive(8'h1C);  //in ASCII (31 43 20)
        transmit_ASCII();
        
        receive(8'h5A);  //in ASCII (35 41 20)
        transmit_ASCII();
        
        receive(8'h3B);  //in ASCII (33 42 20)
        transmit_ASCII();
        
        
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
                    tx_ascii_1 = {tx, tx_ascii_1[7:1]};
                end
            
            repeat((DVSR + 1) * 16) @(negedge clk); //middle of stop bit
            
            //hex0
            @(negedge tx); //start bit begins
            repeat(DVSR * 16) @(negedge clk); //middle of start bit after wait
            
            for(i = 0; i < 8; i = i + 1) //shift in data bits for hex0
                begin
                    repeat((DVSR + 1) * 16) @(negedge clk); //middle of data bit after wait
                    tx_ascii_2 = {tx, tx_ascii_2[7:1]};
                end
            
            repeat((DVSR + 1) * 16) @(negedge clk); //middle of stop bit
            
            //SP
            @(negedge tx); //start bit begins
            repeat(DVSR * 16) @(negedge clk); //middle of start bit after wait
            
            for(i = 0; i < 8; i = i + 1) //shift in data bits for SP
                begin
                    repeat((DVSR + 1) * 16) @(negedge clk); //middle of data bit after wait
                    tx_ascii_SP = {tx, tx_ascii_SP[7:1]};
                end
            
            repeat((DVSR + 1) * 16) @(negedge clk); //middle of stop bit
        
        end
    endtask
    
endmodule
