`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 07:39:12
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(hr,hy,hg,fr,fy,fg,st,ts,tl,c,rst,clk);
output hr,hy,hg,fr,fy,fg,st;
input ts,tl,c,rst,clk;
reg [1:0]state;
reg st;
//s0=hg
//s1=hw
//s2=fg;
//s3=fy
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
assign hg=s0;
assign hw=s1;
assign fg=s2;
assign fy=s3;

always@(posedge clk)
        begin 
            if(rst)
            begin
            state=hg;
            st=1;
            end
            else 
            begin 
            st=0;
            case (state)
            hg:if(tl&c)  begin state =hy;
            st=1;
            end
            hy:if (ts)begin
            state =fg ;
            st=1;
            end
           fg:if (tl|~c)begin
            state =fy ;
            st=1;
            end
            fy:if (ts)begin
            state =hg ;
            st=1;
            end
            endcase
        end 
        end
endmodule
