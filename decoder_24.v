`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 16:09:08
// Design Name: 
// Module Name: decoder_24
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


module decoder_24(Din,Do,En);
  input [1:0] Din;
  input En;
  output [3:0] Do;
  reg [3:0] Do;
  always @(En or Din)
  begin
  if (En)
  begin
  if (Din == 2'b00)
  Do= 4'b0001;
  else if (Din == 2'b01)
  Do = 4'b0010;
  else if (Din == 2'b10)
  Do = 4'b0100;
  else if (Din == 2'b11)
  Do = 4'b1000;
  else
  $display("Finish");
  end
  end
endmodule



