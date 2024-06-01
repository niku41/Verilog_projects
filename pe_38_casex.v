`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 11:23:12
// Design Name: 
// Module Name: pe_38_casex
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


module pe_38_casex(input [7:0] in, output reg [2:0] out);
  always @(*) begin
    out = 3'b000;  // Default output
    casex(in)
      8'b1XXXXXXX: out = 3'b111;
      8'b01XXXXX: out = 3'b110;
      8'b001XXXX: out = 3'b101;
      8'b0001XXX: out = 3'b100;
      8'b00001XX: out = 3'b011;
      8'b000001X: out = 3'b010;
      8'b0000001: out = 3'b001;
    endcase
  end
endmodule
