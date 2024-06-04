`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 23:36:03
// Design Name: 
// Module Name: memory_8x4
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


module memory_8x4(
    input [2:0] addr,
    input [3:0] data_in,
    input wr_enable,
    output reg [3:0] data_out
);
    reg [3:0] mem [0:7]; 
    always @(*) begin
        if (wr_enable) // Write operation
            mem[addr] <= data_in;
        else // Read operation
            data_out <= mem[addr];
    end
endmodule
