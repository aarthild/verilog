`timescale 1ns / 1ps
module mux8to1_tb;
reg [7:0]in;
reg [2:0]sel;
wire y;
mux8to1 u1(.in(in),.sel(sel),.y(y));
initial
begin
$monitor("in=%b sel=%b y=%0b",in,sel,y);
in=8'b01010101;
sel=3'b000;#10;
sel=3'b001;#10;
sel=3'b010;#10;
sel=3'b011;#10;
sel=3'b100;#10;
sel=3'b101;#10;
sel=3'b110;#10;
sel=3'b111;#10;
$finish;
end
endmodule
