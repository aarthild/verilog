
`timescale 1ns / 1ps

module tb_mealy_101_detector;

    reg clk;
    reg reset;
    reg in_bit;
    wire detected;

    // Instantiate the design
    mealy_101_detector dut (
        .clk(clk),
        .reset(reset),
        .in_bit(in_bit),
        .detected(detected)
    );

    // Clock generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        $monitor("clk=%0b | in_bit=%0b | detected=%0b", clk, in_bit, detected);

        // Initialize
        clk = 0; reset = 1; in_bit = 0;

        #10 reset = 0;

        // Apply inputs: 1 1 0 1 → should detect
        #10 in_bit = 1;
        #10 in_bit = 1;
        #10 in_bit = 0;
        #10 in_bit = 1;  // Detected

        // Another test: 0 1 0 1 → should detect
        #10 in_bit = 0;
        #10 in_bit = 1;
        #10 in_bit = 0;
        #10 in_bit = 1;  // Detected

        // Stop simulation
        #20 $finish;
    end

endmodule

