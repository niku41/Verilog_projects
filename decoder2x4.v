`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 14:49:19
// Design Name: 
// Module Name: decoder2x4
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


module decoder2x4(input[1:0]in,input en,output reg[3:0]out);
always @ ( in or en)
	begin
      if (en)
      begin
out=4'b0001;
case(in)
2'b00:out=4'b0001;
2'b01:out=4'b0010;
2'b10:out=4'b0100;
2'b11:out=4'b1000;
endcase
end
else 
out=2'd0;
end
endmodule
