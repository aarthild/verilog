`timescale 1ns / 1ps
module mux4to1(i,s,y);
input wire  [3:0]i;
input wire [1:0]s;
output reg y;
always @(*)begin
case (s)
2'b00:y=i[0];
2'b01:y=i[1];
2'b10:y=i[2];
2'b11:y=i[3];
default:y=1'b0;
endcase
end
endmodule
