`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 13:50:29
// Design Name: 
// Module Name: tb_d_ff_asynchronous
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


module tb_d_ff_asynchronous();
reg D;
reg clk;
reg async_reset;
wire Q;
d_ff dut(D,clk,async_reset,Q);
initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 async_reset=1;
 D<=0;
 #50;
 async_reset=0;
 D<=1;
 #50;
 D<=0;
 #50;
 D<=1;
end 
endmodule
