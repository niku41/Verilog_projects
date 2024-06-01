`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 13:14:51
// Design Name: 
// Module Name: ha_
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


module ha_(sum_out,carry_out,a_in,b_in);
input a_in,b_in;
output sum_out,carry_out;
assign sum_out=a_in ^ b_in;
assign carry_out=a_in & b_in;
endmodule
