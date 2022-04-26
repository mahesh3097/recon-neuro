/*
 * Author: Harideep Nair
 *
 * Implements the logic used to generate control signals corresponding to four STDP cases as below:
 * capture - both input and output spikes are present; input spike arrives before or at the same time as output spike.
 * minus   - both input and output spikes are present; output spike arrives before input spike.
 * search  - only input spike is present.
 * backoff - only output spike is present.
 * Case when both input and output spikes are absent is implicit; elicits no change.
 *
 * Inputs      : ein           - input spike for the corresponding synapses encoded as 0->1 edge
 *               eout          - output spike of the neuron encoded as 0->1 edge
 *               clk           - unit clock for temporal encoding
 *               grst          - 1-cycle wide gamma clock pulse
 *               rstb          - synchronous active low system reset
 * Outputs     : stdp_cases    - output bits corresponding to the four stdp cases, asserted until gamma clock arrives
 */

module stdp_case_gen
    (
     input logic ein,
     input logic eout,
     input logic clk,
     input logic grst,
     input logic rstb,
     output logic [3:0] stdp_cases
    );

    logic eout_only, e_both, e_one, greater;

    assign eout_only = ~ein & eout;

    pulse2edge pe (.edge_out(greater),
                   .pulse_in(eout_only),
                   .clk(clk),
                   .grst(grst),
                   .rstb(rstb)
                  );
    
    assign e_both = ein & eout;
    assign e_one  = ein ^ eout;

    assign stdp_cases[0] = ~greater & e_both;
    assign stdp_cases[1] =  greater & e_both;
    assign stdp_cases[2] = ~greater & e_one;
    assign stdp_cases[3] =  greater & e_one;

endmodule
