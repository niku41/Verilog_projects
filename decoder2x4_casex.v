`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 15:11:57
// Design Name: 
// Module Name: decoder2x4_casex
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


module decoder2x4_casex(input[1:0]in,input en,output reg[3:0]out);
always @ ( in or en)
	begin
      if (en)
      begin
out=4'b0001;
casex(in)
2'b00:out=4'b0001;
2'b01:out=4'b0010;
2'b10:out=4'b0100;
2'b11:out=4'b1000;
2'bxx:out=4'b0000;
endcase
end
else 
out=2'd0;
end
endmodule