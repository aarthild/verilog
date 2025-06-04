`timescale 1ns / 1ps
module comparator4bit(a,b,amrb,aeqb,aleb);
input [3:0]a,b;
output amrb,aeqb,aleb;
assign amrb=(a>b);
assign aeqb=(a==b);
assign aleb=(a<b);
endmodule