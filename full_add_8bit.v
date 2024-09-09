`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 21:45:55
// Design Name: 
// Module Name: full_add_8bit
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


module full_add_8bit(
    input [7:0] a,       
    input [7:0] b,         
    input cin,            
    output [7:0] sum,      
    output cout          
);

    wire c4;       
    // Instantiate the lower 4-bit full adder
    full_add_4bit Fa_LOWER(.a(a[3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(c4));

    // Instantiate the upper 4-bit full adder
    full_add_4bit Fa_UPPER(.a(a[7:4]),.b(b[7:4]),.cin(c4),.sum(sum[7:4]),.cout(cout));

endmodule
