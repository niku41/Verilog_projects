`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 07:41:48
// Design Name: 
// Module Name: main_module
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

module main_module(HR,HY,HG,FR,FY,FG,TS,TL,ST,reset,c,clk);
output HR,HY,HG,FR,FY,FG,TS,TL;
input reset,c,clk,ST;
timer inst1(.ts(TS),.tl(TS),.st(ST),.clk(clk));
traffic_light inst2(.hr(HR),.hy(HY),.hg(HG),.fr(FR),.fy(FY),.fg(FG),.ts(TS),.tl(TL),.st(ST),.rst(reset),.clk(clk),.c(c));
endmodule
