`timescale 1ns / 1ps
module d_latch(en,d,q);
input en,d;
output reg q;
always@(*) begin
if(en)
q=d;
else
q=1'b0;
end
endmodule
