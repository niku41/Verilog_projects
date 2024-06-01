`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2024 16:58:35
// Design Name: 
// Module Name: fa_using_ha
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


module fa_using_ha(sum_out,carry_out,a_in,b_in,c_in);
input a_in,b_in,c_in;
output sum_out,carry_out;
wire w1,w2,w3;
ha HA(.a_in(a_in),.b_in(b_in),.carry_out(w2),.sum_out(w1));
ha HA1(.a_in(w1),.b_in(c_in),.carry_out(w3),.sum_out(sum_out));
or(carry_out,w2,w3);
endmodule
