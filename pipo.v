`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 23:41:31
// Design Name: 
// Module Name: pipo
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


module pipo(input clk,
    input rst,
    input [3:0] D,
    output reg [3:0] Q
);
always @(posedge clk) begin
    if (rst) begin
        Q<=4'b0000;
    end else begin
        Q<=D;      
    end
end
endmodule


