`timescale 1ns / 1ps
module comparator2bit_tb;
reg [1:0]a,b;
wire amrb,aeqb,aleb;
comparator2bit u1(.a(a),.b(b),.amrb(amrb),.aeqb(aeqb),.aleb(aleb));
initial
begin
$monitor("a=%b | b=%b | amrb=%0b | aeq=%0b | aleb=%0b",a,b,amrb,aeqb,aleb);
a=2'b01;b=2'b10;#10;
a=2'b10;b=2'b10;#10;
a=2'b01;b=2'b00;#10;
a=2'b11;b=2'b01;#10;
a=2'b01;b=2'b10;#10;
$finish;
end
endmodule
