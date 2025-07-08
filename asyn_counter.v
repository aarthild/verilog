`timescale 1ns / 1ps
module asyn_counter(
    input clk,
    input rst,
    output reg [3:0] count
);
always @(posedge clk or posedge rst)
    if (rst) count[0] <= 0;
    else     count[0] <= ~count[0];

always @(posedge count[0] or posedge rst)
    if (rst) count[1] <= 0;
    else     count[1] <= ~count[1];

always @(posedge count[1] or posedge rst)
    if (rst) count[2] <= 0;
    else     count[2] <= ~count[2];

always @(posedge count[2] or posedge rst)
    if (rst) count[3] <= 0;
    else     count[3] <= ~count[3];
endmodule
