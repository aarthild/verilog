`timescale 1ns / 1ps
module alu(a,b,sel,out,carry);
input wire [3:0]a,b;
input wire [2:0]sel;
output reg [3:0]out;
output reg carry;
always@(*) begin
carry=0;
case(sel)
3'b000:{carry,out}=a+b;
3'b001:out=a-b;
3'b010:out=a&b;
3'b011:out=a|b;
3'b100:out=a^b;
3'b101:out=~b;
3'b110:out=a<<1;
3'b111:out=a>>1;
endcase
end
endmodule
