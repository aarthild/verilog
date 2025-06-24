`timescale 1ns / 1ps
module lshift_reg_tb;
reg rst,clk,in;
wire [3:0]out;
lshift_reg u1(.in(in),.clk(clk),.rst(rst),.out(out));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
$monitor("in=%b | rst=%0b | clk=%0b | out=%b",in,rst,clk,out);
rst=0;#10;
in=0;#10;
in=1;#10;
in=0;#10;
in=1;#10;
$finish;
end
endmodule
