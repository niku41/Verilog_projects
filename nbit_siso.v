`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:43:55
// Design Name: 
// Module Name: nbit_siso
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


module nbit_siso#(parameter N=6) (
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