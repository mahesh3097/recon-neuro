/*
 * Author: Harideep Nair
 *
 * Implements 1-Winner Take All (WTA) Lateral Inhibition, wherein the earliest spiking neuron is the winner.
 * Among multiple winners, it breaks ties by choosing the winning neuron with the lowest index.
 *
 * Parameters  : Q             - number of neurons in EC
 *
 * Inputs      : ec_spikes     - output spikes of excitatory column encoded as [wmax+1]-cycle wide pulses
 *               clk           - unit clock for temporal encoding
 *               grst          - 1-cycle wide gamma clock pulse
 *               rstb          - synchronous active low system reset
 * Outputs     : li_out        - output spikes of LI encoded as [wmax+1]-cycle wide pulses
 */

module wta #(parameter Q='d10)
    (
     input logic [Q-1:0] ec_spikes,
     input logic clk,
     input logic grst,
     input logic rstb,
     output logic [Q-1:0] li_out
    );

    genvar i, j;
    
    logic first_spike, first_spike_edge;
    logic [Q-1:0] inhibit_spikes;

    assign first_spike = |ec_spikes;

    pulse2edge pe_wta (.edge_out(first_spike_edge),
                       .pulse_in(first_spike),
                       .clk(clk),
                       .grst(grst),
                       .rstb(rstb)
                      );
    
    generate
    for (i = 0; i < Q; i = i + 1)
    begin: less_than_or_equal
    
        less_equal l1 (.out(inhibit_spikes[i]),
                       .data_in(ec_spikes[i]),
                       .inhibit_in(first_spike_edge),
                       .clk(clk),
                       .grst(grst),
                       .rstb(rstb)
                      );

    end
    endgenerate

    assign li_out[0] = inhibit_spikes[0];
    
    generate
    for (j = 1; j < Q; j = j + 1)
    begin: tie_break
    
        assign li_out[j] = inhibit_spikes[j] & ~(|inhibit_spikes[j-1:0]); 
    
    end
    endgenerate

endmodule
