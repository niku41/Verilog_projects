`timescale 1ns / 1ps
module timer(clk,rst,timer_out);
    input clk,rst;
    output reg timer_out;
    reg[3:0] count ; 
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            begin
                count <= 4'b0000;
                timer_out <= 1'b0;
            end
                else 
                begin
            if (count == 4'b1001)        
             begin
                count <= 4'b0000;
                timer_out <= 1'b1;
             end
             else begin
                count = count + 4'b0001;
                 timer_out <= 1'b0;
             end
       end
    end
endmodule