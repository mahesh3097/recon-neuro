/*
 * Author: Harideep Nair
 *
 * Implements the logic used to select appropriate weight stabilization BRVs for STDP based on synaptic weights.
 * Acts like a huge multiplexer.
 * LFSR is not implemented.
 * Inputs are assumed to come from LFSRs.
 *
 * Inputs     : weight - corresponding synaptic weight
 *              F_brv  - BRVs corresponding to weight values of 1 to wmax-1; BRV for w = 0 is 0 and for w = wmax is 1
 * Outputs    : out    - selected BRV output
 */

module stabilize_func #(parameter WRES='d3)
    (
     input logic [WRES-1:0] weight,
     input logic [(1<<WRES)-3:0] F_brv,
     output logic out
    );

    always_comb
    begin
        out = 0;
        if ((weight == 0) | (weight == ((1<<WRES)-1))) out = 0;
        for (int i = 1; i < ((1<<WRES)-1); i++)
        begin
            if (weight == i) out = F_brv[i-1];
        end
    end

endmodule
