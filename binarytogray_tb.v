`timescale 1ns / 1ps
module binarytogray_tb;
reg [3:0]b;
wire [3:0]g;
binarytogray u1(.b(b),.g(g));
initial
begin
$monitor("b=%b | g=%b",b,g);
b=0000;#10;
b=1111;#10;
b=1001;#10;
b=0001;#10;
b=1010;#10;
$finish;
end
endmodule
