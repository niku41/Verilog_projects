`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 00:10:53
// Design Name: 
// Module Name: decoder_24_casez
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


module decoder_24_casez(D,y,en);
output reg [3:0]D;
input [1:0]y;
input en;
always @(y or en or D) begin
casez({en,y})
3'b100 : D=4'b0001;
3'b101 : D=4'b0010;
3'b110 : D=4'b0100;
3'b111 : D=4'b1000;
3'b0?? : D=4'b0000;
endcase
end
endmodule