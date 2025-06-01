`timescale 1ns / 1ps
module graytobinary_tb;
reg [3:0]g;
wire [3:0]b;
graytobinary u1(.g(g),.b(b));
initial
begin
$monitor("g=%b | b=%b",g,b);
g=4'b0000;#10;
g=4'b0110;#10;
g=4'b1001;#10;
g=4'b1010;#10;
g=4'b1111;#10;
$finish;
end
endmodule
