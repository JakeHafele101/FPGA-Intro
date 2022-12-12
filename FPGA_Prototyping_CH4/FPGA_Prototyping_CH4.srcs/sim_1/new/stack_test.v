`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 01:34:50 AM
// Design Name: 
// Module Name: stack_test
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


module stack_test(

    );
    
    parameter T = 4;
    parameter B = 4;
    parameter W = 3;
    
    reg clk, reset;
    reg push, pop;
    reg [B-1:0] push_data;
    
    wire empty, full;
    wire [B-1:0] pop_data;
    
    stack #(.B(B), .W(W)) stack(.clk(clk), .reset(reset), .push(push), .pop(pop), .push_data(push_data), .empty(empty), .full(full), .pop_data(pop_data));

    
    //period of clock
    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    //reset in first period of clk
    initial begin
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;
    end
    
    initial begin
        push = 1'b0;
        pop = 1'b0;
        push_data = 4'h0;
        @(negedge reset); //wait for initial reset to deassert
        @(negedge clk);   //wait for one clock period
        
        //verify empty and no pop operation works
        pop = 1'b1;     
        repeat(1) @(negedge clk);
        pop = 1'b0;     
        repeat(1) @(negedge clk);
        
        //fill register with push to full
        push = 1'b1;
        repeat(1) @(negedge clk); 
        push_data = 4'h1;
        repeat(1) @(negedge clk);
        push_data = 4'h2;
        repeat(1) @(negedge clk);
        push_data = 4'h3;
        repeat(1) @(negedge clk);
        push_data = 4'h4;
        repeat(1) @(negedge clk);
        push_data = 4'h5;
        repeat(1) @(negedge clk);
        push_data = 4'h6; 
        repeat(1) @(negedge clk);
        push_data = 4'h7; //should be full now
        repeat(1) @(negedge clk);
        
        //unable to push anymore, full now
        push_data = 4'h8; 
        repeat(1) @(negedge clk);
        
        //pop down to empty, not full anymore
        push = 1'b0;
        pop = 1'b1; 
        
        //if push and pop both 1, addresses stay the same
        repeat(10) @(negedge clk); 
        push = 1'b1; //push 8
        pop = 1'b0;
        repeat(1) @(negedge clk); 
        push = 1'b1;
        pop = 1'b1; 
        repeat(1) @(negedge clk);
        $stop;
    end
    
    
endmodule
