`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2024 14:52:06
// Design Name: 
// Module Name: my_practise
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


module my_practise(input ain,bin,
output andout,orout,xorout,xnorout,nandout,norout,anot,bnot);
and(andout,ain,bin);
or(orout,ain,bin);
nand(nandout,ain,bin);
nor(norout,ain,bin);
not(anot,ain);
not(bnot,bin);
xor(xorout,ain,bin);
xnor(xnorout,ain,bin);
endmodule