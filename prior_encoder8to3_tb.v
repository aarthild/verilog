`timescale 1ns / 1ps
module prior_encoder8to3_tb;
reg [7:0]d;
wire [2:0]y;
wire val;
prior_encoder8to3 u1(.d(d),.y(y),.val(val));
initial
begin
$monitor("d=%b | y=%b | valid=%0b",d,y,val);
d=8'b00000000;#5;
d=8'b0110000;#5;
d=8'b00000110;#5;
d=8'b11110000;#5;
d=8'b00000000;#5;
d=8'b00001111;#5;
d=8'b11111111;#5;
d=8'b00000111;#5;
$finish;
end
endmodule
