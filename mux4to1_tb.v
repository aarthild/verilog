`timescale 1ns / 1ps
module mux4to1_tb;
reg [3:0]i;
reg[1:0]s;
wire y;
mux4to1 u1(.i(i),.s(s),.y(y));
initial
begin
$monitor("i=%0b s=%b y=%0b",i,s,y);
i=4'b1011;s=2'b00;#10;
i=4'b1011;s=2'b01;#10;
i=4'b1011;s=2'b10;#10;
i=4'b1011;s=2'b11;#10;
$finish;
end
endmodule
