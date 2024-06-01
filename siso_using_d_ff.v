`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 20:10:12
// Design Name: 
// Module Name: siso_using_d_ff
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


module siso_using_d_ff(input clk,D,rst,output Q);
wire w1,w2,w3;
dff dut1(.clk(clk),.D(D),.Q(w1),.rst(rst));
dff dut2(.clk(clk),.D(w1),.Q(w2),.rst(rst));
dff dut3(.clk(clk),.D(w2),.Q(w3),.rst(rst));
dff dut4(.clk(clk),.D(w3),.Q(Q),.rst(rst));
endmodule
