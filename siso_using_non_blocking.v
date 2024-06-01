`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 15:34:00
// Design Name: 
// Module Name: siso_using_non_blocking
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


module siso_using_non_blocking(input clk,
  input D,
  input rst,
  output Q
);
  reg [3:0] data=0;  
  always @(posedge clk) begin
  if(rst)
      data<=4'b0000;  
    else
    data[3]<=D;
    data[2]<=data[3];
    data[1]<=data[2];
    data[0]<=data[1]; 
  end
  assign Q=data[0];
endmodule