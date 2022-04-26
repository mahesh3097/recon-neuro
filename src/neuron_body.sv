/*
 * Author: Harideep Nair
 *
 * Implements the body (soma) of an SRM0 neuron with ramp-no-leak (RNL) response function as a parallel accumulative counter.
 * Accumulates response functions from all synapses and generates an output spike when the accumulated potential crosses the threshold.
 * Also converts the output spike back to [wmax+1]-cycle wide pulse to be passed as input to the following stage.
 *
 * Parameters  : INP           - number of synapses per neuron (equal to number of inputs and number of weights)
 *               WRES          - bit resolution for weights (wmax = 2^WRES-1)
 *               THRESHOLD     - spiking threshold for neuron
 *
 * Inputs      : acc_in        - unary outputs from synapses (1 bit RNL response per synapse)
 *               clk           - unit clock for temporal encoding
 *               grst          - 1-cycle wide gamma clock pulse
 *               rstb          - synchronous active low system reset
 * Output      : output_spike  - output spike of neuron encoded as [wmax+1]-cycle wide pulse
 */

module neuron_body #(parameter INP='d16,
                     parameter WRES='d3,
                     parameter THRESHOLD='d13
                    )
   (
    input logic [INP-1:0] acc_in,
    input logic clk,
    input logic grst,
    input logic rstb,
    output logic output_spike
    );

    logic edge_spike;
    logic pulse_spike;
    
    // Parallel Accumulative Counter
    pac #(INP, THRESHOLD) acc (.in(acc_in),
                               .clk(clk),
                               .grst(grst),
                               .rstb(rstb),
                               .pac_out(edge_spike)
                              );
    
    edge2pulse epn (.edge_in(edge_spike),
                    .clk(clk),
                    .pulse_out(pulse_spike)
                   );
    
    // Converts output spike to [wmax+1]-cycle wide pulse
    fsm_convert #(WRES) conv (.in(pulse_spike),
                              .clk(clk),
                              .rstb(rstb),
                              .out(output_spike)
                             );

endmodule
