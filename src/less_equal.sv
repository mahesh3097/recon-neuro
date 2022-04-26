/*
 * Author: Harideep Nair
 *
 * Implements a 'less than or equal' temporal operator.
 * Data input is allowed to pass only if it arrives before or at the same time as inhibit input.
 * Data input can be an edge or a pulse signal of any width.
 *
 * Assumptions : 1) inhibit input is a 0->1 edge signal.
 *
 * Inputs     : data_in    - data input
 *              inhibit_in - inhibit input
 *              clk        - unit clock for temporal encoding
 *              grst       - 1-cycle wide gamma clock pulse
 *              rstb       - synchronous active low system reset
 * Outputs    : out        - output signal (either equal to data input or null)
 */

module less_equal
    (
     input logic data_in,
     input logic inhibit_in,
     input logic clk,
     input logic grst,
     input logic rstb,
     output logic out
    );

    logic inhibit_only, inhibit_only_edge;

    assign inhibit_only = ~data_in & inhibit_in;

    pulse2edge pe_le (.edge_out(inhibit_only_edge),
                      .pulse_in(inhibit_only),
                      .clk(clk),
                      .grst(grst),
                      .rstb(rstb)
                     );
 
    assign out = data_in & ~inhibit_only_edge;

endmodule
