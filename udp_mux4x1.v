`timescale 1ns / 1ps

//primitive udp_mux4x11(f,s0,s1,i0,i1,i2,i3);
//output f;
//input s0,s1,i0,i1,i2,i3;
////output f;
//table
////    s1  s0   i0   i1    i2   i3  :  f
//      0    0    0    ?    ?    ?    :  0;
//      0    0    1    ?    ?    ?    :  1;
//      0    1    ?    0    ?    ?    :  0;
//      0    1    ?    1    ?    ?    :  1;
//      1    0    ?    ?    0    ?    :  0;
//      1    0    ?    ?    1    ?    :  1;
//      1    1    ?    ?    ?    0    :  0;
//      1    1    ?    ?    ?    1    :  1;
//      x    ?    ?    ?    ?    ?    :  x;
//      ?    x    ?    ?    ?    ?    :  x;   
//endtable
//endprimitive
