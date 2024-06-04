`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 15:19:25
// Design Name: 
// Module Name: dual_port_ram
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


module dual_port_ram(input  clk, reset,[4:0] addr_a,[4:0] addr_b, [7:0] data_a,[7:0] data_b,wr_a,wr_b,          
    output reg [7:0] q_a,reg [7:0] q_b);
reg [7:0] mem [31:0];
always @(posedge clk) begin
    if (reset) begin
        q_a <= 8'b0; 
    end else begin
    if (wr_a) begin
    mem[addr_a] <= data_a;  
        end
        q_a <= mem[addr_a];  
    end
end
always @(posedge clk) begin
    if (reset) begin
        q_b <= 8'b0;  
    end else begin
        if (wr_b) begin
            mem[addr_b] <= data_b;  
        end
        q_b <= mem[addr_b]; 
    end
end
endmodule

