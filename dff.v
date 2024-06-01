`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 20:11:36
// Design Name: 
// Module Name: dff
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


module dff(D,clk,rst,Q);
input D,clk,rst; 
output reg Q;  
always @(posedge clk) 
begin
 if(rst==1'b1)
  Q<=1'b0; 
 else 
  Q<=D; 
end 
endmodule