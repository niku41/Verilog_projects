`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 13:56:29
// Design Name: 
// Module Name: tb_fa_using_ha_
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


module tb_fa_using_ha_();
reg a_in,b_in,c_in;
wire sum_out,carry_out;
fa_using_ha_ FA1(.a_in(a_in),.b_in(b_in),.c_in(c_in),.sum_out(sum_out),.carry_out(carry_out));
integer i;
initial
begin
//a_in=0;
//b_in=0;
//c_in=0;
//#10;

//a_in=0;
//b_in=0;
//c_in=1;
//#10;

//a_in=0;
//b_in=1;
//c_in=0;
//#10;

//a_in=1;
//b_in=1;
//c_in=1;
//#10;

//a_in=1;
//b_in=0;
//c_in=0;
//#10;

//a_in=1;
//b_in=0;
//c_in=1;
//#10;

//a_in=1;
//b_in=1;
//c_in=0;
//#10;

//a_in=1;
//b_in=1;
//c_in=1;
//#10;
//$finish;
//end

for(i=0;i<8;i=i+1)
begin 
{a_in,b_in,c_in}=i;
#10;
end
$finish;
end
initial
    begin
        $monitor("Time=%0t a_in=%0b b_in=%0b c_in=%0b sum_out=%0b carry_out=%0b",$time,a_in,b_in,c_in,sum_out,carry_out);
    end
endmodule
