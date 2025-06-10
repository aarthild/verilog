`timescale 1ns / 1ps
module even_paritygen(data,parity);
input [3:0]data;
output parity;
assign parity=^data;
endmodule
