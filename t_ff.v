`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 14:59:37
// Design Name: 
// Module Name: t_ff
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


module t_ff(input clk,input rstn,input t,output reg q);  
//  always @ (negedge clk) begin  
//    if(!rstn)  
//      q<=0;  
//    else  
//        if(t)  
//            q<=~q;  
//        else  
//            q<=q;  
//  end  
//endmodule  
always @ (negedge clk) begin  
    if(!rstn)  
      q<= #5 0;  
    else 
    #5 ; 
        if(t)  
            q<=~q;  
        else  
            q<=q;  
  end  
endmodule  
  

