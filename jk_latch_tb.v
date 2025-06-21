`timescale 1ns / 1ps
module jk_latch_tb;
 reg j,k,rst,en;
 wire q;
jk_latch u1(.j(j),.k(k),.rst(rst),.en(en),.q(q));
initial
begin
$monitor("j=%0b | k=%0b | en=%0b | rst=%0b | q=%0b",j,k,en,rst,q);
rst=0;#5;
j=0;k=0;en=1;#10;
j=0;k=1;en=0;#10;
j=1;k=0;en=1;#10;
j=1;k=1;en=0;#10;
rst=1;#5;
j=0;k=0;en=1;#10;
$finish;
end
endmodule