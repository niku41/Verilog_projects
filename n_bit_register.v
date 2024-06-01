`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 22:09:06
// Design Name: 
// Module Name: n_bit_register
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


module n_bit_register#(parameter N=6) (
  input clk,
  input [N-1:0] D,
  input rst,
  output [N-1:0] Q
);
  reg [N-1:0] data;
  always @(posedge clk) begin
    if (rst) begin
      data<=0; 
    end else begin
      data<=D;  
    end
  end
  assign Q=data;  
endmodule
