`timescale 1ns / 1ps
module ring_counter_tb;
reg  clk,rst;
wire [3:0]count;
ring_counter u1(.rst(rst),.clk(clk),.count(count));
initial begin
clk=0;forever #5 clk=~clk;
end
initial begin
$monitor("clk=%0b | rst=%0b | count=%b",clk,rst,count);
rst=0;#10;
rst=1;#80;
$finish;end
endmodule
