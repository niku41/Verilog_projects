`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 23:49:59
// Design Name: 
// Module Name: memo_2d
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


module memo_2d(
    input [5:0] addr_x,
    input [4:0] addr_y,
    input [7:0] data_in,
    input wr_enable,
    output reg [7:0] data_out
);

    reg [7:0] mem [0:63][0:31];

    always @(*) begin
        if (wr_enable) // Write operation
            mem[addr_x][addr_y] <= data_in;
        else // Read operation
            data_out <= mem[addr_x][addr_y];
    end

endmodule
