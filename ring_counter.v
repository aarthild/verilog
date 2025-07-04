`timescale 1ns / 1ps
module ring_counter(rst,clk,count);
input rst,clk;
output reg [3:0]count;
always@(posedge clk) begin
if(rst) begin
count<={count[2:0],count[3]};
end
else
count<=4'b1000;
end
endmodule
