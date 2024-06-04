`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 00:01:13
// Design Name: 
// Module Name: fifo_async
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


module fifo_async(
    input wr_clk,
    input rd_clk,
    input rst,
    input wr_en,
    input rd_en,
    input [DATA_WIDTH-1:0] data_in,
    output reg [DATA_WIDTH-1:0] data_out,
    output reg empty,
    output reg full);

parameter DEPTH = 16;  
parameter DATA_WIDTH = 8; 
reg [DATA_WIDTH-1:0] fifo [DEPTH-1:0];
reg [DEPTH-1:0] wr_ptr, rd_ptr;
reg [4:0] count;

always @(posedge wr_clk or posedge rst) begin
    if (rst) begin
        wr_ptr <= 0;
        count <= 0;
        empty <= 1;
    end else begin
        if (wr_en && !full) begin
            fifo[wr_ptr] <= data_in;
            wr_ptr <= (wr_ptr == DEPTH-1) ? 0 : wr_ptr + 1;
            count <= count + 1;
        end

        empty <= (count == 0);
    end
end

always @(posedge rd_clk or posedge rst) begin
    if (rst) begin
        rd_ptr <= 0;
        full <= 0;
    end else begin
        if (rd_en && !empty) begin
            data_out <= fifo[rd_ptr];
            rd_ptr <= (rd_ptr == DEPTH-1) ? 0 : rd_ptr + 1;
            count <= count - 1;
        end

        full <= (count == DEPTH);
    end
end

endmodule
