`timescale 1ns / 1ps
module fulladder_tb;
reg a,b,c;
wire sum,carry;
integer i;
fulladder u1(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial
begin
$monitor("a=%0b b=%0b c=%0b sum=%0b carry=%0b",a,b,c,sum,carry);
for(i=0;i<8;i=i+1)
begin
{a,b,c}=i;
#5;
end
$finish;
end
endmodule

