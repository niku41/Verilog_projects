`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2024 00:00:20
// Design Name: 
// Module Name: modn_counter_load
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


module modn_counter_load #(parameter N = 6, parameter width = 2) (
   input clk,
   input rst,
   input load,
   input [width-1:0] n, 
   output reg [width-1:0] q
);

always @(posedge clk or posedge rst) begin
   if (rst) begin
       q <= 0;
   end else begin
       if (load) begin
            q <= n; // Load value from data_in
        end else if (q == N-1) begin // If the counter reaches N-1, reset to 0
            q <= 4'b0000;
        end else begin
            q <= q + 1; 
       end
   end
end

endmodule
