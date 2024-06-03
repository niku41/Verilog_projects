`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 13:50:11
// Design Name: 
// Module Name: sipo_using_dff
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


module sipo_using_dff(input clk,D,rst,output [3:0]Q);
wire w1,w2,w3;
dff dut1(.clk(clk),.D(D),.Q(Q[0]),.rst(rst));
dff dut2(.clk(clk),.D(D),.Q(Q[1]),.rst(rst));
dff dut3(.clk(clk),.D(D),.Q(Q[2]),.rst(rst));
dff dut4(.clk(clk),.D(D),.Q(Q[3]),.rst(rst));
endmodule