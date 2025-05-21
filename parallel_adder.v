`timescale 1ns / 1ps
module full_adder(a,b,c,s,c0);
input a,b,c;
output s,c0;
assign s=a^b^c;
assign c0= (a&b)|(b&c)|(a&c);
endmodule
module parallel_adder(a,b,cin,s,c0);
input [3:0]a,b;
input cin;
output [3:0]s;
output c0;
wire c1,c2,c3;
full_adder b1(a[0],b[0],cin,s[0],c1);
full_adder b2(a[1],b[1],c1,s[1],c2);
full_adder b3(a[2],b[2],c2,s[2],c3);
full_adder b4(a[3],b[3],c3,s[3],c0);
endmodule
