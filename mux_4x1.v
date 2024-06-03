`timescale 1ns / 1ps


module mux_4x1(f,s0,s1,i0,i1,i2,i3);
output f;
input s0,s1,i0,i1,i2,i3;
udp_mux4x1 mux(.y(y),.s0(s0),.s1(s1),.i0(i0),.i1(i1),.i2(i2),.i3(i3));
//udp_mux4x1 mux(f,s0,s1,i0,i1,i2,i3);
endmodule


primitive udp_mux4x1(y,s0,s1,i0,i1,i2,i3);
output y;
input s0,s1,i0,i1,i2,i3;
//output f;
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
