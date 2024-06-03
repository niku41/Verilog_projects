`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 18:54:58
// Design Name: 
// Module Name: bcd_counter
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


module bcd_counter(input clk,
    input rst,sel,
    output reg [3:0]q
);
always @(posedge clk) begin
    if (rst) begin
        q=4'b0000;
    end else
        q=(q+1);
       if(q==4'b1001) begin
       q=4'b0000;
       end
end
endmodule