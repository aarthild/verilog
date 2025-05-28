`timescale 1ns / 1ps
module demux1to4(d,sel,y);
input wire d;
input wire [1:0]sel;
output reg [3:0]y;
always @(*) begin
y=4'b0000;
case(sel)
2'b00:y[0]=d;
2'b01:y[1]=d;
2'b10:y[2]=d;
2'b11:y[3]=d;
endcase
end
endmodule
