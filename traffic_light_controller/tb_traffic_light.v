`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 19:14:43
// Design Name: 
// Module Name: tb_traffic_light
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


module tb_traffic_light();
reg c,rst,clk;
wire hr,hy,hg,fr,fy,fg,st;
traffic_light TLF1(.rst(rst),.c(c),.clk(clk),
                        .hg(hg),.hy(hy),.hr(hr),.fg(fg),.fy(fy),.fr(fr),.st(st));
             // ts short time            
always #5 clk=~clk;

initial 
    begin 
          clk=0;
          rst =1;
          #10
          rst=0; 
//          st=0; 
          c=1;
          #10
          rst=0;   
//          tl=1;
//          #20
          
//          #15
//          tl=0;
//          c=0;
//          #30
//          ts=1;
////          #20
////          tl=1;
//          ts=0;
//          #10
//          c=1;
//          #30
////          tl=0;
//            c=0;
////          ts=1;
//            #30
////            ts=0;
            
          
          #300         
          $finish;
                 
    end                    
                     
endmodule