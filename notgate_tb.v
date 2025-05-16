`timescale 1ns / 1ps
module notgate_tb;
reg a;
wire b;
notgate u1(.b(b),.a(a));
initial
begin 
$monitor("a=%0b  b=%0b",a,b);
a=0;#10;
a=1;#10;
end
endmodule
