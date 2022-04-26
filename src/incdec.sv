/*
 * Author: Harideep Nair
 *
 * Implements the logic used to generate STDP's inc/dec signals for incrementing/decrementing synaptic weights.
 * Uses the STDP cases and input BRVs to generate inc/dec signals appropriately.
 *
 * Inputs      : stdp_cases    - input bits corresponding to the four stdp cases, namely, capture, minus, search and backoff 
 *               capture_brv   - BRVs for STDP's 'capture' case
 *               minus_brv     - BRVs for STDP's 'minus' case
 *               search_brv    - BRVs for STDP's 'search' case
 *               backoff_brv   - BRVs for STDP's 'backoff' case
 *               min_brv       - BRVs for enforcing a minimum probability for update
 *               fout_brv      - BRVs for stabilizing weights towards 0 and wmax
 * Outputs     : inc           - increment signal to increase the synaptic weight
 *               dec           - decrement signal to decrease the synaptic weight
 */

module incdec
    (
     input logic [3:0] stdp_cases,
     input logic capture_brv,
     input logic minus_brv,
     input logic search_brv,
     input logic backoff_brv,
     input logic min_brv,
     input logic fout_brv,
     output logic inc,
     output logic dec
    );

    logic stabilize_brv;

    assign stabilize_brv = fout_brv | min_brv;

    assign inc = (stdp_cases[0] & capture_brv & stabilize_brv) | (stdp_cases[2] & search_brv);
    assign dec = (stdp_cases[1] & minus_brv & stabilize_brv) | (stdp_cases[3] & backoff_brv & stabilize_brv);

endmodule
