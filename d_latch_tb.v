`timescale 1ns / 1ps
module d_latch_tb;
reg d,en;
wire q;
d_latch u1(.d(d),.en(en),.q(q));
initial
begin
$monitor("d=%0b | en=%0b | q=%0b",d,en,q);
d=0;en=0;#10;
d=1;en=1;#10;
d=0;en=1;#10;
d=0;en=0;#10;
d=1;en=1;#10;
d=0;en=0;#10;
$finish;
end
endmodule
