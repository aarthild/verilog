`timescale 1ns / 1ps
module priorencoder4to2_tb;
reg [3:0]d;
wire [1:0]y;
wire valid;
prior_encoder4to2 u1(.d(d),.y(y),.valid(valid));
initial
begin
$monitor("d=%b | y=%b | valid=%b",d,y,valid);
d=4'b0000;#10;
d=4'b0001;#10;
d=4'b0010;#10;
d=4'b0100;#10;
d=4'b1000;#10;
$finish;
end
endmodule
