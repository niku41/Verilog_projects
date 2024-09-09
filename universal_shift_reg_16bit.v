`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 22:02:58
// Design Name: 
// Module Name: universal_shift_reg_16bit
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


module universal_shift_reg_16bit(
    input clk,                   
    input rst,                   
    input load,                  
    input shift_enable,          
    input [1:0] mode,           
    input [15:0] data_in,        
    output reg [15:0] data_out   
);

    always @(posedge clk) begin
        if (rst) begin
            data_out <= 16'b0;
        end else if (load) begin
            data_out <= data_in;
        end else if (shift_enable) begin
            case (mode)
                2'b00: data_out <= {data_out[14:0], 1'b0};   
                2'b01: data_out <= {1'b0, data_out[15:1]};   
                2'b10: data_out <= {data_out[14:0], data_out[15]}; 
                2'b11: data_out <= {data_out[0], data_out[15:1]};  
                default: data_out <= data_out;  
            endcase
        end
    end

endmodule
