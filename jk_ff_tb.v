`timescale 1ns / 1ps
module jk_ff_tb;
 reg j,k,rst,clk;
 wire q;
jk_ff u1(.j(j),.k(k),.rst(rst),.clk(clk),.q(q));
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
$monitor("j=%0b | k=%0b | clk=%0b | rst=%0b | q=%0b",j,k,clk,rst,q);
j=0;k=0;rst=1;#10;
j=0;k=1;rst=0;#10;
j=1;k=0;rst=0;#10;
j=1;k=1;rst=0;#10;
j=0;k=0;rst=1;#10;
$finish;
end
endmodule
