`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 03:42:39 PM
// Design Name: 
// Module Name: sim_mux4to1
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


module sim_mux4to1;

    reg [1:0] t_X0, t_X1, t_X2, t_X3; //Sets test X inputs into MUX as registers to store data during SIM
    reg [1:0] SELECT; //Sets S Select Line into MUX as registers to store data during SIM
    wire [1:0] OUTPUT; //Sets Y output line as a wire to read through sim, does not need saved

    mux4x1 mux(.X0(t_X0), .X1(t_X1), .X2(t_X2), .X3(t_X3), .S(SELECT), .Y(OUTPUT)); //Adding instantiate test inputs to mux ports

    initial begin //validates each X bus selected properly with select line incrementing
        t_X0 = 2'b00; //sets t_X0 to 0
        t_X1 = 2'b01; //sets t_X1 to 1
        t_X2 = 2'b10; //sets t_X1 to 2
        t_X3 = 2'b11; //sets t_X1 to 3
        
        SELECT = 2'b00; //Will select X0
        #2; //wait for 2 nanoseconds
        SELECT = 2'b01; //Will select X1
        #2;
        SELECT = 2'b10; //Will select X2
        #2;
        SELECT = 2'b11; //Will select X3
        #2;
        SELECT = 2'b10; //Will select X3
        #2;
         SELECT = 2'b01; //Will select X3
        #2;
         SELECT = 2'b00; //Will select X3
        #2;
        $stop; //stop pauses simulation
    end //end of first test case
endmodule
