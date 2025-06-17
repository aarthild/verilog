`timescale 1ns / 1ps
module sr_ff(s,r,clk,rst,q);
input s,r,rst,clk;
output reg q;
always@(posedge clk) begin
if(rst)
q<=0;
else begin
case({s,r}) 
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=1'bx;
endcase
end
end
endmodule
