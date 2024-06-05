`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:40:16
// Design Name: 
// Module Name: siso_blocking
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


module siso_blocking(input clk,
                             input D,
                             input rst,
                             output Q
);
  reg [3:0] data=0;  
  always @(posedge clk) begin
    if (rst) begin
      data=4'b0000; 
    end else begin     
      data[0]=data[1]; 
      data[1]=data[2]; 
      data[2]=data[3]; 
      data[3]=D;
    end
  end
  assign Q = data[0]; 
endmodule
