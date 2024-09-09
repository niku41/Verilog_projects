`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 20:38:05
// Design Name: 
// Module Name: decoder_4x16
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


module decoder_4x16(
    input [3:0] in,  
    output reg [15:0] out 
);

always @(*) begin
    out = 16'b0000_0000_0000_0001 << in; 
end

endmodule