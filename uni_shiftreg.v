`timescale 1ns / 1ps
module uni_shiftreg(in,q,clk,sel,rst);
input in,clk,rst;
input [1:0]sel;
output reg [3:0]q;
always@(posedge clk) begin
if(rst)
q<=4'b0000;
else begin
case(sel)
2'b00:q<=4'b0000;
2'b01:q<={q[2:0],in};
2'b10:q<={in,q[3:1]};
2'b11:q<=q;
endcase
end
end
endmodule

