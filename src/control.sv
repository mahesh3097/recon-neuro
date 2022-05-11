module control
    #(parameter NUM_INPUTS=4, NUM_SYNAPSE=16, NUM_NEURONS=4)
    (input  logic [$clog2(NUM_INPUTS)-1:0]              num_inputs,
     input  logic [$clog2(NUM_NEURONS)-1:0]         num_neurons,
    //  input  logic [$clog2(NUM_SYNAPSE)-1:0] id     [NUM_SYNAPSE-1:0],
     output logic [$clog2(NUM_INPUTS):0] sel_ip [NUM_SYNAPSE-1:0],
     input  logic [NUM_SYNAPSE-1:0]         syn_out,
     input  logic [NUM_NEURONS-1:0]         e_out,
     input  logic [NUM_INPUTS-1:0]          e_in,
     output logic [NUM_SYNAPSE-1:0]         resp_func [NUM_NEURONS-1:0],
     output logic [NUM_SYNAPSE-1:0]         e_out_map,
     output logic [NUM_SYNAPSE-1:0]         e_in_map
    );

    logic [NUM_SYNAPSE-1:0] reg_select [NUM_NEURONS-1:0]; 
    logic [NUM_NEURONS-1:0] ne_dec_out;
    logic [NUM_NEURONS-1:0] neuron_enable;

    logic [NUM_INPUTS-1:0]  rf_dec_out;
    logic [NUM_INPUTS-1:0]  rf_pattern;
    logic [NUM_SYNAPSE-1:0] syn_neuron_map [NUM_NEURONS-1:0];

    assign neuron_enable = ne_dec_out - 1;
    assign rf_pattern = rf_dec_out - 1;

    genvar i;
    generate
        for (i = 0; i < NUM_SYNAPSE; i = i + 1)
        begin:sel_loop
            //assign sel_ip[i] = id[i] % num_inputs; // check if this is synthesizable, if so remove that id bullshit
            assign sel_ip[i] = (i < num_inputs * num_neurons) ? i % num_inputs : NUM_INPUTS;   
        end
    endgenerate

    decoder #($clog2(NUM_NEURONS)) neuron_enable_dec(
        .in(num_neurons), .out(ne_dec_out)
    );

    decoder #($clog2(NUM_INPUTS)) reg_fill_dec(
        .in(num_inputs), .out(rf_dec_out)
    );
    
    assign syn_neuron_map[0] = rf_pattern;
    genvar j;
    generate
         for (j = 1; j < NUM_NEURONS; j = j + 1)
         begin
            //  assign  syn_neuron_map[j] = syn_neuron_map[j-1] << (num_inputs);
             assign syn_neuron_map[j] = rf_pattern << (j * num_inputs);
         end 
    endgenerate

    genvar l, m;
    generate 
        for (l = 0; l < NUM_NEURONS; l = l + 1)begin
            for( m = 0; m < NUM_SYNAPSE; m = m+1)begin
                assign resp_func[l][m] = syn_out[m] & syn_neuron_map[l][m] & neuron_enable[l]; 
            end
        end
        for(m = 0; m < NUM_SYNAPSE; m++) begin
            assign e_out_map[m] = (m/num_inputs > NUM_NEURONS -1 ) ? 0 : e_out[m/num_inputs];
            assign e_in_map[m] = (m < num_inputs * num_neurons) ? e_in[m%num_inputs] : 0;
        end
    endgenerate
    
endmodule: control