`timescale 1ns / 1ps
module tb_sequence_detector_1101;
  reg clk;
  reg rst;
  reg in;
  wire detected;
  sequence_detector_1101 dut (.clk(clk),.rst(rst),.in(in),.detected(detected));
  always #5 clk = ~clk;
  initial begin
    $monitor("clk=%0b | in=%b | detected=%b",clk, in, detected);
    clk=0;rst = 1;
    in  = 0;
    #12;
    rst = 0;
    // Apply input pattern: 1 1 0 1 (should detect)
    in = 1; #10; // S1
    in = 1; #10; // S2
    in = 0; #10; // S3
    in = 1; #10; // S4 -> detected = 1
    // Add more pattern with overlap: 1 0 1 (should detect again)
    in = 1; #10; // S2
    in = 0; #10; // S3
    in = 1; #10; // S4 -> detected = 1
    // Random pattern
    in = 0; #10;
    in = 1; #10;
    in = 1; #10;
    in = 1; #10;
    in = 0; #10;
    in = 1; #10; // 1101 detected again
    #20;
    $finish;
  end
endmodule

