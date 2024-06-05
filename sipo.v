`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:55:10
// Design Name: 
// Module Name: sipo
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


module sipo(input clk,
   input D,
   input rst,
   output reg [3:0] Q
);
always @(posedge clk) begin
   if (rst) begin
       Q <= 4'b0000; 
   end else begin
       Q[0] <= D;     
       Q[1] <= Q[0];   
       Q[2] <= Q[1];
       Q[3] <= Q[2];
   end
end
endmodule


