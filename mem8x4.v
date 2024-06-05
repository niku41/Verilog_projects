`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 20:27:01
// Design Name: 
// Module Name: mem8x4
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


module mem8x4(input [2:0] addr,
    input [3:0] data_in,
    input wr,
    output reg [3:0] data_out
);
    reg [3:0] mem [0:7]; 
    always @(*) begin
        if (wr) 
            mem[addr] <= data_in;
        else 
            data_out <= mem[addr];
    end
endmodule
