`timescale 1ns / 1ps
module demux1to8_tb;
reg d;
reg [2:0]sel;
wire [7:0]y;
integer i;
demux1to8 u1(.d(d),.sel(sel),.y(y));
initial
begin
$monitor(" d=%0b sel=%b y=%b",d,sel,y);
d=1;
for(i=0;i<8;i=i+1) begin 
sel=i;#10;end
$finish;
end
endmodule
