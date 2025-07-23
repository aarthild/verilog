`timescale 1ns / 1ps
module clock_divider_tb;
    reg clk;
    reg reset;
    wire clk_out;
    clock_divider #(4) uut (.clk(clk),.reset(reset),.clk_out(clk_out) );
    always #5 clk = ~clk;

    initial begin
        $monitor("clk=%0b | rst=%0b |clk_out=%0b", clk, reset, clk_out);
        clk = 0;
        reset = 1;
        #20;
        reset = 0;
        #100;
        $finish;
    end
endmodule
