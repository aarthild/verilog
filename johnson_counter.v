`timescale 1ns / 1ps
module johnson_counter(rst,clk,count);
input rst,clk;
output reg [3:0]count;
always@(posedge clk) begin
if(rst) begin
count <= {~count[0], count[3:1]};
end
else
count<=4'b0000;
end
endmodule