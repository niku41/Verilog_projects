`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 19:11:59
// Design Name: 
// Module Name: short_timer
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


module short_timer(
input st, rst,clk,
output reg y
    );
    reg  [1:0]q;
    always@ (posedge clk or posedge rst )
begin 
        if(rst)
        q<=2'b00;
        else
        begin
           if(st)
              begin
               q<=0;
               y<=0;  
              end 
           else 
            begin  
            if(q==2'b11)
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