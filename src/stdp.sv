// Author: Harideep Nair

// STDP Logic to generate inc and dec signals for weights
// Implements five cases: capture, minus, search, backoff and no change
// Assumes inputs from LFSR (doesn't implement LFSR)
/*
 * Author: Harideep Nair
 *
 * Implements the STDP logic for each synapse.
 * Generates control signals for incrementing/decrementing the corresponding synaptic weight based on four cases as below.
 * capture - both input and output spikes are present; input spike arrives before or at the same time as output spike.
 * minus   - both input and output spikes are present; output spike arrives before input spike.
 * search  - only input spike is present.
 * backoff - only output spike is present.
 * Case when both input and output spikes are absent is implicit; elicits no change.
 *
 * Inputs      : weight_in     - corresponding synaptic weight 
 *               ein           - input spike for the corresponding synapses encoded as 0->1 edge
 *               eout          - output spike of the neuron encoded as 0->1 edge
 *               capture_brv   - BRVs for STDP's 'capture' case
 *               minus_brv     - BRVs for STDP's 'minus' case
 *               search_brv    - BRVs for STDP's 'search' case
 *               backoff_brv   - BRVs for STDP's 'backoff' case
 *               min_brv       - BRVs for enforcing a minimum probability for update
 *               F_brv         - BRVs for stabilizing weights towards 0 and wmax
 *               clk           - unit clock for temporal encoding
 *               grst          - 1-cycle wide gamma clock pulse
 *               rstb          - synchronous active low system reset
 * Outputs     : inc           - increment signal to increase the synaptic weight
 *               dec           - decrement signal to decrease the synaptic weight
 */

module stdp #(parameter WRES='d3)
    (
     input logic [WRES-1:0] weight_in,
     input logic ein,
     input logic eout,
     input logic capture_brv,
     input logic minus_brv,
     input logic search_brv,
     input logic backoff_brv,
     input logic min_brv,
     input logic [(1<<WRES)-3:0] F_brv,
     input logic clk,
     input logic grst,
     input logic rstb,
     output logic inc,
     output logic dec
    );

    logic [3:0] stdp_cases;
    logic fout_brv;

    stdp_case_gen casegen (.stdp_cases(stdp_cases),
                           .ein(ein),
                           .eout(eout),
                           .clk(clk),
                           .grst(grst),
                           .rstb(rstb)
                          );

    stabilize_func #(WRES) flogic (.out(fout_brv),
                                   .weight(weight_in),
                                   .F_brv(F_brv)
                                  );

    incdec control (.inc(inc),
                    .dec(dec),
                    .stdp_cases(stdp_cases),
                    .capture_brv(capture_brv),
                    .minus_brv(minus_brv),
                    .search_brv(search_brv),
                    .backoff_brv(backoff_brv),
                    .min_brv(min_brv),
                    .fout_brv(fout_brv)
              );
    
endmodule
