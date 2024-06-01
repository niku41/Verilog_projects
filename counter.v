`timescale 1ns / 1ps


//module counter(

//    );
//endmodule


module counter #(parameter reg [3:0]i=0)(clk,rst,load,count);
input clk,rst,load;
output  reg [3:0]count;
always @ (posedge clk or posedge rst)
    begin
         if(rst)
            count<=4'b0000;
         else
            if(load)
                count<=i;
                
            else
                count<=count+1;
    end
endmodule



module counter(input clk,rst,load,
input[3:0] in,
output reg[3:0]count);
always@(posedge clk or posedge rst)begin
if(rst)
count<=0;
else if(load<=1'b1)begin
count<=in;
end
else begin
count<=count+1;
if(count<=3)
count<=0;
else
count<=count+1;
end
end
endmodule


//module counter (
//   input clk,
//   input rst,  // Asynchronous reset
//   input load_count,
//   input [3:0] int_in,
//   output reg [3:0] count
//);

//always @(posedge clk or posedge rst) begin
//   if (rst) begin
//       count <= 4'b0000;  // Reset to 0
//   end else if (load_count) begin
//       count <= int_in;  // Load from input
//   end else begin
//       count <= count + 1;  // Count up
//   end
//end

//endmodule




//`timescale 1ns / 1ps
//module maam_homework(in,load,count,clk,mode,rst);
//parameter N=10;
//parameter width =4;
//input mode,clk,rst,load;
//input [3:0] in;
//output reg [3:0] count;

//always @(posedge (clk)or posedge(rst)) //asynchronous 
//begin
// if (rst==1'b1)
//        count= 0;
        
// else if(load==1'b1)
//         count=in;
         
// else           
//    if(mode)
//        begin        
//             if(count== N-1)
//                  count = 0;
//            else
//                count = count + 1;
//            end
//    else
//        begin
            
//            if(count== 0)
//                    count = N-1;
//            else
//                    count = count-1;
//        end
//end
//endmodule