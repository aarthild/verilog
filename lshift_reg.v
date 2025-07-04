`timescale 1ns / 1ps
module lshift_reg(in,rst,clk,out);
input in;
input rst,clk;
output reg [3:0]out;
always@(posedge clk) begin
if(rst)
out<=4'b0000;
else 
  out<={out[2:0],in};
end
endmodule
