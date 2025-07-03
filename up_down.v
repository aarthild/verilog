`timescale 1ns / 1ps
module up_down(clk,rst,ctrl,count);
input  clk,rst,ctrl;
output reg [2:0]count;
always@(posedge clk) begin
if(!rst) begin
  if(ctrl)
    count<=count+1;
  else
    count<=count-1;
    end
else
count<=3'b000;
end
endmodule
