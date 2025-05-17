`timescale 1ns / 1ps
module hald_adder_tb;
reg a,b;
wire sum,carry;
half_adder u1(.a(a),.b(b),.sum(sum),.carry(carry));
initial
begin
$monitor("a=%0b b=%0b sum=%0b carry=%0b",a,b,sum,carry);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
