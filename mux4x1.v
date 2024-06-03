`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 11:16:09
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(f,s0,s1,i0,i1,i2,i3);
input s0,s1,i0,i1,i2,i3;
output f;
udp_mux4x1 MUX4X1(.f(f),.s0(s0),.s1(s1),.io(i0),.i1(i1),.i2(i2),.i3(i3));
endmodule

primitive udp_mux4x1(f,s0,s1,i0,i1,i2,i3);
input s0,s1,i0,i1,i2,i3;
output f;
table
//    s1  s0   i0   i1    i2   i3  :  f
      0    0    0    ?    ?    ?    :  0;
      0    0    1    ?    ?    ?    :  1;
      0    1    ?    0    ?    ?    :  0;
      0    1    ?    1    ?    ?    :  1;
      1    0    ?    ?    0    ?    :  0;
      1    0    ?    ?    1    ?    :  1;
      1    1    ?    ?    ?    0    :  0;
      1    1    ?    ?    ?    1    :  1;
      x    ?    ?    ?    ?    ?    :  x;
      ?    x    ?    ?    ?    ?    :  x;   
endtable
endprimitive
