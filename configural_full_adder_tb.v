`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 21:13:50
// Design Name: 
// Module Name: configural_full_adder_tb
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


module configural_full_adder_tb();
// Test for 8-bit adder
    reg [7:0] a_8bit, b_8bit;
    reg cin_8bit;
    wire [7:0] sum_8bit;
    wire cout_8bit;

    // Test for 16-bit adder
    reg [15:0] a_16bit, b_16bit;
    reg cin_16bit;
    wire [15:0] sum_16bit;
    wire cout_16bit;

    configurable_full_adder #(.WIDTH(8)) fa_8bit (.a(a_8bit),.b(b_8bit),.cin(cin_8bit),.sum(sum_8bit),.cout(cout_8bit));

    configurable_full_adder #(.WIDTH(16)) fa_16bit (.a(a_16bit),.b(b_16bit),.cin(cin_16bit),.sum(sum_16bit),.cout(cout_16bit));

    initial begin
        // 8-bit test case
        a_8bit = 8'b00011001; b_8bit = 8'b00100110; cin_8bit = 1'b0;
        #10;
        a_8bit = 8'b11110000; b_8bit = 8'b00001111; cin_8bit = 1'b1;
        #10;
        $display("a = %b, b = %b, cin = %b => sum = %b, cout = %b", a_8bit, b_8bit, cin_8bit, sum_8bit, cout_8bit);

        // 16-bit test case
        a_16bit = 16'b0001100100011001; b_16bit = 16'b0010011000100110; cin_16bit = 1'b0;
        #10;
        a_16bit = 16'b1111000011110000; b_16bit = 16'b0000111100001111; cin_16bit = 1'b1;
        #10;
        $display("a = %b, b = %b, cin = %b => sum = %b, cout = %b", a_16bit, b_16bit, cin_16bit, sum_16bit, cout_16bit);

        $finish;
    end
endmodule
