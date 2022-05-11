/*
 * Author: Harideep Nair
 *
 * Implements the FSM responsible for storing synaptic weight and reading it out into a unary output corresponding to RNL response function.
 * Counts down for the duration of the input pulse, eventually wrapping around resetting to the original weights.
 * Output is high only until the FSM counts down to 0; it becomes low after that.
 * STDP increment/decrement occurs at the onset of gamma clock.
 * Weights are encoded as binary values, ranging from 0 to wmax.
 * Input spikes are encoded as pulses having a width of wmax unit clock cycles.
 * Assumes earliest input spike occurs atleast one unit clock period after the posedge of gamma clock, since STDP updates occur at posedge of gamma.
 *
 * Parameters  : WRES          - bit resolution for weights (wmax = 2^WRES-1)
 *
 * Inputs      : input_spike   - input spike to the synapse encoded as wmax-cycle wide pulse
 *               w_init        - input weight values
 *               inc           - increment signal from STDP to increase the synaptic weight
 *               dec           - decrement signal from STDP to decrease the synaptic weight
 *               clk           - unit clock for temporal encoding
 *               grst          - 1-cycle wide gamma clock pulse
 *               rstb          - synchronous active low system reset
 * Outputs     : syn_out       - unary RNL output
 *               w_out         - synaptic weight
 */

module fsm_synapse #(parameter WRES='d3, parameter ID='d0, parameter NUM_SYNAPSE = 'd16,
                    parameter NUM_NEURONS = 'd4)
   (
    input logic input_spike,
    input logic [WRES-1:0] w_init,
    input logic inc,
    input logic dec,
    input logic clk,
    input logic grst,
    input logic rstb,
    output logic [WRES-1:0] w_out,
    output logic syn_out
    //output logic [$clog2(NUM_SYNAPSE)-1:0] id
   ); 

    logic [WRES-1:0] weight;
    logic w_nonzero; // signal to denote when the weight is non-zero
    logic syn_out_wire;
    //assign id = ID; 

    always_ff @ (posedge clk) begin
        // Global reset to initialize weight to zero
        if (!rstb) begin
            weight <= w_init;
            w_nonzero <= |w_init;
        end
        // STDP update
        else if (grst) begin
            if ((inc == 1'b1) && (&weight == 1'b0)) begin
                weight <= weight + 1;
                w_nonzero <= 1'b1;
            end
            else if ((dec == 1'b1) && (|weight == 1'b1)) begin
                weight <= weight - 1;
                w_nonzero <= (|weight[WRES-1:1] == 1'b0) ? 1'b0 : 1'b1;
            end
            else begin
                w_nonzero <= |weight;
            end
        end
        // RNL Readout
        else if (input_spike) begin
            weight <= weight - 1;
            w_nonzero <= (w_nonzero == 1'b0) ? 1'b0 : (|weight[WRES-1:1] == 1'b0) ? 1'b0 : 1'b1;
        end
    end

    assign syn_out = input_spike & w_nonzero;
    assign w_out = weight;
    
endmodule
