`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 21:02:22
// Design Name: 
// Module Name: datapath_fsm
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


module datapath(clk,A,B,en,clr,done,datapath_out);
input [3:0]A,B;
input clk,en,clr;
output reg [7:0]datapath_out;
output reg done;
//assign datapath_out={A,B};


always @(posedge clk)begin
if(en && ~clr)begin
datapath_out<={A,B};
done<=1;
end
else begin
datapath_out<='hz;
end
end
endmodule