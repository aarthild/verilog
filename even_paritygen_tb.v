`timescale 1ns / 1ps
module even_paritygen_tb;
reg [3:0]data;
wire parity;
even_paritygen u1(.data(data),.parity(parity));
initial
begin
$monitor("data=%b | parity=%0b",data,parity);
data=4'b0000;#5;
data=4'b0110;#5;
data=4'b0001;#5;
data=4'b1000;#5;
data=4'b1010;#5;
data=4'b1111;#5;
$finish;
end
endmodule
