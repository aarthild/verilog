`timescale 1ns / 1ps
module mux2to1_tb;
reg a,b,s;
wire y;
mux2to1 u1(.a(a),.b(b),.s(s),.y(y));
initial
begin
$monitor("a=%0b | b=%0b | s=%0b | y=%0b",a,b,s,y);
s=0;a=0;b=0;#10;
s=0;a=0;b=1;#10;
s=0;a=1;b=0;#10;
s=0;a=1;b=1;#10;
s=1;a=0;b=0;#10;
s=1;a=0;b=1;#10;
s=1;a=1;b=0;#10;
s=1;a=1;b=1;#10;
$finish;
end
endmodule
