`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2024 00:02:15
// Design Name: 
// Module Name: modn_up_down
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


module modn_up_down #(parameter N = 6, parameter width = 2) (
    input clk,
    input rst,
    input up_down,  // Input to control counting direction
    output reg [width-1:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        q <= 0;
    end else begin
        if (up_down) begin
            q <= (q + 1) % N;  // Count up
        end else begin
            q <= (q - 1 + N) % N;  // Count down (with wrap-around)
        end
    end
end

endmodule
