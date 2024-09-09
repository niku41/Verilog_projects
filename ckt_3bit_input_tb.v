`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 22:20:28
// Design Name: 
// Module Name: ckt_3bit_input_tb
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


module ckt_3bit_input_tb();
    reg [2:0] a;
    reg [2:0] b;
    wire gray;
    wire excess_3;
    wire more;
    wire less;
    wire no_relation;

    ckt_3bit_input dut(.a(a),.b(b),.gray(gray),.excess_3(excess_3),.more(more),.less(less),.no_relation(no_relation));

    initial begin
        a = 3'b010; b = 3'b011;
        #10;
        a = 3'b101; b = 3'b010;
        #10;
        a = 3'b101; b = 3'b100;
        #10;
        a = 3'b010; b = 3'b011;
        #10;
        a = 3'b001; b = 3'b110;
        #10;
        $finish;
    end
endmodule
