`timescale 1ns / 1ps
module jk_latch(j,k,en,rst,q);
input j,k,rst,en;
output reg q;
always@(*) begin
if(rst)
q=1'b0;
else if(en) 
begin
case({j,k})
2'b00:q=q;
2'b01:q=0;
2'b10:q=1;
2'b11:q=~q;
endcase
end
end
endmodule