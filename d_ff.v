`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2024 16:24:52
// Design Name: 
// Module Name: d_ff
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


module d_ff(D,clk,sync_reset,Q);
input D,clk,sync_reset; 
output reg Q;  
always @(posedge clk) 
begin
 if(sync_reset==1'b1)
  Q<=1'b0; 
 else 
  Q<=D; 
end 
endmodule
