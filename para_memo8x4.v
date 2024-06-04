`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 23:45:36
// Design Name: 
// Module Name: para_memo8x4
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


module para_memo8x4 #(
    parameter ADDR_WIDTH = 3,
    parameter DATA_WIDTH = 4,
    parameter DEPTH = 8
) (
    input [ADDR_WIDTH-1:0] addr,
    input [DATA_WIDTH-1:0] data_in,
    input wr_enable,
    output reg [DATA_WIDTH-1:0] data_out
);

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    always @(*) begin
        if (wr_enable && (addr < DEPTH)) // Write operation
            mem[addr] <= data_in;
        else if (addr < DEPTH) // Read operation
            data_out <= mem[addr];
    end

endmodule
