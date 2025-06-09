`timescale 1ns / 1ps
module bcd_to_sevenseg_tb;
reg [3:0]bcd;
wire [6:0]seg;
bcd_to_sevenseg u1(.bcd(bcd),.seg(seg));
initial
begin
$monitor("bcd=%b | seg=%b",bcd,seg);
for(bcd=0;bcd<11;bcd=bcd+1) begin
#5;end
end
endmodule
