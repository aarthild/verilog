`timescale 1ns / 1ps
module t_ff_tb;
reg t,rst,clk;
wire q;
t_ff u1(.t(t),.rst(rst),.clk(clk),.q(q));
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("t=%0b | clk=%0b | rst=%0b | q=%0b",t,clk,rst,q);
t=0;rst=1;#10;
t=1;rst=0;#10;
t=1;rst=0;#10;
t=0;rst=0;#10;
t=1;rst=0;#10;
$finish;
end
endmodule