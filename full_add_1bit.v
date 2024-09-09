`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 21:42:04
// Design Name: 
// Module Name: full_add_1bit
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


module full_add_1bit(
    input a,        
    input b,        
    input cin,      
    output sum,     
    output cout     
);

    wire w1, w2, w3;
    xor (w1, a, b);
    xor (sum, w1, cin);
    and (w2, a, b);
    and (w3, cin, w1);
    or  (cout, w2, w3);

endmodule
