`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2024 16:47:26
// Design Name: 
// Module Name: mux_41_using_21
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


module mux_41_using_21(mux_out,sel,in_0,in_1,in_2,in_3);
input sel,in_0,in_1,in_2,in_3;
output mux_out;
wire w1,w2;
mux_21 mux(.in_0(in_0),.in_1(in_1),.sel(sel),.mux_out(w1));
mux_21 mux1(.in_0(in_2),.in_1(in_3),.sel(sel),.mux_out(w2));
mux_21 mux2(.in_0(w1),.in_1(w2),.sel(sel),.mux_out(mux_out));
endmodule
