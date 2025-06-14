`timescale 1ns / 1ps
module alu_tb;
reg [3:0]a,b;
reg [2:0]sel;
wire [3:0]out;
wire carry;
alu u1(.a(a),.b(b),.sel(sel),.carry(carry),.out(out));
initial
begin
$monitor("a=%b | b=%b |sel=%b | out=%b | carry=%0b",a,b,sel,out,carry);
for(integer i=0;i<8;i=i+1) begin
sel=i[2:0];
a=4'b0101;b=4'b0100;#10;
end
$finish;
end
endmodule
