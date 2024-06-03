`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 07:40:16
// Design Name: 
// Module Name: timer
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


module timer(ts, tl, st, clk);
output ts;
output tl;
input st;
input clk;
integer value;
assign ts = (value >= 4); // 5 cycles after reset
assign tl = (value >= 14); // 15 cycles after reset
always @(posedge st) value = 0; // async reset
always @(posedge clk) value = value + 1;
endmodule
