`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 11:12:13
// Design Name: 
// Module Name: bcd_up_counter
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


module bcd_up_counter(input clk,
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