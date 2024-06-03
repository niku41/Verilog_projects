//`timescale 1ns / 1ps

//module mealy_sd_101(input clk,arstn,data,
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



`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: ## Vedant ##
// 
// Create Date: 07.02.2024 14:38:51
// Design Name: 
// Module Name: seq_det_101
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
//module seq_det_101 #(parameter s0 =2'b00,s1 = 2'b01,s2 = 2'b10)(in,out,clk,arst);
//input in,clk,arst;
//output reg out;
//reg [1:0]current_state,next_state;
//// state transition
//always @(posedge clk or negedge arst)
//begin
//if(~arst)
//current_state<=s0;
//else
//current_state<=next_state;
//end

//// next state
//                        always @(*)
//                        begin
//                        case (current_state)
//                        s0 : if(in==1)
//                        next_state = s1;
//                        else
//                        next_state= s0;
//                        s1 : if(in==0)
//                        next_state = s2;
//                        else
//                        next_state = s1;
//                        s2 :if (in == 1)
//                        next_state = s0;
//                        else
//                        next_state = s0;
//endcase
//end
//                always @(*)
//                begin
//                case (current_state)
//                s0: if(in==1)
//                out =0;
//                s1 : if(in==0)
//                out = 0;
//                s2 :if (in == 1)
//                out = 1;
              
//endcase
//end
//endmodule


module non_overlapping_101(
    input clk,
    input arstn,
    input data,
    output reg sd
);

    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    parameter s_err = 2'b11; // Added state for non-overlapping error

    reg [1:0] current_state, next_state;

    // State transition
    always @(posedge clk or negedge arstn) begin
        if (~arstn) begin
            current_state <= s0;
        end else begin
            current_state <= next_state;
        end
    end

    // Next state logic
    always @(*) begin
        case (current_state)
            s0: if (data == 1) begin
                next_state = s1;
            end else begin
                next_state = s0;
            end
            s1: if (data == 0) begin
                next_state = s2;
            end else begin // Stay in s1 if data remains 1 (non-overlapping error)
                next_state = s_err;
            end
            s2: if (data == 1) begin // Transition only on first 1 in s2
                next_state = s0;
                sd = 1;
            end else begin
                next_state = s0; // Reset on any other data value
            end
            s_err: begin // Stay in error state until reset
                next_state = s_err;
            end
        endcase
    end

endmodule
