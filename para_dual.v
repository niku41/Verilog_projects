`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2024 19:25:18
// Design Name: 
// Module Name: para_dual
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


module para_dual #(parameter addr_width =6,data_width = 8, depth = 36)(input clk,reset,[addr_width-1:0] addr_a,[addr_width-1:0] addr_b,[data_width-1:0] data_a,
    [data_width-1:0] data_b,wr_a, wr_b,output reg [data_width-1:0] q_a,reg [data_width-1:0] q_b);
reg [data_width-1:0] mem [depth-1:0];
always @(posedge clk) begin
    if (reset) begin
        q_a <= {data_width{1'b0}}; 
    end else begin
        if (wr_a) begin
            mem[addr_a] <= data_a;  
        end
        q_a <= mem[addr_a];  
    end
end

always @(posedge clk) begin
    if (reset) begin
        q_b <= {data_width{1'b0}};  
    end else begin
        if (wr_b) begin
            mem[addr_b] <= data_b;  
        end
        q_b <= mem[addr_b];  
    end
end

endmodule
