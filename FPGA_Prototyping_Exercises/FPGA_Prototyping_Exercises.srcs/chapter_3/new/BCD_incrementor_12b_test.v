`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2022 12:42:04 PM
// Design Name: 
// Module Name: BCD_incrementor_12b_test
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


module BCD_incrementor_12b_test(

    );
    
    localparam DELAY = 5;
    
    reg [11:0] bcd_in;
    reg switch;
    wire [11:0] bcd_out;
    
    BCD_incrementor_12b BCD(.bcd_in(bcd_in), .en(switch), .bcd_out(bcd_out));
    
    initial begin
        bcd_in = 12'h000;
        #(DELAY * 200);
        $stop;
    end
    
    initial begin
        switch = 0; //on startup, set switch to 0
        #(DELAY * 2);
        switch = 1;
//        forever begin
//            #(DELAY * 2) switch = !switch; //every DELAY time units, switch will invert 
//        end
    end
    
    initial begin
        forever begin
            #DELAY bcd_in = bcd_out;
        end
    end
    
    
endmodule
