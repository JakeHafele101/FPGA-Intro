`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2022 05:55:21 PM
// Design Name: 
// Module Name: debounce_test
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


module debounce_test(

    );
    
    parameter T = 4;
    parameter switch_bounce = T;
    parameter N = 3; //sets debounce time, which is T * 2^N ns. set to 36 ns
    
    reg clk, reset;
    reg switch;
    
    wire db_level, db_tick;
    wire tick;
    wire [7:0] count_db, count;
    
    //instantiate debounce circuit and dual edge detector/counter. 20 ns debounce!
    debounce_FSMD #(.N(N))debounce(.clk(clk), .reset(reset), .sw(switch), .db_level(db_level), .db_tick(db_tick));
        
    counter_8b counter_db(.clk(clk), .reset(reset), .en(db_tick), .q(count_db));
    
    //instantiate dual edge detector and counter WITHOUT debounce circuit
    rising_edge_detector_mealy mealy_edge(.clk(clk), .reset(reset), .level(switch), .tick(tick));
    
    counter_8b counter(.clk(clk), .reset(reset), .en(tick), .q(count));
    
    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    initial begin
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
    end
    
    initial begin
        switch = 1'b0;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk); //wait for one clock period
        
        //simulate bounce on initial press down
        switch = 1'b1;
        #(switch_bounce);
        switch = 1'b0;
        #(switch_bounce);
        switch = 1'b1;
        #(switch_bounce);
        switch = 1'b0;
        #(switch_bounce);
        switch = 1'b1;
        #(switch_bounce);
        switch = 1'b0;
        #(switch_bounce);
        switch = 1'b1;
        repeat(switch_bounce * 5) @(negedge clk);
        
        switch = 1'b0;
        #(switch_bounce);
        switch = 1'b1;
        #(switch_bounce);
        switch = 1'b0;
        #(switch_bounce);
        switch = 1'b1;
        #(switch_bounce);
        switch = 1'b0;
        #(switch_bounce);
        switch = 1'b0;
        repeat(switch_bounce * 5) @(negedge clk);
        
        $stop;
    end
    
    
endmodule
