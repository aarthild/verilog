`timescale 1ns / 1ps
module clk_div_by_2 (
    input clk_in,
    input reset,
    output reg clk_out
);
    always @(posedge clk_in or posedge reset) begin
        if (reset)
            clk_out <= 0;
        else
            clk_out <= ~clk_out; // Toggle output on each clock edge
    end
endmodule