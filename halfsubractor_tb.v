`timescale 1ns / 1ps
module halfsubractor_tb;
reg a,b;
wire diff,borrow;
half_subractor u1(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial
begin
$monitor("a=%0b b=%0b diff=%0b borrow=%0b",a,b,diff,borrow);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
