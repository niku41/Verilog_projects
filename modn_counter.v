`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 19:36:58
// Design Name: 
// Module Name: modn_counter
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


module modn_counter #(parameter N=6,parameter width=2)(input clk,rst,output reg [N-1:0] q);
always @(posedge clk or posedge rst)begin
if(rst)begin
q=0;
end else begin
q=q+1;
if(q==(N-1))begin
q=0;
end
end
end
endmodule
