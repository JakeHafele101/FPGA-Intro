`timescale 1ns / 1ps // [time unit] / [time precision]
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

    parameter PERIOD = 1; 
    parameter CASE_DELAY = 10000; //Delay N periods to check different case statements for LED output
    
    //set up 
    reg sw_enable, clk;
    reg [1:0] sw_clk;
    wire o_LED;
    
    //Instantiate module, set frequency counts lower for faster sim
    blink_led #(.c_CNT_2000mHZ(10), .c_CNT_1000mHZ(20), .c_CNT_100mHZ(200), .c_CNT_10mHZ(2000)) 
        blink (.i_sw_enable(sw_enable), .i_sw_clk1(sw_clk[1]), .i_sw_clk0(sw_clk[0]), .i_clk(clk), .o_LED(o_LED));

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
        sw_clk = 2'b00; 
        #(PERIOD * CASE_DELAY);
        sw_clk = 2'b01;
        #(PERIOD * CASE_DELAY);
        sw_clk = 2'b10;
        #(PERIOD * CASE_DELAY);
        sw_clk = 2'b11;
        #(PERIOD * CASE_DELAY);
        sw_enable = 0; //Enable off, output LED will be 0, or OFF
        sw_clk = 2'b00;
        #(PERIOD * CASE_DELAY);
        sw_clk = 2'b01;
        #(PERIOD * CASE_DELAY);
        sw_clk = 2'b10;
        #(PERIOD * CASE_DELAY);
        sw_clk = 2'b11;
        #(PERIOD * CASE_DELAY);
        $display($time, " << Ending the Simulation>> ");
        $stop; //stop sim
    end
    
endmodule
