`timescale 1ns / 1ps
module tb_clk_div_by_2;
    reg clk, reset;
    wire clk_out;

    clk_div_by_2 uut (
        .clk_in(clk),
        .reset(reset),
        .clk_out(clk_out)
    );

    initial clk = 0;
    always #10 clk = ~clk;  // 100 MHz input clock (10 ns period)

    initial begin
        $monitor("Time = %0t | clk_in = %b | clk_out = %b", $time, clk, clk_out);
        reset = 1; #20; reset = 0;

        #200;
        $finish;
    end
endmodule

