`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:43:14
// Design Name: 
// Module Name: siso_shift_operator
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


module siso_shift_operator(input clk,
  input D,
  input rst,
  output reg Q
);
  reg [3:0]data;  
  always @(posedge clk) begin
    if(rst==1)
      data<=4'b0000;  
    else
    data<=data<<1;
    data[0]<=D;
    Q<=data[3];   
  end
endmodule
