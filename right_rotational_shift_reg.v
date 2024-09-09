`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 21:32:03
// Design Name: 
// Module Name: right_rotational_shift_reg
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


module right_rotational_shift_reg();
    reg clk;
    reg load;
    reg [7:0] data_in;
    wire [7:0] data_out_blocking;
    wire [7:0] data_out_nonblocking;

    right_rotational_shift_reg_blocking uut_blocking (
        .clk(clk),
        .load(load),
        .data_in(data_in),
        .data_out(data_out_blocking)
    );

    right_rotational_shift_reg_nonblocking uut_nonblocking (
        .clk(clk),
        .load(load),
        .data_in(data_in),
        .data_out(data_out_nonblocking)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        load = 0;
        data_in = 8'b00001111;
        #10 load = 1; 
        #10 load = 0; 
        #50 data_in = 8'b11110000; 
        #10 load = 1; 
        #10 load = 0; 

        #50 $finish;
    end

endmodule
