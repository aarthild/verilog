`timescale 1ns / 1ps
module sequence_detector_1101 (
  input clk,
  input rst,
  input in,
  output reg detected
);
// State encoding
  reg [2:0] state;
  parameter S0 = 3'b000;  // Start
  parameter S1 = 3'b001;  // Got 1
  parameter S2 = 3'b010;  // Got 11
  parameter S3 = 3'b011;  // Got 110
  parameter S4 = 3'b100;  // Got 1101
  // State transitions and output logic
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state <= S0;
      detected <= 0;
    end else begin
      case (state)
        S0: begin
          state <= (in == 1) ? S1 : S0;
          detected <= 0;
        end
        S1: begin
          state <= (in == 1) ? S2 : S0;
          detected <= 0;
        end
        S2: begin
          state <= (in == 0) ? S3 : S2;
          detected <= 0;
        end
        S3: begin
          state <= (in == 1) ? S4 : S0;
          detected <= 0;
        end
        S4: begin
          detected <= 1;               // Pattern 1101 detected
          state <= (in == 1) ? S2 : S0; // Overlap allowed
        end
        default: begin
          state <= S0;
          detected <= 0;
        end
      endcase
    end
  end
endmodule
