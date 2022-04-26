/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sun Apr 24 22:13:06 2022
/////////////////////////////////////////////////////////////


module mux ( in, sel, out );
  input [3:0] in;
  input [1:2] sel;
  output [1:2] out;
  wire   sel_2_;
  assign sel_2_ = sel[2];

  MUX2_X1 U6 ( .A(in[0]), .B(in[2]), .S(sel_2_), .Z(out[2]) );
  MUX2_X1 U7 ( .A(in[1]), .B(in[3]), .S(sel_2_), .Z(out[1]) );
endmodule

