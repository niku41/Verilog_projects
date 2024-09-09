`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 21:45:40
// Design Name: 
// Module Name: full_add_4bit
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


module full_add_4bit(
    input [3:0] a,        
    input [3:0] b,         
    input cin,             
    output [3:0] sum,      
    output cout            
);

    wire c1, c2, c3;       
    full_add_1bit Fa0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c1));

    full_add_1bit Fa1(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.cout(c2));

    full_add_1bit Fa2(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.cout(c3));

    full_add_1bit Fa3(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.cout(cout));

endmodule
