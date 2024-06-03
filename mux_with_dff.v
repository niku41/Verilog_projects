`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 09:04:45
// Design Name: 
// Module Name: mux_with_dff
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


module mux_with_dff(

    );
endmodule
module mux_dff(
    input clk,
    input rst,
    input in1,
    input in2,
    input select,
    output reg q
);

    // 2:1 mux
    wire mux_out;
    assign mux_out = select ? in2 : in1;

    // D flip-flop
    always @(posedge clk) begin
        if (rst) begin
            q <= 1'b0;
        end else begin
            q <= mux_out;
        end
    end

endmodule


module mux_dff(
    input clk,
    input rst,
    input in1,
    input in2,
    input select,
    output reg q
);

    // D flip-flop
    always @(posedge clk) begin
        if (rst) begin
            q <= 1'b0;
        end else begin
            case (select)
                1'b0: q <= in1;
                1'b1: q <= in2;
            endcase
        end
    end

endmodule


module mux_dff (
    input clk,
    input rst,
    input in1,
    input in2,
    input select,
    output reg q
);

    always @(posedge clk) begin
        if (rst) begin
            q <= 1'b0;
        end else begin
            q <= in1 ^ (select & ~in1) ^ (select & in2);
        end
    end

endmodule


module mux_dff (
    input clk,
    input rst,
    input in1,
    input in2,
    input select,
    output reg q
);

    wire mux_out;

    // Instantiate 2:1 mux module
    mux2to1 mux (
        .in0(in1),
        .in1(in2),
        .sel(select),
        .out(mux_out)
    );

    // Instantiate D flip-flop module
    dff dff_inst (
        .clk(clk),
        .rst(rst),
        .d(mux_out),
        .q(q)
    );

endmodule