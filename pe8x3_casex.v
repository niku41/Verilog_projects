`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 15:08:32
// Design Name: 
// Module Name: pe8x3_casex
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


module pe8x3_casex(input[7:0]in,output reg[2:0]out);
always @*
begin
casex(in)
8'b1XXXXXXX:out=3'b111;
8'b01XXXXXX:out=3'b110;
8'b001XXXXX:out=3'b101;
8'b0001XXXX:out=3'b100;
8'b00001XXX:out=3'b011;
8'b000001XX:out=3'b010;
8'b0000001X:out=3'b001;
8'b00000001:out=3'b000;
8'bxxxxxxxx:out=3'b000;
endcase
end
endmodule

