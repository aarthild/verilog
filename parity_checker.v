`timescale 1ns / 1ps
module parity_checker(data,parity,error);
input [3:0]data;
input parity;
output error;
assign error=^data^parity;
endmodule
