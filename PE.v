module PE(
  input         clock,
  input         reset,
  input  [2:0]  io_opcode,
  input  [63:0] io_in_a,
  input  [63:0] io_in_b,
  output [63:0] io_out
);
  wire  _T = 3'h0 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_1 = 3'h1 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T = ~io_in_a; // @[PE.scala 30:29]
  wire  _T_2 = 3'h2 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_1 = io_in_a & io_in_b; // @[PE.scala 31:31]
  wire  _T_3 = 3'h3 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_3 = ~_temp_result_T_1; // @[PE.scala 32:29]
  wire  _T_4 = 3'h4 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_4 = io_in_a | io_in_b; // @[PE.scala 33:31]
  wire  _T_5 = 3'h5 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_6 = ~_temp_result_T_4; // @[PE.scala 34:29]
  wire  _T_6 = 3'h6 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_7 = io_in_a ^ io_in_b; // @[PE.scala 35:31]
  wire  _T_7 = 3'h7 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_9 = ~_temp_result_T_7; // @[PE.scala 36:29]
  wire [63:0] _GEN_0 = _T_7 ? _temp_result_T_9 : 64'h0; // @[Conditional.scala 39:67 PE.scala 36:26 PE.scala 26:15]
  wire [63:0] _GEN_1 = _T_6 ? _temp_result_T_7 : _GEN_0; // @[Conditional.scala 39:67 PE.scala 35:26]
  wire [63:0] _GEN_2 = _T_5 ? _temp_result_T_6 : _GEN_1; // @[Conditional.scala 39:67 PE.scala 34:26]
  wire [63:0] _GEN_3 = _T_4 ? _temp_result_T_4 : _GEN_2; // @[Conditional.scala 39:67 PE.scala 33:26]
  wire [63:0] _GEN_4 = _T_3 ? _temp_result_T_3 : _GEN_3; // @[Conditional.scala 39:67 PE.scala 32:26]
  wire [63:0] _GEN_5 = _T_2 ? _temp_result_T_1 : _GEN_4; // @[Conditional.scala 39:67 PE.scala 31:26]
  wire [63:0] _GEN_6 = _T_1 ? _temp_result_T : _GEN_5; // @[Conditional.scala 39:67 PE.scala 30:26]
  assign io_out = _T ? io_in_a : _GEN_6; // @[Conditional.scala 40:58 PE.scala 29:26]
endmodule
