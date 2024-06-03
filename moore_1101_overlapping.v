`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 16:46:40
// Design Name: 
// Module Name: moore_1101_overlapping
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


module moore_1101_overlapping(clk,arstn,seq,out);
input clk,arstn,seq;
reg [2:0]c_s,n_s;
output reg out;
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
always @(c_s or seq)
begin
case(c_s)
s0:if(seq==1)
   n_s=s1;
   else
   n_s=s0;
s1:if(seq==1)
   n_s=s2;
   else
   n_s=s0;
s2:if(seq==1)
   n_s=s2;
   else
   n_s=s3;
s3:if(seq==1)
   n_s=s4;
   else
   n_s=s0;
s4:if(seq==1)
   n_s=s2;
   else
   n_s=s0;
endcase
end

//output logic 
always @(c_s)
begin
case(c_s)
s0:if(seq==1)
     out=0;
s1:if(seq==1)
     out=0;
s2:if(seq==0)
     out=0;
s3:if(seq==1)
     out=0;
s4:out=1;
   //else
   //out=0;
endcase
end
endmodule