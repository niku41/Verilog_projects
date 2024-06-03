`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 21:01:48
// Design Name: 
// Module Name: fsm_10101
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


module fsm_10101_overlapping(clk,arstn,seq,status,q_out,clr);
input clk,arstn,seq;
input status;
reg [2:0]c_s,n_s;
output reg q_out;
output reg clr;

//datapath(.A(A),.B(B),.en(out),.done(status),.clr(clr),.D_out(D_out));
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;
          
//state transition
always @(posedge clk or negedge arstn)
begin
if(!arstn)
c_s<=s0;
else
c_s<=n_s;
end

//next state logic
always @(*)
begin
case(c_s)
s0:if(seq==1)
   n_s=s1;
   else
   n_s=s0;
s1:if(seq==1)
   n_s=s1;
   else
   n_s=s2;
s2:if(seq==1)
   n_s=s3;
   else
   n_s=s0;
s3:if(seq==1)
   n_s=s1;
   else
   n_s=s4;
s4:if(seq==1)
   n_s=s3;
   else
   n_s=s0;
endcase
end

//output logic 
always @(*)
begin
case(c_s)
s0://if(seq==1)
     q_out=0;
s1://if(seq==1)
     q_out=0;
s2://if(seq==0)
     q_out=0;
s3://if(seq==1)
     q_out=0;
s4:if(seq==1)
     q_out=1;
    else
    q_out=0;
endcase
end
always @(posedge clk)begin
if(status==1)begin
clr<=1;
end
else begin
clr<=0;
end
end
endmodule