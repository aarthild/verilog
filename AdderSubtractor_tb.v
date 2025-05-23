`timescale 1ns / 1ps
module Adder_subtractor_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire c0;
AdderSubtractor_4bit u1(.a(a),.b(b),.cin(cin),.s(s),.c0(c0));
initial
begin
$monitor("a=%04b b=%04b s=%04b c0=%0b",a,b,s,c0);
cin=0;#5;$display("Addition");
a=4'b0000;b=4'b0000;#10;
a=4'b1010;b=4'b0101;#10;
a=4'b1001;b=4'b0111;#10;
a=4'b0110;b=4'b0001;#15;
cin=1;#5;$display("Subtraction");
a=4'b0000;b=4'b0000;#10;
a=4'b1010;b=4'b0101;#10;
a=4'b1001;b=4'b0111;#10;
a=4'b0110;b=4'b0001;#10;
$finish;
end
endmodule
