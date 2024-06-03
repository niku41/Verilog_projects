`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 14:21:45
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
       Q <= 4'b0000;  // Reset all outputs to 0
   end else begin
       Q[0] <= D;      // Shift in the new input bit directly to the LSB
       Q[1] <= Q[0];   // Shift existing bits to the right
       Q[2] <= Q[1];
       Q[3] <= Q[2];
   end
end
endmodule

