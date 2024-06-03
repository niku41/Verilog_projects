`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 14:15:55
// Design Name: 
// Module Name: piso_using_dff
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


//module piso_using_dff(input clk,[3:0]D,rst,sel,output Q);
//dff dut1(.clk(clk),.D(D[0]),.Q(Q),.rst(rst));
//dff dut2(.clk(clk),.D(D[1]),.Q(Q),.rst(rst));
//dff dut3(.clk(clk),.D(D[2]),.Q(Q),.rst(rst));
//dff dut4(.clk(clk),.D(D[3]),.Q(Q),.rst(rst));
//endmodule

module piso_4_to_1(input [3:0] parallel_in, input clk, input rst, output reg serial_out);
  reg [3:0] shift_register;
  reg clk_edge;

  // Generate clock edge for sampling
  always @(posedge clk)
    clk_edge <= ~clk_edge;

  // Instantiate D flip-flop for each bit
  always @(posedge clk_edge or posedge rst)
  begin
    if (rst)
      shift_register <= 4'b0;
    else
      shift_register <= {shift_register[2:0], parallel_in[3]};
  end

  // Output the serial data
  always @(posedge clk_edge or posedge rst)
  begin
    if (rst)
      serial_out <= 1'b0;
    else
      serial_out <= shift_register[3];
  end

endmodule

