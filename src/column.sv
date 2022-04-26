/*
 * Author: Harideep Nair
 *
 * Top-level module
 *
 * Implements a TNN column consisting of Excitatory Column (EC) and Lateral Inhibition (LI), capable of online learning.
 * EC consists of SRM0 neurons implementing ramp-no-leak (RNL) response function.
 * LI implements a 1 winner-take-all (WTA) mechanism, wherein the earliest spiking neuron is the winner.
 * Among multiple winners, LI breaks ties by choosing the winning neuron with the lowest index.
 * Uses temporal encoding - inputs are provided in terms of spikes and their values are encoded in the corresponding spiketimes.
 * The learning mechanism implemented is Spike Timing Dependent Plasticity (STDP), which performs online, local, unsupervised clustering.
 * STDP implements four cases: 1) capture, 2) minus, 3) search, and 4) backoff and performs stochastic updates using Bernoulli random variables (BRVs).
 *
 * Assumptions : 1) weights are encoded as binary values.
 *               2) input spikes are encoded as pulses having a width of 8 (wmax+1) unit clock cycles.
 *               3) earliest input spike occurs atleast one unit clock period after the posedge of gamma clock, since STDP updates occur at posedge of gamma.
 *
 * Parameters  : P             - number of synapses per neuron
 *               Q             - number of neurons in EC
 *               WRES          - bit resolution for synaptic weights
 *               THRESHOLD     - spiking threshold for neuron
 *
 * Inputs      : input_spikes  - input spikes to the column encoded as 8-cycle wide pulses
 *               capture_brv   - BRVs for STDP's 'capture' case
 *               minus_brv     - BRVs for STDP's 'minus' case
 *               search_brv    - BRVs for STDP's 'search' case
 *               backoff_brv   - BRVs for STDP's 'backoff' case
 *               min_brv       - BRVs for enforcing a minimum probability for update
 *               F_brv         - BRVs for stabilizing weights towards 0 and 7
 *               clk           - unit clock for temporal encoding
 *               grst          - 1-cycle wide pulse generated from gclk to reset intermediate signals between computational waves
 *               rstb          - synchronous active low system reset
 * Outputs     : output_spikes - output spikes of LI encoded as 8-cycle wide pulses
 */

module column #(parameter P='d64,
                parameter Q='d2,
                parameter WRES='d3,
                parameter THRESHOLD='d13
               )
    (
     input logic [P-1:0] input_spikes,
     input logic [Q-1:0][P-1:0][WRES-1:0] w_init,
     input logic [Q-1:0][P-1:0] capture_brv,
     input logic [Q-1:0][P-1:0] minus_brv,
     input logic [Q-1:0][P-1:0] search_brv,
     input logic [Q-1:0][P-1:0] backoff_brv,
     input logic [Q-1:0][P-1:0] min_brv,
     input logic [Q-1:0][(1<<WRES)-3:0] F_brv,
     input logic clk,
     input logic grst,
     input logic rstb,
     output logic [Q-1:0] output_spikes
    );

    genvar i, j;

    logic [P-1:0] ein;
    logic [Q-1:0] eout;
    logic [Q-1:0] ec_spikes;
    logic [Q-1:0][P-1:0] inc;
    logic [Q-1:0][P-1:0] dec;
    logic [Q-1:0][P-1:0][WRES-1:0] weights;

    generate
    for (i = 0; i < P; i = i+ 1)
    begin: edge_input_gen
    
        pulse2edge pe_in (.edge_out(ein[i]),
                          .pulse_in(input_spikes[i]),
                          .clk(clk),
                          .grst(grst),
                          .rstb(rstb)
                         );

    end
    endgenerate

    generate
    for (i = 0; i < Q; i = i + 1)
    begin: ec

        neuron #(P, WRES, THRESHOLD) ec (.output_spike(ec_spikes[i]),
                                         .weights(weights[i]),
                                         .input_spikes(input_spikes),
                                         .w_init(w_init[i]),
                                         .inc(inc[i]),
                                         .dec(dec[i]),
                                         .clk(clk),
                                         .grst(grst),
                                         .rstb(rstb)
                                        );

    end
    endgenerate

    wta #(Q) li (.li_out(output_spikes),
                 .ec_spikes(ec_spikes),
                 .clk(clk),
                 .grst(grst),
                 .rstb(rstb)
                );

    generate
    for (i = 0; i < Q; i = i+ 1)
    begin: edge_output_gen
    
        pulse2edge pe_out (.edge_out(eout[i]),
                           .pulse_in(output_spikes[i]),
                           .clk(clk),
                           .grst(grst),
                           .rstb(rstb)
                          );

    end
    endgenerate
    
    generate
    for (i = 0; i < Q; i = i + 1)
    begin: stdplogic1

        for (j = 0; j < P; j = j + 1)
        begin: stdplogic2
    
            stdp s0 (.inc(inc[i][j]),
                     .dec(dec[i][j]),
                     .weight_in(weights[i][j]),
                     .ein(ein[j]),
                     .eout(eout[i]),
                     .capture_brv(capture_brv[i][j]),
                     .minus_brv(minus_brv[i][j]),
                     .search_brv(search_brv[i][j]),
                     .backoff_brv(backoff_brv[i][j]),
                     .min_brv(min_brv[i][j]),
                     .F_brv(F_brv[i]),
                     .clk(clk),
                     .grst(grst),
                     .rstb(rstb)
                    );

        end

    end
    endgenerate

endmodule
