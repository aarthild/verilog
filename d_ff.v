`timescale 1ns / 1ps
module d_ff(d,rst,clk,q);
input  d,rst;
input clk;
output reg q;
always @(posedge clk) begin
if(rst) begin
q<=1'b0;
end else begin
q<=d;
end
end
endmodule
