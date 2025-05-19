`timescale 1ns / 1ps
module half_subractor(a,b,diff,borrow);
input a,b;
output diff,borrow;
assign diff=a^b;
assign borrow=~a&b;
endmodule
