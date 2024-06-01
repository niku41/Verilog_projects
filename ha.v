`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2024 16:55:09
// Design Name: 
// Module Name: ha
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


module ha(sum_out,carry_out,a_in,b_in);
input a_in,b_in;
output sum_out,carry_out;
assign sum_out=a_in ^ b_in;
assign carry_out=a_in & b_in;
endmodule
