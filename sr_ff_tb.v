`timescale 1ns / 1ns
module sr_ff_tb;
reg s,r,clk,rst;
wire q;
sr_ff u1(.s(s),.r(r),.rst(rst),.clk(clk),.q(q));
initial
begin
$monitor("s=%0b | r=%0b | clk=%0b | rst=%0b | q=%0b",s,r,clk,rst,q);
clk=0;
forever #5 clk=~clk; end
initial begin
s=0;r=0;rst=1;#10;
s=0;r=1;rst=0;#10;
s=1;r=0;rst=0;#10;
s=1;r=1;rst=0;#10;
s=0;r=0;rst=1;#10;
s=0;r=0;rst=0;#10;
$finish;
end
endmodule
