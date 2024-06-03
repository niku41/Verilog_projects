`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 22:02:24
// Design Name: 
// Module Name: loadable_counter
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


module loadable_counter(input rst,clk,load,
input[3:0]data_in,output reg [3:0]count);

always @(posedge clk)
begin
if (load) 
        count <= data_in;
 else    
 begin   
      if (rst) 
            count <= 4'b0000;
    else 
        count <= count + 1;
  end
  end
//assign count=data;
endmodule
