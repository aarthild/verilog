`timescale 1ns / 1ps
module full_adder(a,b,cin,s,c0);
input a,b,cin;
output s,c0;
assign s=a^b^cin;
assign c0=(a&b)|(b&cin)|(a&cin);
endmodule
module AdderSubtractor_4bit(a,b,cin,s,c0 );
input [3:0]a,b;
input cin;
output [3:0]s;
output c0;
wire [3:0]bin;
assign bin=b^{4{cin}};
wire c1,c2,c3;
full_adder f1(a[0],bin[0],cin,s[0],c1);
full_adder f2(a[1],bin[1],c1,s[1],c2);
full_adder f3(a[2],bin[2],c2,s[2],c3);
full_adder f4(a[3],bin[3],c3,s[3],c0);
endmodule
