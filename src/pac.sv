/*
 * Author: Harideep Nair
 *
 * Implements a parallel accumulative counter as part of the neuron body (soma).
 * Accumulates response functions from all synapses into the body potential.
 * Threshold comparison is also integrated into it by initializing the body potential register to negative threshold value.
 * This implementation tracks the body potential only until the threshold is crossed, hence needs lesser bits for storage.
 * Outputs a 0->1 edge transition for the output spike, that is reset at the next gamma clock.
 *
 * Parameters  : INP           - number of synapses per neuron (equal to number of inputs and number of weights)
 *               THRESHOLD     - spiking threshold for neuron
 *               P_RES         - bit resolution needed for parallel counter output which adds INP parallel 1-bit inputs
 *               IN_SIZE       - input size padded up to the nearest power of 2
 *               STAGES        - number of stages in the parallel counter
 *               NUM           - total number of all intermediate wires needed in the adder tree
 *               MAXRES        - bit resolution needed to store the maximum between threshold and parallel counter output
 *
 * Inputs      : in            - unary outputs from synapses (1 bit output per synapse)
 *               clk           - unit clock for temporal encoding
 *               grst          - 1-cycle wide gamma clock pulse
 *               rstb          - synchronous active low system reset
 * Output      : pac_out       - 0->1 edge transition output pulse that is generated when body potential crosses threshold
 */

`define maxab(a, b) (a > b ? a : b)

module pac #(parameter INP='d16,
             parameter THRESHOLD='d13,
             parameter P_RES=$clog2(INP),
             parameter IN_SIZE=1<<P_RES,
             parameter STAGES=P_RES-1,
             parameter NUM=2*IN_SIZE-P_RES-2
            )
   (
    input logic [INP-1:0] in,
    input logic clk,
    input logic grst,
    input logic rstb,
    output logic pac_out
    );

    localparam MAXRES = `maxab(P_RES+1,$clog2(THRESHOLD)+1);

    logic [IN_SIZE-1:0] padded_in;
    wire logic [NUM-1:0] temp;
    wire logic [P_RES-1:0] parallel_out;
    wire logic [MAXRES:0] body_pot;
    logic [MAXRES-1:0] regout;
    logic poutlatch;

    genvar i, j;

    assign padded_in = IN_SIZE'(in);

    for (i = 0; i < IN_SIZE/2; i = i + 1)
    begin: padloop

        assign temp[i] = padded_in[i];

    end

    generate
        
        for (i = 0; i < STAGES; i = i + 1)
        begin: stages

            for (j = 0; j < IN_SIZE/(1<<(i+2)); j = j + 1)
            begin: adders
                
                adder #(i+1) a1 (.out(temp[(IN_SIZE>>(i+1))*((1<<(i+2))-i-3) + j*(i+2) + (i+1) : (IN_SIZE>>(i+1))*((1<<(i+2))-i-3) + j*(i+2)]),
                                 .a(temp[(IN_SIZE>>i)*((1<<(i+1))-i-2) + 2*j*(i+1) + i : (IN_SIZE>>i)*((1<<(i+1))-i-2) + 2*j*(i+1)]),
                                 .b(temp[(IN_SIZE>>i)*((1<<(i+1))-i-2) + (2*j+1)*(i+1) + i : (IN_SIZE>>i)*((1<<(i+1))-i-2) + (2*j+1)*(i+1)]),
                                 .cin(padded_in[IN_SIZE/2 + (IN_SIZE>>(i+1))*((1<<i)-1) + j])
                                );
            
            end

        end

    endgenerate

    assign parallel_out = temp[NUM-1:NUM-P_RES];

    adder #(MAXRES) b1 (.out(body_pot),
                        .a(MAXRES'(parallel_out)),
                        .b(regout),
                        .cin(padded_in[IN_SIZE-1])
                       );

    always_ff @(posedge clk)
    begin
        
        if (grst | !rstb) begin
            regout <= MAXRES'(-1*THRESHOLD);
            poutlatch <= 0;
        end
        else
        begin
            regout <= pac_out ? MAXRES'(-1*THRESHOLD) : body_pot[MAXRES-1:0];
            poutlatch <= pac_out;
        end
    end

    assign pac_out = body_pot[MAXRES] | poutlatch;

endmodule
