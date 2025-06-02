`timescale 1ns / 1ps
module binarytoexcess3_tb;
reg [3:0]b;
wire [3:0]ex;
binarytoexcess3 u1(.b(b),.ex(ex));
initial 
begin 
$monitor("b=%b | ex=%b",b,ex);
b=4'b0000;#10;
b=4'b0001;#10;
b=4'b0101;#10;
b=4'b1001;#10;
$finish;
end
endmodule
