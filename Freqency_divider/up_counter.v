`timescale 1ns / 1ps

module up_counter(clk, rst,y);
    input clk, rst;
    output y;
    reg [3:0] count; 
    always @ (posedge clk or posedge rst)
    begin
        if(rst)
            count <= 4'b0000;
        else
            count <= count+ 4'b0001;
    end
assign y = count[3];
endmodule