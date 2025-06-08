`timescale 1ns / 1ps
module decoder3to8(in,out);
input wire [2:0]in;
output reg [7:0]out;
integer i;
always@(*) begin
out=8'b00000000;
for(i=0;i<8;i=i+1) begin
out[in]=1'b1;
end
end
endmodule
