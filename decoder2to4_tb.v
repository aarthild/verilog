`timescale 1ns / 1ps
module decoder2to4_tb;
reg [1:0]in;
wire [3:0]out;
integer i;
decoder2to4 u1(.in(in),.out(out));
initial
begin
$monitor("in=%b | out=%b",in,out);
in=2'bxz;#10;
for(i=0;i<4;i=i+1) begin
in=i[1:0];
#10;
end
$finish;
end
endmodule
