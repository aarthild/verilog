`timescale 1ns / 1ps
module sync_upcount_tb;
reg rst,clk;
wire [2:0]count;
sync_upcnt u1(.rst(rst),.clk(clk),.count(count));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("clk=%0b | rst=%0b |count=%b",clk,rst,count);
end 
initial begin
rst=1;#10;
rst=0;#80;
$finish;
end
endmodule
