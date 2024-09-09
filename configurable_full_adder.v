`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 21:13:28
// Design Name: 
// Module Name: configurable_full_adder
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


module configurable_full_adder #(
    parameter WIDTH = 8  
)(
    input [WIDTH-1:0] a,   
    input [WIDTH-1:0] b,    
    input cin,              
    output [WIDTH-1:0] sum,
    output cout            
);
    assign {cout, sum} = a + b + cin;
   
endmodule
