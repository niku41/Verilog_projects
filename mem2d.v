`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 20:28:45
// Design Name: 
// Module Name: mem2d
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


module mem2d(input [5:0] addr_x,
    input [4:0] addr_y,
    input [7:0] data_in,
    input wr,
    output reg [7:0] data_out
);
    reg [7:0] mem [0:63][0:31];
    always @(*) begin
        if (wr)
            mem[addr_x][addr_y] <= data_in;
        else
            data_out <= mem[addr_x][addr_y];
    end
endmodule