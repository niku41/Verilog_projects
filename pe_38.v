`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 11:17:13
// Design Name: 
// Module Name: pe_38
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


module pe_38(d_out,d_in);
  output [2:0] d_out;
  input [7:0] d_in ;
assign d_out=(d_in[7]==1'b1)?3'b111:
               (d_in[6]==1'b1)?3'b110:
               (d_in[5]==1'b1)?3'b101:
               (d_in[4]==1'b1)?3'b100:
               (d_in[3]==1'b1)?3'b011:
               (d_in[2]==1'b1)?3'b010:
               (d_in[1]==1'b1)?3'b001:
               (d_in[0]==1'b1)?3'b000:3'bxxx;
endmodule
