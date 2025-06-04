`timescale 1ns / 1ps
module comparator4bit_tb;
reg [3:0]a,b;
wire amrb,aeqb,aleb;
comparator4bit u1(.a(a),.b(b),.amrb(amrb),.aeqb(aeqb),.aleb(aleb));
initial
begin
$monitor("a=%b | b=%b | amrb=%0b | aeq=%0b | aleb=%0b",a,b,amrb,aeqb,aleb);
a=4'b0100;b=4'b1000;#10;
a=4'b1001;b=4'b1001;#10;
a=4'b0111;b=4'b0001;#10;
a=4'b1111;b=4'b0110;#10;
a=4'b0110;b=4'b1110;#10;
$finish;
end
endmodule