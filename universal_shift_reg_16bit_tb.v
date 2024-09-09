`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 22:05:20
// Design Name: 
// Module Name: universal_shift_reg_16bit_tb
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


module universal_shift_reg_16bit_tb();
    reg clk;
    reg rst;
    reg load;
    reg shift_enable;
    reg [1:0] mode;
    reg [15:0] data_in;
    wire [15:0] data_out;

    universal_shift_reg_16bit uut(.clk(clk),.rst(rst),.load(load),.shift_enable(shift_enable),.mode(mode),.data_in(data_in),.data_out(data_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        rst = 1; 
        load = 0; 
        shift_enable = 0; 
        mode = 2'b00; 
        data_in = 16'b0;
        #10 
        rst = 0;  
        data_in = 16'b1010101010101010; 
        load = 1; 
        #10;
        load = 0; 
        #10;
        $display("Loaded Data: %b", data_out);
        shift_enable = 1; 
        mode = 2'b00; 
        #10;
        $display("Left Shift: %b", data_out);
        mode = 2'b01; 
        #10;
        $display("Right Shift: %b", data_out);
        mode = 2'b10; 
        #10;
        $display("Rotational Left Shift: %b", data_out);
        mode = 2'b11; 
        #10;
        $display("Rotational Right Shift: %b", data_out);
        $finish;
    end
endmodule
