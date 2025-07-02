`timescale 1ns / 1ps
module sync_down_tb;
reg clk,rst;
wire [2:0]count;
sync_down u1(.clk(clk),.rst(rst),.count(count));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("clk=%0b | rst%0b | count=%b",clk,rst,count);
rst=1;#10;
rst=0;#75;
$finish;
end
endmodule
