`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 22:03:14
// Design Name: 
// Module Name: sr_udp
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


module sr_udp(q,s,r);
  output reg q;
  input s,r;
  srff_udp inst(q,s,rd);
endmodule
primitive srff_udp (q,s,r);
   output q;
   input s,r;
   
   reg q;
   
   initial q = 1'b1;
   
   table
    // s r q q+
    1 0 : ? : 1 ;
    f 0 : 1 : - ;
    0 r : ? : 0 ;
    0 f : 0 : - ;
    1 1 : ? : 0 ;
  endtable
  
  endprimitive

