`timescale 1ns / 1ps
module full_subractor(a,b,c,diff,borrow);
input a,b,c;
output diff,borrow;
assign diff=a^b^c;
assign borrow=(~a&c)|(b&c)|(~a&b);
endmodule
