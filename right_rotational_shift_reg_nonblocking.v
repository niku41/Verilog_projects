`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 21:28:23
// Design Name: 
// Module Name: right_rotational_shift_reg_nonblocking
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


module right_rotational_shift_reg_nonblocking(
    input clk,           
    input load,            
    input [7:0] data_in,  
    output reg [7:0] data_out
);

always @(posedge clk) begin
    if (load) begin
        data_out <= data_in;
    end else begin
        data_out <= {data_out[0], data_out[7:1]};
    end
end

endmodule
