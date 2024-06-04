`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 23:42:27
// Design Name: 
// Module Name: para_mem8x4
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


module para_mem8x4 #(
    parameter ADDR_WIDTH = 3,
    parameter DATA_WIDTH = 4,
    parameter DEPTH = 8
) (
    input [ADDR_WIDTH-1:0] address,
    input [DATA_WIDTH-1:0] data_in,
    input write_enable,
    output reg [DATA_WIDTH-1:0] data_out
);

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    always @(*) begin
        if (write_enable && (address < DEPTH)) // Write operation
            mem[address] <= data_in;
        else if (address < DEPTH) // Read operation
            data_out <= mem[address];
    end

endmodule

