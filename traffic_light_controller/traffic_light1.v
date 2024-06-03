`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 19:10:47
// Design Name: 
// Module Name: traffic_light1
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


module traffic_light1 #(parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11)
(rst,st,c,clk,hg,hy,hr,fg,fy,fr);
input c,rst,clk;
output reg hr,hy,hg,fr,fy,fg;
output reg st ; // start time 
reg [3:0]c_s,n_s;
wire tl,ts;  // ts short time 
             //tl long tme 
//state transition
long_counter dut(.clk(clk),.rst(rst),.st(st),.y(tl));
short_timer dut1(.clk(clk),.rst(rst),.st(st),.y(ts));

always @ (posedge clk or posedge rst)
begin
    if(rst)
        c_s<=s0;
    else
        c_s<=n_s;
        
end

//next state logic
always @ (*)
    begin
    case(c_s)
    s0: if(tl&c)
            n_s=s1;
        else
            n_s=s0;
    s1: if(ts)
           n_s=s2;
        else
            n_s=s1;
    s2: if(tl==1 | c==0)           
            n_s=s3;
        else 
            n_s=s2;
    s3: if(ts)
            n_s=s0;
        else
            n_s=s3;
    endcase
    end
//output   
always @ (*)
    begin
        case(c_s)
        s0:if(tl&c)begin
                hy=1;
                hr=0;
                hg=0;
                fr=1;
                fy=0;
                fg=0;
                st=1;
               end
            else
                begin
                hy=0;
                hr=0;
                hg=1;
                fr=1;
                fy=0;
                fg=0;
                st=0;
                end
         s1:if(ts)begin
                hy=0;
                hr=1;
                hg=0;
                fr=0;
                fy=0;
                fg=1;
                st=1;
               end
            else
                begin
                hy=1;
                hr=0;
                hg=0;
                fr=1;
                fy=0;
                fg=0;
                st=0;
                end
          s2:if(tl | (~c))begin
                hy=0;
                hr=1;
                hg=0;
                fr=0;
                fy=1;
                fg=0;
                st=1;
               end
            else
                begin
                hy=0;
                hr=1;
                hg=0;
                fr=0;
                fy=0;
                fg=1;
                st=0;
                end
         s3:if(ts)begin
                hy=0;
                hr=1;
                hg=0;
                fr=0;
                fy=0;
                fg=1;
                st=1;
               end
            else
                begin
                hy=1;
                hr=0;
                hg=0;
                fr=1;
                fy=0;
                fg=0;
                st=0;
                end
         endcase
    end
endmodule