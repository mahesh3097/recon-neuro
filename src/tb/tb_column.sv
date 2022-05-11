module tb_column;

    localparam NUM_SYNAPSE = 'd16;
    localparam NUM_NEURONS = 'd4;
    localparam NUM_INPUTS = 'd4;
    localparam WRES='d3;
    
    logic [NUM_INPUTS-1:0] input_spikes;
    logic [NUM_SYNAPSE-1:0][WRES-1:0] w_init;
    logic [NUM_SYNAPSE-1:0] capture_brv;
    logic [NUM_SYNAPSE-1:0] minus_brv;
    logic [NUM_SYNAPSE-1:0] search_brv;
    logic [NUM_SYNAPSE-1:0] backoff_brv;
    logic [NUM_SYNAPSE-1:0] min_brv;
    logic [NUM_SYNAPSE-1:0][(1<<WRES)-3:0] F_brv; // worry about this later
    logic clk;
    logic grst;
    logic rstb;
    logic [$clog2(NUM_INPUTS)-1:0] num_inputs;
    logic [$clog2(NUM_NEURONS)-1:0] num_neurons;
    logic [NUM_NEURONS-1:0] output_spikes;

    top DUT(.*);

    always #0.5 clk = ~clk;

    integer i, j;

    initial
    begin

        $dumpfile("top.vcd"); // Change this name as required
        $dumpvars(0, tb_column);

        // You can insert your own time values (numbers after hash) at your desired input lines

        //// Inputs begin ////
        rstb = 0;
        num_inputs = 3;
        num_neurons = 2;
        clk = 1;
        for (j = 0; j < NUM_SYNAPSE; j = j + 1) begin
            w_init[j] = 4;
            min_brv[j] = 0;
            capture_brv[j] = 1;
            minus_brv[j] = 1;
            backoff_brv[j] = 1;
            search_brv[j] = 0;
            for (i = 0; i<=(1<<WRES)-3; i=i+1) begin
                F_brv[j][i] = 1;
            end
        end
        grst = 1;
        for (j = 0; j< NUM_INPUTS; j= j+1) begin
            input_spikes[j] = 0;
        end
        #2 grst = 0; 
        #14
        rstb = 1;
        #2
        input_spikes[0] = 1;
        #2
        input_spikes[1] = 1;
        //input_spikes[0] = 1;
        #14
        input_spikes[0] = 0;
        //input_spikes[0] = 1;
        #2
        input_spikes[1] = 0;
        #2
        input_spikes[2] = 1;
        #2
        //input_spikes[0] = 1;
        #14
        input_spikes[2] = 0;
        #2
        //input_spikes[0] = 0;
        #12
        grst = 1;
        #2
        grst = 0;
        #200
        $finish;
    end
endmodule: tb_column