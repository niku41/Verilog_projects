`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 16:08:39
// Design Name: 
// Module Name: sd101_overlapping
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


//module sd101_overlapping(input clk,arstn,data,
//output reg sd);
//parameter s0=2'b00;
//parameter s1=2'b01;
//parameter s2=2'b10;
//reg [1:0] current_state,next_state;

////state transition
//always @ (posedge clk or negedge arstn)
//begin
//if(~arstn)
//current_state<=s0;
//else
//current_state<=next_state;
//end 

////next state logic
//always @(*)
//begin
//case(current_state)
//s0:if(data==1)begin
//   next_state=s1;
//   end
//   else
//   begin
//   next_state=s0;
//   end
//s1:if(data==0)begin
//   next_state=s2;
//   end
//   else
//   begin
//   next_state=s1;
//   end
//s2:next_state=s0;
//endcase
//end

////output logic
//always @(*)
//begin
//case(current_state)
//s0:if(data==1)
//   sd=0;
//s1:if(data==0)
//   sd=0;
//s2:if(data==1)begin
//   sd=1;
//   end else
//   begin
//   sd=0;
//   end
//endcase
//end
//endmodule


module seq_det_101 #(parameter s0 =2'b00,s1 = 2'b01,s2 = 2'b10)(in,out,clk,arst);
input in,clk,arst;
output reg out;
reg [1:0]current_state,next_state;
// state transition
always @(posedge clk or negedge arst)
begin
if(~arst)
current_state<=s0;
else
current_state<=next_state;
end

// next state
                    always @(*)
                    begin
                    case (current_state)
                    s0 : if(in==1)
                    next_state = s1;
                    else
                    next_state= s0;
                    s1 : if(in==0)
                    next_state = s2;
                    else
                    next_state = s1;
                    s2 :if (in == 1)
                    next_state = s0;
                    else
                    next_state = s0;
endcase
end
            always @(*)
            begin
        case (current_state)
    s0: if(in==1)
            out =0;
            s1 : if(in==0)
            out = 0;
            s2 :if (in == 1)
            out = 1;
          
endcase
end
endmodule
