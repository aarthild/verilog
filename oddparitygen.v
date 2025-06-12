`timescale 1ns / 1ps
module oddparitygen(data,parity);
input [3:0]data;
output parity;
assign parity=~^data;
endmodule
