/*
 * Author: Harideep Nair
 *
 * Implements an edge-to-pulse conversion logic.
 * Input is a 0->1 edge.
 * Output is a pulse with a width of 1 unit clock period.
 * Used here to generate 1-cycle wide reset pulses from gamma clock.
 *
 * Inputs     : edge_in    - input edge signal (posedge of gamma clock here)
 *              clk        - unit clock
 * Outputs    : pulse_out  - output 1-cycle wide pulse
 */

module edge2pulse 
    (
     input logic edge_in,
     input logic clk,
     output logic pulse_out
    );

    logic temp;

    always_ff @ (posedge clk)
    begin
        temp <= edge_in;
    end

    assign pulse_out = edge_in & (~temp);

endmodule
