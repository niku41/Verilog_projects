`timescale 1ns / 1ps
module top_module(clk,rst,timer_out);

    input clk,rst;
    output timer_out;  // 
    wire w1;
    up_counter c1(.rst(rst),.clk(clk),.y(w1));
    timer t1(.rst(rst),.clk(w1),.timer_out(timer_out));
    
endmodule