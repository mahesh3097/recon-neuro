/*
 * Author: Harideep Nair
 *
 * Implements a simple multi-bit 2-input adder.
 *
 * Parameters : RES - bit width of inputs
 *
 * Inputs     : a          - first data input
 *              b          - second data input
 *              cin        - 1-bit carry input
 * Outputs    : out        - sum output
 */

module adder #(parameter RES='d4)
    (
     input logic [RES-1:0] a,
     input logic [RES-1:0] b,
     input logic cin,
     output logic [RES:0] out
    );

    assign out = a + b + cin;

endmodule
