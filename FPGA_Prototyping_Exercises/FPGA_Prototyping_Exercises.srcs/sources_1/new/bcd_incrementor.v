`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2022 12:48:04 AM
// Design Name: 
// Module Name: bcd_incrementor
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


module bcd_incrementor(
    input [3:0] in,
    input en,
    output reg carry,
    output reg [3:0] out
    );
    
    always @*
        begin
            carry = 0; //carry set to 0 by default
            
            if(in < 9 && en) //if under 9 and enable high, increment by 1
                out = in + 1; //increment by 1
            else if(en) //if equal or above 9, set output to 0 and carry to 1 to increment next decimal
                begin
                    out = 0;
                    carry = 1;
                end
            else //if enable 0, output stays same as input
                out = in;
        end  
endmodule
