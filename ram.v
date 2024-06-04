`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 23:53:56
// Design Name: 
// Module Name: ram
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


module ram (addr,data,clk,wr,rd,cs);
input [9:0] addr;
input clk,wr,rd,cs;
input data;
reg [7:0] mem [1023:0];
reg [7:0] d_out;
assign data=(cs && rd)?d_out:8'bz;
always @(posedge clk)
if(cs && wr && !rd)
mem[addr]=data;
always @(posedge clk)
if(cs && rd && !wr)                               
d_out=mem[addr];
endmodule


