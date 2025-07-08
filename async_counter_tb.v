`timescale 1ns / 1ps
module async_counter_tb;
reg clk,rst;
wire [3:0]count;
asyn_counter u1(.clk(clk),.rst(rst),.count(count));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("clk=%0b | rst=%0b | count=%b",clk,rst,count);
rst=1;#20;
rst=0;#100;
$finish;
end
endmodule
