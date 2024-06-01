`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 21:27:05
// Design Name: 
// Module Name: t_ff_using_d
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


module t_ff_using_d(T, clk, sync_reset, Q_out);
  input T, clk, sync_reset;
  output Q_out;
  wire d_in;
  wire Q;  
  d_ff d_ff_inst (.D(d_in),.clk(clk),.sync_reset(sync_reset),.Q(Q));
    assign d_in = Q ^ T;
  assign Q_out = Q; 
endmodule