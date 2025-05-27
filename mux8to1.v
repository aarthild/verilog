`timescale 1ns / 1ps
module mux8to1(in,sel,y);
input [7:0]in;
input [2:1]sel;
output y;
assign y=in[sel];
endmodule
