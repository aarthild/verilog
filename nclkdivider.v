`timescale 1ns / 1ps
module clock_divider #(parameter N = 4) (  // N should be even
    input wire clk,        // Input clock
    input wire reset,      // Synchronous reset
    output reg clk_out     // Divided clock output
);

reg [$clog2(N)-1:0] count = 0;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count   <= 0;
        clk_out <= 0;
    end else begin
        if (count == (N/2 - 1)) begin
            count   <= 0;
            clk_out <= ~clk_out;
        end else begin
            count <= count + 1;
        end
    end
end
endmodule
