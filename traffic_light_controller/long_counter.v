`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 19:13:20
// Design Name: 
// Module Name: long_counter
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


module long_counter(
input st, rst,clk,
 
output reg y  // timer out 
    );
    reg  [2:0]q;
    always@ (posedge clk or posedge rst)
begin 
        if(rst)
        q<=3'b000;
        else
        begin
           if(st)
              begin
               q<=0;
               y<=0;  
              end 
           else 
            begin  
            if(q==3'b111)
                begin
                     q<=0;
                     y<=1; 
                end
             else 
             q<=q+1;    
            end 
        end
end
endmodule