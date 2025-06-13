`timescale 1ns / 1ps
module parity_checker_tb;
reg [3:0]data;
reg parity;
wire error;
parity_checker u1(.data(data),.parity(parity),.error(error));
initial
begin
$monitor("data=%b | parity=%0b | error=%0b",data,parity,error);
data=4'b0011;parity=0;#10; 
data=4'b1001;parity=1;#10; 
data=4'b1111;parity=0;#10;
data=4'b0111;parity=1;#10; 
data=4'b0001;parity=0;#10; 
$finish;
end
endmodule
