`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 10:17:18
// Design Name: 
// Module Name: fifo
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


module fifo(empty,full,r_en,w_en,d_in,d_out,clk,rst);
input clk;
input rst,r_en,w_en;
input [7:0]d_in;
output [7:0]d_out;
output empty,full;
reg [7:0]mem[0:15];
reg [4:0]w_ptr,r_ptr;
reg e_reg,f_reg;
//write operation
always @ (posedge clk )
    begin
        if(rst)
            w_ptr<=0;
        else 
           if(w_en && !f_reg)
            w_ptr<=w_ptr+1;
    end
//empty check
always @ (posedge clk or posedge rst)
    begin
        if(rst)
            e_reg<=1;
        else if(w_en && !f_reg && (w_ptr!=r_ptr))
            e_reg<=0;
        else if(r_en && (w_ptr==r_ptr+1))
            e_reg<=1;   
    end
//full check
always @ (posedge clk )
    begin
        if(rst)
            f_reg<=0;
        else if(w_en && w_ptr>=5'b10000)
            f_reg<=1;
        else if(r_en && !e_reg)
            f_reg<=0;   
    end
//read operation
always @ (posedge clk or posedge rst)
    begin
        if(rst)
            r_ptr<=0;
        else  if(r_en && !e_reg)
                r_ptr<=r_ptr+1;
end
//data storage   
 always @ (posedge clk )
    begin
        if(w_en && !f_reg)
            mem[w_ptr]<=d_in;
    end
 assign d_out = (r_en)?mem[r_ptr-1]:8'bzzzzzzzz;
 assign empty=e_reg;
 assign full=f_reg;   
endmodule