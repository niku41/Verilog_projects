`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 22:18:14
// Design Name: 
// Module Name: ckt_3bit_input
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


module ckt_3bit_input(
    input [2:0] a,     
    input [2:0] b,     
    output gray,       
    output excess_3,   
    output more,       
    output less,       
    output no_relation 
);

    assign gray = (a[2] ^ b[2]) + (a[1] ^ b[1]) + (a[0] ^ b[0]) == 1;
    assign excess_3 = (a == b + 3) || (b == a + 3);
    assign more = (a == b + 1);
    assign less = (a == b - 1);
    assign no_relation = ~(gray || excess_3 || more || less);

endmodule
