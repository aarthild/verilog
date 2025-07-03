`timescale 1ns / 1ps
module up_down_tb;
reg clk,rst,ctrl;
wire [2:0]count;
up_down u1(.clk(clk),.rst(rst),.ctrl(ctrl),.count(count));
initial begin
clk=0; forever #5 clk=~clk;
end
initial begin
$monitor("clk=%0b | rst%0b | ctrl=%0b | count=%b",clk,rst,ctrl,count);
rst=1;ctrl=1;#10;
rst=0;ctrl=1;#70;
ctrl=0;#70;
$finish;
end
endmodule
