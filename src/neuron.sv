/*
 * Author: Harideep Nair
 *
 * Implements an SRM0 neuron with ramp-no-leak (RNL) response function.
 * Uses temporal encoding - each input is provided as a single spike with its value encoded in the corresponding spiketime.
 * Each input synapse has a separate configurable weight and accepts at most one spike per input, in one computational cycle/wave.
 * Weights are encoded as positive binary values (0 to wmax).
 * Input spikes are encoded as pulses having a width of [wmax+1] unit clock cycles.
 * STDP learning mechanism is not implemented as part of neuron here; it's implemented separately in the TNN column.
 *
 * Parameters     : INP           - number of synapses per neuron (equal to number of inputs and number of weights)
 *                  WRES          - bit resolution for weights (wmax = 2^WRES-1)
 *                  THRESHOLD     - spiking threshold for neuron
 *
 * Inputs         : input_spikes  - input spikes to the neuron encoded as [wmax+1]-cycle wide pulses
 *                  w_init        - input weight values
 *                  inc           - increment signals from STDP to increase corresponding synaptic weights
 *                  dec           - decrement signals from STDP to decrease corresponding synaptic weights
 *                  clk           - unit clock for temporal encoding
 *                  grst          - 1-cycle wide gamma clock pulse
 *                  rstb          - synchronous active low system reset
 * Outputs        : output_spike  - output spike of neuron encoded as [wmax+1]-cycle wide pulse
 *                  weights       - synaptic weights of the neuron
 */

module neuron #(parameter INP='d4,
                parameter WRES='d3,
                parameter THRESHOLD='d13,
               )
   (
    input logic clk,
    input logic grst,
    input logic rstb,
    output logic output_spike,
    input logic [INP-1:0] resp_func
   );

    // logic [INP-1:0] resp_func; // RNL readout

   

    // Synaptic weight + readout logic FSM
    
    neuron_body #(INP, WRES, THRESHOLD) soma (.acc_in(resp_func),
                                              .clk(clk),
                                              .grst(grst),
                                              .rstb(rstb),
                                              .output_spike(output_spike)
                                             );

endmodule
