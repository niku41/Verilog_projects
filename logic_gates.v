`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 13:45:33
// Design Name: 
// Module Name: logic_gates
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


module logic_gates(a_in, b_in,and_out, or_out, xor_out, anot_out, bnot_out, nand_out, nor_out, xnor_out
    );
    input a_in, b_in;
    output and_out, or_out, xor_out, anot_out, bnot_out, nand_out, nor_out, xnor_out;
    and(and_out,a_in,b_in);    
    or(or_out,a_in,b_in);
    xor(xor_out,a_in,b_in);
    not(anot_out,a_in);
    not(bnot_out,b_in);
    nand(nand_out,a_in,b_in);
    nor(nor_out,a_in,b_in);
    xnor(xnor_out,a_in,b_in);
endmodule
