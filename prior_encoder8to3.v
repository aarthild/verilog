`timescale 1ns / 1ps
module prior_encoder8to3(d,y,val);
input wire [7:0]d;
output reg [2:0]y;
output reg val;
always@(*) begin
val = 1'b1;
casez(d)
8'b1???????:y=3'b111;
8'b01??????:y=3'b110;
8'b001?????:y=3'b101;
8'b0001????:y=3'b100;
8'b00001???:y=3'b011;
8'b000001??:y=3'b010;
8'b0000001?:y=3'b001;
8'b00000001:y=3'b000;
default:begin
 y=3'b000;
val=1'b0;
end
endcase
end
endmodule
