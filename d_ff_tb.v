`timescale 1ns / 1ps
module d_ff_tb;
reg d,rst,clk;
wire q;
d_ff u1(.d(d),.rst(rst),.clk(clk),.q(q));
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("d=%0b | clk=%0b | rst=%0b | q=%0b",d,clk,rst,q);
d=0;rst=1;#5;
d=1;rst=0;#5;
d=1;rst=0;#5;
d=0;rst=0;#5;
d=1;rst=0;#5;
$finish;
end
endmodule
