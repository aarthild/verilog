`timescale 1ns / 1ps
module mux2to1(a,b,s,y);
input a,b,s;
output y;
assign y=s?b:a;
endmodule
