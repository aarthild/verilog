`timescale 1ns / 1ps
module mod_10(
input wire clk, input wire rst,
output reg [3:0]count);
always@(posedge clk) begin
if(rst)
 count<=4'b0000;
else if(count==4'b1001)
 count<=4'b0000;
else
 count<=count+1;
end
endmodule
