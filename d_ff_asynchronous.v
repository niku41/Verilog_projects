`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 13:44:02
// Design Name: 
// Module Name: d_ff_asynchronous
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


module d_ff_asynchronous(D,clk,async_reset,Q);
input D,clk,async_reset; 
output reg Q;  
always @(posedge clk or posedge async_reset) 
begin
 if(async_reset==1'b1)
  Q<=1'b0; 
 else 
  Q<=D; 
end 
endmodule

