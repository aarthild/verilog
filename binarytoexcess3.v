`timescale 1ns / 1ps
module binarytoexcess3(b,ex);
input [3:0]b;
output [3:0]ex;
assign ex=b+4'b0011;
endmodule
