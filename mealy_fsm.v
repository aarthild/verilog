module mealy_101_detector (
    input clk,
    input reset,
    input in_bit,
    output reg detected
);
    localparam S0 = 2'b00,
               S1 = 2'b01,
               S2 = 2'b10;
    reg [1:0] current_state, next_state;
    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end
  always @(*) begin
        case (current_state)
            S0: next_state = (in_bit == 1) ? S1 : S0;
            S1: next_state = (in_bit == 0) ? S2 : S1;
            S2: next_state = (in_bit == 1) ? S1 : S0;
            default: next_state = S0;
        endcase
    end
    always @(*) begin
        case (current_state)
            S2: detected = (in_bit == 1) ? 1'b1 : 1'b0;
            default: detected = 1'b0;
        endcase
    end

endmodule
