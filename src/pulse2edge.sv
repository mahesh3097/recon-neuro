/*
 * Author: Harideep Nair
 *
 * Implements a pulse-to-edge conversion logic.
 * Input pulse could be of any width.
 * Output is a 0->1 edge signal.
 *
 * Inputs     : pulse_in    - input pulse signal
 *              clk         - unit clock for temporal encoding
 *              grst        - 1-cycle wide gamma clock pulse
 *              rstb        - synchronous active low system reset
 * Outputs    : edge_out    - output 0->1 edge signal
 */

module pulse2edge
    (
     input logic pulse_in,
     input logic clk,
     input logic grst,
     input logic rstb,
     output logic edge_out
    );

    logic temp;
    
    always_ff @ (posedge clk)
    begin
        if (grst | ~rstb)
        begin
            temp <= 0;
        end
        else
        begin
            temp <= edge_out;
        end
    end
    
    assign edge_out = pulse_in | temp;

endmodule
