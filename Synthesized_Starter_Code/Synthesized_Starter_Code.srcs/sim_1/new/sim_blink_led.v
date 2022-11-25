`timescale 10ns / 1ps // [time unit] / [time precision]
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2022 06:49:20 PM
// Design Name: 
// Module Name: sim_blink_led
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


module sim_blink_led;

    parameter PERIOD = 1; //10 nanosecond period for 100MHZ clock. 1 since time unit is 10ns for test script
    parameter CASE_DELAY = 5; //Delay N periods to check different case statements for LED output
    
    //set up 
    reg sw_enable, clk;
    reg [1:0] sw_clk;
    wire o_LED;
    
    //Instantiate module
    blink_led blink(.i_sw_enable(sw_enable), .i_sw_clk1(sw_clk[1]), .i_sw_clk0(sw_clk[0]), .i_clk(clk), .o_LED(o_LED));

    //start of sim, set clk to 0
    initial begin
        $display($time, " << Starting the Simulation>> ");
        clk = 0;
    end
    
    //alternates clock every PERIOD time units
    always #PERIOD clk = ~clk; 
    
    //runs through different switch pins
    initial begin
        sw_enable = 1; //Enable on, output LED matches selected clock frequency
        sw_clk = 2'b00; //1 Hz, 1 second period
        #CASE_DELAY;
        sw_clk = 2'b01; //10 Hz, 0.1 second period
        #CASE_DELAY
        sw_clk = 2'b10; //50 Hz, 0.02 second period
        #CASE_DELAY
        sw_clk = 2'b11; //100 Hz, 0.01 second period
        #CASE_DELAY
        sw_enable = 0; //Enable off, output LED will be 0, or OFF
        sw_clk = 2'b00;
        #CASE_DELAY
        sw_clk = 2'b01;
        #CASE_DELAY
        sw_clk = 2'b10;
        #CASE_DELAY
        sw_clk = 2'b11;
        #CASE_DELAY
        $display($time, " << Ending the Simulation>> ");
        $stop; //stop sim
    end
    
endmodule
