`timescale 1ns / 1ps
module demux1to4_tb;
reg d;
reg [1:0]sel;
wire [3:0]y;
demux1to4 u1(.d(d),.sel(sel),.y(y));
initial
begin
$monitor("d=%0b sel=%b y=%b",d,sel,y);
d=1;
sel=2'b00;#5;
sel=2'b01;#5;
sel=2'b10;#5;
d=0;
sel=2'b11;#5;
$finish;
end
endmodule
