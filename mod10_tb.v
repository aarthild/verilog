`timescale 1ns / 1ps
module mod10_tb;
reg rst,clk;
wire [3:0]count;
mod_10 u1(.rst(rst),.clk(clk),.count(count));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin 
$monitor("clk=%0b | rst=%0b | count=%b",clk,rst,count);
rst=1;#10;
rst=0;#100;
$finish;
end
endmodule
