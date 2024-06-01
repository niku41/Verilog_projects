`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 11:01:59
// Design Name: 
// Module Name: tff_interandintra
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


module tff_interandintra(input clk,input rstn,input t,output reg q);  
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
      q<=0;  
    else  
        if(t)  
            q<=~q;  
        else  
            q<=q;  
  end  
endmodule  
  

