/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Mon Apr 25 20:59:11 2022
/////////////////////////////////////////////////////////////


module pulse2edge_28 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module pulse2edge_27 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module pulse2edge_26 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module pulse2edge_25 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module adder_RES1_15 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_14 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_13 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_12 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES2_7 ( a, b, cin, out );
  input [1:0] a;
  input [1:0] b;
  output [2:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n1), .A2(n2), .B1(n3), .B2(n4), .ZN(out[2]) );
  INV_X1 U2 ( .A(b[1]), .ZN(n1) );
  XOR2_X1 U3 ( .A(n4), .B(n3), .Z(out[1]) );
  AOI22_X1 U4 ( .A1(b[0]), .A2(a[0]), .B1(n5), .B2(cin), .ZN(n3) );
  XOR2_X1 U5 ( .A(n2), .B(b[1]), .Z(n4) );
  INV_X1 U6 ( .A(a[1]), .ZN(n2) );
  XOR2_X1 U7 ( .A(cin), .B(n5), .Z(out[0]) );
  XOR2_X1 U8 ( .A(a[0]), .B(b[0]), .Z(n5) );
endmodule


module adder_RES2_6 ( a, b, cin, out );
  input [1:0] a;
  input [1:0] b;
  output [2:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n1), .A2(n2), .B1(n3), .B2(n4), .ZN(out[2]) );
  INV_X1 U2 ( .A(b[1]), .ZN(n1) );
  XOR2_X1 U3 ( .A(n4), .B(n3), .Z(out[1]) );
  AOI22_X1 U4 ( .A1(b[0]), .A2(a[0]), .B1(n5), .B2(cin), .ZN(n3) );
  XOR2_X1 U5 ( .A(n2), .B(b[1]), .Z(n4) );
  INV_X1 U6 ( .A(a[1]), .ZN(n2) );
  XOR2_X1 U7 ( .A(cin), .B(n5), .Z(out[0]) );
  XOR2_X1 U8 ( .A(a[0]), .B(b[0]), .Z(n5) );
endmodule


module adder_RES3_3 ( a, b, cin, out );
  input [2:0] a;
  input [2:0] b;
  output [3:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;

  INV_X1 U1 ( .A(n1), .ZN(out[3]) );
  AOI21_X1 U2 ( .B1(n2), .B2(a[2]), .A(n3), .ZN(n1) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  OAI21_X1 U4 ( .B1(a[2]), .B2(n2), .A(b[2]), .ZN(n4) );
  XOR2_X1 U5 ( .A(n2), .B(n5), .Z(out[2]) );
  XOR2_X1 U6 ( .A(b[2]), .B(a[2]), .Z(n5) );
  OAI21_X1 U7 ( .B1(n6), .B2(n7), .A(n8), .ZN(n2) );
  OAI21_X1 U8 ( .B1(n9), .B2(a[1]), .A(b[1]), .ZN(n8) );
  INV_X1 U9 ( .A(n6), .ZN(n9) );
  INV_X1 U10 ( .A(a[1]), .ZN(n7) );
  XNOR2_X1 U11 ( .A(n6), .B(n10), .ZN(out[1]) );
  XOR2_X1 U12 ( .A(b[1]), .B(a[1]), .Z(n10) );
  OAI21_X1 U13 ( .B1(b[0]), .B2(a[0]), .A(n11), .ZN(n6) );
  INV_X1 U14 ( .A(n12), .ZN(n11) );
  AOI21_X1 U15 ( .B1(a[0]), .B2(b[0]), .A(cin), .ZN(n12) );
  XOR2_X1 U16 ( .A(a[0]), .B(n13), .Z(out[0]) );
  XOR2_X1 U17 ( .A(cin), .B(b[0]), .Z(n13) );
endmodule


module adder_RES5_3 ( a, b, cin, out );
  input [4:0] a;
  input [4:0] b;
  output [5:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  OAI21_X1 U1 ( .B1(n1), .B2(n2), .A(n3), .ZN(out[5]) );
  OAI21_X1 U2 ( .B1(a[4]), .B2(n4), .A(b[4]), .ZN(n3) );
  INV_X1 U3 ( .A(a[4]), .ZN(n2) );
  XOR2_X1 U4 ( .A(n4), .B(n5), .Z(out[4]) );
  XOR2_X1 U5 ( .A(b[4]), .B(a[4]), .Z(n5) );
  INV_X1 U6 ( .A(n1), .ZN(n4) );
  AOI22_X1 U7 ( .A1(n6), .A2(a[3]), .B1(n7), .B2(b[3]), .ZN(n1) );
  OR2_X1 U8 ( .A1(a[3]), .A2(n6), .ZN(n7) );
  XOR2_X1 U9 ( .A(n6), .B(n8), .Z(out[3]) );
  XOR2_X1 U10 ( .A(b[3]), .B(a[3]), .Z(n8) );
  INV_X1 U11 ( .A(n9), .ZN(n6) );
  AOI22_X1 U12 ( .A1(n10), .A2(a[2]), .B1(n11), .B2(b[2]), .ZN(n9) );
  OR2_X1 U13 ( .A1(a[2]), .A2(n10), .ZN(n11) );
  XOR2_X1 U14 ( .A(n10), .B(n12), .Z(out[2]) );
  XOR2_X1 U15 ( .A(b[2]), .B(a[2]), .Z(n12) );
  INV_X1 U16 ( .A(n13), .ZN(n10) );
  AOI22_X1 U17 ( .A1(n14), .A2(a[1]), .B1(n15), .B2(b[1]), .ZN(n13) );
  OR2_X1 U18 ( .A1(a[1]), .A2(n14), .ZN(n15) );
  XOR2_X1 U19 ( .A(n14), .B(n16), .Z(out[1]) );
  XOR2_X1 U20 ( .A(b[1]), .B(a[1]), .Z(n16) );
  OAI21_X1 U21 ( .B1(n17), .B2(n18), .A(n19), .ZN(n14) );
  OAI21_X1 U22 ( .B1(a[0]), .B2(b[0]), .A(cin), .ZN(n19) );
  INV_X1 U23 ( .A(b[0]), .ZN(n18) );
  INV_X1 U24 ( .A(a[0]), .ZN(n17) );
  XOR2_X1 U25 ( .A(a[0]), .B(n20), .Z(out[0]) );
  XOR2_X1 U26 ( .A(cin), .B(b[0]), .Z(n20) );
endmodule


module pac_00000010_0000000d_3 ( in, clk, grst, rstb, pac_out );
  input [15:0] in;
  input clk, grst, rstb;
  output pac_out;
  wire   poutlatch, N11, N12, N13, N14, N15, N16, n1, n2, n3, n4;
  wire   [25:8] temp;
  wire   [5:0] body_pot;
  wire   [4:0] regout;

  DFF_X1 regout_reg_0_ ( .D(N11), .CK(clk), .Q(regout[0]) );
  DFF_X1 regout_reg_3_ ( .D(N14), .CK(clk), .Q(regout[3]) );
  DFF_X1 regout_reg_2_ ( .D(N13), .CK(clk), .Q(regout[2]) );
  DFF_X1 regout_reg_4_ ( .D(N15), .CK(clk), .Q(regout[4]) );
  DFF_X1 regout_reg_1_ ( .D(N12), .CK(clk), .Q(regout[1]) );
  DFF_X1 poutlatch_reg ( .D(N16), .CK(clk), .Q(poutlatch) );
  adder_RES1_15 stages_0__adders_0__a1 ( .a(in[0]), .b(in[1]), .cin(in[8]), 
        .out(temp[9:8]) );
  adder_RES1_14 stages_0__adders_1__a1 ( .a(in[2]), .b(in[3]), .cin(in[9]), 
        .out(temp[11:10]) );
  adder_RES1_13 stages_0__adders_2__a1 ( .a(in[4]), .b(in[5]), .cin(in[10]), 
        .out(temp[13:12]) );
  adder_RES1_12 stages_0__adders_3__a1 ( .a(in[6]), .b(in[7]), .cin(in[11]), 
        .out(temp[15:14]) );
  adder_RES2_7 stages_1__adders_0__a1 ( .a(temp[9:8]), .b(temp[11:10]), .cin(
        in[12]), .out(temp[18:16]) );
  adder_RES2_6 stages_1__adders_1__a1 ( .a(temp[13:12]), .b(temp[15:14]), 
        .cin(in[13]), .out(temp[21:19]) );
  adder_RES3_3 stages_2__adders_0__a1 ( .a(temp[18:16]), .b(temp[21:19]), 
        .cin(in[14]), .out(temp[25:22]) );
  adder_RES5_3 b1 ( .a({1'b0, temp[25:22]}), .b(regout), .cin(in[15]), .out(
        body_pot) );
  AND3_X1 U3 ( .A1(rstb), .A2(n1), .A3(pac_out), .ZN(N16) );
  INV_X1 U4 ( .A(n2), .ZN(pac_out) );
  OR2_X1 U5 ( .A1(body_pot[4]), .A2(n3), .ZN(N15) );
  AND2_X1 U6 ( .A1(body_pot[3]), .A2(n4), .ZN(N14) );
  AND2_X1 U7 ( .A1(body_pot[2]), .A2(n4), .ZN(N13) );
  INV_X1 U8 ( .A(n3), .ZN(n4) );
  OR2_X1 U9 ( .A1(body_pot[1]), .A2(n3), .ZN(N12) );
  OR2_X1 U10 ( .A1(body_pot[0]), .A2(n3), .ZN(N11) );
  NAND3_X1 U11 ( .A1(n2), .A2(n1), .A3(rstb), .ZN(n3) );
  INV_X1 U12 ( .A(grst), .ZN(n1) );
  NOR2_X1 U13 ( .A1(body_pot[5]), .A2(poutlatch), .ZN(n2) );
endmodule


module edge2pulse_3 ( edge_in, clk, pulse_out );
  input edge_in, clk;
  output pulse_out;
  wire   n1;

  DFF_X1 temp_reg ( .D(edge_in), .CK(clk), .QN(n1) );
  AND2_X1 U3 ( .A1(edge_in), .A2(n1), .ZN(pulse_out) );
endmodule


module fsm_convert_00000003_3 ( in, clk, rstb, out );
  input in, clk, rstb;
  output out;
  wire   n7, n8, n9, n1, n2, n3, n4, n5, n6, n10;
  wire   [2:0] state;

  DFF_X1 state_reg_0_ ( .D(n9), .CK(clk), .Q(state[0]), .QN(n2) );
  DFF_X1 state_reg_1_ ( .D(n7), .CK(clk), .Q(state[1]), .QN(n1) );
  DFF_X1 state_reg_2_ ( .D(n8), .CK(clk), .Q(state[2]) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(state[2]), .Z(n8) );
  OAI21_X1 U4 ( .B1(state[1]), .B2(n5), .A(n6), .ZN(n4) );
  INV_X1 U5 ( .A(n9), .ZN(n6) );
  NOR3_X1 U6 ( .A1(n1), .A2(n5), .A3(n2), .ZN(n3) );
  MUX2_X1 U7 ( .A(n9), .B(n10), .S(n1), .Z(n7) );
  NOR2_X1 U8 ( .A1(n5), .A2(n2), .ZN(n10) );
  NOR2_X1 U9 ( .A1(n5), .A2(state[0]), .ZN(n9) );
  NAND2_X1 U10 ( .A1(rstb), .A2(out), .ZN(n5) );
  OR4_X1 U11 ( .A1(state[0]), .A2(in), .A3(state[2]), .A4(state[1]), .ZN(out)
         );
endmodule


module neuron_body_00000010_00000003_0000000d_3 ( acc_in, clk, grst, rstb, 
        output_spike );
  input [15:0] acc_in;
  input clk, grst, rstb;
  output output_spike;
  wire   edge_spike, pulse_spike;

  pac_00000010_0000000d_3 acc ( .in(acc_in), .clk(clk), .grst(grst), .rstb(
        rstb), .pac_out(edge_spike) );
  edge2pulse_3 epn ( .edge_in(edge_spike), .clk(clk), .pulse_out(pulse_spike)
         );
  fsm_convert_00000003_3 conv ( .in(pulse_spike), .clk(clk), .rstb(rstb), 
        .out(output_spike) );
endmodule


module neuron_00000010_00000003_0000000d_3 ( clk, grst, rstb, output_spike, 
        resp_func );
  input [15:0] resp_func;
  input clk, grst, rstb;
  output output_spike;


  neuron_body_00000010_00000003_0000000d_3 soma ( .acc_in(resp_func), .clk(clk), .grst(grst), .rstb(rstb), .output_spike(output_spike) );
endmodule


module adder_RES1_11 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_10 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_9 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_8 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES2_5 ( a, b, cin, out );
  input [1:0] a;
  input [1:0] b;
  output [2:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n1), .A2(n2), .B1(n3), .B2(n4), .ZN(out[2]) );
  INV_X1 U2 ( .A(b[1]), .ZN(n1) );
  XOR2_X1 U3 ( .A(n4), .B(n3), .Z(out[1]) );
  AOI22_X1 U4 ( .A1(b[0]), .A2(a[0]), .B1(n5), .B2(cin), .ZN(n3) );
  XOR2_X1 U5 ( .A(n2), .B(b[1]), .Z(n4) );
  INV_X1 U6 ( .A(a[1]), .ZN(n2) );
  XOR2_X1 U7 ( .A(cin), .B(n5), .Z(out[0]) );
  XOR2_X1 U8 ( .A(a[0]), .B(b[0]), .Z(n5) );
endmodule


module adder_RES2_4 ( a, b, cin, out );
  input [1:0] a;
  input [1:0] b;
  output [2:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n1), .A2(n2), .B1(n3), .B2(n4), .ZN(out[2]) );
  INV_X1 U2 ( .A(b[1]), .ZN(n1) );
  XOR2_X1 U3 ( .A(n4), .B(n3), .Z(out[1]) );
  AOI22_X1 U4 ( .A1(b[0]), .A2(a[0]), .B1(n5), .B2(cin), .ZN(n3) );
  XOR2_X1 U5 ( .A(n2), .B(b[1]), .Z(n4) );
  INV_X1 U6 ( .A(a[1]), .ZN(n2) );
  XOR2_X1 U7 ( .A(cin), .B(n5), .Z(out[0]) );
  XOR2_X1 U8 ( .A(a[0]), .B(b[0]), .Z(n5) );
endmodule


module adder_RES3_2 ( a, b, cin, out );
  input [2:0] a;
  input [2:0] b;
  output [3:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;

  INV_X1 U1 ( .A(n1), .ZN(out[3]) );
  AOI21_X1 U2 ( .B1(n2), .B2(a[2]), .A(n3), .ZN(n1) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  OAI21_X1 U4 ( .B1(a[2]), .B2(n2), .A(b[2]), .ZN(n4) );
  XOR2_X1 U5 ( .A(n2), .B(n5), .Z(out[2]) );
  XOR2_X1 U6 ( .A(b[2]), .B(a[2]), .Z(n5) );
  OAI21_X1 U7 ( .B1(n6), .B2(n7), .A(n8), .ZN(n2) );
  OAI21_X1 U8 ( .B1(n9), .B2(a[1]), .A(b[1]), .ZN(n8) );
  INV_X1 U9 ( .A(n6), .ZN(n9) );
  INV_X1 U10 ( .A(a[1]), .ZN(n7) );
  XNOR2_X1 U11 ( .A(n6), .B(n10), .ZN(out[1]) );
  XOR2_X1 U12 ( .A(b[1]), .B(a[1]), .Z(n10) );
  OAI21_X1 U13 ( .B1(b[0]), .B2(a[0]), .A(n11), .ZN(n6) );
  INV_X1 U14 ( .A(n12), .ZN(n11) );
  AOI21_X1 U15 ( .B1(a[0]), .B2(b[0]), .A(cin), .ZN(n12) );
  XOR2_X1 U16 ( .A(a[0]), .B(n13), .Z(out[0]) );
  XOR2_X1 U17 ( .A(cin), .B(b[0]), .Z(n13) );
endmodule


module adder_RES5_2 ( a, b, cin, out );
  input [4:0] a;
  input [4:0] b;
  output [5:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  OAI21_X1 U1 ( .B1(n1), .B2(n2), .A(n3), .ZN(out[5]) );
  OAI21_X1 U2 ( .B1(a[4]), .B2(n4), .A(b[4]), .ZN(n3) );
  INV_X1 U3 ( .A(a[4]), .ZN(n2) );
  XOR2_X1 U4 ( .A(n4), .B(n5), .Z(out[4]) );
  XOR2_X1 U5 ( .A(b[4]), .B(a[4]), .Z(n5) );
  INV_X1 U6 ( .A(n1), .ZN(n4) );
  AOI22_X1 U7 ( .A1(n6), .A2(a[3]), .B1(n7), .B2(b[3]), .ZN(n1) );
  OR2_X1 U8 ( .A1(a[3]), .A2(n6), .ZN(n7) );
  XOR2_X1 U9 ( .A(n6), .B(n8), .Z(out[3]) );
  XOR2_X1 U10 ( .A(b[3]), .B(a[3]), .Z(n8) );
  INV_X1 U11 ( .A(n9), .ZN(n6) );
  AOI22_X1 U12 ( .A1(n10), .A2(a[2]), .B1(n11), .B2(b[2]), .ZN(n9) );
  OR2_X1 U13 ( .A1(a[2]), .A2(n10), .ZN(n11) );
  XOR2_X1 U14 ( .A(n10), .B(n12), .Z(out[2]) );
  XOR2_X1 U15 ( .A(b[2]), .B(a[2]), .Z(n12) );
  INV_X1 U16 ( .A(n13), .ZN(n10) );
  AOI22_X1 U17 ( .A1(n14), .A2(a[1]), .B1(n15), .B2(b[1]), .ZN(n13) );
  OR2_X1 U18 ( .A1(a[1]), .A2(n14), .ZN(n15) );
  XOR2_X1 U19 ( .A(n14), .B(n16), .Z(out[1]) );
  XOR2_X1 U20 ( .A(b[1]), .B(a[1]), .Z(n16) );
  OAI21_X1 U21 ( .B1(n17), .B2(n18), .A(n19), .ZN(n14) );
  OAI21_X1 U22 ( .B1(a[0]), .B2(b[0]), .A(cin), .ZN(n19) );
  INV_X1 U23 ( .A(b[0]), .ZN(n18) );
  INV_X1 U24 ( .A(a[0]), .ZN(n17) );
  XOR2_X1 U25 ( .A(a[0]), .B(n20), .Z(out[0]) );
  XOR2_X1 U26 ( .A(cin), .B(b[0]), .Z(n20) );
endmodule


module pac_00000010_0000000d_2 ( in, clk, grst, rstb, pac_out );
  input [15:0] in;
  input clk, grst, rstb;
  output pac_out;
  wire   poutlatch, N11, N12, N13, N14, N15, N16, n1, n2, n3, n4;
  wire   [25:8] temp;
  wire   [5:0] body_pot;
  wire   [4:0] regout;

  DFF_X1 regout_reg_0_ ( .D(N11), .CK(clk), .Q(regout[0]) );
  DFF_X1 regout_reg_3_ ( .D(N14), .CK(clk), .Q(regout[3]) );
  DFF_X1 regout_reg_2_ ( .D(N13), .CK(clk), .Q(regout[2]) );
  DFF_X1 regout_reg_4_ ( .D(N15), .CK(clk), .Q(regout[4]) );
  DFF_X1 regout_reg_1_ ( .D(N12), .CK(clk), .Q(regout[1]) );
  DFF_X1 poutlatch_reg ( .D(N16), .CK(clk), .Q(poutlatch) );
  adder_RES1_11 stages_0__adders_0__a1 ( .a(in[0]), .b(in[1]), .cin(in[8]), 
        .out(temp[9:8]) );
  adder_RES1_10 stages_0__adders_1__a1 ( .a(in[2]), .b(in[3]), .cin(in[9]), 
        .out(temp[11:10]) );
  adder_RES1_9 stages_0__adders_2__a1 ( .a(in[4]), .b(in[5]), .cin(in[10]), 
        .out(temp[13:12]) );
  adder_RES1_8 stages_0__adders_3__a1 ( .a(in[6]), .b(in[7]), .cin(in[11]), 
        .out(temp[15:14]) );
  adder_RES2_5 stages_1__adders_0__a1 ( .a(temp[9:8]), .b(temp[11:10]), .cin(
        in[12]), .out(temp[18:16]) );
  adder_RES2_4 stages_1__adders_1__a1 ( .a(temp[13:12]), .b(temp[15:14]), 
        .cin(in[13]), .out(temp[21:19]) );
  adder_RES3_2 stages_2__adders_0__a1 ( .a(temp[18:16]), .b(temp[21:19]), 
        .cin(in[14]), .out(temp[25:22]) );
  adder_RES5_2 b1 ( .a({1'b0, temp[25:22]}), .b(regout), .cin(in[15]), .out(
        body_pot) );
  AND3_X1 U3 ( .A1(rstb), .A2(n1), .A3(pac_out), .ZN(N16) );
  INV_X1 U4 ( .A(n2), .ZN(pac_out) );
  OR2_X1 U5 ( .A1(body_pot[4]), .A2(n3), .ZN(N15) );
  AND2_X1 U6 ( .A1(body_pot[3]), .A2(n4), .ZN(N14) );
  AND2_X1 U7 ( .A1(body_pot[2]), .A2(n4), .ZN(N13) );
  INV_X1 U8 ( .A(n3), .ZN(n4) );
  OR2_X1 U9 ( .A1(body_pot[1]), .A2(n3), .ZN(N12) );
  OR2_X1 U10 ( .A1(body_pot[0]), .A2(n3), .ZN(N11) );
  NAND3_X1 U11 ( .A1(n2), .A2(n1), .A3(rstb), .ZN(n3) );
  INV_X1 U12 ( .A(grst), .ZN(n1) );
  NOR2_X1 U13 ( .A1(body_pot[5]), .A2(poutlatch), .ZN(n2) );
endmodule


module edge2pulse_2 ( edge_in, clk, pulse_out );
  input edge_in, clk;
  output pulse_out;
  wire   n1;

  DFF_X1 temp_reg ( .D(edge_in), .CK(clk), .QN(n1) );
  AND2_X1 U3 ( .A1(edge_in), .A2(n1), .ZN(pulse_out) );
endmodule


module fsm_convert_00000003_2 ( in, clk, rstb, out );
  input in, clk, rstb;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n10, n11, n12, n13;
  wire   [2:0] state;

  DFF_X1 state_reg_0_ ( .D(n11), .CK(clk), .Q(state[0]), .QN(n2) );
  DFF_X1 state_reg_1_ ( .D(n13), .CK(clk), .Q(state[1]), .QN(n1) );
  DFF_X1 state_reg_2_ ( .D(n12), .CK(clk), .Q(state[2]) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(state[2]), .Z(n12) );
  OAI21_X1 U4 ( .B1(state[1]), .B2(n5), .A(n6), .ZN(n4) );
  INV_X1 U5 ( .A(n11), .ZN(n6) );
  NOR3_X1 U6 ( .A1(n1), .A2(n5), .A3(n2), .ZN(n3) );
  MUX2_X1 U7 ( .A(n11), .B(n10), .S(n1), .Z(n13) );
  NOR2_X1 U8 ( .A1(n5), .A2(n2), .ZN(n10) );
  NOR2_X1 U9 ( .A1(n5), .A2(state[0]), .ZN(n11) );
  NAND2_X1 U10 ( .A1(rstb), .A2(out), .ZN(n5) );
  OR4_X1 U11 ( .A1(state[0]), .A2(in), .A3(state[2]), .A4(state[1]), .ZN(out)
         );
endmodule


module neuron_body_00000010_00000003_0000000d_2 ( acc_in, clk, grst, rstb, 
        output_spike );
  input [15:0] acc_in;
  input clk, grst, rstb;
  output output_spike;
  wire   edge_spike, pulse_spike;

  pac_00000010_0000000d_2 acc ( .in(acc_in), .clk(clk), .grst(grst), .rstb(
        rstb), .pac_out(edge_spike) );
  edge2pulse_2 epn ( .edge_in(edge_spike), .clk(clk), .pulse_out(pulse_spike)
         );
  fsm_convert_00000003_2 conv ( .in(pulse_spike), .clk(clk), .rstb(rstb), 
        .out(output_spike) );
endmodule


module neuron_00000010_00000003_0000000d_2 ( clk, grst, rstb, output_spike, 
        resp_func );
  input [15:0] resp_func;
  input clk, grst, rstb;
  output output_spike;


  neuron_body_00000010_00000003_0000000d_2 soma ( .acc_in(resp_func), .clk(clk), .grst(grst), .rstb(rstb), .output_spike(output_spike) );
endmodule


module adder_RES1_7 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_6 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_5 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_4 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES2_3 ( a, b, cin, out );
  input [1:0] a;
  input [1:0] b;
  output [2:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n1), .A2(n2), .B1(n3), .B2(n4), .ZN(out[2]) );
  INV_X1 U2 ( .A(b[1]), .ZN(n1) );
  XOR2_X1 U3 ( .A(n4), .B(n3), .Z(out[1]) );
  AOI22_X1 U4 ( .A1(b[0]), .A2(a[0]), .B1(n5), .B2(cin), .ZN(n3) );
  XOR2_X1 U5 ( .A(n2), .B(b[1]), .Z(n4) );
  INV_X1 U6 ( .A(a[1]), .ZN(n2) );
  XOR2_X1 U7 ( .A(cin), .B(n5), .Z(out[0]) );
  XOR2_X1 U8 ( .A(a[0]), .B(b[0]), .Z(n5) );
endmodule


module adder_RES2_2 ( a, b, cin, out );
  input [1:0] a;
  input [1:0] b;
  output [2:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n1), .A2(n2), .B1(n3), .B2(n4), .ZN(out[2]) );
  INV_X1 U2 ( .A(b[1]), .ZN(n1) );
  XOR2_X1 U3 ( .A(n4), .B(n3), .Z(out[1]) );
  AOI22_X1 U4 ( .A1(b[0]), .A2(a[0]), .B1(n5), .B2(cin), .ZN(n3) );
  XOR2_X1 U5 ( .A(n2), .B(b[1]), .Z(n4) );
  INV_X1 U6 ( .A(a[1]), .ZN(n2) );
  XOR2_X1 U7 ( .A(cin), .B(n5), .Z(out[0]) );
  XOR2_X1 U8 ( .A(a[0]), .B(b[0]), .Z(n5) );
endmodule


module adder_RES3_1 ( a, b, cin, out );
  input [2:0] a;
  input [2:0] b;
  output [3:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;

  INV_X1 U1 ( .A(n1), .ZN(out[3]) );
  AOI21_X1 U2 ( .B1(n2), .B2(a[2]), .A(n3), .ZN(n1) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  OAI21_X1 U4 ( .B1(a[2]), .B2(n2), .A(b[2]), .ZN(n4) );
  XOR2_X1 U5 ( .A(n2), .B(n5), .Z(out[2]) );
  XOR2_X1 U6 ( .A(b[2]), .B(a[2]), .Z(n5) );
  OAI21_X1 U7 ( .B1(n6), .B2(n7), .A(n8), .ZN(n2) );
  OAI21_X1 U8 ( .B1(n9), .B2(a[1]), .A(b[1]), .ZN(n8) );
  INV_X1 U9 ( .A(n6), .ZN(n9) );
  INV_X1 U10 ( .A(a[1]), .ZN(n7) );
  XNOR2_X1 U11 ( .A(n6), .B(n10), .ZN(out[1]) );
  XOR2_X1 U12 ( .A(b[1]), .B(a[1]), .Z(n10) );
  OAI21_X1 U13 ( .B1(b[0]), .B2(a[0]), .A(n11), .ZN(n6) );
  INV_X1 U14 ( .A(n12), .ZN(n11) );
  AOI21_X1 U15 ( .B1(a[0]), .B2(b[0]), .A(cin), .ZN(n12) );
  XOR2_X1 U16 ( .A(a[0]), .B(n13), .Z(out[0]) );
  XOR2_X1 U17 ( .A(cin), .B(b[0]), .Z(n13) );
endmodule


module adder_RES5_1 ( a, b, cin, out );
  input [4:0] a;
  input [4:0] b;
  output [5:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  OAI21_X1 U1 ( .B1(n1), .B2(n2), .A(n3), .ZN(out[5]) );
  OAI21_X1 U2 ( .B1(a[4]), .B2(n4), .A(b[4]), .ZN(n3) );
  INV_X1 U3 ( .A(a[4]), .ZN(n2) );
  XOR2_X1 U4 ( .A(n4), .B(n5), .Z(out[4]) );
  XOR2_X1 U5 ( .A(b[4]), .B(a[4]), .Z(n5) );
  INV_X1 U6 ( .A(n1), .ZN(n4) );
  AOI22_X1 U7 ( .A1(n6), .A2(a[3]), .B1(n7), .B2(b[3]), .ZN(n1) );
  OR2_X1 U8 ( .A1(a[3]), .A2(n6), .ZN(n7) );
  XOR2_X1 U9 ( .A(n6), .B(n8), .Z(out[3]) );
  XOR2_X1 U10 ( .A(b[3]), .B(a[3]), .Z(n8) );
  INV_X1 U11 ( .A(n9), .ZN(n6) );
  AOI22_X1 U12 ( .A1(n10), .A2(a[2]), .B1(n11), .B2(b[2]), .ZN(n9) );
  OR2_X1 U13 ( .A1(a[2]), .A2(n10), .ZN(n11) );
  XOR2_X1 U14 ( .A(n10), .B(n12), .Z(out[2]) );
  XOR2_X1 U15 ( .A(b[2]), .B(a[2]), .Z(n12) );
  INV_X1 U16 ( .A(n13), .ZN(n10) );
  AOI22_X1 U17 ( .A1(n14), .A2(a[1]), .B1(n15), .B2(b[1]), .ZN(n13) );
  OR2_X1 U18 ( .A1(a[1]), .A2(n14), .ZN(n15) );
  XOR2_X1 U19 ( .A(n14), .B(n16), .Z(out[1]) );
  XOR2_X1 U20 ( .A(b[1]), .B(a[1]), .Z(n16) );
  OAI21_X1 U21 ( .B1(n17), .B2(n18), .A(n19), .ZN(n14) );
  OAI21_X1 U22 ( .B1(a[0]), .B2(b[0]), .A(cin), .ZN(n19) );
  INV_X1 U23 ( .A(b[0]), .ZN(n18) );
  INV_X1 U24 ( .A(a[0]), .ZN(n17) );
  XOR2_X1 U25 ( .A(a[0]), .B(n20), .Z(out[0]) );
  XOR2_X1 U26 ( .A(cin), .B(b[0]), .Z(n20) );
endmodule


module pac_00000010_0000000d_1 ( in, clk, grst, rstb, pac_out );
  input [15:0] in;
  input clk, grst, rstb;
  output pac_out;
  wire   poutlatch, N11, N12, N13, N14, N15, N16, n1, n2, n3, n4;
  wire   [25:8] temp;
  wire   [5:0] body_pot;
  wire   [4:0] regout;

  DFF_X1 regout_reg_0_ ( .D(N11), .CK(clk), .Q(regout[0]) );
  DFF_X1 regout_reg_3_ ( .D(N14), .CK(clk), .Q(regout[3]) );
  DFF_X1 regout_reg_2_ ( .D(N13), .CK(clk), .Q(regout[2]) );
  DFF_X1 regout_reg_4_ ( .D(N15), .CK(clk), .Q(regout[4]) );
  DFF_X1 regout_reg_1_ ( .D(N12), .CK(clk), .Q(regout[1]) );
  DFF_X1 poutlatch_reg ( .D(N16), .CK(clk), .Q(poutlatch) );
  adder_RES1_7 stages_0__adders_0__a1 ( .a(in[0]), .b(in[1]), .cin(in[8]), 
        .out(temp[9:8]) );
  adder_RES1_6 stages_0__adders_1__a1 ( .a(in[2]), .b(in[3]), .cin(in[9]), 
        .out(temp[11:10]) );
  adder_RES1_5 stages_0__adders_2__a1 ( .a(in[4]), .b(in[5]), .cin(in[10]), 
        .out(temp[13:12]) );
  adder_RES1_4 stages_0__adders_3__a1 ( .a(in[6]), .b(in[7]), .cin(in[11]), 
        .out(temp[15:14]) );
  adder_RES2_3 stages_1__adders_0__a1 ( .a(temp[9:8]), .b(temp[11:10]), .cin(
        in[12]), .out(temp[18:16]) );
  adder_RES2_2 stages_1__adders_1__a1 ( .a(temp[13:12]), .b(temp[15:14]), 
        .cin(in[13]), .out(temp[21:19]) );
  adder_RES3_1 stages_2__adders_0__a1 ( .a(temp[18:16]), .b(temp[21:19]), 
        .cin(in[14]), .out(temp[25:22]) );
  adder_RES5_1 b1 ( .a({1'b0, temp[25:22]}), .b(regout), .cin(in[15]), .out(
        body_pot) );
  AND3_X1 U3 ( .A1(rstb), .A2(n1), .A3(pac_out), .ZN(N16) );
  INV_X1 U4 ( .A(n2), .ZN(pac_out) );
  OR2_X1 U5 ( .A1(body_pot[4]), .A2(n3), .ZN(N15) );
  AND2_X1 U6 ( .A1(body_pot[3]), .A2(n4), .ZN(N14) );
  AND2_X1 U7 ( .A1(body_pot[2]), .A2(n4), .ZN(N13) );
  INV_X1 U8 ( .A(n3), .ZN(n4) );
  OR2_X1 U9 ( .A1(body_pot[1]), .A2(n3), .ZN(N12) );
  OR2_X1 U10 ( .A1(body_pot[0]), .A2(n3), .ZN(N11) );
  NAND3_X1 U11 ( .A1(n2), .A2(n1), .A3(rstb), .ZN(n3) );
  INV_X1 U12 ( .A(grst), .ZN(n1) );
  NOR2_X1 U13 ( .A1(body_pot[5]), .A2(poutlatch), .ZN(n2) );
endmodule


module edge2pulse_1 ( edge_in, clk, pulse_out );
  input edge_in, clk;
  output pulse_out;
  wire   n1;

  DFF_X1 temp_reg ( .D(edge_in), .CK(clk), .QN(n1) );
  AND2_X1 U3 ( .A1(edge_in), .A2(n1), .ZN(pulse_out) );
endmodule


module fsm_convert_00000003_1 ( in, clk, rstb, out );
  input in, clk, rstb;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n10, n11, n12, n13;
  wire   [2:0] state;

  DFF_X1 state_reg_0_ ( .D(n11), .CK(clk), .Q(state[0]), .QN(n2) );
  DFF_X1 state_reg_1_ ( .D(n13), .CK(clk), .Q(state[1]), .QN(n1) );
  DFF_X1 state_reg_2_ ( .D(n12), .CK(clk), .Q(state[2]) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(state[2]), .Z(n12) );
  OAI21_X1 U4 ( .B1(state[1]), .B2(n5), .A(n6), .ZN(n4) );
  INV_X1 U5 ( .A(n11), .ZN(n6) );
  NOR3_X1 U6 ( .A1(n1), .A2(n5), .A3(n2), .ZN(n3) );
  MUX2_X1 U7 ( .A(n11), .B(n10), .S(n1), .Z(n13) );
  NOR2_X1 U8 ( .A1(n5), .A2(n2), .ZN(n10) );
  NOR2_X1 U9 ( .A1(n5), .A2(state[0]), .ZN(n11) );
  NAND2_X1 U10 ( .A1(rstb), .A2(out), .ZN(n5) );
  OR4_X1 U11 ( .A1(state[0]), .A2(in), .A3(state[2]), .A4(state[1]), .ZN(out)
         );
endmodule


module neuron_body_00000010_00000003_0000000d_1 ( acc_in, clk, grst, rstb, 
        output_spike );
  input [15:0] acc_in;
  input clk, grst, rstb;
  output output_spike;
  wire   edge_spike, pulse_spike;

  pac_00000010_0000000d_1 acc ( .in(acc_in), .clk(clk), .grst(grst), .rstb(
        rstb), .pac_out(edge_spike) );
  edge2pulse_1 epn ( .edge_in(edge_spike), .clk(clk), .pulse_out(pulse_spike)
         );
  fsm_convert_00000003_1 conv ( .in(pulse_spike), .clk(clk), .rstb(rstb), 
        .out(output_spike) );
endmodule


module neuron_00000010_00000003_0000000d_1 ( clk, grst, rstb, output_spike, 
        resp_func );
  input [15:0] resp_func;
  input clk, grst, rstb;
  output output_spike;


  neuron_body_00000010_00000003_0000000d_1 soma ( .acc_in(resp_func), .clk(clk), .grst(grst), .rstb(rstb), .output_spike(output_spike) );
endmodule


module adder_RES1_3 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_2 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_1 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES1_0 ( a, b, cin, out );
  input [0:0] a;
  input [0:0] b;
  output [1:0] out;
  input cin;
  wire   a_0_, b_0_, n1, n2;
  assign a_0_ = a[0];
  assign b_0_ = b[0];

  INV_X1 U1 ( .A(n1), .ZN(out[1]) );
  AOI22_X1 U2 ( .A1(b_0_), .A2(a_0_), .B1(n2), .B2(cin), .ZN(n1) );
  XOR2_X1 U3 ( .A(cin), .B(n2), .Z(out[0]) );
  XOR2_X1 U4 ( .A(a_0_), .B(b_0_), .Z(n2) );
endmodule


module adder_RES2_1 ( a, b, cin, out );
  input [1:0] a;
  input [1:0] b;
  output [2:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n1), .A2(n2), .B1(n3), .B2(n4), .ZN(out[2]) );
  INV_X1 U2 ( .A(b[1]), .ZN(n1) );
  XOR2_X1 U3 ( .A(n4), .B(n3), .Z(out[1]) );
  AOI22_X1 U4 ( .A1(b[0]), .A2(a[0]), .B1(n5), .B2(cin), .ZN(n3) );
  XOR2_X1 U5 ( .A(n2), .B(b[1]), .Z(n4) );
  INV_X1 U6 ( .A(a[1]), .ZN(n2) );
  XOR2_X1 U7 ( .A(cin), .B(n5), .Z(out[0]) );
  XOR2_X1 U8 ( .A(a[0]), .B(b[0]), .Z(n5) );
endmodule


module adder_RES2_0 ( a, b, cin, out );
  input [1:0] a;
  input [1:0] b;
  output [2:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n1), .A2(n2), .B1(n3), .B2(n4), .ZN(out[2]) );
  INV_X1 U2 ( .A(b[1]), .ZN(n1) );
  XOR2_X1 U3 ( .A(n4), .B(n3), .Z(out[1]) );
  AOI22_X1 U4 ( .A1(b[0]), .A2(a[0]), .B1(n5), .B2(cin), .ZN(n3) );
  XOR2_X1 U5 ( .A(n2), .B(b[1]), .Z(n4) );
  INV_X1 U6 ( .A(a[1]), .ZN(n2) );
  XOR2_X1 U7 ( .A(cin), .B(n5), .Z(out[0]) );
  XOR2_X1 U8 ( .A(a[0]), .B(b[0]), .Z(n5) );
endmodule


module adder_RES3_0 ( a, b, cin, out );
  input [2:0] a;
  input [2:0] b;
  output [3:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;

  INV_X1 U1 ( .A(n1), .ZN(out[3]) );
  AOI21_X1 U2 ( .B1(n2), .B2(a[2]), .A(n3), .ZN(n1) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  OAI21_X1 U4 ( .B1(a[2]), .B2(n2), .A(b[2]), .ZN(n4) );
  XOR2_X1 U5 ( .A(n2), .B(n5), .Z(out[2]) );
  XOR2_X1 U6 ( .A(b[2]), .B(a[2]), .Z(n5) );
  OAI21_X1 U7 ( .B1(n6), .B2(n7), .A(n8), .ZN(n2) );
  OAI21_X1 U8 ( .B1(n9), .B2(a[1]), .A(b[1]), .ZN(n8) );
  INV_X1 U9 ( .A(n6), .ZN(n9) );
  INV_X1 U10 ( .A(a[1]), .ZN(n7) );
  XNOR2_X1 U11 ( .A(n6), .B(n10), .ZN(out[1]) );
  XOR2_X1 U12 ( .A(b[1]), .B(a[1]), .Z(n10) );
  OAI21_X1 U13 ( .B1(b[0]), .B2(a[0]), .A(n11), .ZN(n6) );
  INV_X1 U14 ( .A(n12), .ZN(n11) );
  AOI21_X1 U15 ( .B1(a[0]), .B2(b[0]), .A(cin), .ZN(n12) );
  XOR2_X1 U16 ( .A(a[0]), .B(n13), .Z(out[0]) );
  XOR2_X1 U17 ( .A(cin), .B(b[0]), .Z(n13) );
endmodule


module adder_RES5_0 ( a, b, cin, out );
  input [4:0] a;
  input [4:0] b;
  output [5:0] out;
  input cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  OAI21_X1 U1 ( .B1(n1), .B2(n2), .A(n3), .ZN(out[5]) );
  OAI21_X1 U2 ( .B1(a[4]), .B2(n4), .A(b[4]), .ZN(n3) );
  INV_X1 U3 ( .A(a[4]), .ZN(n2) );
  XOR2_X1 U4 ( .A(n4), .B(n5), .Z(out[4]) );
  XOR2_X1 U5 ( .A(b[4]), .B(a[4]), .Z(n5) );
  INV_X1 U6 ( .A(n1), .ZN(n4) );
  AOI22_X1 U7 ( .A1(n6), .A2(a[3]), .B1(n7), .B2(b[3]), .ZN(n1) );
  OR2_X1 U8 ( .A1(a[3]), .A2(n6), .ZN(n7) );
  XOR2_X1 U9 ( .A(n6), .B(n8), .Z(out[3]) );
  XOR2_X1 U10 ( .A(b[3]), .B(a[3]), .Z(n8) );
  INV_X1 U11 ( .A(n9), .ZN(n6) );
  AOI22_X1 U12 ( .A1(n10), .A2(a[2]), .B1(n11), .B2(b[2]), .ZN(n9) );
  OR2_X1 U13 ( .A1(a[2]), .A2(n10), .ZN(n11) );
  XOR2_X1 U14 ( .A(n10), .B(n12), .Z(out[2]) );
  XOR2_X1 U15 ( .A(b[2]), .B(a[2]), .Z(n12) );
  INV_X1 U16 ( .A(n13), .ZN(n10) );
  AOI22_X1 U17 ( .A1(n14), .A2(a[1]), .B1(n15), .B2(b[1]), .ZN(n13) );
  OR2_X1 U18 ( .A1(a[1]), .A2(n14), .ZN(n15) );
  XOR2_X1 U19 ( .A(n14), .B(n16), .Z(out[1]) );
  XOR2_X1 U20 ( .A(b[1]), .B(a[1]), .Z(n16) );
  OAI21_X1 U21 ( .B1(n17), .B2(n18), .A(n19), .ZN(n14) );
  OAI21_X1 U22 ( .B1(a[0]), .B2(b[0]), .A(cin), .ZN(n19) );
  INV_X1 U23 ( .A(b[0]), .ZN(n18) );
  INV_X1 U24 ( .A(a[0]), .ZN(n17) );
  XOR2_X1 U25 ( .A(a[0]), .B(n20), .Z(out[0]) );
  XOR2_X1 U26 ( .A(cin), .B(b[0]), .Z(n20) );
endmodule


module pac_00000010_0000000d_0 ( in, clk, grst, rstb, pac_out );
  input [15:0] in;
  input clk, grst, rstb;
  output pac_out;
  wire   poutlatch, N11, N12, N13, N14, N15, N16, n1, n2, n3, n4;
  wire   [25:8] temp;
  wire   [5:0] body_pot;
  wire   [4:0] regout;

  DFF_X1 regout_reg_0_ ( .D(N11), .CK(clk), .Q(regout[0]) );
  DFF_X1 regout_reg_3_ ( .D(N14), .CK(clk), .Q(regout[3]) );
  DFF_X1 regout_reg_2_ ( .D(N13), .CK(clk), .Q(regout[2]) );
  DFF_X1 regout_reg_4_ ( .D(N15), .CK(clk), .Q(regout[4]) );
  DFF_X1 regout_reg_1_ ( .D(N12), .CK(clk), .Q(regout[1]) );
  DFF_X1 poutlatch_reg ( .D(N16), .CK(clk), .Q(poutlatch) );
  adder_RES1_3 stages_0__adders_0__a1 ( .a(in[0]), .b(in[1]), .cin(in[8]), 
        .out(temp[9:8]) );
  adder_RES1_2 stages_0__adders_1__a1 ( .a(in[2]), .b(in[3]), .cin(in[9]), 
        .out(temp[11:10]) );
  adder_RES1_1 stages_0__adders_2__a1 ( .a(in[4]), .b(in[5]), .cin(in[10]), 
        .out(temp[13:12]) );
  adder_RES1_0 stages_0__adders_3__a1 ( .a(in[6]), .b(in[7]), .cin(in[11]), 
        .out(temp[15:14]) );
  adder_RES2_1 stages_1__adders_0__a1 ( .a(temp[9:8]), .b(temp[11:10]), .cin(
        in[12]), .out(temp[18:16]) );
  adder_RES2_0 stages_1__adders_1__a1 ( .a(temp[13:12]), .b(temp[15:14]), 
        .cin(in[13]), .out(temp[21:19]) );
  adder_RES3_0 stages_2__adders_0__a1 ( .a(temp[18:16]), .b(temp[21:19]), 
        .cin(in[14]), .out(temp[25:22]) );
  adder_RES5_0 b1 ( .a({1'b0, temp[25:22]}), .b(regout), .cin(in[15]), .out(
        body_pot) );
  AND3_X1 U3 ( .A1(rstb), .A2(n1), .A3(pac_out), .ZN(N16) );
  INV_X1 U4 ( .A(n2), .ZN(pac_out) );
  OR2_X1 U5 ( .A1(body_pot[4]), .A2(n3), .ZN(N15) );
  AND2_X1 U6 ( .A1(body_pot[3]), .A2(n4), .ZN(N14) );
  AND2_X1 U7 ( .A1(body_pot[2]), .A2(n4), .ZN(N13) );
  INV_X1 U8 ( .A(n3), .ZN(n4) );
  OR2_X1 U9 ( .A1(body_pot[1]), .A2(n3), .ZN(N12) );
  OR2_X1 U10 ( .A1(body_pot[0]), .A2(n3), .ZN(N11) );
  NAND3_X1 U11 ( .A1(n2), .A2(n1), .A3(rstb), .ZN(n3) );
  INV_X1 U12 ( .A(grst), .ZN(n1) );
  NOR2_X1 U13 ( .A1(body_pot[5]), .A2(poutlatch), .ZN(n2) );
endmodule


module edge2pulse_0 ( edge_in, clk, pulse_out );
  input edge_in, clk;
  output pulse_out;
  wire   n1;

  DFF_X1 temp_reg ( .D(edge_in), .CK(clk), .QN(n1) );
  AND2_X1 U3 ( .A1(edge_in), .A2(n1), .ZN(pulse_out) );
endmodule


module fsm_convert_00000003_0 ( in, clk, rstb, out );
  input in, clk, rstb;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n10, n11, n12, n13;
  wire   [2:0] state;

  DFF_X1 state_reg_0_ ( .D(n11), .CK(clk), .Q(state[0]), .QN(n2) );
  DFF_X1 state_reg_1_ ( .D(n13), .CK(clk), .Q(state[1]), .QN(n1) );
  DFF_X1 state_reg_2_ ( .D(n12), .CK(clk), .Q(state[2]) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(state[2]), .Z(n12) );
  OAI21_X1 U4 ( .B1(state[1]), .B2(n5), .A(n6), .ZN(n4) );
  INV_X1 U5 ( .A(n11), .ZN(n6) );
  NOR3_X1 U6 ( .A1(n1), .A2(n5), .A3(n2), .ZN(n3) );
  MUX2_X1 U7 ( .A(n11), .B(n10), .S(n1), .Z(n13) );
  NOR2_X1 U8 ( .A1(n5), .A2(n2), .ZN(n10) );
  NOR2_X1 U9 ( .A1(n5), .A2(state[0]), .ZN(n11) );
  NAND2_X1 U10 ( .A1(rstb), .A2(out), .ZN(n5) );
  OR4_X1 U11 ( .A1(state[0]), .A2(in), .A3(state[2]), .A4(state[1]), .ZN(out)
         );
endmodule


module neuron_body_00000010_00000003_0000000d_0 ( acc_in, clk, grst, rstb, 
        output_spike );
  input [15:0] acc_in;
  input clk, grst, rstb;
  output output_spike;
  wire   edge_spike, pulse_spike;

  pac_00000010_0000000d_0 acc ( .in(acc_in), .clk(clk), .grst(grst), .rstb(
        rstb), .pac_out(edge_spike) );
  edge2pulse_0 epn ( .edge_in(edge_spike), .clk(clk), .pulse_out(pulse_spike)
         );
  fsm_convert_00000003_0 conv ( .in(pulse_spike), .clk(clk), .rstb(rstb), 
        .out(output_spike) );
endmodule


module neuron_00000010_00000003_0000000d_0 ( clk, grst, rstb, output_spike, 
        resp_func );
  input [15:0] resp_func;
  input clk, grst, rstb;
  output output_spike;


  neuron_body_00000010_00000003_0000000d_0 soma ( .acc_in(resp_func), .clk(clk), .grst(grst), .rstb(rstb), .output_spike(output_spike) );
endmodule


module decoder_WIDTH2_1 ( in, out );
  input [1:0] in;
  output [3:0] out;
  wire   n1, n2;

  NOR2_X1 U3 ( .A1(n1), .A2(n2), .ZN(out[3]) );
  NOR2_X1 U4 ( .A1(in[0]), .A2(n2), .ZN(out[2]) );
  INV_X1 U5 ( .A(in[1]), .ZN(n2) );
  NOR2_X1 U6 ( .A1(in[1]), .A2(n1), .ZN(out[1]) );
  INV_X1 U7 ( .A(in[0]), .ZN(n1) );
  NOR2_X1 U8 ( .A1(in[1]), .A2(in[0]), .ZN(out[0]) );
endmodule


module decoder_WIDTH2_0 ( in, out );
  input [1:0] in;
  output [3:0] out;
  wire   n1, n2;

  NOR2_X1 U3 ( .A1(n1), .A2(n2), .ZN(out[3]) );
  NOR2_X1 U4 ( .A1(in[0]), .A2(n2), .ZN(out[2]) );
  INV_X1 U5 ( .A(in[1]), .ZN(n2) );
  NOR2_X1 U6 ( .A1(in[1]), .A2(n1), .ZN(out[1]) );
  INV_X1 U7 ( .A(in[0]), .ZN(n1) );
  NOR2_X1 U8 ( .A1(in[1]), .A2(in[0]), .ZN(out[0]) );
endmodule


module control_DW_div_uns_23 ( a, b, quotient, remainder, divide_by_0 );
  input [3:0] a;
  input [1:0] b;
  output [3:0] quotient;
  output [1:0] remainder;
  output divide_by_0;
  wire   n19, u_div_SumTmp_0__1_, u_div_SumTmp_1__1_, u_div_SumTmp_2__1_,
         u_div_PartRem_1__1_, u_div_PartRem_1__2_, u_div_PartRem_2__1_,
         u_div_PartRem_2__2_, u_div_PartRem_3__1_, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  MUX2_X1 u_div_u_mx_PartRem_0_2_1 ( .A(u_div_PartRem_3__1_), .B(
        u_div_SumTmp_2__1_), .S(n19), .Z(u_div_PartRem_2__2_) );
  MUX2_X1 u_div_u_mx_PartRem_0_1_1 ( .A(u_div_PartRem_2__1_), .B(
        u_div_SumTmp_1__1_), .S(n3), .Z(u_div_PartRem_1__2_) );
  MUX2_X1 u_div_u_mx_PartRem_0_0_1 ( .A(u_div_PartRem_1__1_), .B(
        u_div_SumTmp_0__1_), .S(n1), .Z(remainder[1]) );
  INV_X1 U1 ( .A(n16), .ZN(n5) );
  INV_X1 U2 ( .A(b[1]), .ZN(n6) );
  INV_X1 U3 ( .A(n12), .ZN(n3) );
  INV_X1 U4 ( .A(n13), .ZN(n4) );
  INV_X1 U5 ( .A(b[0]), .ZN(n7) );
  INV_X1 U6 ( .A(n8), .ZN(n1) );
  INV_X1 U7 ( .A(n9), .ZN(n2) );
  OR2_X1 U8 ( .A1(n6), .A2(u_div_PartRem_1__1_), .ZN(n10) );
  NAND2_X1 U9 ( .A1(n6), .A2(u_div_PartRem_1__1_), .ZN(n9) );
  AOI211_X1 U10 ( .C1(n10), .C2(n7), .A(n2), .B(u_div_PartRem_1__2_), .ZN(n8)
         );
  NAND2_X1 U11 ( .A1(n10), .A2(n9), .ZN(n11) );
  XNOR2_X1 U12 ( .A(n7), .B(n11), .ZN(u_div_SumTmp_0__1_) );
  OR2_X1 U13 ( .A1(n6), .A2(u_div_PartRem_2__1_), .ZN(n14) );
  NAND2_X1 U14 ( .A1(n6), .A2(u_div_PartRem_2__1_), .ZN(n13) );
  AOI211_X1 U15 ( .C1(n14), .C2(n7), .A(n4), .B(u_div_PartRem_2__2_), .ZN(n12)
         );
  NAND2_X1 U16 ( .A1(n14), .A2(n13), .ZN(n15) );
  XNOR2_X1 U17 ( .A(n7), .B(n15), .ZN(u_div_SumTmp_1__1_) );
  NOR2_X1 U18 ( .A1(n6), .A2(u_div_PartRem_3__1_), .ZN(n16) );
  NAND2_X1 U19 ( .A1(n6), .A2(u_div_PartRem_3__1_), .ZN(n17) );
  OAI21_X1 U20 ( .B1(n16), .B2(b[0]), .A(n17), .ZN(n19) );
  NAND2_X1 U21 ( .A1(n5), .A2(n17), .ZN(n18) );
  XNOR2_X1 U22 ( .A(n7), .B(n18), .ZN(u_div_SumTmp_2__1_) );
  NAND2_X1 U23 ( .A1(b[0]), .A2(n6), .ZN(u_div_PartRem_3__1_) );
  AND2_X1 U24 ( .A1(b[0]), .A2(n19), .ZN(u_div_PartRem_2__1_) );
  AND2_X1 U25 ( .A1(n3), .A2(b[0]), .ZN(u_div_PartRem_1__1_) );
  AND2_X1 U26 ( .A1(n1), .A2(b[0]), .ZN(remainder[0]) );
endmodule


module control ( num_inputs, num_neurons, sel_ip, syn_out, e_out, e_in, 
        resp_func, e_out_map, e_in_map );
  input [1:0] num_inputs;
  input [1:0] num_neurons;
  output [31:0] sel_ip;
  input [15:0] syn_out;
  input [3:0] e_out;
  input [3:0] e_in;
  output [63:0] resp_func;
  output [15:0] e_out_map;
  output [15:0] e_in_map;
  wire   N30, N73, N86, N97, n366, n1, n5, n9, n13, n17, n21, n25, n29, n33,
         n40, n47, n54, n61, n65, n67, n68, n75, n79, n81, n89, n90, n93, n94,
         n970, n98, n101, n102, n108, n110, n117, n118, n112, n121, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n3001,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4;
  wire   [3:0] ne_dec_out;
  wire   [3:0] rf_dec_out;

  AOI22_X1 U4 ( .A1(e_in_map[0]), .A2(num_inputs[0]), .B1(e_in_map[1]), .B2(
        sel_ip[6]), .ZN(n1) );
  AOI22_X1 U9 ( .A1(e_in_map[0]), .A2(1'b1), .B1(e_in_map[1]), .B2(1'b0), .ZN(
        n5) );
  AOI22_X1 U14 ( .A1(e_in_map[0]), .A2(n356), .B1(e_in_map[1]), .B2(sel_ip[26]), .ZN(n9) );
  AOI22_X1 U19 ( .A1(e_in_map[0]), .A2(1'b1), .B1(e_in_map[1]), .B2(1'b0), 
        .ZN(n13) );
  AOI22_X1 U24 ( .A1(e_in_map[0]), .A2(num_inputs[0]), .B1(e_in_map[1]), .B2(
        sel_ip[6]), .ZN(n17) );
  AOI22_X1 U29 ( .A1(e_in_map[0]), .A2(N30), .B1(e_in_map[1]), .B2(sel_ip[8]), 
        .ZN(n21) );
  AOI22_X1 U34 ( .A1(e_in_map[0]), .A2(num_inputs[0]), .B1(e_in_map[1]), .B2(
        sel_ip[6]), .ZN(n25) );
  AOI22_X1 U39 ( .A1(e_in_map[0]), .A2(n357), .B1(e_in_map[1]), .B2(sel_ip[16]), .ZN(n29) );
  AOI22_X1 U44 ( .A1(e_in_map[0]), .A2(n356), .B1(e_in_map[1]), .B2(sel_ip[26]), .ZN(n33) );
  AOI22_X1 U60 ( .A1(e_in_map[0]), .A2(1'b1), .B1(e_in_map[1]), .B2(1'b0), 
        .ZN(n47) );
  AOI22_X1 U76 ( .A1(e_in_map[0]), .A2(num_inputs[0]), .B1(e_in_map[1]), .B2(
        sel_ip[6]), .ZN(n61) );
  AOI22_X1 U81 ( .A1(e_out_map[0]), .A2(n360), .B1(e_out_map[1]), .B2(N86), 
        .ZN(n65) );
  AOI22_X1 U92 ( .A1(e_in_map[0]), .A2(N30), .B1(e_in_map[1]), .B2(sel_ip[8]), 
        .ZN(n75) );
  AOI22_X1 U97 ( .A1(e_out_map[0]), .A2(n359), .B1(e_out_map[1]), .B2(
        sel_ip[29]), .ZN(n79) );
  AOI22_X1 U108 ( .A1(e_in_map[0]), .A2(num_inputs[0]), .B1(e_in_map[1]), .B2(
        sel_ip[6]), .ZN(n89) );
  AOI22_X1 U113 ( .A1(e_out_map[0]), .A2(1'b0), .B1(e_out_map[1]), .B2(1'b1), 
        .ZN(n93) );
  AOI22_X1 U118 ( .A1(e_in_map[0]), .A2(1'b1), .B1(e_in_map[1]), .B2(1'b0), 
        .ZN(n970) );
  AOI22_X1 U123 ( .A1(e_out_map[0]), .A2(num_inputs[0]), .B1(e_out_map[1]), 
        .B2(sel_ip[6]), .ZN(n101) );
  AOI22_X1 U127 ( .A1(e_in_map[0]), .A2(n356), .B1(e_in_map[1]), .B2(
        sel_ip[26]), .ZN(n108) );
  INV_X1 U128 ( .A(n108), .ZN(e_in_map[1]) );
  AOI22_X1 U130 ( .A1(e_out_map[0]), .A2(num_inputs[1]), .B1(e_out_map[1]), 
        .B2(N97), .ZN(n110) );
  INV_X1 U131 ( .A(n110), .ZN(e_out_map[1]) );
  INV_X1 U133 ( .A(n117), .ZN(e_in_map[0]) );
  INV_X2 U134 ( .A(e_in_map[0]), .ZN(n117) );
  INV_X1 U136 ( .A(n118), .ZN(e_out_map[0]) );
  AOI22_X2 U51 ( .A1(e_out_map[6]), .A2(sel_ip[8]), .B1(e_out_map[7]), .B2(N30), .ZN(n40) );
  AOI22_X2 U52 ( .A1(e_out_map[4]), .A2(sel_ip[8]), .B1(e_out_map[5]), .B2(N30) );
  AOI22_X2 U67 ( .A1(e_out_map[6]), .A2(num_inputs[0]), .B1(e_out_map[7]), 
        .B2(sel_ip[6]), .ZN(n54) );
  AOI22_X2 U68 ( .A1(e_out_map[4]), .A2(num_inputs[0]), .B1(e_out_map[5]), 
        .B2(sel_ip[6]) );
  AOI22_X2 U83 ( .A1(e_out_map[6]), .A2(n360), .B1(e_out_map[7]), .B2(N86), 
        .ZN(n68) );
  AOI22_X2 U84 ( .A1(e_out_map[4]), .A2(n360), .B1(e_out_map[5]), .B2(N86), 
        .ZN(n67) );
  AOI22_X2 U100 ( .A1(e_out_map[4]), .A2(n359), .B1(e_out_map[5]), .B2(
        sel_ip[29]), .ZN(n81) );
  AOI22_X2 U107 ( .A1(e_in_map[2]), .A2(num_inputs[0]), .B1(e_in_map[3]), .B2(
        sel_ip[6]), .ZN(n90) );
  AOI22_X2 U112 ( .A1(e_out_map[2]), .A2(1'b0), .B1(e_out_map[3]), .B2(1'b1), 
        .ZN(n94) );
  AOI22_X2 U117 ( .A1(e_in_map[2]), .A2(1'b1), .B1(e_in_map[3]), .B2(1'b0), 
        .ZN(n98) );
  AOI22_X2 U122 ( .A1(e_out_map[2]), .A2(num_inputs[0]), .B1(e_out_map[3]), 
        .B2(sel_ip[6]), .ZN(n102) );
  AOI22_X2 U135 ( .A1(e_out_map[0]), .A2(n358), .B1(e_out_map[1]), .B2(
        sel_ip[15]), .ZN(n118) );
  decoder_WIDTH2_1 neuron_enable_dec ( .in(num_neurons), .out(ne_dec_out) );
  decoder_WIDTH2_0 reg_fill_dec ( .in(num_inputs), .out(rf_dec_out) );
  control_DW_div_uns_23 r504 ( .a({1'b1, 1'b0, 1'b0, 1'b0}), .b(num_inputs), 
        .quotient({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}), .remainder(
        sel_ip[17:16]) );
  INV_X1 U3 ( .A(1'b1), .ZN(sel_ip[28]) );
  INV_X1 U6 ( .A(1'b1), .ZN(sel_ip[27]) );
  INV_X1 U8 ( .A(1'b1), .ZN(sel_ip[25]) );
  INV_X1 U11 ( .A(1'b1), .ZN(sel_ip[24]) );
  INV_X1 U13 ( .A(1'b1), .ZN(sel_ip[19]) );
  INV_X1 U16 ( .A(1'b1), .ZN(sel_ip[12]) );
  INV_X1 U18 ( .A(1'b1), .ZN(sel_ip[9]) );
  INV_X1 U21 ( .A(1'b1), .ZN(sel_ip[4]) );
  INV_X1 U23 ( .A(1'b1), .ZN(sel_ip[3]) );
  INV_X1 U26 ( .A(1'b1), .ZN(sel_ip[1]) );
  INV_X1 U28 ( .A(1'b1), .ZN(sel_ip[0]) );
  INV_X1 U31 ( .A(1'b1), .ZN(resp_func[63]) );
  INV_X1 U33 ( .A(1'b1), .ZN(resp_func[62]) );
  INV_X1 U36 ( .A(1'b1), .ZN(resp_func[61]) );
  INV_X1 U38 ( .A(1'b1), .ZN(resp_func[47]) );
  INV_X1 U41 ( .A(1'b1), .ZN(resp_func[46]) );
  INV_X1 U43 ( .A(1'b1), .ZN(resp_func[45]) );
  INV_X1 U46 ( .A(1'b1), .ZN(resp_func[44]) );
  INV_X1 U48 ( .A(1'b1), .ZN(resp_func[43]) );
  INV_X1 U53 ( .A(1'b1), .ZN(resp_func[42]) );
  INV_X1 U55 ( .A(1'b1), .ZN(resp_func[31]) );
  INV_X1 U57 ( .A(1'b1), .ZN(resp_func[30]) );
  INV_X1 U59 ( .A(1'b1), .ZN(resp_func[29]) );
  INV_X1 U62 ( .A(1'b1), .ZN(resp_func[28]) );
  INV_X1 U64 ( .A(1'b1), .ZN(resp_func[27]) );
  INV_X1 U69 ( .A(1'b1), .ZN(resp_func[26]) );
  INV_X1 U71 ( .A(1'b1), .ZN(resp_func[25]) );
  INV_X1 U73 ( .A(1'b1), .ZN(resp_func[24]) );
  INV_X1 U75 ( .A(1'b1), .ZN(resp_func[23]) );
  INV_X1 U78 ( .A(1'b1), .ZN(resp_func[15]) );
  INV_X1 U80 ( .A(1'b1), .ZN(resp_func[14]) );
  INV_X1 U85 ( .A(1'b1), .ZN(resp_func[13]) );
  INV_X1 U87 ( .A(1'b1), .ZN(resp_func[12]) );
  INV_X1 U89 ( .A(1'b1), .ZN(resp_func[11]) );
  INV_X1 U91 ( .A(1'b1), .ZN(resp_func[10]) );
  INV_X1 U94 ( .A(1'b1), .ZN(resp_func[9]) );
  INV_X1 U96 ( .A(1'b1), .ZN(resp_func[8]) );
  INV_X1 U99 ( .A(1'b1), .ZN(resp_func[7]) );
  INV_X1 U102 ( .A(1'b1), .ZN(resp_func[6]) );
  INV_X1 U104 ( .A(1'b1), .ZN(resp_func[5]) );
  INV_X1 U106 ( .A(1'b1), .ZN(resp_func[4]) );
  INV_X1 U110 ( .A(N73), .ZN(n170) );
  NAND2_X1 U111 ( .A1(e_out_map[3]), .A2(N86), .ZN(n197) );
  NAND2_X1 U114 ( .A1(e_out_map[1]), .A2(n360), .ZN(n196) );
  NAND2_X1 U115 ( .A1(e_out_map[13]), .A2(n360), .ZN(n192) );
  NAND2_X1 U116 ( .A1(e_out_map[15]), .A2(N86), .ZN(n193) );
  NAND2_X1 U119 ( .A1(e_out_map[7]), .A2(N86), .ZN(n199) );
  NAND2_X1 U120 ( .A1(n216), .A2(n219), .ZN(n217) );
  NAND2_X1 U121 ( .A1(n215), .A2(n214), .ZN(n216) );
  NAND2_X1 U124 ( .A1(n232), .A2(n235), .ZN(n233) );
  NAND2_X1 U125 ( .A1(n231), .A2(n230), .ZN(n232) );
  NAND2_X1 U126 ( .A1(n248), .A2(n235), .ZN(n249) );
  NAND2_X1 U129 ( .A1(n247), .A2(n246), .ZN(n248) );
  NAND2_X1 U132 ( .A1(e_out_map[13]), .A2(sel_ip[20]), .ZN(n253) );
  NAND2_X1 U137 ( .A1(n259), .A2(n219), .ZN(n260) );
  NAND2_X1 U138 ( .A1(n258), .A2(n257), .ZN(n259) );
  NAND2_X1 U139 ( .A1(e_out_map[7]), .A2(N30), .ZN(n258) );
  INV_X1 U140 ( .A(N30), .ZN(sel_ip[11]) );
  INV_X1 U141 ( .A(n366), .ZN(n112) );
  INV_X1 U142 ( .A(n112), .ZN(e_out_map[4]) );
  AOI222_X4 U143 ( .A1(n54), .A2(N97), .B1(n338), .B2(n360), .C1(n339), .C2(
        sel_ip[8]), .ZN(e_out_map[6]) );
  INV_X1 U144 ( .A(N97), .ZN(n235) );
  INV_X1 U145 ( .A(N97), .ZN(n219) );
  INV_X1 U146 ( .A(N97), .ZN(n169) );
  INV_X1 U147 ( .A(N97), .ZN(n149) );
  NAND2_X1 U148 ( .A1(e_out_map[5]), .A2(n360), .ZN(n198) );
  NAND2_X1 U149 ( .A1(e_out_map[5]), .A2(sel_ip[11]), .ZN(n257) );
  OAI221_X2 U150 ( .B1(n65), .B2(N30), .C1(n67), .C2(sel_ip[26]), .A(n340), 
        .ZN(e_out_map[5]) );
  INV_X1 U151 ( .A(sel_ip[6]), .ZN(n150) );
  INV_X1 U152 ( .A(sel_ip[6]), .ZN(n189) );
  INV_X2 U153 ( .A(num_inputs[0]), .ZN(sel_ip[6]) );
  BUF_X1 U154 ( .A(sel_ip[8]), .Z(sel_ip[20]) );
  BUF_X1 U155 ( .A(sel_ip[26]), .Z(sel_ip[2]) );
  BUF_X1 U156 ( .A(sel_ip[26]), .Z(sel_ip[14]) );
  BUF_X1 U157 ( .A(sel_ip[29]), .Z(sel_ip[23]) );
  BUF_X1 U158 ( .A(sel_ip[29]), .Z(sel_ip[5]) );
  INV_X1 U159 ( .A(sel_ip[6]), .ZN(n121) );
  INV_X1 U160 ( .A(n121), .ZN(sel_ip[30]) );
  INV_X1 U161 ( .A(n121), .ZN(sel_ip[10]) );
  INV_X1 U162 ( .A(n121), .ZN(sel_ip[22]) );
  INV_X1 U163 ( .A(n121), .ZN(sel_ip[18]) );
  INV_X1 U164 ( .A(n358), .ZN(sel_ip[7]) );
  INV_X1 U165 ( .A(n358), .ZN(sel_ip[31]) );
  INV_X1 U166 ( .A(n358), .ZN(sel_ip[13]) );
  INV_X1 U167 ( .A(n358), .ZN(sel_ip[21]) );
  NOR2_X1 U169 ( .A1(n359), .A2(sel_ip[15]), .ZN(n140) );
  NOR2_X1 U170 ( .A1(n359), .A2(n358), .ZN(n139) );
  AOI22_X1 U171 ( .A1(e_out_map[10]), .A2(n140), .B1(e_out_map[11]), .B2(n139), 
        .ZN(n132) );
  NOR2_X1 U172 ( .A1(sel_ip[15]), .A2(sel_ip[29]), .ZN(n142) );
  NOR2_X1 U173 ( .A1(n358), .A2(sel_ip[29]), .ZN(n141) );
  AOI22_X1 U174 ( .A1(e_out_map[8]), .A2(n142), .B1(e_out_map[9]), .B2(n141), 
        .ZN(n131) );
  AOI21_X1 U175 ( .B1(n132), .B2(n131), .A(sel_ip[6]), .ZN(n136) );
  AOI22_X1 U176 ( .A1(e_out_map[14]), .A2(n140), .B1(e_out_map[15]), .B2(n139), 
        .ZN(n134) );
  AOI22_X1 U177 ( .A1(e_out_map[12]), .A2(n142), .B1(e_out_map[13]), .B2(n141), 
        .ZN(n133) );
  AOI21_X1 U178 ( .B1(n134), .B2(n133), .A(n150), .ZN(n135) );
  OAI21_X1 U179 ( .B1(n136), .B2(n135), .A(N97), .ZN(n148) );
  AOI22_X1 U180 ( .A1(e_out_map[2]), .A2(n140), .B1(e_out_map[3]), .B2(n139), 
        .ZN(n138) );
  AOI22_X1 U181 ( .A1(e_out_map[0]), .A2(n142), .B1(e_out_map[1]), .B2(n141), 
        .ZN(n137) );
  AOI21_X1 U182 ( .B1(n138), .B2(n137), .A(sel_ip[6]), .ZN(n146) );
  AOI22_X1 U183 ( .A1(e_out_map[6]), .A2(n140), .B1(e_out_map[7]), .B2(n139), 
        .ZN(n144) );
  AOI22_X1 U184 ( .A1(e_out_map[4]), .A2(n142), .B1(e_out_map[5]), .B2(n141), 
        .ZN(n143) );
  AOI21_X1 U185 ( .B1(n144), .B2(n143), .A(n150), .ZN(n145) );
  OAI21_X1 U186 ( .B1(n146), .B2(n145), .A(n149), .ZN(n147) );
  NAND2_X1 U188 ( .A1(n148), .A2(n147), .ZN(e_out_map[8]) );
  NOR2_X1 U192 ( .A1(n359), .A2(N73), .ZN(n160) );
  NOR2_X1 U193 ( .A1(n359), .A2(n170), .ZN(n159) );
  AOI22_X1 U194 ( .A1(e_out_map[10]), .A2(n160), .B1(e_out_map[11]), .B2(n159), 
        .ZN(n152) );
  NOR2_X1 U195 ( .A1(N73), .A2(sel_ip[29]), .ZN(n162) );
  NOR2_X1 U196 ( .A1(n170), .A2(sel_ip[29]), .ZN(n161) );
  AOI22_X1 U197 ( .A1(e_out_map[8]), .A2(n162), .B1(e_out_map[9]), .B2(n161), 
        .ZN(n151) );
  AOI21_X1 U198 ( .B1(n152), .B2(n151), .A(sel_ip[6]), .ZN(n156) );
  AOI22_X1 U199 ( .A1(e_out_map[14]), .A2(n160), .B1(e_out_map[15]), .B2(n159), 
        .ZN(n154) );
  AOI22_X1 U200 ( .A1(e_out_map[12]), .A2(n162), .B1(e_out_map[13]), .B2(n161), 
        .ZN(n153) );
  AOI21_X1 U201 ( .B1(n154), .B2(n153), .A(n150), .ZN(n155) );
  OAI21_X1 U202 ( .B1(n156), .B2(n155), .A(N97), .ZN(n168) );
  AOI22_X1 U203 ( .A1(e_out_map[2]), .A2(n160), .B1(e_out_map[3]), .B2(n159), 
        .ZN(n158) );
  AOI22_X1 U204 ( .A1(e_out_map[0]), .A2(n162), .B1(e_out_map[1]), .B2(n161), 
        .ZN(n157) );
  AOI21_X1 U205 ( .B1(n158), .B2(n157), .A(sel_ip[6]), .ZN(n166) );
  AOI22_X1 U206 ( .A1(e_out_map[6]), .A2(n160), .B1(e_out_map[7]), .B2(n159), 
        .ZN(n164) );
  AOI22_X1 U207 ( .A1(e_out_map[4]), .A2(n162), .B1(e_out_map[5]), .B2(n161), 
        .ZN(n163) );
  AOI21_X1 U208 ( .B1(n164), .B2(n163), .A(n189), .ZN(n165) );
  OAI21_X1 U209 ( .B1(n166), .B2(n165), .A(n169), .ZN(n167) );
  NAND2_X1 U210 ( .A1(n168), .A2(n167), .ZN(e_out_map[9]) );
  NOR2_X1 U211 ( .A1(n360), .A2(sel_ip[26]), .ZN(n180) );
  NOR2_X1 U212 ( .A1(n360), .A2(n356), .ZN(n179) );
  AOI22_X1 U213 ( .A1(e_out_map[10]), .A2(n180), .B1(e_out_map[11]), .B2(n179), 
        .ZN(n172) );
  NOR2_X1 U214 ( .A1(sel_ip[26]), .A2(N86), .ZN(n182) );
  NOR2_X1 U215 ( .A1(n356), .A2(N86), .ZN(n181) );
  AOI22_X1 U216 ( .A1(e_out_map[8]), .A2(n182), .B1(e_out_map[9]), .B2(n181), 
        .ZN(n171) );
  AOI21_X1 U217 ( .B1(n172), .B2(n171), .A(sel_ip[6]), .ZN(n176) );
  AOI22_X1 U218 ( .A1(e_out_map[14]), .A2(n180), .B1(e_out_map[15]), .B2(n179), 
        .ZN(n174) );
  AOI22_X1 U219 ( .A1(e_out_map[12]), .A2(n182), .B1(e_out_map[13]), .B2(n181), 
        .ZN(n173) );
  AOI21_X1 U220 ( .B1(n174), .B2(n173), .A(n189), .ZN(n175) );
  OAI21_X1 U221 ( .B1(n176), .B2(n175), .A(N97), .ZN(n188) );
  AOI22_X1 U222 ( .A1(e_out_map[2]), .A2(n180), .B1(e_out_map[3]), .B2(n179), 
        .ZN(n178) );
  AOI22_X1 U223 ( .A1(e_out_map[0]), .A2(n182), .B1(e_out_map[1]), .B2(n181), 
        .ZN(n177) );
  AOI21_X1 U224 ( .B1(n178), .B2(n177), .A(sel_ip[6]), .ZN(n186) );
  AOI22_X1 U225 ( .A1(e_out_map[6]), .A2(n180), .B1(e_out_map[7]), .B2(n179), 
        .ZN(n184) );
  AOI22_X1 U226 ( .A1(e_out_map[4]), .A2(n182), .B1(e_out_map[5]), .B2(n181), 
        .ZN(n183) );
  AOI21_X1 U227 ( .B1(n184), .B2(n183), .A(n189), .ZN(n185) );
  OAI21_X1 U228 ( .B1(n186), .B2(n185), .A(n169), .ZN(n187) );
  NAND2_X1 U229 ( .A1(n188), .A2(n187), .ZN(e_out_map[10]) );
  AOI22_X1 U230 ( .A1(e_out_map[10]), .A2(1'b0), .B1(e_out_map[11]), .B2(N86), 
        .ZN(n191) );
  AOI22_X1 U231 ( .A1(e_out_map[8]), .A2(1'b0), .B1(e_out_map[9]), .B2(n360), 
        .ZN(n190) );
  AOI21_X1 U232 ( .B1(n191), .B2(n190), .A(sel_ip[6]), .ZN(n195) );
  AOI21_X1 U233 ( .B1(n193), .B2(n192), .A(n121), .ZN(n194) );
  OAI21_X1 U234 ( .B1(n195), .B2(n194), .A(N97), .ZN(n203) );
  AOI21_X1 U235 ( .B1(n197), .B2(n196), .A(sel_ip[6]), .ZN(n201) );
  AOI21_X1 U236 ( .B1(n199), .B2(n198), .A(n150), .ZN(n200) );
  OAI21_X1 U237 ( .B1(n201), .B2(n200), .A(n149), .ZN(n202) );
  NAND2_X1 U238 ( .A1(n203), .A2(n202), .ZN(e_out_map[11]) );
  NOR2_X1 U239 ( .A1(n121), .A2(sel_ip[15]), .ZN(n211) );
  NOR2_X1 U240 ( .A1(n189), .A2(n358), .ZN(n210) );
  AOI22_X1 U241 ( .A1(e_out_map[10]), .A2(n211), .B1(e_out_map[11]), .B2(n210), 
        .ZN(n205) );
  NOR2_X1 U242 ( .A1(sel_ip[15]), .A2(sel_ip[6]), .ZN(n213) );
  NOR2_X1 U243 ( .A1(n358), .A2(sel_ip[6]), .ZN(n212) );
  AOI22_X1 U244 ( .A1(e_out_map[8]), .A2(n213), .B1(e_out_map[9]), .B2(n212), 
        .ZN(n204) );
  AOI21_X1 U245 ( .B1(n205), .B2(n204), .A(1'b1), .ZN(n209) );
  AOI22_X1 U246 ( .A1(e_out_map[14]), .A2(n211), .B1(e_out_map[15]), .B2(n210), 
        .ZN(n207) );
  AOI22_X1 U247 ( .A1(e_out_map[12]), .A2(n213), .B1(e_out_map[13]), .B2(n212), 
        .ZN(n206) );
  AOI21_X1 U248 ( .B1(n207), .B2(n206), .A(1'b0), .ZN(n208) );
  OAI21_X1 U249 ( .B1(n209), .B2(n208), .A(N97), .ZN(n218) );
  AOI22_X1 U250 ( .A1(e_out_map[6]), .A2(n211), .B1(e_out_map[7]), .B2(n210), 
        .ZN(n215) );
  AOI22_X1 U251 ( .A1(e_out_map[4]), .A2(n213), .B1(e_out_map[5]), .B2(n212), 
        .ZN(n214) );
  NAND2_X1 U252 ( .A1(n218), .A2(n217), .ZN(e_out_map[12]) );
  NOR2_X1 U253 ( .A1(n150), .A2(N97), .ZN(n227) );
  NOR2_X1 U254 ( .A1(n150), .A2(n169), .ZN(n226) );
  AOI22_X1 U255 ( .A1(e_out_map[10]), .A2(n227), .B1(e_out_map[11]), .B2(n226), 
        .ZN(n221) );
  NOR2_X1 U256 ( .A1(N97), .A2(sel_ip[6]), .ZN(n229) );
  NOR2_X1 U257 ( .A1(n149), .A2(sel_ip[6]), .ZN(n228) );
  AOI22_X1 U258 ( .A1(e_out_map[8]), .A2(n229), .B1(e_out_map[9]), .B2(n228), 
        .ZN(n220) );
  AOI21_X1 U259 ( .B1(n221), .B2(n220), .A(1'b1), .ZN(n225) );
  AOI22_X1 U260 ( .A1(e_out_map[14]), .A2(n227), .B1(e_out_map[15]), .B2(n226), 
        .ZN(n223) );
  AOI22_X1 U261 ( .A1(e_out_map[12]), .A2(n229), .B1(e_out_map[13]), .B2(n228), 
        .ZN(n222) );
  AOI21_X1 U262 ( .B1(n223), .B2(n222), .A(1'b0), .ZN(n224) );
  OAI21_X1 U263 ( .B1(n225), .B2(n224), .A(N97), .ZN(n234) );
  AOI22_X1 U264 ( .A1(e_out_map[6]), .A2(n227), .B1(e_out_map[7]), .B2(n226), 
        .ZN(n231) );
  AOI22_X1 U265 ( .A1(e_out_map[4]), .A2(n229), .B1(e_out_map[5]), .B2(n228), 
        .ZN(n230) );
  NAND2_X1 U266 ( .A1(n234), .A2(n233), .ZN(e_out_map[13]) );
  NOR2_X1 U267 ( .A1(sel_ip[11]), .A2(sel_ip[6]), .ZN(n243) );
  NOR2_X1 U268 ( .A1(sel_ip[11]), .A2(n189), .ZN(n242) );
  AOI22_X1 U269 ( .A1(e_out_map[10]), .A2(n243), .B1(e_out_map[11]), .B2(n242), 
        .ZN(n237) );
  NOR2_X1 U270 ( .A1(sel_ip[6]), .A2(N30), .ZN(n245) );
  NOR2_X1 U271 ( .A1(n189), .A2(N30), .ZN(n244) );
  AOI22_X1 U272 ( .A1(e_out_map[8]), .A2(n245), .B1(e_out_map[9]), .B2(n244), 
        .ZN(n236) );
  AOI21_X1 U273 ( .B1(n237), .B2(n236), .A(1'b1), .ZN(n241) );
  AOI22_X1 U274 ( .A1(e_out_map[14]), .A2(n243), .B1(e_out_map[15]), .B2(n242), 
        .ZN(n239) );
  AOI22_X1 U275 ( .A1(e_out_map[12]), .A2(n245), .B1(e_out_map[13]), .B2(n244), 
        .ZN(n238) );
  AOI21_X1 U276 ( .B1(n239), .B2(n238), .A(1'b0), .ZN(n240) );
  OAI21_X1 U277 ( .B1(n241), .B2(n240), .A(N97), .ZN(n250) );
  AOI22_X1 U278 ( .A1(e_out_map[6]), .A2(n243), .B1(e_out_map[7]), .B2(n242), 
        .ZN(n247) );
  AOI22_X1 U279 ( .A1(e_out_map[4]), .A2(n245), .B1(e_out_map[5]), .B2(n244), 
        .ZN(n246) );
  NAND2_X1 U280 ( .A1(n250), .A2(n249), .ZN(e_out_map[14]) );
  AOI22_X1 U281 ( .A1(e_out_map[10]), .A2(1'b0), .B1(e_out_map[11]), .B2(N30), 
        .ZN(n252) );
  AOI22_X1 U282 ( .A1(e_out_map[8]), .A2(1'b0), .B1(e_out_map[9]), .B2(
        sel_ip[20]), .ZN(n251) );
  AOI21_X1 U283 ( .B1(n252), .B2(n251), .A(1'b1), .ZN(n256) );
  AOI22_X1 U284 ( .A1(e_out_map[14]), .A2(1'b0), .B1(e_out_map[15]), .B2(N30), 
        .ZN(n254) );
  AOI21_X1 U285 ( .B1(n254), .B2(n253), .A(1'b0), .ZN(n255) );
  OAI21_X1 U286 ( .B1(n256), .B2(n255), .A(N97), .ZN(n261) );
  NAND2_X1 U287 ( .A1(n261), .A2(n260), .ZN(e_out_map[15]) );
  AND3_X1 U288 ( .A1(syn_out[9]), .A2(n265), .A3(ne_dec_out[3]), .ZN(
        resp_func[57]) );
  OAI22_X1 U289 ( .A1(n266), .A2(N86), .B1(n267), .B2(n268), .ZN(n265) );
  NOR4_X1 U290 ( .A1(N86), .A2(n269), .A3(n270), .A4(n271), .ZN(resp_func[56])
         );
  AND3_X1 U291 ( .A1(syn_out[7]), .A2(n360), .A3(n272), .ZN(resp_func[55]) );
  NOR3_X1 U292 ( .A1(n273), .A2(n274), .A3(n270), .ZN(resp_func[54]) );
  AOI22_X1 U293 ( .A1(n275), .A2(n276), .B1(n277), .B2(n360), .ZN(n274) );
  NOR4_X1 U294 ( .A1(n266), .A2(n270), .A3(n278), .A4(n279), .ZN(resp_func[53]) );
  AOI21_X1 U295 ( .B1(n280), .B2(n276), .A(n281), .ZN(n266) );
  INV_X1 U296 ( .A(n282), .ZN(n276) );
  NOR4_X1 U297 ( .A1(n269), .A2(n270), .A3(n278), .A4(n283), .ZN(resp_func[52]) );
  NOR3_X1 U298 ( .A1(n284), .A2(n285), .A3(n286), .ZN(resp_func[51]) );
  NOR3_X1 U299 ( .A1(n287), .A2(n288), .A3(n286), .ZN(resp_func[50]) );
  INV_X1 U300 ( .A(n277), .ZN(n288) );
  NOR3_X1 U301 ( .A1(n289), .A2(n268), .A3(n286), .ZN(resp_func[49]) );
  AOI22_X1 U302 ( .A1(n290), .A2(n291), .B1(sel_ip[6]), .B2(rf_dec_out[1]), 
        .ZN(n268) );
  NOR4_X1 U303 ( .A1(n292), .A2(n270), .A3(n267), .A4(n269), .ZN(resp_func[60]) );
  AOI222_X1 U304 ( .A1(n293), .A2(n294), .B1(n295), .B2(n296), .C1(n282), .C2(
        n275), .ZN(n269) );
  INV_X1 U305 ( .A(syn_out[12]), .ZN(n292) );
  AND3_X1 U306 ( .A1(n272), .A2(n297), .A3(syn_out[11]), .ZN(resp_func[59]) );
  NOR2_X1 U307 ( .A1(n270), .A2(n285), .ZN(n272) );
  INV_X1 U308 ( .A(n298), .ZN(n285) );
  OAI211_X1 U309 ( .C1(n296), .C2(n295), .A(n299), .B(n3001), .ZN(n298) );
  AOI22_X1 U310 ( .A1(n294), .A2(n301), .B1(n302), .B2(n291), .ZN(n3001) );
  NAND3_X1 U311 ( .A1(n282), .A2(sel_ip[6]), .A3(rf_dec_out[3]), .ZN(n299) );
  NAND2_X1 U312 ( .A1(rf_dec_out[3]), .A2(n359), .ZN(n282) );
  NOR2_X1 U313 ( .A1(n303), .A2(sel_ip[29]), .ZN(n296) );
  AND4_X1 U314 ( .A1(syn_out[10]), .A2(ne_dec_out[3]), .A3(n297), .A4(n277), 
        .ZN(resp_func[58]) );
  OAI221_X1 U315 ( .B1(n294), .B2(n301), .C1(n291), .C2(n290), .A(n304), .ZN(
        n277) );
  NAND3_X1 U316 ( .A1(n295), .A2(sel_ip[29]), .A3(rf_dec_out[2]), .ZN(n304) );
  NOR2_X1 U317 ( .A1(n305), .A2(sel_ip[29]), .ZN(n294) );
  INV_X1 U318 ( .A(n267), .ZN(n297) );
  NOR4_X1 U319 ( .A1(n302), .A2(n306), .A3(n286), .A4(n307), .ZN(resp_func[48]) );
  OR2_X1 U320 ( .A1(n278), .A2(n270), .ZN(n286) );
  INV_X1 U321 ( .A(ne_dec_out[3]), .ZN(n270) );
  NAND2_X1 U322 ( .A1(N86), .A2(n267), .ZN(n278) );
  INV_X1 U323 ( .A(n290), .ZN(n302) );
  NAND2_X1 U324 ( .A1(rf_dec_out[0]), .A2(n359), .ZN(n290) );
  AND4_X1 U325 ( .A1(syn_out[9]), .A2(n275), .A3(n308), .A4(ne_dec_out[2]), 
        .ZN(resp_func[41]) );
  NOR4_X1 U326 ( .A1(n271), .A2(n295), .A3(n309), .A4(n310), .ZN(resp_func[40]) );
  INV_X1 U327 ( .A(syn_out[8]), .ZN(n271) );
  NOR3_X1 U328 ( .A1(n309), .A2(n311), .A3(n312), .ZN(resp_func[39]) );
  INV_X1 U329 ( .A(syn_out[7]), .ZN(n312) );
  AOI22_X1 U330 ( .A1(n308), .A2(n280), .B1(n313), .B2(n293), .ZN(n311) );
  NOR3_X1 U331 ( .A1(n309), .A2(n314), .A3(n273), .ZN(resp_func[38]) );
  AOI22_X1 U332 ( .A1(n315), .A2(n295), .B1(n316), .B2(n291), .ZN(n314) );
  NOR3_X1 U333 ( .A1(n309), .A2(n317), .A3(n279), .ZN(resp_func[37]) );
  AOI22_X1 U334 ( .A1(n275), .A2(n318), .B1(n313), .B2(n301), .ZN(n317) );
  NOR3_X1 U335 ( .A1(n309), .A2(n319), .A3(n283), .ZN(resp_func[36]) );
  AOI22_X1 U336 ( .A1(n281), .A2(n310), .B1(n316), .B2(n320), .ZN(n319) );
  AOI211_X1 U337 ( .C1(n321), .C2(n322), .A(n309), .B(n284), .ZN(resp_func[35]) );
  NAND3_X1 U338 ( .A1(n318), .A2(n280), .A3(rf_dec_out[3]), .ZN(n322) );
  NAND2_X1 U339 ( .A1(n293), .A2(n323), .ZN(n321) );
  AOI211_X1 U340 ( .C1(n324), .C2(n325), .A(n309), .B(n287), .ZN(resp_func[34]) );
  NAND3_X1 U341 ( .A1(n310), .A2(n295), .A3(rf_dec_out[2]), .ZN(n325) );
  NOR3_X1 U342 ( .A1(n326), .A2(n289), .A3(n309), .ZN(resp_func[33]) );
  NOR2_X1 U343 ( .A1(n309), .A2(n327), .ZN(resp_func[32]) );
  INV_X1 U344 ( .A(ne_dec_out[2]), .ZN(n309) );
  NOR4_X1 U345 ( .A1(n280), .A2(n273), .A3(n318), .A4(n328), .ZN(resp_func[22]) );
  INV_X1 U346 ( .A(syn_out[6]), .ZN(n273) );
  NOR3_X1 U347 ( .A1(n328), .A2(n329), .A3(n279), .ZN(resp_func[21]) );
  INV_X1 U348 ( .A(syn_out[5]), .ZN(n279) );
  AOI22_X1 U349 ( .A1(n315), .A2(n281), .B1(n308), .B2(n280), .ZN(n329) );
  INV_X1 U350 ( .A(n318), .ZN(n308) );
  INV_X1 U351 ( .A(n295), .ZN(n281) );
  NOR3_X1 U352 ( .A1(n328), .A2(n330), .A3(n283), .ZN(resp_func[20]) );
  INV_X1 U353 ( .A(syn_out[4]), .ZN(n283) );
  AOI222_X1 U354 ( .A1(n313), .A2(n293), .B1(n315), .B2(n295), .C1(n275), .C2(
        n318), .ZN(n330) );
  INV_X1 U355 ( .A(n280), .ZN(n275) );
  NAND2_X1 U356 ( .A1(rf_dec_out[3]), .A2(num_inputs[0]), .ZN(n280) );
  NOR3_X1 U357 ( .A1(n328), .A2(n331), .A3(n284), .ZN(resp_func[19]) );
  INV_X1 U358 ( .A(syn_out[3]), .ZN(n284) );
  AOI221_X1 U359 ( .B1(n313), .B2(n301), .C1(n316), .C2(n291), .A(n332), .ZN(
        n331) );
  OAI21_X1 U360 ( .B1(n315), .B2(n295), .A(n333), .ZN(n332) );
  NAND3_X1 U361 ( .A1(n318), .A2(sel_ip[6]), .A3(rf_dec_out[3]), .ZN(n333) );
  NAND2_X1 U362 ( .A1(rf_dec_out[3]), .A2(num_inputs[1]), .ZN(n318) );
  NAND2_X1 U363 ( .A1(rf_dec_out[2]), .A2(num_inputs[0]), .ZN(n295) );
  INV_X1 U364 ( .A(n323), .ZN(n313) );
  NOR3_X1 U365 ( .A1(n328), .A2(n334), .A3(n287), .ZN(resp_func[18]) );
  AOI221_X1 U366 ( .B1(n316), .B2(n320), .C1(n293), .C2(n323), .A(n335), .ZN(
        n334) );
  NOR3_X1 U367 ( .A1(n303), .A2(num_inputs[0]), .A3(n315), .ZN(n335) );
  INV_X1 U368 ( .A(n310), .ZN(n315) );
  NAND2_X1 U369 ( .A1(rf_dec_out[2]), .A2(num_inputs[1]), .ZN(n310) );
  INV_X1 U370 ( .A(n301), .ZN(n293) );
  INV_X1 U371 ( .A(n336), .ZN(n316) );
  AOI211_X1 U372 ( .C1(n326), .C2(n324), .A(n328), .B(n289), .ZN(resp_func[17]) );
  NAND2_X1 U373 ( .A1(n291), .A2(n336), .ZN(n324) );
  INV_X1 U374 ( .A(n320), .ZN(n291) );
  NAND3_X1 U375 ( .A1(n323), .A2(n301), .A3(rf_dec_out[1]), .ZN(n326) );
  NAND2_X1 U376 ( .A1(rf_dec_out[1]), .A2(num_inputs[0]), .ZN(n301) );
  NAND2_X1 U377 ( .A1(rf_dec_out[1]), .A2(num_inputs[1]), .ZN(n323) );
  NOR2_X1 U378 ( .A1(n327), .A2(n328), .ZN(resp_func[16]) );
  INV_X1 U379 ( .A(ne_dec_out[1]), .ZN(n328) );
  NAND4_X1 U380 ( .A1(syn_out[0]), .A2(rf_dec_out[0]), .A3(n336), .A4(n320), 
        .ZN(n327) );
  NAND2_X1 U381 ( .A1(rf_dec_out[0]), .A2(num_inputs[0]), .ZN(n320) );
  NAND2_X1 U382 ( .A1(rf_dec_out[0]), .A2(num_inputs[1]), .ZN(n336) );
  AND3_X1 U383 ( .A1(ne_dec_out[0]), .A2(rf_dec_out[3]), .A3(syn_out[3]), .ZN(
        resp_func[3]) );
  NOR3_X1 U384 ( .A1(n337), .A2(n303), .A3(n287), .ZN(resp_func[2]) );
  INV_X1 U385 ( .A(syn_out[2]), .ZN(n287) );
  INV_X1 U386 ( .A(rf_dec_out[2]), .ZN(n303) );
  NOR3_X1 U387 ( .A1(n337), .A2(n305), .A3(n289), .ZN(resp_func[1]) );
  INV_X1 U388 ( .A(syn_out[1]), .ZN(n289) );
  INV_X1 U389 ( .A(rf_dec_out[1]), .ZN(n305) );
  NOR3_X1 U390 ( .A1(n337), .A2(n306), .A3(n307), .ZN(resp_func[0]) );
  INV_X1 U391 ( .A(syn_out[0]), .ZN(n307) );
  INV_X1 U392 ( .A(rf_dec_out[0]), .ZN(n306) );
  INV_X1 U393 ( .A(ne_dec_out[0]), .ZN(n337) );
  INV_X1 U394 ( .A(sel_ip[16]), .ZN(n357) );
  INV_X1 U395 ( .A(sel_ip[26]), .ZN(n356) );
  AOI22_X1 U396 ( .A1(e_out_map[2]), .A2(n360), .B1(sel_ip[15]), .B2(n341), 
        .ZN(n340) );
  INV_X1 U397 ( .A(n68), .ZN(n341) );
  OAI221_X1 U398 ( .B1(n79), .B2(N30), .C1(n81), .C2(sel_ip[26]), .A(n342), 
        .ZN(n366) );
  AOI22_X1 U399 ( .A1(e_out_map[2]), .A2(n360), .B1(e_out_map[7]), .B2(
        sel_ip[15]), .ZN(n342) );
  MUX2_X1 U400 ( .A(n343), .B(n344), .S(num_inputs[1]), .Z(e_out_map[7]) );
  MUX2_X1 U401 ( .A(e_out_map[3]), .B(e_out_map[2]), .S(sel_ip[8]), .Z(n344)
         );
  INV_X1 U402 ( .A(n40), .ZN(n343) );
  INV_X1 U403 ( .A(N86), .ZN(n360) );
  INV_X1 U404 ( .A(n338), .ZN(e_out_map[3]) );
  MUX2_X1 U405 ( .A(n94), .B(n93), .S(num_inputs[1]), .Z(n338) );
  INV_X1 U406 ( .A(n339), .ZN(e_out_map[2]) );
  MUX2_X1 U407 ( .A(n102), .B(n101), .S(num_inputs[1]), .Z(n339) );
  INV_X1 U408 ( .A(n25), .ZN(e_in_map[9]) );
  MUX2_X1 U409 ( .A(n345), .B(n346), .S(sel_ip[17]), .Z(e_in_map[8]) );
  MUX2_X1 U410 ( .A(e_in_map[2]), .B(e_in_map[3]), .S(sel_ip[16]), .Z(n346) );
  INV_X1 U411 ( .A(n29), .ZN(n345) );
  INV_X1 U412 ( .A(n347), .ZN(e_in_map[7]) );
  MUX2_X1 U413 ( .A(n33), .B(n348), .S(sel_ip[15]), .Z(n347) );
  OAI21_X1 U414 ( .B1(n47), .B2(sel_ip[15]), .A(n349), .ZN(e_in_map[6]) );
  INV_X1 U415 ( .A(n350), .ZN(e_in_map[5]) );
  MUX2_X1 U416 ( .A(n61), .B(n351), .S(sel_ip[8]), .Z(n350) );
  INV_X1 U417 ( .A(n75), .ZN(e_in_map[4]) );
  INV_X1 U418 ( .A(n352), .ZN(e_in_map[15]) );
  MUX2_X1 U419 ( .A(n1), .B(n348), .S(sel_ip[15]), .Z(n352) );
  INV_X1 U420 ( .A(n353), .ZN(e_in_map[14]) );
  MUX2_X1 U421 ( .A(n5), .B(n351), .S(sel_ip[29]), .Z(n353) );
  INV_X1 U422 ( .A(n9), .ZN(e_in_map[13]) );
  INV_X1 U423 ( .A(n13), .ZN(e_in_map[12]) );
  OAI21_X1 U424 ( .B1(n351), .B2(n267), .A(n354), .ZN(e_in_map[11]) );
  MUX2_X1 U425 ( .A(n17), .B(n355), .S(sel_ip[29]), .Z(n354) );
  NAND2_X1 U426 ( .A1(e_in_map[3]), .A2(sel_ip[6]), .ZN(n355) );
  INV_X1 U427 ( .A(n348), .ZN(e_in_map[3]) );
  MUX2_X1 U428 ( .A(n89), .B(n90), .S(sel_ip[15]), .Z(n348) );
  NAND2_X1 U429 ( .A1(sel_ip[29]), .A2(num_inputs[0]), .ZN(n267) );
  OAI21_X1 U430 ( .B1(n21), .B2(sel_ip[15]), .A(n349), .ZN(e_in_map[10]) );
  NAND2_X1 U431 ( .A1(e_in_map[2]), .A2(sel_ip[15]), .ZN(n349) );
  INV_X1 U432 ( .A(n351), .ZN(e_in_map[2]) );
  MUX2_X1 U433 ( .A(n970), .B(n98), .S(sel_ip[29]), .Z(n351) );
  NAND2_X1 U434 ( .A1(n359), .A2(num_inputs[1]), .ZN(N73) );
  INV_X1 U435 ( .A(N30), .ZN(sel_ip[8]) );
  NAND2_X1 U437 ( .A1(num_inputs[1]), .A2(num_inputs[0]), .ZN(N30) );
  INV_X1 U439 ( .A(n359), .ZN(sel_ip[29]) );
  NAND2_X1 U440 ( .A1(sel_ip[26]), .A2(N86), .ZN(n359) );
  NAND2_X1 U441 ( .A1(num_inputs[1]), .A2(sel_ip[6]), .ZN(N86) );
  NAND2_X1 U442 ( .A1(num_inputs[0]), .A2(N97), .ZN(sel_ip[26]) );
  INV_X1 U443 ( .A(n358), .ZN(sel_ip[15]) );
  NAND2_X1 U444 ( .A1(N97), .A2(sel_ip[6]), .ZN(n358) );
  INV_X1 U445 ( .A(num_inputs[1]), .ZN(N97) );
endmodule


module mux_00000004_1_15 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse ( input_spike, w_init, inc, dec, clk, grst, rstb, w_out, 
        syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b1), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b1), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b1), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b1), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_14 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_1_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b1), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b1), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b1), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b0), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_13 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_2_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b1), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b1), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b0), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b1), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_12 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_3_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b1), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b1), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b0), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b0), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_11 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_4_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b1), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b0), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b1), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b1), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_10 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_5_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b1), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b0), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b1), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b0), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_9 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_6_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b1), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b0), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b0), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b1), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_8 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_7_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b1), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b0), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b0), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b0), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_7 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_8_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b0), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b1), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b1), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b1), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_6 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_9_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b0), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b1), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b1), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b0), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_5 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_10_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b0), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b1), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b0), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b1), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_4 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_11_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b0), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b1), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b0), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b0), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_3 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_12_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b0), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b0), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b1), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b1), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_2 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_13_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b0), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b0), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b1), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b0), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_1 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_14_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b0), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b0), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b0), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b1), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module mux_00000004_1_0 ( in, sel, out );
  input [3:0] in;
  input [1:0] sel;
  output [0:0] out;
  wire   out_0_, n1, n2;
  assign out[0] = out_0_;

  MUX2_X1 U1 ( .A(n1), .B(n2), .S(sel[1]), .Z(out_0_) );
  MUX2_X1 U2 ( .A(in[2]), .B(in[3]), .S(sel[0]), .Z(n2) );
  MUX2_X1 U3 ( .A(in[0]), .B(in[1]), .S(sel[0]), .Z(n1) );
endmodule


module fsm_synapse_00000003_15_00000010_00000004 ( input_spike, w_init, inc, 
        dec, clk, grst, rstb, w_out, syn_out, id );
  input [2:0] w_init;
  output [2:0] w_out;
  output [3:0] id;
  input input_spike, inc, dec, clk, grst, rstb;
  output syn_out;
  wire   w_nonzero, n40, n41, n42, n43, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n44, n45, n46, n47;

  DFF_X1 weight_reg_0_ ( .D(n43), .CK(clk), .Q(w_out[0]), .QN(n10) );
  DFF_X1 weight_reg_1_ ( .D(n41), .CK(clk), .Q(w_out[1]), .QN(n9) );
  DFF_X1 weight_reg_2_ ( .D(n42), .CK(clk), .Q(w_out[2]), .QN(n11) );
  DFF_X1 w_nonzero_reg ( .D(n40), .CK(clk), .Q(w_nonzero), .QN(n12) );
  INV_X1 U3 ( .A(1'b0), .ZN(id[3]) );
  INV_X1 U5 ( .A(1'b0), .ZN(id[2]) );
  INV_X1 U7 ( .A(1'b0), .ZN(id[1]) );
  INV_X1 U9 ( .A(1'b0), .ZN(id[0]) );
  AND2_X1 U11 ( .A1(input_spike), .A2(w_nonzero), .ZN(syn_out) );
  OAI21_X1 U12 ( .B1(rstb), .B2(n13), .A(n14), .ZN(n43) );
  MUX2_X1 U13 ( .A(n15), .B(n16), .S(n10), .Z(n14) );
  INV_X1 U14 ( .A(w_init[0]), .ZN(n13) );
  OAI222_X1 U15 ( .A1(rstb), .A2(n17), .B1(n16), .B2(n18), .C1(n11), .C2(n15), 
        .ZN(n42) );
  MUX2_X1 U16 ( .A(n19), .B(n20), .S(w_out[2]), .Z(n18) );
  AOI21_X1 U17 ( .B1(n21), .B2(n22), .A(n20), .ZN(n19) );
  AND2_X1 U18 ( .A1(n23), .A2(n24), .ZN(n20) );
  INV_X1 U19 ( .A(w_init[2]), .ZN(n17) );
  OAI222_X1 U20 ( .A1(rstb), .A2(n25), .B1(n26), .B2(n16), .C1(n9), .C2(n15), 
        .ZN(n41) );
  NAND2_X1 U21 ( .A1(n27), .A2(n15), .ZN(n16) );
  OAI211_X1 U22 ( .C1(n28), .C2(n29), .A(n30), .B(rstb), .ZN(n15) );
  NOR2_X1 U23 ( .A1(n31), .A2(n32), .ZN(n28) );
  AOI21_X1 U24 ( .B1(n33), .B2(n10), .A(n34), .ZN(n31) );
  INV_X1 U25 ( .A(n35), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n36), .B2(n21), .A(n23), .ZN(n26) );
  NOR2_X1 U27 ( .A1(n36), .A2(n21), .ZN(n23) );
  NOR2_X1 U28 ( .A1(n37), .A2(n38), .ZN(n21) );
  AOI21_X1 U29 ( .B1(n9), .B2(n10), .A(n22), .ZN(n36) );
  INV_X1 U30 ( .A(w_init[1]), .ZN(n25) );
  OAI222_X1 U31 ( .A1(n39), .A2(n29), .B1(n44), .B2(n12), .C1(rstb), .C2(n45), 
        .ZN(n40) );
  NOR3_X1 U32 ( .A1(w_init[0]), .A2(w_init[2]), .A3(w_init[1]), .ZN(n45) );
  AOI22_X1 U33 ( .A1(n46), .A2(n35), .B1(n47), .B2(rstb), .ZN(n44) );
  INV_X1 U34 ( .A(n27), .ZN(n47) );
  NAND2_X1 U35 ( .A1(n29), .A2(n30), .ZN(n27) );
  INV_X1 U36 ( .A(n30), .ZN(n46) );
  NAND3_X1 U37 ( .A1(input_spike), .A2(n38), .A3(rstb), .ZN(n30) );
  INV_X1 U38 ( .A(grst), .ZN(n38) );
  NAND2_X1 U39 ( .A1(grst), .A2(rstb), .ZN(n29) );
  AOI211_X1 U40 ( .C1(w_out[0]), .C2(n34), .A(n35), .B(n32), .ZN(n39) );
  INV_X1 U41 ( .A(n37), .ZN(n32) );
  OAI21_X1 U42 ( .B1(n24), .B2(n11), .A(inc), .ZN(n37) );
  INV_X1 U43 ( .A(n22), .ZN(n24) );
  NOR2_X1 U44 ( .A1(n9), .A2(n10), .ZN(n22) );
  NAND2_X1 U45 ( .A1(n11), .A2(n9), .ZN(n35) );
  INV_X1 U46 ( .A(dec), .ZN(n34) );
endmodule


module pulse2edge_20 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module pulse2edge_19 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module less_equal_3 ( data_in, inhibit_in, clk, grst, rstb, out );
  input data_in, inhibit_in, clk, grst, rstb;
  output out;
  wire   inhibit_only, inhibit_only_edge, n1;

  pulse2edge_19 pe_le ( .pulse_in(inhibit_only), .clk(clk), .grst(grst), 
        .rstb(rstb), .edge_out(inhibit_only_edge) );
  NOR2_X1 U1 ( .A1(inhibit_only_edge), .A2(n1), .ZN(out) );
  AND2_X1 U2 ( .A1(inhibit_in), .A2(n1), .ZN(inhibit_only) );
  INV_X1 U3 ( .A(data_in), .ZN(n1) );
endmodule


module pulse2edge_18 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module less_equal_2 ( data_in, inhibit_in, clk, grst, rstb, out );
  input data_in, inhibit_in, clk, grst, rstb;
  output out;
  wire   inhibit_only, inhibit_only_edge, n1;

  pulse2edge_18 pe_le ( .pulse_in(inhibit_only), .clk(clk), .grst(grst), 
        .rstb(rstb), .edge_out(inhibit_only_edge) );
  NOR2_X1 U1 ( .A1(inhibit_only_edge), .A2(n1), .ZN(out) );
  AND2_X1 U2 ( .A1(inhibit_in), .A2(n1), .ZN(inhibit_only) );
  INV_X1 U3 ( .A(data_in), .ZN(n1) );
endmodule


module pulse2edge_17 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module less_equal_1 ( data_in, inhibit_in, clk, grst, rstb, out );
  input data_in, inhibit_in, clk, grst, rstb;
  output out;
  wire   inhibit_only, inhibit_only_edge, n1;

  pulse2edge_17 pe_le ( .pulse_in(inhibit_only), .clk(clk), .grst(grst), 
        .rstb(rstb), .edge_out(inhibit_only_edge) );
  NOR2_X1 U1 ( .A1(inhibit_only_edge), .A2(n1), .ZN(out) );
  AND2_X1 U2 ( .A1(inhibit_in), .A2(n1), .ZN(inhibit_only) );
  INV_X1 U3 ( .A(data_in), .ZN(n1) );
endmodule


module pulse2edge_16 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module less_equal_0 ( data_in, inhibit_in, clk, grst, rstb, out );
  input data_in, inhibit_in, clk, grst, rstb;
  output out;
  wire   inhibit_only, inhibit_only_edge, n1;

  pulse2edge_16 pe_le ( .pulse_in(inhibit_only), .clk(clk), .grst(grst), 
        .rstb(rstb), .edge_out(inhibit_only_edge) );
  NOR2_X1 U1 ( .A1(inhibit_only_edge), .A2(n1), .ZN(out) );
  AND2_X1 U2 ( .A1(inhibit_in), .A2(n1), .ZN(inhibit_only) );
  INV_X1 U3 ( .A(data_in), .ZN(n1) );
endmodule


module wta_00000004 ( ec_spikes, clk, grst, rstb, li_out );
  input [3:0] ec_spikes;
  output [3:0] li_out;
  input clk, grst, rstb;
  wire   first_spike, first_spike_edge, n1, n2, n3;
  wire   [3:1] inhibit_spikes;

  pulse2edge_20 pe_wta ( .pulse_in(first_spike), .clk(clk), .grst(grst), 
        .rstb(rstb), .edge_out(first_spike_edge) );
  less_equal_3 less_than_or_equal_0__l1 ( .data_in(ec_spikes[0]), .inhibit_in(
        first_spike_edge), .clk(clk), .grst(grst), .rstb(rstb), .out(li_out[0]) );
  less_equal_2 less_than_or_equal_1__l1 ( .data_in(ec_spikes[1]), .inhibit_in(
        first_spike_edge), .clk(clk), .grst(grst), .rstb(rstb), .out(
        inhibit_spikes[1]) );
  less_equal_1 less_than_or_equal_2__l1 ( .data_in(ec_spikes[2]), .inhibit_in(
        first_spike_edge), .clk(clk), .grst(grst), .rstb(rstb), .out(
        inhibit_spikes[2]) );
  less_equal_0 less_than_or_equal_3__l1 ( .data_in(ec_spikes[3]), .inhibit_in(
        first_spike_edge), .clk(clk), .grst(grst), .rstb(rstb), .out(
        inhibit_spikes[3]) );
  NOR4_X1 U1 ( .A1(n1), .A2(inhibit_spikes[1]), .A3(inhibit_spikes[2]), .A4(
        li_out[0]), .ZN(li_out[3]) );
  INV_X1 U2 ( .A(inhibit_spikes[3]), .ZN(n1) );
  NOR3_X1 U3 ( .A1(n2), .A2(li_out[0]), .A3(inhibit_spikes[1]), .ZN(li_out[2])
         );
  INV_X1 U4 ( .A(inhibit_spikes[2]), .ZN(n2) );
  NOR2_X1 U5 ( .A1(li_out[0]), .A2(n3), .ZN(li_out[1]) );
  INV_X1 U6 ( .A(inhibit_spikes[1]), .ZN(n3) );
  OR4_X1 U7 ( .A1(ec_spikes[1]), .A2(ec_spikes[0]), .A3(ec_spikes[3]), .A4(
        ec_spikes[2]), .ZN(first_spike) );
endmodule


module pulse2edge_24 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module pulse2edge_23 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module pulse2edge_22 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module pulse2edge_21 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module pulse2edge_15 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_15 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_15 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_15 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_15 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_15 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_15 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_15 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_15 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_14 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_14 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_14 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_14 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_14 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_14 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_14 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_14 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_14 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_13 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_13 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_13 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_13 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_13 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_13 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_13 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_13 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_13 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_12 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_12 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_12 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_12 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_12 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_12 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_12 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_12 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_12 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_11 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_11 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_11 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_11 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_11 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_11 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_11 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_11 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_11 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_10 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_10 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_10 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_10 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_10 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_10 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_10 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_10 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_10 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_9 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_9 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_9 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_9 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_9 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_9 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_9 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_9 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_9 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_8 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_8 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_8 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_8 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_8 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_8 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_8 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_8 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_8 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_7 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_7 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_7 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_7 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_7 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_7 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_7 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_7 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_7 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_6 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_6 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_6 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_6 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_6 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_6 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_6 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_6 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_6 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_5 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_5 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_5 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_5 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_5 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_5 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_5 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_5 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_5 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_4 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_4 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_4 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_4 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_4 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_4 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_4 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_4 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_4 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_3 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_3 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_3 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_3 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_3 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_3 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_3 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_3 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_3 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_2 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_2 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_2 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_2 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_2 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_2 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_2 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_2 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_2 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_1 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_1 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_1 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_1 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_1 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_1 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_1 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_1 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_1 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module pulse2edge_0 ( pulse_in, clk, grst, rstb, edge_out );
  input pulse_in, clk, grst, rstb;
  output edge_out;
  wire   temp, N3, n1, n2;

  DFF_X1 temp_reg ( .D(N3), .CK(clk), .Q(temp) );
  INV_X1 U3 ( .A(rstb), .ZN(n1) );
  INV_X1 U4 ( .A(n2), .ZN(edge_out) );
  NOR3_X1 U5 ( .A1(n1), .A2(grst), .A3(n2), .ZN(N3) );
  NOR2_X1 U6 ( .A1(pulse_in), .A2(temp), .ZN(n2) );
endmodule


module stdp_case_gen_0 ( ein, eout, clk, grst, rstb, stdp_cases );
  output [3:0] stdp_cases;
  input ein, eout, clk, grst, rstb;
  wire   eout_only, greater, n1, n2, n3, n4;

  pulse2edge_0 pe ( .pulse_in(eout_only), .clk(clk), .grst(grst), .rstb(rstb), 
        .edge_out(greater) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(stdp_cases[3]) );
  NOR2_X1 U2 ( .A1(greater), .A2(n1), .ZN(stdp_cases[2]) );
  AOI21_X1 U3 ( .B1(n3), .B2(ein), .A(eout_only), .ZN(n1) );
  NOR3_X1 U4 ( .A1(n2), .A2(n4), .A3(n3), .ZN(stdp_cases[1]) );
  INV_X1 U5 ( .A(greater), .ZN(n2) );
  NOR3_X1 U6 ( .A1(n3), .A2(greater), .A3(n4), .ZN(stdp_cases[0]) );
  INV_X1 U7 ( .A(ein), .ZN(n4) );
  NOR2_X1 U8 ( .A1(n3), .A2(ein), .ZN(eout_only) );
  INV_X1 U9 ( .A(eout), .ZN(n3) );
endmodule


module stabilize_func_00000003_0 ( weight, F_brv, out );
  input [2:0] weight;
  input [5:0] F_brv;
  output out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  MUX2_X1 U2 ( .A(n1), .B(n2), .S(weight[2]), .Z(out) );
  MUX2_X1 U3 ( .A(n3), .B(n4), .S(weight[1]), .Z(n2) );
  NOR2_X1 U4 ( .A1(n5), .A2(weight[0]), .ZN(n4) );
  INV_X1 U5 ( .A(F_brv[5]), .ZN(n5) );
  MUX2_X1 U6 ( .A(F_brv[3]), .B(F_brv[4]), .S(weight[0]), .Z(n3) );
  MUX2_X1 U7 ( .A(n6), .B(n7), .S(weight[1]), .Z(n1) );
  MUX2_X1 U8 ( .A(F_brv[1]), .B(F_brv[2]), .S(weight[0]), .Z(n7) );
  AND2_X1 U9 ( .A1(F_brv[0]), .A2(weight[0]), .ZN(n6) );
endmodule


module incdec_0 ( stdp_cases, capture_brv, minus_brv, search_brv, backoff_brv, 
        min_brv, fout_brv, inc, dec );
  input [3:0] stdp_cases;
  input capture_brv, minus_brv, search_brv, backoff_brv, min_brv, fout_brv;
  output inc, dec;
  wire   n1, n2, n3, n4, n5;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(inc) );
  NAND3_X1 U2 ( .A1(capture_brv), .A2(n3), .A3(stdp_cases[0]), .ZN(n2) );
  INV_X1 U3 ( .A(n4), .ZN(n3) );
  NAND2_X1 U4 ( .A1(stdp_cases[2]), .A2(search_brv), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(dec) );
  AOI22_X1 U6 ( .A1(stdp_cases[3]), .A2(backoff_brv), .B1(stdp_cases[1]), .B2(
        minus_brv), .ZN(n5) );
  NOR2_X1 U7 ( .A1(fout_brv), .A2(min_brv), .ZN(n4) );
endmodule


module stdp_0 ( weight_in, ein, eout, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, inc, dec );
  input [2:0] weight_in;
  input [5:0] F_brv;
  input ein, eout, capture_brv, minus_brv, search_brv, backoff_brv, min_brv,
         clk, grst, rstb;
  output inc, dec;
  wire   fout_brv;
  wire   [3:0] stdp_cases;

  stdp_case_gen_0 casegen ( .ein(ein), .eout(eout), .clk(clk), .grst(grst), 
        .rstb(rstb), .stdp_cases(stdp_cases) );
  stabilize_func_00000003_0 flogic ( .weight(weight_in), .F_brv(F_brv), .out(
        fout_brv) );
  incdec_0 control ( .stdp_cases(stdp_cases), .capture_brv(capture_brv), 
        .minus_brv(minus_brv), .search_brv(search_brv), .backoff_brv(
        backoff_brv), .min_brv(min_brv), .fout_brv(fout_brv), .inc(inc), .dec(
        dec) );
endmodule


module top ( input_spikes, w_init, capture_brv, minus_brv, search_brv, 
        backoff_brv, min_brv, F_brv, clk, grst, rstb, num_inputs, num_neurons, 
        output_spikes );
  input [3:0] input_spikes;
  input [47:0] w_init;
  input [15:0] capture_brv;
  input [15:0] minus_brv;
  input [15:0] search_brv;
  input [15:0] backoff_brv;
  input [15:0] min_brv;
  input [95:0] F_brv;
  input [1:0] num_inputs;
  input [1:0] num_neurons;
  output [3:0] output_spikes;
  input clk, grst, rstb;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33,
         SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35,
         SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37,
         SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39,
         SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41,
         SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43,
         SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45,
         SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47,
         SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49,
         SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51,
         SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53,
         SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55,
         SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57,
         SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59,
         SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61,
         SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63,
         SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65,
         SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67,
         SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69,
         SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71,
         SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73,
         SYNOPSYS_UNCONNECTED_74, SYNOPSYS_UNCONNECTED_75,
         SYNOPSYS_UNCONNECTED_76, SYNOPSYS_UNCONNECTED_77,
         SYNOPSYS_UNCONNECTED_78, SYNOPSYS_UNCONNECTED_79,
         SYNOPSYS_UNCONNECTED_80, SYNOPSYS_UNCONNECTED_81,
         SYNOPSYS_UNCONNECTED_82, SYNOPSYS_UNCONNECTED_83,
         SYNOPSYS_UNCONNECTED_84, SYNOPSYS_UNCONNECTED_85,
         SYNOPSYS_UNCONNECTED_86, SYNOPSYS_UNCONNECTED_87,
         SYNOPSYS_UNCONNECTED_88, SYNOPSYS_UNCONNECTED_89,
         SYNOPSYS_UNCONNECTED_90, SYNOPSYS_UNCONNECTED_91,
         SYNOPSYS_UNCONNECTED_92, SYNOPSYS_UNCONNECTED_93,
         SYNOPSYS_UNCONNECTED_94, SYNOPSYS_UNCONNECTED_95,
         SYNOPSYS_UNCONNECTED_96, SYNOPSYS_UNCONNECTED_97,
         SYNOPSYS_UNCONNECTED_98, SYNOPSYS_UNCONNECTED_99,
         SYNOPSYS_UNCONNECTED_100, SYNOPSYS_UNCONNECTED_101,
         SYNOPSYS_UNCONNECTED_102, SYNOPSYS_UNCONNECTED_103,
         SYNOPSYS_UNCONNECTED_104, SYNOPSYS_UNCONNECTED_105;
  wire   [3:0] ein;
  wire   [3:0] ec_spikes;
  wire   [60:0] resp_func;
  wire   [23:0] sel_ip;
  wire   [15:0] syn_out;
  wire   [3:0] eout;
  wire   [15:0] e_out_map;
  wire   [15:0] e_in_map;
  wire   [15:0] synapse_spikes;
  wire   [15:0] inc;
  wire   [15:0] dec;
  wire   [47:0] weights;

  pulse2edge_28 edge_input_gen_0__pe_in ( .pulse_in(input_spikes[0]), .clk(n11), .grst(grst), .rstb(n8), .edge_out(ein[0]) );
  pulse2edge_27 edge_input_gen_1__pe_in ( .pulse_in(input_spikes[1]), .clk(n11), .grst(grst), .rstb(n8), .edge_out(ein[1]) );
  pulse2edge_26 edge_input_gen_2__pe_in ( .pulse_in(input_spikes[2]), .clk(n11), .grst(grst), .rstb(n8), .edge_out(ein[2]) );
  pulse2edge_25 edge_input_gen_3__pe_in ( .pulse_in(input_spikes[3]), .clk(n11), .grst(grst), .rstb(n8), .edge_out(ein[3]) );
  neuron_00000010_00000003_0000000d_3 ec_0__ec ( .clk(n9), .grst(grst), .rstb(
        n7), .output_spike(ec_spikes[0]), .resp_func({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, resp_func[3:0]}) );
  neuron_00000010_00000003_0000000d_2 ec_1__ec ( .clk(n9), .grst(grst), .rstb(
        n7), .output_spike(ec_spikes[1]), .resp_func({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, resp_func[22:16]}) );
  neuron_00000010_00000003_0000000d_1 ec_2__ec ( .clk(n9), .grst(grst), .rstb(
        n7), .output_spike(ec_spikes[2]), .resp_func({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, resp_func[41:32]}) );
  neuron_00000010_00000003_0000000d_0 ec_3__ec ( .clk(n9), .grst(grst), .rstb(
        n7), .output_spike(ec_spikes[3]), .resp_func({1'b0, 1'b0, 1'b0, 
        resp_func[60:48]}) );
  control control_inst ( .num_inputs(num_inputs), .num_neurons(num_neurons), 
        .sel_ip({sel_ip[23:21], SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        sel_ip[20], SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        sel_ip[19:16], SYNOPSYS_UNCONNECTED_5, sel_ip[15:10], 
        SYNOPSYS_UNCONNECTED_6, sel_ip[9:8], SYNOPSYS_UNCONNECTED_7, 
        sel_ip[7:4], SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, sel_ip[2], 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11}), .syn_out(syn_out), 
        .e_out(eout), .e_in(ein), .resp_func({SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, resp_func[60:48], 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, resp_func[41:32], 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, resp_func[22:16], SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, 
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, 
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, 
        SYNOPSYS_UNCONNECTED_41, resp_func[3:0]}), .e_out_map(e_out_map), 
        .e_in_map(e_in_map) );
  mux_00000004_1_15 synloop_0__mux_inst ( .in(input_spikes), .sel({1'b0, 1'b0}), .out(synapse_spikes[0]) );
  fsm_synapse synloop_0__syn ( .input_spike(synapse_spikes[0]), .w_init(
        w_init[2:0]), .inc(inc[0]), .dec(dec[0]), .clk(n10), .grst(grst), 
        .rstb(n5), .w_out(weights[2:0]), .syn_out(syn_out[0]), .id({
        SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, 
        SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45}) );
  mux_00000004_1_14 synloop_1__mux_inst ( .in(input_spikes), .sel({1'b0, 
        sel_ip[2]}), .out(synapse_spikes[1]) );
  fsm_synapse_00000003_1_00000010_00000004 synloop_1__syn ( .input_spike(
        synapse_spikes[1]), .w_init(w_init[5:3]), .inc(inc[1]), .dec(dec[1]), 
        .clk(n10), .grst(grst), .rstb(n5), .w_out(weights[5:3]), .syn_out(
        syn_out[1]), .id({SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, 
        SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49}) );
  mux_00000004_1_13 synloop_2__mux_inst ( .in(input_spikes), .sel({sel_ip[4], 
        1'b0}), .out(synapse_spikes[2]) );
  fsm_synapse_00000003_2_00000010_00000004 synloop_2__syn ( .input_spike(
        synapse_spikes[2]), .w_init(w_init[8:6]), .inc(inc[2]), .dec(dec[2]), 
        .clk(n10), .grst(n2), .rstb(n5), .w_out(weights[8:6]), .syn_out(
        syn_out[2]), .id({SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51, 
        SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53}) );
  mux_00000004_1_12 synloop_3__mux_inst ( .in(input_spikes), .sel(sel_ip[6:5]), 
        .out(synapse_spikes[3]) );
  fsm_synapse_00000003_3_00000010_00000004 synloop_3__syn ( .input_spike(
        synapse_spikes[3]), .w_init(w_init[11:9]), .inc(inc[3]), .dec(dec[3]), 
        .clk(n10), .grst(n2), .rstb(n5), .w_out(weights[11:9]), .syn_out(
        syn_out[3]), .id({SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55, 
        SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57}) );
  mux_00000004_1_11 synloop_4__mux_inst ( .in(input_spikes), .sel({1'b0, 
        sel_ip[7]}), .out(synapse_spikes[4]) );
  fsm_synapse_00000003_4_00000010_00000004 synloop_4__syn ( .input_spike(
        synapse_spikes[4]), .w_init(w_init[14:12]), .inc(inc[4]), .dec(dec[4]), 
        .clk(n10), .grst(n2), .rstb(n5), .w_out(weights[14:12]), .syn_out(
        syn_out[4]), .id({SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59, 
        SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61}) );
  mux_00000004_1_10 synloop_5__mux_inst ( .in(input_spikes), .sel(sel_ip[9:8]), 
        .out(synapse_spikes[5]) );
  fsm_synapse_00000003_5_00000010_00000004 synloop_5__syn ( .input_spike(
        synapse_spikes[5]), .w_init(w_init[17:15]), .inc(inc[5]), .dec(dec[5]), 
        .clk(n10), .grst(n2), .rstb(n6), .w_out(weights[17:15]), .syn_out(
        syn_out[5]), .id({SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63, 
        SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65}) );
  mux_00000004_1_9 synloop_6__mux_inst ( .in(input_spikes), .sel({sel_ip[10], 
        1'b0}), .out(synapse_spikes[6]) );
  fsm_synapse_00000003_6_00000010_00000004 synloop_6__syn ( .input_spike(
        synapse_spikes[6]), .w_init(w_init[20:18]), .inc(inc[6]), .dec(dec[6]), 
        .clk(n10), .grst(n2), .rstb(n6), .w_out(weights[20:18]), .syn_out(
        syn_out[6]), .id({SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67, 
        SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69}) );
  mux_00000004_1_8 synloop_7__mux_inst ( .in(input_spikes), .sel(sel_ip[12:11]), .out(synapse_spikes[7]) );
  fsm_synapse_00000003_7_00000010_00000004 synloop_7__syn ( .input_spike(
        synapse_spikes[7]), .w_init(w_init[23:21]), .inc(inc[7]), .dec(dec[7]), 
        .clk(n10), .grst(n2), .rstb(n6), .w_out(weights[23:21]), .syn_out(
        syn_out[7]), .id({SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71, 
        SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73}) );
  mux_00000004_1_7 synloop_8__mux_inst ( .in(input_spikes), .sel(sel_ip[14:13]), .out(synapse_spikes[8]) );
  fsm_synapse_00000003_8_00000010_00000004 synloop_8__syn ( .input_spike(
        synapse_spikes[8]), .w_init(w_init[26:24]), .inc(inc[8]), .dec(dec[8]), 
        .clk(n9), .grst(n2), .rstb(n5), .w_out(weights[26:24]), .syn_out(
        syn_out[8]), .id({SYNOPSYS_UNCONNECTED_74, SYNOPSYS_UNCONNECTED_75, 
        SYNOPSYS_UNCONNECTED_76, SYNOPSYS_UNCONNECTED_77}) );
  mux_00000004_1_6 synloop_9__mux_inst ( .in(input_spikes), .sel({1'b0, 
        sel_ip[15]}), .out(synapse_spikes[9]) );
  fsm_synapse_00000003_9_00000010_00000004 synloop_9__syn ( .input_spike(
        synapse_spikes[9]), .w_init(w_init[29:27]), .inc(inc[9]), .dec(dec[9]), 
        .clk(n10), .grst(n2), .rstb(n6), .w_out(weights[29:27]), .syn_out(
        syn_out[9]), .id({SYNOPSYS_UNCONNECTED_78, SYNOPSYS_UNCONNECTED_79, 
        SYNOPSYS_UNCONNECTED_80, SYNOPSYS_UNCONNECTED_81}) );
  mux_00000004_1_5 synloop_10__mux_inst ( .in(input_spikes), .sel(
        sel_ip[17:16]), .out(synapse_spikes[10]) );
  fsm_synapse_00000003_10_00000010_00000004 synloop_10__syn ( .input_spike(
        synapse_spikes[10]), .w_init(w_init[32:30]), .inc(inc[10]), .dec(
        dec[10]), .clk(n10), .grst(n2), .rstb(n6), .w_out(weights[32:30]), 
        .syn_out(syn_out[10]), .id({SYNOPSYS_UNCONNECTED_82, 
        SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84, 
        SYNOPSYS_UNCONNECTED_85}) );
  mux_00000004_1_4 synloop_11__mux_inst ( .in(input_spikes), .sel(
        sel_ip[19:18]), .out(synapse_spikes[11]) );
  fsm_synapse_00000003_11_00000010_00000004 synloop_11__syn ( .input_spike(
        synapse_spikes[11]), .w_init(w_init[35:33]), .inc(inc[11]), .dec(
        dec[11]), .clk(n10), .grst(n2), .rstb(n6), .w_out(weights[35:33]), 
        .syn_out(syn_out[11]), .id({SYNOPSYS_UNCONNECTED_86, 
        SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88, 
        SYNOPSYS_UNCONNECTED_89}) );
  mux_00000004_1_3 synloop_12__mux_inst ( .in(input_spikes), .sel({1'b0, 1'b0}), .out(synapse_spikes[12]) );
  fsm_synapse_00000003_12_00000010_00000004 synloop_12__syn ( .input_spike(
        synapse_spikes[12]), .w_init(w_init[38:36]), .inc(inc[12]), .dec(
        dec[12]), .clk(n10), .grst(n2), .rstb(n7), .w_out(weights[38:36]), 
        .syn_out(syn_out[12]), .id({SYNOPSYS_UNCONNECTED_90, 
        SYNOPSYS_UNCONNECTED_91, SYNOPSYS_UNCONNECTED_92, 
        SYNOPSYS_UNCONNECTED_93}) );
  mux_00000004_1_2 synloop_13__mux_inst ( .in(input_spikes), .sel({1'b0, 
        sel_ip[20]}), .out(synapse_spikes[13]) );
  fsm_synapse_00000003_13_00000010_00000004 synloop_13__syn ( .input_spike(
        synapse_spikes[13]), .w_init(w_init[41:39]), .inc(inc[13]), .dec(
        dec[13]), .clk(n11), .grst(n2), .rstb(n7), .w_out(weights[41:39]), 
        .syn_out(syn_out[13]), .id({SYNOPSYS_UNCONNECTED_94, 
        SYNOPSYS_UNCONNECTED_95, SYNOPSYS_UNCONNECTED_96, 
        SYNOPSYS_UNCONNECTED_97}) );
  mux_00000004_1_1 synloop_14__mux_inst ( .in(input_spikes), .sel({sel_ip[21], 
        1'b0}), .out(synapse_spikes[14]) );
  fsm_synapse_00000003_14_00000010_00000004 synloop_14__syn ( .input_spike(
        synapse_spikes[14]), .w_init(w_init[44:42]), .inc(inc[14]), .dec(
        dec[14]), .clk(n11), .grst(n2), .rstb(n7), .w_out(weights[44:42]), 
        .syn_out(syn_out[14]), .id({SYNOPSYS_UNCONNECTED_98, 
        SYNOPSYS_UNCONNECTED_99, SYNOPSYS_UNCONNECTED_100, 
        SYNOPSYS_UNCONNECTED_101}) );
  mux_00000004_1_0 synloop_15__mux_inst ( .in(input_spikes), .sel(
        sel_ip[23:22]), .out(synapse_spikes[15]) );
  fsm_synapse_00000003_15_00000010_00000004 synloop_15__syn ( .input_spike(
        synapse_spikes[15]), .w_init(w_init[47:45]), .inc(inc[15]), .dec(
        dec[15]), .clk(n11), .grst(n2), .rstb(n7), .w_out(weights[47:45]), 
        .syn_out(syn_out[15]), .id({SYNOPSYS_UNCONNECTED_102, 
        SYNOPSYS_UNCONNECTED_103, SYNOPSYS_UNCONNECTED_104, 
        SYNOPSYS_UNCONNECTED_105}) );
  wta_00000004 li ( .ec_spikes(ec_spikes), .clk(n9), .grst(n2), .rstb(n7), 
        .li_out(output_spikes) );
  pulse2edge_24 edge_output_gen_0__pe_out ( .pulse_in(output_spikes[0]), .clk(
        n11), .grst(grst), .rstb(n8), .edge_out(eout[0]) );
  pulse2edge_23 edge_output_gen_1__pe_out ( .pulse_in(output_spikes[1]), .clk(
        n11), .grst(grst), .rstb(n8), .edge_out(eout[1]) );
  pulse2edge_22 edge_output_gen_2__pe_out ( .pulse_in(output_spikes[2]), .clk(
        n11), .grst(grst), .rstb(n8), .edge_out(eout[2]) );
  pulse2edge_21 edge_output_gen_3__pe_out ( .pulse_in(output_spikes[3]), .clk(
        n11), .grst(grst), .rstb(n8), .edge_out(eout[3]) );
  stdp_15 stdplogic1_0__s0 ( .weight_in(weights[2:0]), .ein(e_in_map[0]), 
        .eout(e_out_map[0]), .capture_brv(capture_brv[0]), .minus_brv(
        minus_brv[0]), .search_brv(search_brv[0]), .backoff_brv(backoff_brv[0]), .min_brv(min_brv[0]), .F_brv(F_brv[5:0]), .clk(n11), .grst(grst), .rstb(n8), 
        .inc(inc[0]), .dec(dec[0]) );
  stdp_14 stdplogic1_1__s0 ( .weight_in(weights[5:3]), .ein(e_in_map[1]), 
        .eout(e_out_map[1]), .capture_brv(capture_brv[1]), .minus_brv(
        minus_brv[1]), .search_brv(search_brv[1]), .backoff_brv(backoff_brv[1]), .min_brv(min_brv[1]), .F_brv(F_brv[11:6]), .clk(n11), .grst(grst), .rstb(n7), 
        .inc(inc[1]), .dec(dec[1]) );
  stdp_13 stdplogic1_2__s0 ( .weight_in(weights[8:6]), .ein(e_in_map[2]), 
        .eout(e_out_map[2]), .capture_brv(capture_brv[2]), .minus_brv(
        minus_brv[2]), .search_brv(search_brv[2]), .backoff_brv(backoff_brv[2]), .min_brv(min_brv[2]), .F_brv(F_brv[17:12]), .clk(n11), .grst(grst), .rstb(n8), .inc(inc[2]), .dec(dec[2]) );
  stdp_12 stdplogic1_3__s0 ( .weight_in(weights[11:9]), .ein(e_in_map[3]), 
        .eout(e_out_map[3]), .capture_brv(capture_brv[3]), .minus_brv(
        minus_brv[3]), .search_brv(search_brv[3]), .backoff_brv(backoff_brv[3]), .min_brv(min_brv[3]), .F_brv(F_brv[23:18]), .clk(n11), .grst(grst), .rstb(n8), .inc(inc[3]), .dec(dec[3]) );
  stdp_11 stdplogic1_4__s0 ( .weight_in(weights[14:12]), .ein(e_in_map[4]), 
        .eout(e_out_map[4]), .capture_brv(capture_brv[4]), .minus_brv(
        minus_brv[4]), .search_brv(search_brv[4]), .backoff_brv(backoff_brv[4]), .min_brv(min_brv[4]), .F_brv(F_brv[29:24]), .clk(n11), .grst(grst), .rstb(n8), .inc(inc[4]), .dec(dec[4]) );
  stdp_10 stdplogic1_5__s0 ( .weight_in(weights[17:15]), .ein(e_in_map[5]), 
        .eout(e_out_map[5]), .capture_brv(capture_brv[5]), .minus_brv(
        minus_brv[5]), .search_brv(search_brv[5]), .backoff_brv(backoff_brv[5]), .min_brv(min_brv[5]), .F_brv(F_brv[35:30]), .clk(n11), .grst(grst), .rstb(n8), .inc(inc[5]), .dec(dec[5]) );
  stdp_9 stdplogic1_6__s0 ( .weight_in(weights[20:18]), .ein(e_in_map[6]), 
        .eout(e_out_map[6]), .capture_brv(capture_brv[6]), .minus_brv(
        minus_brv[6]), .search_brv(search_brv[6]), .backoff_brv(backoff_brv[6]), .min_brv(min_brv[6]), .F_brv(F_brv[41:36]), .clk(n11), .grst(grst), .rstb(n8), .inc(inc[6]), .dec(dec[6]) );
  stdp_8 stdplogic1_7__s0 ( .weight_in(weights[23:21]), .ein(e_in_map[7]), 
        .eout(e_out_map[7]), .capture_brv(capture_brv[7]), .minus_brv(
        minus_brv[7]), .search_brv(search_brv[7]), .backoff_brv(backoff_brv[7]), .min_brv(min_brv[7]), .F_brv(F_brv[47:42]), .clk(n11), .grst(grst), .rstb(n8), .inc(inc[7]), .dec(dec[7]) );
  stdp_7 stdplogic1_8__s0 ( .weight_in(weights[26:24]), .ein(e_in_map[8]), 
        .eout(e_out_map[8]), .capture_brv(capture_brv[8]), .minus_brv(
        minus_brv[8]), .search_brv(search_brv[8]), .backoff_brv(backoff_brv[8]), .min_brv(min_brv[8]), .F_brv(F_brv[53:48]), .clk(n11), .grst(grst), .rstb(n8), .inc(inc[8]), .dec(dec[8]) );
  stdp_6 stdplogic1_9__s0 ( .weight_in(weights[29:27]), .ein(e_in_map[9]), 
        .eout(e_out_map[9]), .capture_brv(capture_brv[9]), .minus_brv(
        minus_brv[9]), .search_brv(search_brv[9]), .backoff_brv(backoff_brv[9]), .min_brv(min_brv[9]), .F_brv(F_brv[59:54]), .clk(n11), .grst(grst), .rstb(n8), .inc(inc[9]), .dec(dec[9]) );
  stdp_5 stdplogic1_10__s0 ( .weight_in(weights[32:30]), .ein(e_in_map[10]), 
        .eout(e_out_map[10]), .capture_brv(capture_brv[10]), .minus_brv(
        minus_brv[10]), .search_brv(search_brv[10]), .backoff_brv(
        backoff_brv[10]), .min_brv(min_brv[10]), .F_brv(F_brv[65:60]), .clk(
        n11), .grst(grst), .rstb(n8), .inc(inc[10]), .dec(dec[10]) );
  stdp_4 stdplogic1_11__s0 ( .weight_in(weights[35:33]), .ein(e_in_map[11]), 
        .eout(e_out_map[11]), .capture_brv(capture_brv[11]), .minus_brv(
        minus_brv[11]), .search_brv(search_brv[11]), .backoff_brv(
        backoff_brv[11]), .min_brv(min_brv[11]), .F_brv(F_brv[71:66]), .clk(
        n11), .grst(grst), .rstb(n8), .inc(inc[11]), .dec(dec[11]) );
  stdp_3 stdplogic1_12__s0 ( .weight_in(weights[38:36]), .ein(e_in_map[12]), 
        .eout(e_out_map[12]), .capture_brv(capture_brv[12]), .minus_brv(
        minus_brv[12]), .search_brv(search_brv[12]), .backoff_brv(
        backoff_brv[12]), .min_brv(min_brv[12]), .F_brv(F_brv[77:72]), .clk(
        n11), .grst(grst), .rstb(n8), .inc(inc[12]), .dec(dec[12]) );
  stdp_2 stdplogic1_13__s0 ( .weight_in(weights[41:39]), .ein(e_in_map[13]), 
        .eout(e_out_map[13]), .capture_brv(capture_brv[13]), .minus_brv(
        minus_brv[13]), .search_brv(search_brv[13]), .backoff_brv(
        backoff_brv[13]), .min_brv(min_brv[13]), .F_brv(F_brv[83:78]), .clk(
        n11), .grst(grst), .rstb(n8), .inc(inc[13]), .dec(dec[13]) );
  stdp_1 stdplogic1_14__s0 ( .weight_in(weights[44:42]), .ein(e_in_map[14]), 
        .eout(e_out_map[14]), .capture_brv(capture_brv[14]), .minus_brv(
        minus_brv[14]), .search_brv(search_brv[14]), .backoff_brv(
        backoff_brv[14]), .min_brv(min_brv[14]), .F_brv(F_brv[89:84]), .clk(
        n11), .grst(grst), .rstb(n8), .inc(inc[14]), .dec(dec[14]) );
  stdp_0 stdplogic1_15__s0 ( .weight_in(weights[47:45]), .ein(e_in_map[15]), 
        .eout(e_out_map[15]), .capture_brv(capture_brv[15]), .minus_brv(
        minus_brv[15]), .search_brv(search_brv[15]), .backoff_brv(
        backoff_brv[15]), .min_brv(min_brv[15]), .F_brv(F_brv[95:90]), .clk(
        n11), .grst(grst), .rstb(n8), .inc(inc[15]), .dec(dec[15]) );
  BUF_X1 U1 ( .A(rstb), .Z(n3) );
  BUF_X1 U2 ( .A(rstb), .Z(n4) );
  BUF_X2 U3 ( .A(n4), .Z(n7) );
  BUF_X2 U4 ( .A(n3), .Z(n6) );
  BUF_X2 U5 ( .A(n3), .Z(n5) );
  BUF_X1 U6 ( .A(n4), .Z(n8) );
  BUF_X2 U7 ( .A(clk), .Z(n9) );
  BUF_X2 U8 ( .A(clk), .Z(n10) );
  BUF_X2 U9 ( .A(clk), .Z(n11) );
  INV_X1 U10 ( .A(grst), .ZN(n1) );
  INV_X2 U11 ( .A(n1), .ZN(n2) );
endmodule

