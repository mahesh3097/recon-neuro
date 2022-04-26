module mux
    #(parameter INPUTS=0, WIDTH=0)
    (input  logic [INPUTS-1:0][WIDTH-1:0]   in,
     input  logic [$clog2(INPUTS)-1:0]      sel,
     output logic [WIDTH-1:0]               out);

    assign out = in[sel];

endmodule: mux

module decoder
    #(parameter WIDTH=4, localparam  OUT_WIDTH = 1<<WIDTH)
    (input  logic [WIDTH-1:0]       in,
     output logic [OUT_WIDTH-1:0]   out);

    assign out = 'd1 << in;

endmodule: decoder

