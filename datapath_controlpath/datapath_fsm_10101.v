`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 21:05:55
// Design Name: 
// Module Name: datapath_fsm_10101
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


module datapath_fsm(clk,rst,A,B,seq,datapath_out);
input clk,rst,seq;
input [3:0]A,B;
output [7:0]datapath_out;
//reg [7:0]temp;
wire w1,w2,w3;
fsm_10101_overlapping fo(.clk(clk),.arstn(rst),.seq(seq),.status(w3),.q_out(w1),.clr(w2));
datapath d(.clk(clk),.A(A),.B(B),.en(w1),.clr(w2),.done(w3),.datapath_out(datapath_out));
endmodule