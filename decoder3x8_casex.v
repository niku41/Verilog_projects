`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 15:12:45
// Design Name: 
// Module Name: decoder3x8_casex
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


module decoder3x8_casex(input [2:0]in,input en,output reg[7:0]out);
always @( in or en)
	begin
      if (en) 
        begin
          out=8'd0;
          casex (in)
              3'b000: out[0]=1'b1;
              3'b001: out[1]=1'b1;
              3'b010: out[2]=1'b1;
              3'b011: out[3]=1'b1;
              3'b100: out[4]=1'b1;
              3'b101: out[5]=1'b1;
              3'b110: out[6]=1'b1;
              3'b111: out[7]=1'b1;
              3'bxxx: out=1'b0;
              default: out=8'd0;
          endcase
      end
else 
out=3'd0;
end
endmodule