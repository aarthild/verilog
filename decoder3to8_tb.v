`timescale 1ns / 1ps
module decoder3to8_tb;
reg [2:0]in;
wire [7:0]out;
integer i;
decoder3to8 u1(.in(in),.out(out));
initial
begin
$monitor("in=%b | out=%b",in,out);
for(i=0;i<8;i=i+1) begin
in=i[3:0];
#10;end
$finish;
end
endmodule
