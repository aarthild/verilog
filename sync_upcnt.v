`timescale 1ns / 1ps
module sync_upcnt(clk,rst,count);
input rst,clk;
output reg [2:0]count;
always @(posedge clk) begin
if(rst)
count<=3'b000;
else 
count<=count+1;
end
endmodule
