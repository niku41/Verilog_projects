`timescale 1ns / 1ps
/////////////


module para_ram(
                         input clk,wr_rd,cs,
                         input [3:0] address,
                         input [3:0] data_in,
                         output reg[3:0] data_out
                        );

reg [3:0] memory [15:0];
//reg [data_width-1:0] temp_data_out;

//memory write (wr_rd = 1)
always@(posedge clk) begin
    if(wr_rd && cs)
        memory[address] <= data_in;
end

//memory read (wr_rd = 0)
always@(posedge clk) begin
    if(cs && !wr_rd)
        data_out <= memory[address];
end

                    
endmodule