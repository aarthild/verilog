`timescale 1ns/1ps
module tb_uni_shiftreg;
  reg clk, rst, in;
  reg [1:0] sel;
  wire [3:0] q;
  uni_shiftreg u1 (.in(in),.clk(clk),.rst(rst),.sel(sel),.q(q));
  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
 $display("clk rst sel in q");
 $monitor("%0b    %0b  %b  %0b  %b", clk, rst, sel, in, q);
    rst = 1; sel = 2'b00; in = 0;
    #12 rst = 0;
    // === SHIFT LEFT ===
    #3  sel = 2'b01; in = 1;  
    #10 in = 0;              
    #10 in = 1;              
    #10 in = 1;              

    // === SHIFT RIGHT ===
    #10 sel = 2'b10; in = 0; 
    #10 in = 1;             
    #10 in = 0;             

    // === HOLD ===
    #10 sel = 2'b11;
    #10 sel = 2'b11;

    // === CLEAR ===
    #5 sel = 2'b00;

    #10 $finish;
  end
endmodule
