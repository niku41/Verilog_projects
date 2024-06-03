`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 13:51:24
// Design Name: 
// Module Name: bit4_synchronous_up_counter
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

module bit4_synchronous_up_counter(input clk,
    input rst,
    output [3:0] Q
);
reg [3:0] data=0;
always @(posedge clk) begin
    if (rst) begin
        data<=4'b0000;
    end else begin
        data<=data+1;      
    end
end
assign Q=data;
endmodule
