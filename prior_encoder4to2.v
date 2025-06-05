`timescale 1ns / 1ps
module prior_encoder4to2(d,y,valid);
input wire [3:0]d;
output reg [1:0]y;
output reg valid;
always@(*) begin
valid=1'b1;
casez(d)
4'b1???: y = 2'b11; 
4'b01??: y = 2'b10; 
4'b001?: y = 2'b01; 
4'b0001: y = 2'b00; 
  default: begin
   y = 2'b00;      
    valid = 1'b0;   
end
endcase
end
endmodule