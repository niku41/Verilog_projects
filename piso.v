`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:54:57
// Design Name: 
// Module Name: piso
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


module piso(clk,D,rst,Q,sel);
input clk,rst;
input [3:0]D;
output Q;
input sel;
reg[3:0]data;
always @(posedge clk, posedge rst)
begin 
   if(rst==1)//loading 
    data<=4'b0000;
   else if (sel==0)
   data<=D;
    else
    begin//shifting
//    data[3]<=1'bx;
//    data[2]<=data[3];
//    data[1]<=data[2];
////    data[0]<=data[1];
//    Q=data[0];
    data<=data>>1;
    end
end
assign Q=data[0];
endmodule
