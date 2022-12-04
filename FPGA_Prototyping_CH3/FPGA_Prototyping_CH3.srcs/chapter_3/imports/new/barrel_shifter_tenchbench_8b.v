`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 05:18:43 PM
// Design Name: 
// Module Name: barrel_shifter_tenchbench_8b
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


module barrel_shifter_tenchbench_8b;
    
    reg [7:0] in;
    reg lr;
    reg [2:0] amt;
    wire [7:0] out;
    
    localparam DELAY = 10;
    
    //shifter with right and left shifer circuit
//    barrel_shifter_lr_8b shift_lr(.a(in), .lr(lr), .amt(amt), .y(out));
    
    //shifter with right circuit and pre and post reversing. Same functionality, less LUTs!
    barrel_shifter_r_8b shift_r(.a(in), .lr(lr), .amt(amt), .y(out));
    
    initial begin
        //no left shift when amt of shifted bits is 0
        in = 8'b00001000;
        lr = 1'b1; //shift left
        amt = 3'b000; //0 bits shifted
        #DELAY //no right shift when amt of shifted bits is 0
        lr = 1'b0; //shift right
        #DELAY
        amt = 3'b001; //shift 1 bit
        #DELAY
        amt = 3'b010; //shift 2 bits
        #DELAY
        amt = 3'b101; //shift 5 bits
        #DELAY
        amt = 3'b111; //shift 7 bits
        #DELAY
        in = 8'b00001000;
        lr = 1'b1; //shift left
        #DELAY
        amt = 3'b001; //shift 1 bit
        #DELAY
        amt = 3'b011; //shift 3 bits
        #DELAY
        amt = 3'b100; //shift 4 bits
        #DELAY
        amt = 3'b110; //shift 6 bits
        #DELAY
        $stop;
    end
    
endmodule
