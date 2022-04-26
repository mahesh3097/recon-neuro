/*
 * Author: Harideep Nair
 *
 * Implements the FSM used to generate [wmax+1]-cycles wide output spike pulse from a single cycle pulse from pac.
 *
 * Parameters     : WRES       - bit resolution for weights (wmax = 2^WRES-1)
 *
 * Inputs      : in            - 1-cycle wide pulse to be converted to [wmax+1]-cycles wide
 *               clk           - unit clock for temporal encoding
 *               rstb          - synchronous active low system reset
 * Output      : out           - [wmax+1]-cycles wide pulse output
 */

module fsm_convert #(parameter WRES='d3)
    (
     input logic in,
     input logic clk,
     input logic rstb,
     output logic out
    );

    logic [WRES-1:0] state;
    logic temp;

    always_ff @ (posedge clk)
    begin
        if (~rstb)
        begin
            state <= '0;
        end
        else
        begin
            if (state == '0)
            begin
                if (in)
                begin
                    state <= state + 1;
                end
            end
            else begin
                state <= state + 1;
            end
         end
     end

    assign temp = (state == '0) ? 1 : 0;
    assign out = (~temp) | (temp & in);

endmodule
