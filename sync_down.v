`timescale 1ns / 1ps
module sync_down(clk,rst,count);
input clk,rst;
output reg [2:0]count;
always@ (posedge clk) begin
if(!rst)
count<=count-1;
else
count<=3'b111;
end
endmodule
