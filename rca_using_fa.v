`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2024 17:07:32
// Design Name: 
// Module Name: rca_using_fa
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


module rca_using_fa(sum_out,carry_out,a_in,b_in,c_in);
input [3:0]a_in,b_in;
input c_in;
output [3:0]sum_out;
output carry_out;
wire w1,w2,w3;
fa_using_ha_ fa0(.a_in(a_in[0]),.b_in(b_in[0]),.c_in(c_in),.sum_out(sum_out[0]),.carry_out(w1));
fa_using_ha_ fa1(.a_in(a_in[1]),.b_in(b_in[1]),.c_in(w1),.sum_out(sum_out[1]),.carry_out(w2));
fa_using_ha_ fa2(.a_in(a_in[2]),.b_in(b_in[2]),.c_in(w2),.sum_out(sum_out[2]),.carry_out(w3));
fa_using_ha_ fa3(.a_in(a_in[3]),.b_in(b_in[3]),.c_in(w3),.sum_out(sum_out[3]),.carry_out(carry_out));
endmodule
