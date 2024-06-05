`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:55:25
// Design Name: 
// Module Name: pipo_using_dff
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


module pipo_using_dff(input clk,rst,[3:0]D,output [3:0]Q);
dff dut1(.clk(clk),.D(D[0]),.Q(Q[0]),.rst(rst));
dff dut2(.clk(clk),.D(D[1]),.Q(Q[1]),.rst(rst));
dff dut3(.clk(clk),.D(D[2]),.Q(Q[2]),.rst(rst));
dff dut4(.clk(clk),.D(D[3]),.Q(Q[3]),.rst(rst));
endmodule

