module ALU(
  input         clock,
  input         reset,
  input  [3:0]  io_opcode,
  input  [63:0] io_in_a,
  input  [63:0] io_in_b,
  output [63:0] io_out_a,
  output [63:0] io_out_b,
  input         io_validin_a,
  input         io_validin_b,
  output        io_validout_a,
  output        io_validout_b
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] regClk3_a_REG; // @[ALU.scala 22:42]
  reg [63:0] regClk3_a_REG_1; // @[ALU.scala 22:34]
  reg [63:0] regClk3_a; // @[ALU.scala 22:26]
  reg [63:0] temp_result_a; // @[ALU.scala 24:30]
  reg [63:0] temp_result_b; // @[ALU.scala 25:30]
  reg  temp_valid_a; // @[ALU.scala 26:29]
  reg  temp_valid_b; // @[ALU.scala 27:29]
  wire  _T = 4'h0 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T = io_in_a & io_in_b; // @[ALU.scala 34:26]
  wire  _T_1 = 4'h1 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_2 = ~_temp_result_a_T; // @[ALU.scala 38:24]
  wire  _T_2 = 4'h2 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_3 = ~io_in_b; // @[ALU.scala 42:28]
  wire [63:0] _temp_result_a_T_4 = io_in_a & _temp_result_a_T_3; // @[ALU.scala 42:26]
  wire  _T_3 = 4'h3 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_5 = io_in_a | io_in_b; // @[ALU.scala 46:26]
  wire  _T_4 = 4'h4 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_7 = ~_temp_result_a_T_5; // @[ALU.scala 50:24]
  wire  _T_5 = 4'h5 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_9 = io_in_a | _temp_result_a_T_3; // @[ALU.scala 54:26]
  wire  _T_6 = 4'h6 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_10 = io_in_a ^ io_in_b; // @[ALU.scala 58:26]
  wire  _T_7 = 4'h7 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_12 = io_in_a ^ _temp_result_a_T_3; // @[ALU.scala 62:26]
  wire  _T_8 = 4'h8 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_13 = regClk3_a & io_in_b; // @[ALU.scala 66:34]
  wire  _T_9 = 4'h9 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_15 = ~_temp_result_a_T_13; // @[ALU.scala 70:24]
  wire  _T_10 = 4'ha == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_17 = regClk3_a & _temp_result_a_T_3; // @[ALU.scala 74:34]
  wire  _T_11 = 4'hb == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_18 = regClk3_a | io_in_b; // @[ALU.scala 78:34]
  wire  _T_12 = 4'hc == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_20 = ~_temp_result_a_T_18; // @[ALU.scala 82:24]
  wire  _T_13 = 4'hd == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_22 = regClk3_a | _temp_result_a_T_3; // @[ALU.scala 86:34]
  wire  _T_14 = 4'he == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_23 = regClk3_a ^ io_in_b; // @[ALU.scala 90:34]
  wire  _T_15 = 4'hf == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_25 = regClk3_a ^ _temp_result_a_T_3; // @[ALU.scala 94:34]
  wire [63:0] _GEN_0 = _T_15 ? _temp_result_a_T_25 : temp_result_a; // @[Conditional.scala 39:67 ALU.scala 94:21 ALU.scala 24:30]
  wire [63:0] _GEN_1 = _T_15 ? _temp_result_a_T_3 : temp_result_b; // @[Conditional.scala 39:67 ALU.scala 95:21 ALU.scala 25:30]
  wire [63:0] _GEN_2 = _T_14 ? _temp_result_a_T_23 : _GEN_0; // @[Conditional.scala 39:67 ALU.scala 90:21]
  wire [63:0] _GEN_3 = _T_14 ? io_in_b : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 91:21]
  wire [63:0] _GEN_4 = _T_13 ? _temp_result_a_T_22 : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 86:21]
  wire [63:0] _GEN_5 = _T_13 ? _temp_result_a_T_3 : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 87:21]
  wire [63:0] _GEN_6 = _T_12 ? _temp_result_a_T_20 : _GEN_4; // @[Conditional.scala 39:67 ALU.scala 82:21]
  wire [63:0] _GEN_7 = _T_12 ? io_in_b : _GEN_5; // @[Conditional.scala 39:67 ALU.scala 83:21]
  wire [63:0] _GEN_8 = _T_11 ? _temp_result_a_T_18 : _GEN_6; // @[Conditional.scala 39:67 ALU.scala 78:21]
  wire [63:0] _GEN_9 = _T_11 ? io_in_b : _GEN_7; // @[Conditional.scala 39:67 ALU.scala 79:21]
  wire [63:0] _GEN_10 = _T_10 ? _temp_result_a_T_17 : _GEN_8; // @[Conditional.scala 39:67 ALU.scala 74:21]
  wire [63:0] _GEN_11 = _T_10 ? _temp_result_a_T_3 : _GEN_9; // @[Conditional.scala 39:67 ALU.scala 75:21]
  wire [63:0] _GEN_12 = _T_9 ? _temp_result_a_T_15 : _GEN_10; // @[Conditional.scala 39:67 ALU.scala 70:21]
  wire [63:0] _GEN_13 = _T_9 ? io_in_b : _GEN_11; // @[Conditional.scala 39:67 ALU.scala 71:21]
  wire [63:0] _GEN_14 = _T_8 ? _temp_result_a_T_13 : _GEN_12; // @[Conditional.scala 39:67 ALU.scala 66:21]
  wire [63:0] _GEN_15 = _T_8 ? io_in_b : _GEN_13; // @[Conditional.scala 39:67 ALU.scala 67:21]
  wire [63:0] _GEN_16 = _T_7 ? _temp_result_a_T_12 : _GEN_14; // @[Conditional.scala 39:67 ALU.scala 62:21]
  wire [63:0] _GEN_17 = _T_7 ? _temp_result_a_T_3 : _GEN_15; // @[Conditional.scala 39:67 ALU.scala 63:21]
  wire [63:0] _GEN_18 = _T_6 ? _temp_result_a_T_10 : _GEN_16; // @[Conditional.scala 39:67 ALU.scala 58:21]
  wire [63:0] _GEN_19 = _T_6 ? io_in_b : _GEN_17; // @[Conditional.scala 39:67 ALU.scala 59:21]
  wire [63:0] _GEN_20 = _T_5 ? _temp_result_a_T_9 : _GEN_18; // @[Conditional.scala 39:67 ALU.scala 54:21]
  wire [63:0] _GEN_21 = _T_5 ? _temp_result_a_T_3 : _GEN_19; // @[Conditional.scala 39:67 ALU.scala 55:21]
  wire [63:0] _GEN_22 = _T_4 ? _temp_result_a_T_7 : _GEN_20; // @[Conditional.scala 39:67 ALU.scala 50:21]
  wire [63:0] _GEN_23 = _T_4 ? io_in_b : _GEN_21; // @[Conditional.scala 39:67 ALU.scala 51:21]
  wire [63:0] _GEN_24 = _T_3 ? _temp_result_a_T_5 : _GEN_22; // @[Conditional.scala 39:67 ALU.scala 46:21]
  wire [63:0] _GEN_25 = _T_3 ? io_in_b : _GEN_23; // @[Conditional.scala 39:67 ALU.scala 47:21]
  assign io_out_a = temp_result_a; // @[ALU.scala 98:12]
  assign io_out_b = temp_result_b; // @[ALU.scala 99:12]
  assign io_validout_a = temp_valid_a; // @[ALU.scala 100:17]
  assign io_validout_b = temp_valid_b; // @[ALU.scala 101:17]
  always @(posedge clock) begin
    regClk3_a_REG <= io_in_a; // @[ALU.scala 22:42]
    regClk3_a_REG_1 <= regClk3_a_REG; // @[ALU.scala 22:34]
    regClk3_a <= regClk3_a_REG_1; // @[ALU.scala 22:26]
    if (reset) begin // @[ALU.scala 24:30]
      temp_result_a <= 64'h0; // @[ALU.scala 24:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result_a <= _temp_result_a_T; // @[ALU.scala 34:21]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result_a <= _temp_result_a_T_2; // @[ALU.scala 38:21]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result_a <= _temp_result_a_T_4; // @[ALU.scala 42:21]
    end else begin
      temp_result_a <= _GEN_24;
    end
    if (reset) begin // @[ALU.scala 25:30]
      temp_result_b <= 64'h0; // @[ALU.scala 25:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result_b <= io_in_b; // @[ALU.scala 35:21]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result_b <= io_in_b; // @[ALU.scala 39:21]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result_b <= _temp_result_a_T_3; // @[ALU.scala 43:21]
    end else begin
      temp_result_b <= _GEN_25;
    end
    if (reset) begin // @[ALU.scala 26:29]
      temp_valid_a <= 1'h0; // @[ALU.scala 26:29]
    end else begin
      temp_valid_a <= io_validin_a; // @[ALU.scala 29:16]
    end
    if (reset) begin // @[ALU.scala 27:29]
      temp_valid_b <= 1'h0; // @[ALU.scala 27:29]
    end else begin
      temp_valid_b <= io_validin_b; // @[ALU.scala 30:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  regClk3_a_REG = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  regClk3_a_REG_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  regClk3_a = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  temp_result_a = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  temp_result_b = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  temp_valid_a = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  temp_valid_b = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PEcol(
  input          clock,
  input          reset,
  input  [63:0]  io_d_in_0_a,
  input          io_d_in_0_valid_a,
  input  [63:0]  io_d_in_0_b,
  input          io_d_in_0_valid_b,
  input  [63:0]  io_d_in_1_a,
  input          io_d_in_1_valid_a,
  input  [63:0]  io_d_in_1_b,
  input          io_d_in_1_valid_b,
  input  [63:0]  io_d_in_2_a,
  input          io_d_in_2_valid_a,
  input  [63:0]  io_d_in_2_b,
  input          io_d_in_2_valid_b,
  input  [63:0]  io_d_in_3_a,
  input          io_d_in_3_valid_a,
  input  [63:0]  io_d_in_3_b,
  input          io_d_in_3_valid_b,
  input  [63:0]  io_d_in_4_a,
  input          io_d_in_4_valid_a,
  input  [63:0]  io_d_in_4_b,
  input          io_d_in_4_valid_b,
  input  [63:0]  io_d_in_5_a,
  input          io_d_in_5_valid_a,
  input  [63:0]  io_d_in_5_b,
  input          io_d_in_5_valid_b,
  input  [63:0]  io_d_in_6_a,
  input          io_d_in_6_valid_a,
  input  [63:0]  io_d_in_6_b,
  input          io_d_in_6_valid_b,
  input  [63:0]  io_d_in_7_a,
  input          io_d_in_7_valid_a,
  input  [63:0]  io_d_in_7_b,
  input          io_d_in_7_valid_b,
  input  [63:0]  io_d_in_8_a,
  input          io_d_in_8_valid_a,
  input  [63:0]  io_d_in_8_b,
  input          io_d_in_8_valid_b,
  input  [63:0]  io_d_in_9_a,
  input          io_d_in_9_valid_a,
  input  [63:0]  io_d_in_9_b,
  input          io_d_in_9_valid_b,
  input  [63:0]  io_d_in_10_a,
  input          io_d_in_10_valid_a,
  input  [63:0]  io_d_in_10_b,
  input          io_d_in_10_valid_b,
  input  [63:0]  io_d_in_11_a,
  input          io_d_in_11_valid_a,
  input  [63:0]  io_d_in_11_b,
  input          io_d_in_11_valid_b,
  input  [63:0]  io_d_in_12_a,
  input          io_d_in_12_valid_a,
  input  [63:0]  io_d_in_12_b,
  input          io_d_in_12_valid_b,
  input  [63:0]  io_d_in_13_a,
  input          io_d_in_13_valid_a,
  input  [63:0]  io_d_in_13_b,
  input          io_d_in_13_valid_b,
  input  [63:0]  io_d_in_14_a,
  input          io_d_in_14_valid_a,
  input  [63:0]  io_d_in_14_b,
  input          io_d_in_14_valid_b,
  input  [63:0]  io_d_in_15_a,
  input          io_d_in_15_valid_a,
  input  [63:0]  io_d_in_15_b,
  input          io_d_in_15_valid_b,
  input  [63:0]  io_d_in_16_a,
  input          io_d_in_16_valid_a,
  input  [63:0]  io_d_in_16_b,
  input          io_d_in_16_valid_b,
  input  [63:0]  io_d_in_17_a,
  input          io_d_in_17_valid_a,
  input  [63:0]  io_d_in_17_b,
  input          io_d_in_17_valid_b,
  input  [63:0]  io_d_in_18_a,
  input          io_d_in_18_valid_a,
  input  [63:0]  io_d_in_18_b,
  input          io_d_in_18_valid_b,
  input  [63:0]  io_d_in_19_a,
  input          io_d_in_19_valid_a,
  input  [63:0]  io_d_in_19_b,
  input          io_d_in_19_valid_b,
  input  [63:0]  io_d_in_20_a,
  input          io_d_in_20_valid_a,
  input  [63:0]  io_d_in_20_b,
  input          io_d_in_20_valid_b,
  input  [63:0]  io_d_in_21_a,
  input          io_d_in_21_valid_a,
  input  [63:0]  io_d_in_21_b,
  input          io_d_in_21_valid_b,
  input  [63:0]  io_d_in_22_a,
  input          io_d_in_22_valid_a,
  input  [63:0]  io_d_in_22_b,
  input          io_d_in_22_valid_b,
  input  [63:0]  io_d_in_23_a,
  input          io_d_in_23_valid_a,
  input  [63:0]  io_d_in_23_b,
  input          io_d_in_23_valid_b,
  input  [63:0]  io_d_in_24_a,
  input          io_d_in_24_valid_a,
  input  [63:0]  io_d_in_24_b,
  input          io_d_in_24_valid_b,
  input  [63:0]  io_d_in_25_a,
  input          io_d_in_25_valid_a,
  input  [63:0]  io_d_in_25_b,
  input          io_d_in_25_valid_b,
  input  [63:0]  io_d_in_26_a,
  input          io_d_in_26_valid_a,
  input  [63:0]  io_d_in_26_b,
  input          io_d_in_26_valid_b,
  input  [63:0]  io_d_in_27_a,
  input          io_d_in_27_valid_a,
  input  [63:0]  io_d_in_27_b,
  input          io_d_in_27_valid_b,
  input  [63:0]  io_d_in_28_a,
  input          io_d_in_28_valid_a,
  input  [63:0]  io_d_in_28_b,
  input          io_d_in_28_valid_b,
  input  [63:0]  io_d_in_29_a,
  input          io_d_in_29_valid_a,
  input  [63:0]  io_d_in_29_b,
  input          io_d_in_29_valid_b,
  input  [63:0]  io_d_in_30_a,
  input          io_d_in_30_valid_a,
  input  [63:0]  io_d_in_30_b,
  input          io_d_in_30_valid_b,
  input  [63:0]  io_d_in_31_a,
  input          io_d_in_31_valid_a,
  input  [63:0]  io_d_in_31_b,
  input          io_d_in_31_valid_b,
  output [63:0]  io_d_out_0_a,
  output         io_d_out_0_valid_a,
  output [63:0]  io_d_out_0_b,
  output         io_d_out_0_valid_b,
  output [63:0]  io_d_out_1_a,
  output         io_d_out_1_valid_a,
  output [63:0]  io_d_out_1_b,
  output         io_d_out_1_valid_b,
  output [63:0]  io_d_out_2_a,
  output         io_d_out_2_valid_a,
  output [63:0]  io_d_out_2_b,
  output         io_d_out_2_valid_b,
  output [63:0]  io_d_out_3_a,
  output         io_d_out_3_valid_a,
  output [63:0]  io_d_out_3_b,
  output         io_d_out_3_valid_b,
  output [63:0]  io_d_out_4_a,
  output         io_d_out_4_valid_a,
  output [63:0]  io_d_out_4_b,
  output         io_d_out_4_valid_b,
  output [63:0]  io_d_out_5_a,
  output         io_d_out_5_valid_a,
  output [63:0]  io_d_out_5_b,
  output         io_d_out_5_valid_b,
  output [63:0]  io_d_out_6_a,
  output         io_d_out_6_valid_a,
  output [63:0]  io_d_out_6_b,
  output         io_d_out_6_valid_b,
  output [63:0]  io_d_out_7_a,
  output         io_d_out_7_valid_a,
  output [63:0]  io_d_out_7_b,
  output         io_d_out_7_valid_b,
  output [63:0]  io_d_out_8_a,
  output         io_d_out_8_valid_a,
  output [63:0]  io_d_out_8_b,
  output         io_d_out_8_valid_b,
  output [63:0]  io_d_out_9_a,
  output         io_d_out_9_valid_a,
  output [63:0]  io_d_out_9_b,
  output         io_d_out_9_valid_b,
  output [63:0]  io_d_out_10_a,
  output         io_d_out_10_valid_a,
  output [63:0]  io_d_out_10_b,
  output         io_d_out_10_valid_b,
  output [63:0]  io_d_out_11_a,
  output         io_d_out_11_valid_a,
  output [63:0]  io_d_out_11_b,
  output         io_d_out_11_valid_b,
  output [63:0]  io_d_out_12_a,
  output         io_d_out_12_valid_a,
  output [63:0]  io_d_out_12_b,
  output         io_d_out_12_valid_b,
  output [63:0]  io_d_out_13_a,
  output         io_d_out_13_valid_a,
  output [63:0]  io_d_out_13_b,
  output         io_d_out_13_valid_b,
  output [63:0]  io_d_out_14_a,
  output         io_d_out_14_valid_a,
  output [63:0]  io_d_out_14_b,
  output         io_d_out_14_valid_b,
  output [63:0]  io_d_out_15_a,
  output         io_d_out_15_valid_a,
  output [63:0]  io_d_out_15_b,
  output         io_d_out_15_valid_b,
  output [63:0]  io_d_out_16_a,
  output         io_d_out_16_valid_a,
  output [63:0]  io_d_out_16_b,
  output         io_d_out_16_valid_b,
  output [63:0]  io_d_out_17_a,
  output         io_d_out_17_valid_a,
  output [63:0]  io_d_out_17_b,
  output         io_d_out_17_valid_b,
  output [63:0]  io_d_out_18_a,
  output         io_d_out_18_valid_a,
  output [63:0]  io_d_out_18_b,
  output         io_d_out_18_valid_b,
  output [63:0]  io_d_out_19_a,
  output         io_d_out_19_valid_a,
  output [63:0]  io_d_out_19_b,
  output         io_d_out_19_valid_b,
  output [63:0]  io_d_out_20_a,
  output         io_d_out_20_valid_a,
  output [63:0]  io_d_out_20_b,
  output         io_d_out_20_valid_b,
  output [63:0]  io_d_out_21_a,
  output         io_d_out_21_valid_a,
  output [63:0]  io_d_out_21_b,
  output         io_d_out_21_valid_b,
  output [63:0]  io_d_out_22_a,
  output         io_d_out_22_valid_a,
  output [63:0]  io_d_out_22_b,
  output         io_d_out_22_valid_b,
  output [63:0]  io_d_out_23_a,
  output         io_d_out_23_valid_a,
  output [63:0]  io_d_out_23_b,
  output         io_d_out_23_valid_b,
  output [63:0]  io_d_out_24_a,
  output         io_d_out_24_valid_a,
  output [63:0]  io_d_out_24_b,
  output         io_d_out_24_valid_b,
  output [63:0]  io_d_out_25_a,
  output         io_d_out_25_valid_a,
  output [63:0]  io_d_out_25_b,
  output         io_d_out_25_valid_b,
  output [63:0]  io_d_out_26_a,
  output         io_d_out_26_valid_a,
  output [63:0]  io_d_out_26_b,
  output         io_d_out_26_valid_b,
  output [63:0]  io_d_out_27_a,
  output         io_d_out_27_valid_a,
  output [63:0]  io_d_out_27_b,
  output         io_d_out_27_valid_b,
  output [63:0]  io_d_out_28_a,
  output         io_d_out_28_valid_a,
  output [63:0]  io_d_out_28_b,
  output         io_d_out_28_valid_b,
  output [63:0]  io_d_out_29_a,
  output         io_d_out_29_valid_a,
  output [63:0]  io_d_out_29_b,
  output         io_d_out_29_valid_b,
  output [63:0]  io_d_out_30_a,
  output         io_d_out_30_valid_a,
  output [63:0]  io_d_out_30_b,
  output         io_d_out_30_valid_b,
  output [63:0]  io_d_out_31_a,
  output         io_d_out_31_valid_a,
  output [63:0]  io_d_out_31_b,
  output         io_d_out_31_valid_b,
  input  [127:0] io_instr
);
  wire  ALU64_32_0_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_0_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_0_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_0_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_0_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_0_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_0_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_0_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_0_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_0_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_0_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_1_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_1_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_1_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_1_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_1_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_1_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_1_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_1_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_1_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_1_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_1_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_2_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_2_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_2_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_2_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_2_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_2_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_2_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_2_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_2_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_2_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_2_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_3_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_3_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_3_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_3_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_3_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_3_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_3_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_3_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_3_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_3_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_3_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_4_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_4_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_4_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_4_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_4_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_4_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_4_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_4_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_4_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_4_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_4_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_5_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_5_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_5_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_5_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_5_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_5_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_5_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_5_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_5_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_5_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_5_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_6_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_6_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_6_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_6_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_6_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_6_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_6_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_6_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_6_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_6_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_6_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_7_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_7_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_7_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_7_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_7_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_7_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_7_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_7_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_7_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_7_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_7_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_8_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_8_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_8_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_8_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_8_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_8_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_8_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_8_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_8_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_8_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_8_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_9_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_9_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_9_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_9_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_9_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_9_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_9_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_9_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_9_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_9_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_9_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_10_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_10_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_10_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_10_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_10_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_10_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_10_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_10_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_10_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_10_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_10_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_11_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_11_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_11_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_11_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_11_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_11_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_11_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_11_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_11_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_11_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_11_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_12_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_12_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_12_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_12_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_12_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_12_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_12_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_12_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_12_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_12_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_12_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_13_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_13_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_13_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_13_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_13_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_13_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_13_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_13_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_13_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_13_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_13_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_14_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_14_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_14_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_14_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_14_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_14_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_14_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_14_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_14_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_14_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_14_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_15_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_15_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_15_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_15_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_15_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_15_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_15_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_15_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_15_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_15_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_15_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_16_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_16_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_16_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_16_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_16_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_16_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_16_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_16_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_16_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_16_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_16_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_17_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_17_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_17_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_17_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_17_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_17_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_17_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_17_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_17_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_17_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_17_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_18_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_18_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_18_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_18_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_18_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_18_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_18_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_18_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_18_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_18_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_18_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_19_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_19_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_19_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_19_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_19_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_19_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_19_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_19_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_19_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_19_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_19_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_20_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_20_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_20_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_20_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_20_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_20_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_20_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_20_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_20_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_20_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_20_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_21_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_21_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_21_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_21_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_21_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_21_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_21_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_21_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_21_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_21_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_21_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_22_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_22_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_22_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_22_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_22_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_22_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_22_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_22_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_22_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_22_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_22_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_23_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_23_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_23_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_23_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_23_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_23_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_23_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_23_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_23_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_23_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_23_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_24_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_24_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_24_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_24_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_24_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_24_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_24_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_24_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_24_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_24_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_24_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_25_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_25_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_25_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_25_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_25_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_25_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_25_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_25_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_25_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_25_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_25_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_26_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_26_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_26_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_26_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_26_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_26_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_26_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_26_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_26_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_26_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_26_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_27_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_27_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_27_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_27_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_27_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_27_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_27_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_27_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_27_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_27_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_27_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_28_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_28_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_28_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_28_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_28_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_28_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_28_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_28_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_28_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_28_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_28_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_29_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_29_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_29_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_29_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_29_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_29_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_29_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_29_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_29_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_29_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_29_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_30_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_30_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_30_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_30_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_30_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_30_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_30_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_30_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_30_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_30_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_30_io_validout_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_31_clock; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_31_reset; // @[BuildingBlock.scala 167:52]
  wire [3:0] ALU64_32_31_io_opcode; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_31_io_in_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_31_io_in_b; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_31_io_out_a; // @[BuildingBlock.scala 167:52]
  wire [63:0] ALU64_32_31_io_out_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_31_io_validin_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_31_io_validin_b; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_31_io_validout_a; // @[BuildingBlock.scala 167:52]
  wire  ALU64_32_31_io_validout_b; // @[BuildingBlock.scala 167:52]
  ALU ALU64_32_0 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_0_clock),
    .reset(ALU64_32_0_reset),
    .io_opcode(ALU64_32_0_io_opcode),
    .io_in_a(ALU64_32_0_io_in_a),
    .io_in_b(ALU64_32_0_io_in_b),
    .io_out_a(ALU64_32_0_io_out_a),
    .io_out_b(ALU64_32_0_io_out_b),
    .io_validin_a(ALU64_32_0_io_validin_a),
    .io_validin_b(ALU64_32_0_io_validin_b),
    .io_validout_a(ALU64_32_0_io_validout_a),
    .io_validout_b(ALU64_32_0_io_validout_b)
  );
  ALU ALU64_32_1 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_1_clock),
    .reset(ALU64_32_1_reset),
    .io_opcode(ALU64_32_1_io_opcode),
    .io_in_a(ALU64_32_1_io_in_a),
    .io_in_b(ALU64_32_1_io_in_b),
    .io_out_a(ALU64_32_1_io_out_a),
    .io_out_b(ALU64_32_1_io_out_b),
    .io_validin_a(ALU64_32_1_io_validin_a),
    .io_validin_b(ALU64_32_1_io_validin_b),
    .io_validout_a(ALU64_32_1_io_validout_a),
    .io_validout_b(ALU64_32_1_io_validout_b)
  );
  ALU ALU64_32_2 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_2_clock),
    .reset(ALU64_32_2_reset),
    .io_opcode(ALU64_32_2_io_opcode),
    .io_in_a(ALU64_32_2_io_in_a),
    .io_in_b(ALU64_32_2_io_in_b),
    .io_out_a(ALU64_32_2_io_out_a),
    .io_out_b(ALU64_32_2_io_out_b),
    .io_validin_a(ALU64_32_2_io_validin_a),
    .io_validin_b(ALU64_32_2_io_validin_b),
    .io_validout_a(ALU64_32_2_io_validout_a),
    .io_validout_b(ALU64_32_2_io_validout_b)
  );
  ALU ALU64_32_3 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_3_clock),
    .reset(ALU64_32_3_reset),
    .io_opcode(ALU64_32_3_io_opcode),
    .io_in_a(ALU64_32_3_io_in_a),
    .io_in_b(ALU64_32_3_io_in_b),
    .io_out_a(ALU64_32_3_io_out_a),
    .io_out_b(ALU64_32_3_io_out_b),
    .io_validin_a(ALU64_32_3_io_validin_a),
    .io_validin_b(ALU64_32_3_io_validin_b),
    .io_validout_a(ALU64_32_3_io_validout_a),
    .io_validout_b(ALU64_32_3_io_validout_b)
  );
  ALU ALU64_32_4 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_4_clock),
    .reset(ALU64_32_4_reset),
    .io_opcode(ALU64_32_4_io_opcode),
    .io_in_a(ALU64_32_4_io_in_a),
    .io_in_b(ALU64_32_4_io_in_b),
    .io_out_a(ALU64_32_4_io_out_a),
    .io_out_b(ALU64_32_4_io_out_b),
    .io_validin_a(ALU64_32_4_io_validin_a),
    .io_validin_b(ALU64_32_4_io_validin_b),
    .io_validout_a(ALU64_32_4_io_validout_a),
    .io_validout_b(ALU64_32_4_io_validout_b)
  );
  ALU ALU64_32_5 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_5_clock),
    .reset(ALU64_32_5_reset),
    .io_opcode(ALU64_32_5_io_opcode),
    .io_in_a(ALU64_32_5_io_in_a),
    .io_in_b(ALU64_32_5_io_in_b),
    .io_out_a(ALU64_32_5_io_out_a),
    .io_out_b(ALU64_32_5_io_out_b),
    .io_validin_a(ALU64_32_5_io_validin_a),
    .io_validin_b(ALU64_32_5_io_validin_b),
    .io_validout_a(ALU64_32_5_io_validout_a),
    .io_validout_b(ALU64_32_5_io_validout_b)
  );
  ALU ALU64_32_6 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_6_clock),
    .reset(ALU64_32_6_reset),
    .io_opcode(ALU64_32_6_io_opcode),
    .io_in_a(ALU64_32_6_io_in_a),
    .io_in_b(ALU64_32_6_io_in_b),
    .io_out_a(ALU64_32_6_io_out_a),
    .io_out_b(ALU64_32_6_io_out_b),
    .io_validin_a(ALU64_32_6_io_validin_a),
    .io_validin_b(ALU64_32_6_io_validin_b),
    .io_validout_a(ALU64_32_6_io_validout_a),
    .io_validout_b(ALU64_32_6_io_validout_b)
  );
  ALU ALU64_32_7 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_7_clock),
    .reset(ALU64_32_7_reset),
    .io_opcode(ALU64_32_7_io_opcode),
    .io_in_a(ALU64_32_7_io_in_a),
    .io_in_b(ALU64_32_7_io_in_b),
    .io_out_a(ALU64_32_7_io_out_a),
    .io_out_b(ALU64_32_7_io_out_b),
    .io_validin_a(ALU64_32_7_io_validin_a),
    .io_validin_b(ALU64_32_7_io_validin_b),
    .io_validout_a(ALU64_32_7_io_validout_a),
    .io_validout_b(ALU64_32_7_io_validout_b)
  );
  ALU ALU64_32_8 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_8_clock),
    .reset(ALU64_32_8_reset),
    .io_opcode(ALU64_32_8_io_opcode),
    .io_in_a(ALU64_32_8_io_in_a),
    .io_in_b(ALU64_32_8_io_in_b),
    .io_out_a(ALU64_32_8_io_out_a),
    .io_out_b(ALU64_32_8_io_out_b),
    .io_validin_a(ALU64_32_8_io_validin_a),
    .io_validin_b(ALU64_32_8_io_validin_b),
    .io_validout_a(ALU64_32_8_io_validout_a),
    .io_validout_b(ALU64_32_8_io_validout_b)
  );
  ALU ALU64_32_9 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_9_clock),
    .reset(ALU64_32_9_reset),
    .io_opcode(ALU64_32_9_io_opcode),
    .io_in_a(ALU64_32_9_io_in_a),
    .io_in_b(ALU64_32_9_io_in_b),
    .io_out_a(ALU64_32_9_io_out_a),
    .io_out_b(ALU64_32_9_io_out_b),
    .io_validin_a(ALU64_32_9_io_validin_a),
    .io_validin_b(ALU64_32_9_io_validin_b),
    .io_validout_a(ALU64_32_9_io_validout_a),
    .io_validout_b(ALU64_32_9_io_validout_b)
  );
  ALU ALU64_32_10 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_10_clock),
    .reset(ALU64_32_10_reset),
    .io_opcode(ALU64_32_10_io_opcode),
    .io_in_a(ALU64_32_10_io_in_a),
    .io_in_b(ALU64_32_10_io_in_b),
    .io_out_a(ALU64_32_10_io_out_a),
    .io_out_b(ALU64_32_10_io_out_b),
    .io_validin_a(ALU64_32_10_io_validin_a),
    .io_validin_b(ALU64_32_10_io_validin_b),
    .io_validout_a(ALU64_32_10_io_validout_a),
    .io_validout_b(ALU64_32_10_io_validout_b)
  );
  ALU ALU64_32_11 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_11_clock),
    .reset(ALU64_32_11_reset),
    .io_opcode(ALU64_32_11_io_opcode),
    .io_in_a(ALU64_32_11_io_in_a),
    .io_in_b(ALU64_32_11_io_in_b),
    .io_out_a(ALU64_32_11_io_out_a),
    .io_out_b(ALU64_32_11_io_out_b),
    .io_validin_a(ALU64_32_11_io_validin_a),
    .io_validin_b(ALU64_32_11_io_validin_b),
    .io_validout_a(ALU64_32_11_io_validout_a),
    .io_validout_b(ALU64_32_11_io_validout_b)
  );
  ALU ALU64_32_12 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_12_clock),
    .reset(ALU64_32_12_reset),
    .io_opcode(ALU64_32_12_io_opcode),
    .io_in_a(ALU64_32_12_io_in_a),
    .io_in_b(ALU64_32_12_io_in_b),
    .io_out_a(ALU64_32_12_io_out_a),
    .io_out_b(ALU64_32_12_io_out_b),
    .io_validin_a(ALU64_32_12_io_validin_a),
    .io_validin_b(ALU64_32_12_io_validin_b),
    .io_validout_a(ALU64_32_12_io_validout_a),
    .io_validout_b(ALU64_32_12_io_validout_b)
  );
  ALU ALU64_32_13 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_13_clock),
    .reset(ALU64_32_13_reset),
    .io_opcode(ALU64_32_13_io_opcode),
    .io_in_a(ALU64_32_13_io_in_a),
    .io_in_b(ALU64_32_13_io_in_b),
    .io_out_a(ALU64_32_13_io_out_a),
    .io_out_b(ALU64_32_13_io_out_b),
    .io_validin_a(ALU64_32_13_io_validin_a),
    .io_validin_b(ALU64_32_13_io_validin_b),
    .io_validout_a(ALU64_32_13_io_validout_a),
    .io_validout_b(ALU64_32_13_io_validout_b)
  );
  ALU ALU64_32_14 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_14_clock),
    .reset(ALU64_32_14_reset),
    .io_opcode(ALU64_32_14_io_opcode),
    .io_in_a(ALU64_32_14_io_in_a),
    .io_in_b(ALU64_32_14_io_in_b),
    .io_out_a(ALU64_32_14_io_out_a),
    .io_out_b(ALU64_32_14_io_out_b),
    .io_validin_a(ALU64_32_14_io_validin_a),
    .io_validin_b(ALU64_32_14_io_validin_b),
    .io_validout_a(ALU64_32_14_io_validout_a),
    .io_validout_b(ALU64_32_14_io_validout_b)
  );
  ALU ALU64_32_15 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_15_clock),
    .reset(ALU64_32_15_reset),
    .io_opcode(ALU64_32_15_io_opcode),
    .io_in_a(ALU64_32_15_io_in_a),
    .io_in_b(ALU64_32_15_io_in_b),
    .io_out_a(ALU64_32_15_io_out_a),
    .io_out_b(ALU64_32_15_io_out_b),
    .io_validin_a(ALU64_32_15_io_validin_a),
    .io_validin_b(ALU64_32_15_io_validin_b),
    .io_validout_a(ALU64_32_15_io_validout_a),
    .io_validout_b(ALU64_32_15_io_validout_b)
  );
  ALU ALU64_32_16 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_16_clock),
    .reset(ALU64_32_16_reset),
    .io_opcode(ALU64_32_16_io_opcode),
    .io_in_a(ALU64_32_16_io_in_a),
    .io_in_b(ALU64_32_16_io_in_b),
    .io_out_a(ALU64_32_16_io_out_a),
    .io_out_b(ALU64_32_16_io_out_b),
    .io_validin_a(ALU64_32_16_io_validin_a),
    .io_validin_b(ALU64_32_16_io_validin_b),
    .io_validout_a(ALU64_32_16_io_validout_a),
    .io_validout_b(ALU64_32_16_io_validout_b)
  );
  ALU ALU64_32_17 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_17_clock),
    .reset(ALU64_32_17_reset),
    .io_opcode(ALU64_32_17_io_opcode),
    .io_in_a(ALU64_32_17_io_in_a),
    .io_in_b(ALU64_32_17_io_in_b),
    .io_out_a(ALU64_32_17_io_out_a),
    .io_out_b(ALU64_32_17_io_out_b),
    .io_validin_a(ALU64_32_17_io_validin_a),
    .io_validin_b(ALU64_32_17_io_validin_b),
    .io_validout_a(ALU64_32_17_io_validout_a),
    .io_validout_b(ALU64_32_17_io_validout_b)
  );
  ALU ALU64_32_18 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_18_clock),
    .reset(ALU64_32_18_reset),
    .io_opcode(ALU64_32_18_io_opcode),
    .io_in_a(ALU64_32_18_io_in_a),
    .io_in_b(ALU64_32_18_io_in_b),
    .io_out_a(ALU64_32_18_io_out_a),
    .io_out_b(ALU64_32_18_io_out_b),
    .io_validin_a(ALU64_32_18_io_validin_a),
    .io_validin_b(ALU64_32_18_io_validin_b),
    .io_validout_a(ALU64_32_18_io_validout_a),
    .io_validout_b(ALU64_32_18_io_validout_b)
  );
  ALU ALU64_32_19 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_19_clock),
    .reset(ALU64_32_19_reset),
    .io_opcode(ALU64_32_19_io_opcode),
    .io_in_a(ALU64_32_19_io_in_a),
    .io_in_b(ALU64_32_19_io_in_b),
    .io_out_a(ALU64_32_19_io_out_a),
    .io_out_b(ALU64_32_19_io_out_b),
    .io_validin_a(ALU64_32_19_io_validin_a),
    .io_validin_b(ALU64_32_19_io_validin_b),
    .io_validout_a(ALU64_32_19_io_validout_a),
    .io_validout_b(ALU64_32_19_io_validout_b)
  );
  ALU ALU64_32_20 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_20_clock),
    .reset(ALU64_32_20_reset),
    .io_opcode(ALU64_32_20_io_opcode),
    .io_in_a(ALU64_32_20_io_in_a),
    .io_in_b(ALU64_32_20_io_in_b),
    .io_out_a(ALU64_32_20_io_out_a),
    .io_out_b(ALU64_32_20_io_out_b),
    .io_validin_a(ALU64_32_20_io_validin_a),
    .io_validin_b(ALU64_32_20_io_validin_b),
    .io_validout_a(ALU64_32_20_io_validout_a),
    .io_validout_b(ALU64_32_20_io_validout_b)
  );
  ALU ALU64_32_21 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_21_clock),
    .reset(ALU64_32_21_reset),
    .io_opcode(ALU64_32_21_io_opcode),
    .io_in_a(ALU64_32_21_io_in_a),
    .io_in_b(ALU64_32_21_io_in_b),
    .io_out_a(ALU64_32_21_io_out_a),
    .io_out_b(ALU64_32_21_io_out_b),
    .io_validin_a(ALU64_32_21_io_validin_a),
    .io_validin_b(ALU64_32_21_io_validin_b),
    .io_validout_a(ALU64_32_21_io_validout_a),
    .io_validout_b(ALU64_32_21_io_validout_b)
  );
  ALU ALU64_32_22 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_22_clock),
    .reset(ALU64_32_22_reset),
    .io_opcode(ALU64_32_22_io_opcode),
    .io_in_a(ALU64_32_22_io_in_a),
    .io_in_b(ALU64_32_22_io_in_b),
    .io_out_a(ALU64_32_22_io_out_a),
    .io_out_b(ALU64_32_22_io_out_b),
    .io_validin_a(ALU64_32_22_io_validin_a),
    .io_validin_b(ALU64_32_22_io_validin_b),
    .io_validout_a(ALU64_32_22_io_validout_a),
    .io_validout_b(ALU64_32_22_io_validout_b)
  );
  ALU ALU64_32_23 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_23_clock),
    .reset(ALU64_32_23_reset),
    .io_opcode(ALU64_32_23_io_opcode),
    .io_in_a(ALU64_32_23_io_in_a),
    .io_in_b(ALU64_32_23_io_in_b),
    .io_out_a(ALU64_32_23_io_out_a),
    .io_out_b(ALU64_32_23_io_out_b),
    .io_validin_a(ALU64_32_23_io_validin_a),
    .io_validin_b(ALU64_32_23_io_validin_b),
    .io_validout_a(ALU64_32_23_io_validout_a),
    .io_validout_b(ALU64_32_23_io_validout_b)
  );
  ALU ALU64_32_24 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_24_clock),
    .reset(ALU64_32_24_reset),
    .io_opcode(ALU64_32_24_io_opcode),
    .io_in_a(ALU64_32_24_io_in_a),
    .io_in_b(ALU64_32_24_io_in_b),
    .io_out_a(ALU64_32_24_io_out_a),
    .io_out_b(ALU64_32_24_io_out_b),
    .io_validin_a(ALU64_32_24_io_validin_a),
    .io_validin_b(ALU64_32_24_io_validin_b),
    .io_validout_a(ALU64_32_24_io_validout_a),
    .io_validout_b(ALU64_32_24_io_validout_b)
  );
  ALU ALU64_32_25 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_25_clock),
    .reset(ALU64_32_25_reset),
    .io_opcode(ALU64_32_25_io_opcode),
    .io_in_a(ALU64_32_25_io_in_a),
    .io_in_b(ALU64_32_25_io_in_b),
    .io_out_a(ALU64_32_25_io_out_a),
    .io_out_b(ALU64_32_25_io_out_b),
    .io_validin_a(ALU64_32_25_io_validin_a),
    .io_validin_b(ALU64_32_25_io_validin_b),
    .io_validout_a(ALU64_32_25_io_validout_a),
    .io_validout_b(ALU64_32_25_io_validout_b)
  );
  ALU ALU64_32_26 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_26_clock),
    .reset(ALU64_32_26_reset),
    .io_opcode(ALU64_32_26_io_opcode),
    .io_in_a(ALU64_32_26_io_in_a),
    .io_in_b(ALU64_32_26_io_in_b),
    .io_out_a(ALU64_32_26_io_out_a),
    .io_out_b(ALU64_32_26_io_out_b),
    .io_validin_a(ALU64_32_26_io_validin_a),
    .io_validin_b(ALU64_32_26_io_validin_b),
    .io_validout_a(ALU64_32_26_io_validout_a),
    .io_validout_b(ALU64_32_26_io_validout_b)
  );
  ALU ALU64_32_27 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_27_clock),
    .reset(ALU64_32_27_reset),
    .io_opcode(ALU64_32_27_io_opcode),
    .io_in_a(ALU64_32_27_io_in_a),
    .io_in_b(ALU64_32_27_io_in_b),
    .io_out_a(ALU64_32_27_io_out_a),
    .io_out_b(ALU64_32_27_io_out_b),
    .io_validin_a(ALU64_32_27_io_validin_a),
    .io_validin_b(ALU64_32_27_io_validin_b),
    .io_validout_a(ALU64_32_27_io_validout_a),
    .io_validout_b(ALU64_32_27_io_validout_b)
  );
  ALU ALU64_32_28 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_28_clock),
    .reset(ALU64_32_28_reset),
    .io_opcode(ALU64_32_28_io_opcode),
    .io_in_a(ALU64_32_28_io_in_a),
    .io_in_b(ALU64_32_28_io_in_b),
    .io_out_a(ALU64_32_28_io_out_a),
    .io_out_b(ALU64_32_28_io_out_b),
    .io_validin_a(ALU64_32_28_io_validin_a),
    .io_validin_b(ALU64_32_28_io_validin_b),
    .io_validout_a(ALU64_32_28_io_validout_a),
    .io_validout_b(ALU64_32_28_io_validout_b)
  );
  ALU ALU64_32_29 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_29_clock),
    .reset(ALU64_32_29_reset),
    .io_opcode(ALU64_32_29_io_opcode),
    .io_in_a(ALU64_32_29_io_in_a),
    .io_in_b(ALU64_32_29_io_in_b),
    .io_out_a(ALU64_32_29_io_out_a),
    .io_out_b(ALU64_32_29_io_out_b),
    .io_validin_a(ALU64_32_29_io_validin_a),
    .io_validin_b(ALU64_32_29_io_validin_b),
    .io_validout_a(ALU64_32_29_io_validout_a),
    .io_validout_b(ALU64_32_29_io_validout_b)
  );
  ALU ALU64_32_30 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_30_clock),
    .reset(ALU64_32_30_reset),
    .io_opcode(ALU64_32_30_io_opcode),
    .io_in_a(ALU64_32_30_io_in_a),
    .io_in_b(ALU64_32_30_io_in_b),
    .io_out_a(ALU64_32_30_io_out_a),
    .io_out_b(ALU64_32_30_io_out_b),
    .io_validin_a(ALU64_32_30_io_validin_a),
    .io_validin_b(ALU64_32_30_io_validin_b),
    .io_validout_a(ALU64_32_30_io_validout_a),
    .io_validout_b(ALU64_32_30_io_validout_b)
  );
  ALU ALU64_32_31 ( // @[BuildingBlock.scala 167:52]
    .clock(ALU64_32_31_clock),
    .reset(ALU64_32_31_reset),
    .io_opcode(ALU64_32_31_io_opcode),
    .io_in_a(ALU64_32_31_io_in_a),
    .io_in_b(ALU64_32_31_io_in_b),
    .io_out_a(ALU64_32_31_io_out_a),
    .io_out_b(ALU64_32_31_io_out_b),
    .io_validin_a(ALU64_32_31_io_validin_a),
    .io_validin_b(ALU64_32_31_io_validin_b),
    .io_validout_a(ALU64_32_31_io_validout_a),
    .io_validout_b(ALU64_32_31_io_validout_b)
  );
  assign io_d_out_0_a = ALU64_32_0_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_0_valid_a = ALU64_32_0_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_0_b = ALU64_32_0_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_0_valid_b = ALU64_32_0_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_1_a = ALU64_32_1_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_1_valid_a = ALU64_32_1_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_1_b = ALU64_32_1_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_1_valid_b = ALU64_32_1_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_2_a = ALU64_32_2_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_2_valid_a = ALU64_32_2_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_2_b = ALU64_32_2_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_2_valid_b = ALU64_32_2_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_3_a = ALU64_32_3_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_3_valid_a = ALU64_32_3_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_3_b = ALU64_32_3_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_3_valid_b = ALU64_32_3_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_4_a = ALU64_32_4_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_4_valid_a = ALU64_32_4_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_4_b = ALU64_32_4_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_4_valid_b = ALU64_32_4_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_5_a = ALU64_32_5_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_5_valid_a = ALU64_32_5_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_5_b = ALU64_32_5_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_5_valid_b = ALU64_32_5_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_6_a = ALU64_32_6_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_6_valid_a = ALU64_32_6_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_6_b = ALU64_32_6_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_6_valid_b = ALU64_32_6_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_7_a = ALU64_32_7_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_7_valid_a = ALU64_32_7_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_7_b = ALU64_32_7_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_7_valid_b = ALU64_32_7_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_8_a = ALU64_32_8_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_8_valid_a = ALU64_32_8_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_8_b = ALU64_32_8_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_8_valid_b = ALU64_32_8_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_9_a = ALU64_32_9_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_9_valid_a = ALU64_32_9_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_9_b = ALU64_32_9_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_9_valid_b = ALU64_32_9_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_10_a = ALU64_32_10_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_10_valid_a = ALU64_32_10_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_10_b = ALU64_32_10_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_10_valid_b = ALU64_32_10_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_11_a = ALU64_32_11_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_11_valid_a = ALU64_32_11_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_11_b = ALU64_32_11_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_11_valid_b = ALU64_32_11_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_12_a = ALU64_32_12_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_12_valid_a = ALU64_32_12_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_12_b = ALU64_32_12_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_12_valid_b = ALU64_32_12_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_13_a = ALU64_32_13_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_13_valid_a = ALU64_32_13_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_13_b = ALU64_32_13_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_13_valid_b = ALU64_32_13_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_14_a = ALU64_32_14_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_14_valid_a = ALU64_32_14_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_14_b = ALU64_32_14_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_14_valid_b = ALU64_32_14_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_15_a = ALU64_32_15_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_15_valid_a = ALU64_32_15_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_15_b = ALU64_32_15_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_15_valid_b = ALU64_32_15_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_16_a = ALU64_32_16_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_16_valid_a = ALU64_32_16_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_16_b = ALU64_32_16_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_16_valid_b = ALU64_32_16_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_17_a = ALU64_32_17_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_17_valid_a = ALU64_32_17_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_17_b = ALU64_32_17_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_17_valid_b = ALU64_32_17_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_18_a = ALU64_32_18_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_18_valid_a = ALU64_32_18_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_18_b = ALU64_32_18_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_18_valid_b = ALU64_32_18_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_19_a = ALU64_32_19_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_19_valid_a = ALU64_32_19_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_19_b = ALU64_32_19_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_19_valid_b = ALU64_32_19_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_20_a = ALU64_32_20_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_20_valid_a = ALU64_32_20_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_20_b = ALU64_32_20_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_20_valid_b = ALU64_32_20_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_21_a = ALU64_32_21_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_21_valid_a = ALU64_32_21_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_21_b = ALU64_32_21_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_21_valid_b = ALU64_32_21_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_22_a = ALU64_32_22_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_22_valid_a = ALU64_32_22_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_22_b = ALU64_32_22_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_22_valid_b = ALU64_32_22_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_23_a = ALU64_32_23_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_23_valid_a = ALU64_32_23_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_23_b = ALU64_32_23_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_23_valid_b = ALU64_32_23_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_24_a = ALU64_32_24_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_24_valid_a = ALU64_32_24_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_24_b = ALU64_32_24_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_24_valid_b = ALU64_32_24_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_25_a = ALU64_32_25_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_25_valid_a = ALU64_32_25_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_25_b = ALU64_32_25_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_25_valid_b = ALU64_32_25_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_26_a = ALU64_32_26_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_26_valid_a = ALU64_32_26_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_26_b = ALU64_32_26_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_26_valid_b = ALU64_32_26_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_27_a = ALU64_32_27_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_27_valid_a = ALU64_32_27_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_27_b = ALU64_32_27_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_27_valid_b = ALU64_32_27_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_28_a = ALU64_32_28_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_28_valid_a = ALU64_32_28_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_28_b = ALU64_32_28_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_28_valid_b = ALU64_32_28_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_29_a = ALU64_32_29_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_29_valid_a = ALU64_32_29_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_29_b = ALU64_32_29_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_29_valid_b = ALU64_32_29_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_30_a = ALU64_32_30_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_30_valid_a = ALU64_32_30_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_30_b = ALU64_32_30_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_30_valid_b = ALU64_32_30_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign io_d_out_31_a = ALU64_32_31_io_out_a; // @[BuildingBlock.scala 178:19]
  assign io_d_out_31_valid_a = ALU64_32_31_io_validout_a; // @[BuildingBlock.scala 180:25]
  assign io_d_out_31_b = ALU64_32_31_io_out_b; // @[BuildingBlock.scala 179:19]
  assign io_d_out_31_valid_b = ALU64_32_31_io_validout_b; // @[BuildingBlock.scala 181:25]
  assign ALU64_32_0_clock = clock;
  assign ALU64_32_0_reset = reset;
  assign ALU64_32_0_io_opcode = io_instr[127:124]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_0_io_in_a = io_d_in_0_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_0_io_in_b = io_d_in_0_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_0_io_validin_a = io_d_in_0_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_0_io_validin_b = io_d_in_0_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_1_clock = clock;
  assign ALU64_32_1_reset = reset;
  assign ALU64_32_1_io_opcode = io_instr[123:120]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_1_io_in_a = io_d_in_1_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_1_io_in_b = io_d_in_1_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_1_io_validin_a = io_d_in_1_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_1_io_validin_b = io_d_in_1_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_2_clock = clock;
  assign ALU64_32_2_reset = reset;
  assign ALU64_32_2_io_opcode = io_instr[119:116]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_2_io_in_a = io_d_in_2_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_2_io_in_b = io_d_in_2_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_2_io_validin_a = io_d_in_2_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_2_io_validin_b = io_d_in_2_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_3_clock = clock;
  assign ALU64_32_3_reset = reset;
  assign ALU64_32_3_io_opcode = io_instr[115:112]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_3_io_in_a = io_d_in_3_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_3_io_in_b = io_d_in_3_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_3_io_validin_a = io_d_in_3_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_3_io_validin_b = io_d_in_3_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_4_clock = clock;
  assign ALU64_32_4_reset = reset;
  assign ALU64_32_4_io_opcode = io_instr[111:108]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_4_io_in_a = io_d_in_4_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_4_io_in_b = io_d_in_4_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_4_io_validin_a = io_d_in_4_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_4_io_validin_b = io_d_in_4_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_5_clock = clock;
  assign ALU64_32_5_reset = reset;
  assign ALU64_32_5_io_opcode = io_instr[107:104]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_5_io_in_a = io_d_in_5_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_5_io_in_b = io_d_in_5_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_5_io_validin_a = io_d_in_5_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_5_io_validin_b = io_d_in_5_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_6_clock = clock;
  assign ALU64_32_6_reset = reset;
  assign ALU64_32_6_io_opcode = io_instr[103:100]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_6_io_in_a = io_d_in_6_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_6_io_in_b = io_d_in_6_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_6_io_validin_a = io_d_in_6_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_6_io_validin_b = io_d_in_6_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_7_clock = clock;
  assign ALU64_32_7_reset = reset;
  assign ALU64_32_7_io_opcode = io_instr[99:96]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_7_io_in_a = io_d_in_7_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_7_io_in_b = io_d_in_7_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_7_io_validin_a = io_d_in_7_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_7_io_validin_b = io_d_in_7_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_8_clock = clock;
  assign ALU64_32_8_reset = reset;
  assign ALU64_32_8_io_opcode = io_instr[95:92]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_8_io_in_a = io_d_in_8_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_8_io_in_b = io_d_in_8_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_8_io_validin_a = io_d_in_8_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_8_io_validin_b = io_d_in_8_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_9_clock = clock;
  assign ALU64_32_9_reset = reset;
  assign ALU64_32_9_io_opcode = io_instr[91:88]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_9_io_in_a = io_d_in_9_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_9_io_in_b = io_d_in_9_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_9_io_validin_a = io_d_in_9_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_9_io_validin_b = io_d_in_9_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_10_clock = clock;
  assign ALU64_32_10_reset = reset;
  assign ALU64_32_10_io_opcode = io_instr[87:84]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_10_io_in_a = io_d_in_10_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_10_io_in_b = io_d_in_10_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_10_io_validin_a = io_d_in_10_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_10_io_validin_b = io_d_in_10_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_11_clock = clock;
  assign ALU64_32_11_reset = reset;
  assign ALU64_32_11_io_opcode = io_instr[83:80]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_11_io_in_a = io_d_in_11_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_11_io_in_b = io_d_in_11_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_11_io_validin_a = io_d_in_11_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_11_io_validin_b = io_d_in_11_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_12_clock = clock;
  assign ALU64_32_12_reset = reset;
  assign ALU64_32_12_io_opcode = io_instr[79:76]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_12_io_in_a = io_d_in_12_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_12_io_in_b = io_d_in_12_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_12_io_validin_a = io_d_in_12_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_12_io_validin_b = io_d_in_12_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_13_clock = clock;
  assign ALU64_32_13_reset = reset;
  assign ALU64_32_13_io_opcode = io_instr[75:72]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_13_io_in_a = io_d_in_13_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_13_io_in_b = io_d_in_13_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_13_io_validin_a = io_d_in_13_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_13_io_validin_b = io_d_in_13_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_14_clock = clock;
  assign ALU64_32_14_reset = reset;
  assign ALU64_32_14_io_opcode = io_instr[71:68]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_14_io_in_a = io_d_in_14_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_14_io_in_b = io_d_in_14_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_14_io_validin_a = io_d_in_14_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_14_io_validin_b = io_d_in_14_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_15_clock = clock;
  assign ALU64_32_15_reset = reset;
  assign ALU64_32_15_io_opcode = io_instr[67:64]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_15_io_in_a = io_d_in_15_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_15_io_in_b = io_d_in_15_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_15_io_validin_a = io_d_in_15_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_15_io_validin_b = io_d_in_15_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_16_clock = clock;
  assign ALU64_32_16_reset = reset;
  assign ALU64_32_16_io_opcode = io_instr[63:60]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_16_io_in_a = io_d_in_16_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_16_io_in_b = io_d_in_16_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_16_io_validin_a = io_d_in_16_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_16_io_validin_b = io_d_in_16_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_17_clock = clock;
  assign ALU64_32_17_reset = reset;
  assign ALU64_32_17_io_opcode = io_instr[59:56]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_17_io_in_a = io_d_in_17_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_17_io_in_b = io_d_in_17_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_17_io_validin_a = io_d_in_17_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_17_io_validin_b = io_d_in_17_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_18_clock = clock;
  assign ALU64_32_18_reset = reset;
  assign ALU64_32_18_io_opcode = io_instr[55:52]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_18_io_in_a = io_d_in_18_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_18_io_in_b = io_d_in_18_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_18_io_validin_a = io_d_in_18_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_18_io_validin_b = io_d_in_18_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_19_clock = clock;
  assign ALU64_32_19_reset = reset;
  assign ALU64_32_19_io_opcode = io_instr[51:48]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_19_io_in_a = io_d_in_19_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_19_io_in_b = io_d_in_19_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_19_io_validin_a = io_d_in_19_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_19_io_validin_b = io_d_in_19_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_20_clock = clock;
  assign ALU64_32_20_reset = reset;
  assign ALU64_32_20_io_opcode = io_instr[47:44]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_20_io_in_a = io_d_in_20_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_20_io_in_b = io_d_in_20_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_20_io_validin_a = io_d_in_20_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_20_io_validin_b = io_d_in_20_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_21_clock = clock;
  assign ALU64_32_21_reset = reset;
  assign ALU64_32_21_io_opcode = io_instr[43:40]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_21_io_in_a = io_d_in_21_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_21_io_in_b = io_d_in_21_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_21_io_validin_a = io_d_in_21_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_21_io_validin_b = io_d_in_21_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_22_clock = clock;
  assign ALU64_32_22_reset = reset;
  assign ALU64_32_22_io_opcode = io_instr[39:36]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_22_io_in_a = io_d_in_22_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_22_io_in_b = io_d_in_22_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_22_io_validin_a = io_d_in_22_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_22_io_validin_b = io_d_in_22_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_23_clock = clock;
  assign ALU64_32_23_reset = reset;
  assign ALU64_32_23_io_opcode = io_instr[35:32]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_23_io_in_a = io_d_in_23_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_23_io_in_b = io_d_in_23_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_23_io_validin_a = io_d_in_23_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_23_io_validin_b = io_d_in_23_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_24_clock = clock;
  assign ALU64_32_24_reset = reset;
  assign ALU64_32_24_io_opcode = io_instr[31:28]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_24_io_in_a = io_d_in_24_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_24_io_in_b = io_d_in_24_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_24_io_validin_a = io_d_in_24_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_24_io_validin_b = io_d_in_24_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_25_clock = clock;
  assign ALU64_32_25_reset = reset;
  assign ALU64_32_25_io_opcode = io_instr[27:24]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_25_io_in_a = io_d_in_25_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_25_io_in_b = io_d_in_25_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_25_io_validin_a = io_d_in_25_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_25_io_validin_b = io_d_in_25_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_26_clock = clock;
  assign ALU64_32_26_reset = reset;
  assign ALU64_32_26_io_opcode = io_instr[23:20]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_26_io_in_a = io_d_in_26_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_26_io_in_b = io_d_in_26_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_26_io_validin_a = io_d_in_26_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_26_io_validin_b = io_d_in_26_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_27_clock = clock;
  assign ALU64_32_27_reset = reset;
  assign ALU64_32_27_io_opcode = io_instr[19:16]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_27_io_in_a = io_d_in_27_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_27_io_in_b = io_d_in_27_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_27_io_validin_a = io_d_in_27_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_27_io_validin_b = io_d_in_27_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_28_clock = clock;
  assign ALU64_32_28_reset = reset;
  assign ALU64_32_28_io_opcode = io_instr[15:12]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_28_io_in_a = io_d_in_28_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_28_io_in_b = io_d_in_28_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_28_io_validin_a = io_d_in_28_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_28_io_validin_b = io_d_in_28_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_29_clock = clock;
  assign ALU64_32_29_reset = reset;
  assign ALU64_32_29_io_opcode = io_instr[11:8]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_29_io_in_a = io_d_in_29_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_29_io_in_b = io_d_in_29_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_29_io_validin_a = io_d_in_29_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_29_io_validin_b = io_d_in_29_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_30_clock = clock;
  assign ALU64_32_30_reset = reset;
  assign ALU64_32_30_io_opcode = io_instr[7:4]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_30_io_in_a = io_d_in_30_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_30_io_in_b = io_d_in_30_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_30_io_validin_a = io_d_in_30_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_30_io_validin_b = io_d_in_30_valid_b; // @[BuildingBlock.scala 175:30]
  assign ALU64_32_31_clock = clock;
  assign ALU64_32_31_reset = reset;
  assign ALU64_32_31_io_opcode = io_instr[3:0]; // @[BuildingBlock.scala 177:38]
  assign ALU64_32_31_io_in_a = io_d_in_31_a; // @[BuildingBlock.scala 172:25]
  assign ALU64_32_31_io_in_b = io_d_in_31_b; // @[BuildingBlock.scala 173:25]
  assign ALU64_32_31_io_validin_a = io_d_in_31_valid_a; // @[BuildingBlock.scala 174:30]
  assign ALU64_32_31_io_validin_b = io_d_in_31_valid_b; // @[BuildingBlock.scala 175:30]
endmodule
module CrossBarCell(
  input  [64:0] io_fw_left,
  input  [64:0] io_fw_top,
  output [64:0] io_fw_bottom,
  output [64:0] io_fw_right,
  input         io_sel
);
  assign io_fw_bottom = io_sel ? io_fw_left : io_fw_top; // @[CrossBarSwitch.scala 15:17 CrossBarSwitch.scala 16:18 CrossBarSwitch.scala 18:18]
  assign io_fw_right = io_fw_left; // @[CrossBarSwitch.scala 14:15]
endmodule
module CrossBarSwitch(
  input         clock,
  input  [64:0] io_fw_left_0,
  input  [64:0] io_fw_left_1,
  input  [64:0] io_fw_left_2,
  input  [64:0] io_fw_left_3,
  output [64:0] io_fw_bottom_0,
  output [64:0] io_fw_bottom_1,
  output [64:0] io_fw_bottom_2,
  output [64:0] io_fw_bottom_3,
  input  [1:0]  io_select_0,
  input  [1:0]  io_select_1,
  input  [1:0]  io_select_2,
  input  [1:0]  io_select_3
);
`ifdef RANDOMIZE_REG_INIT
  reg [95:0] _RAND_0;
  reg [95:0] _RAND_1;
  reg [95:0] _RAND_2;
  reg [95:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [64:0] cells_2d_0_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_0_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_0_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_0_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_0_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_1_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_1_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_1_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_1_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_1_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_2_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_2_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_2_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_2_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_2_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_3_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_3_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_3_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_3_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_3_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_4_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_4_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_4_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_4_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_4_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_5_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_5_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_5_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_5_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_5_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_6_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_6_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_6_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_6_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_6_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_7_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_7_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_7_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_7_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_7_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_8_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_8_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_8_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_8_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_8_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_9_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_9_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_9_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_9_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_9_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_10_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_10_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_10_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_10_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_10_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_11_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_11_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_11_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_11_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_11_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_12_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_12_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_12_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_12_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_12_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_13_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_13_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_13_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_13_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_13_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_14_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_14_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_14_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_14_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_14_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_15_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_15_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_15_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_15_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_15_io_sel; // @[CrossBarSwitch.scala 37:53]
  reg [64:0] fw_left_reg_0; // @[CrossBarSwitch.scala 33:28]
  reg [64:0] fw_left_reg_1; // @[CrossBarSwitch.scala 33:28]
  reg [64:0] fw_left_reg_2; // @[CrossBarSwitch.scala 33:28]
  reg [64:0] fw_left_reg_3; // @[CrossBarSwitch.scala 33:28]
  wire [3:0] select_onehot_0 = 4'h1 << io_select_0; // @[OneHot.scala 65:12]
  wire [3:0] select_onehot_1 = 4'h1 << io_select_1; // @[OneHot.scala 65:12]
  wire [3:0] select_onehot_2 = 4'h1 << io_select_2; // @[OneHot.scala 65:12]
  wire [3:0] select_onehot_3 = 4'h1 << io_select_3; // @[OneHot.scala 65:12]
  CrossBarCell cells_2d_0 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_0_io_fw_left),
    .io_fw_top(cells_2d_0_io_fw_top),
    .io_fw_bottom(cells_2d_0_io_fw_bottom),
    .io_fw_right(cells_2d_0_io_fw_right),
    .io_sel(cells_2d_0_io_sel)
  );
  CrossBarCell cells_2d_1 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_1_io_fw_left),
    .io_fw_top(cells_2d_1_io_fw_top),
    .io_fw_bottom(cells_2d_1_io_fw_bottom),
    .io_fw_right(cells_2d_1_io_fw_right),
    .io_sel(cells_2d_1_io_sel)
  );
  CrossBarCell cells_2d_2 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_2_io_fw_left),
    .io_fw_top(cells_2d_2_io_fw_top),
    .io_fw_bottom(cells_2d_2_io_fw_bottom),
    .io_fw_right(cells_2d_2_io_fw_right),
    .io_sel(cells_2d_2_io_sel)
  );
  CrossBarCell cells_2d_3 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_3_io_fw_left),
    .io_fw_top(cells_2d_3_io_fw_top),
    .io_fw_bottom(cells_2d_3_io_fw_bottom),
    .io_fw_right(cells_2d_3_io_fw_right),
    .io_sel(cells_2d_3_io_sel)
  );
  CrossBarCell cells_2d_4 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_4_io_fw_left),
    .io_fw_top(cells_2d_4_io_fw_top),
    .io_fw_bottom(cells_2d_4_io_fw_bottom),
    .io_fw_right(cells_2d_4_io_fw_right),
    .io_sel(cells_2d_4_io_sel)
  );
  CrossBarCell cells_2d_5 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_5_io_fw_left),
    .io_fw_top(cells_2d_5_io_fw_top),
    .io_fw_bottom(cells_2d_5_io_fw_bottom),
    .io_fw_right(cells_2d_5_io_fw_right),
    .io_sel(cells_2d_5_io_sel)
  );
  CrossBarCell cells_2d_6 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_6_io_fw_left),
    .io_fw_top(cells_2d_6_io_fw_top),
    .io_fw_bottom(cells_2d_6_io_fw_bottom),
    .io_fw_right(cells_2d_6_io_fw_right),
    .io_sel(cells_2d_6_io_sel)
  );
  CrossBarCell cells_2d_7 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_7_io_fw_left),
    .io_fw_top(cells_2d_7_io_fw_top),
    .io_fw_bottom(cells_2d_7_io_fw_bottom),
    .io_fw_right(cells_2d_7_io_fw_right),
    .io_sel(cells_2d_7_io_sel)
  );
  CrossBarCell cells_2d_8 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_8_io_fw_left),
    .io_fw_top(cells_2d_8_io_fw_top),
    .io_fw_bottom(cells_2d_8_io_fw_bottom),
    .io_fw_right(cells_2d_8_io_fw_right),
    .io_sel(cells_2d_8_io_sel)
  );
  CrossBarCell cells_2d_9 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_9_io_fw_left),
    .io_fw_top(cells_2d_9_io_fw_top),
    .io_fw_bottom(cells_2d_9_io_fw_bottom),
    .io_fw_right(cells_2d_9_io_fw_right),
    .io_sel(cells_2d_9_io_sel)
  );
  CrossBarCell cells_2d_10 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_10_io_fw_left),
    .io_fw_top(cells_2d_10_io_fw_top),
    .io_fw_bottom(cells_2d_10_io_fw_bottom),
    .io_fw_right(cells_2d_10_io_fw_right),
    .io_sel(cells_2d_10_io_sel)
  );
  CrossBarCell cells_2d_11 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_11_io_fw_left),
    .io_fw_top(cells_2d_11_io_fw_top),
    .io_fw_bottom(cells_2d_11_io_fw_bottom),
    .io_fw_right(cells_2d_11_io_fw_right),
    .io_sel(cells_2d_11_io_sel)
  );
  CrossBarCell cells_2d_12 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_12_io_fw_left),
    .io_fw_top(cells_2d_12_io_fw_top),
    .io_fw_bottom(cells_2d_12_io_fw_bottom),
    .io_fw_right(cells_2d_12_io_fw_right),
    .io_sel(cells_2d_12_io_sel)
  );
  CrossBarCell cells_2d_13 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_13_io_fw_left),
    .io_fw_top(cells_2d_13_io_fw_top),
    .io_fw_bottom(cells_2d_13_io_fw_bottom),
    .io_fw_right(cells_2d_13_io_fw_right),
    .io_sel(cells_2d_13_io_sel)
  );
  CrossBarCell cells_2d_14 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_14_io_fw_left),
    .io_fw_top(cells_2d_14_io_fw_top),
    .io_fw_bottom(cells_2d_14_io_fw_bottom),
    .io_fw_right(cells_2d_14_io_fw_right),
    .io_sel(cells_2d_14_io_sel)
  );
  CrossBarCell cells_2d_15 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_15_io_fw_left),
    .io_fw_top(cells_2d_15_io_fw_top),
    .io_fw_bottom(cells_2d_15_io_fw_bottom),
    .io_fw_right(cells_2d_15_io_fw_right),
    .io_sel(cells_2d_15_io_sel)
  );
  assign io_fw_bottom_0 = cells_2d_12_io_fw_bottom; // @[CrossBarSwitch.scala 77:21]
  assign io_fw_bottom_1 = cells_2d_13_io_fw_bottom; // @[CrossBarSwitch.scala 77:21]
  assign io_fw_bottom_2 = cells_2d_14_io_fw_bottom; // @[CrossBarSwitch.scala 77:21]
  assign io_fw_bottom_3 = cells_2d_15_io_fw_bottom; // @[CrossBarSwitch.scala 77:21]
  assign cells_2d_0_io_fw_left = fw_left_reg_0; // @[CrossBarSwitch.scala 62:29]
  assign cells_2d_0_io_fw_top = 65'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_0_io_sel = select_onehot_0[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_1_io_fw_left = cells_2d_0_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_1_io_fw_top = 65'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_1_io_sel = select_onehot_1[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_2_io_fw_left = cells_2d_1_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_2_io_fw_top = 65'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_2_io_sel = select_onehot_2[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_3_io_fw_left = cells_2d_2_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_3_io_fw_top = 65'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_3_io_sel = select_onehot_3[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_4_io_fw_left = fw_left_reg_1; // @[CrossBarSwitch.scala 62:29]
  assign cells_2d_4_io_fw_top = cells_2d_0_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_4_io_sel = select_onehot_0[1]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_5_io_fw_left = cells_2d_4_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_5_io_fw_top = cells_2d_1_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_5_io_sel = select_onehot_1[1]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_6_io_fw_left = cells_2d_5_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_6_io_fw_top = cells_2d_2_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_6_io_sel = select_onehot_2[1]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_7_io_fw_left = cells_2d_6_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_7_io_fw_top = cells_2d_3_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_7_io_sel = select_onehot_3[1]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_8_io_fw_left = fw_left_reg_2; // @[CrossBarSwitch.scala 62:29]
  assign cells_2d_8_io_fw_top = cells_2d_4_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_8_io_sel = select_onehot_0[2]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_9_io_fw_left = cells_2d_8_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_9_io_fw_top = cells_2d_5_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_9_io_sel = select_onehot_1[2]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_10_io_fw_left = cells_2d_9_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_10_io_fw_top = cells_2d_6_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_10_io_sel = select_onehot_2[2]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_11_io_fw_left = cells_2d_10_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_11_io_fw_top = cells_2d_7_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_11_io_sel = select_onehot_3[2]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_12_io_fw_left = fw_left_reg_3; // @[CrossBarSwitch.scala 62:29]
  assign cells_2d_12_io_fw_top = cells_2d_8_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_12_io_sel = select_onehot_0[3]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_13_io_fw_left = cells_2d_12_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_13_io_fw_top = cells_2d_9_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_13_io_sel = select_onehot_1[3]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_14_io_fw_left = cells_2d_13_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_14_io_fw_top = cells_2d_10_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_14_io_sel = select_onehot_2[3]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_15_io_fw_left = cells_2d_14_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_15_io_fw_top = cells_2d_11_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_15_io_sel = select_onehot_3[3]; // @[CrossBarSwitch.scala 70:44]
  always @(posedge clock) begin
    fw_left_reg_0 <= io_fw_left_0; // @[CrossBarSwitch.scala 33:28]
    fw_left_reg_1 <= io_fw_left_1; // @[CrossBarSwitch.scala 33:28]
    fw_left_reg_2 <= io_fw_left_2; // @[CrossBarSwitch.scala 33:28]
    fw_left_reg_3 <= io_fw_left_3; // @[CrossBarSwitch.scala 33:28]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {3{`RANDOM}};
  fw_left_reg_0 = _RAND_0[64:0];
  _RAND_1 = {3{`RANDOM}};
  fw_left_reg_1 = _RAND_1[64:0];
  _RAND_2 = {3{`RANDOM}};
  fw_left_reg_2 = _RAND_2[64:0];
  _RAND_3 = {3{`RANDOM}};
  fw_left_reg_3 = _RAND_3[64:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CLOScell4(
  input         clock,
  input  [64:0] io_in4_0,
  input  [64:0] io_in4_1,
  input  [64:0] io_in4_2,
  input  [64:0] io_in4_3,
  output [64:0] io_out4_0,
  output [64:0] io_out4_1,
  output [64:0] io_out4_2,
  output [64:0] io_out4_3,
  input  [7:0]  io_ctrl
);
  wire  CrossBarSwitch_clock; // @[BuildingBlock.scala 19:21]
  wire [64:0] CrossBarSwitch_io_fw_left_0; // @[BuildingBlock.scala 19:21]
  wire [64:0] CrossBarSwitch_io_fw_left_1; // @[BuildingBlock.scala 19:21]
  wire [64:0] CrossBarSwitch_io_fw_left_2; // @[BuildingBlock.scala 19:21]
  wire [64:0] CrossBarSwitch_io_fw_left_3; // @[BuildingBlock.scala 19:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_0; // @[BuildingBlock.scala 19:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_1; // @[BuildingBlock.scala 19:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_2; // @[BuildingBlock.scala 19:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_3; // @[BuildingBlock.scala 19:21]
  wire [1:0] CrossBarSwitch_io_select_0; // @[BuildingBlock.scala 19:21]
  wire [1:0] CrossBarSwitch_io_select_1; // @[BuildingBlock.scala 19:21]
  wire [1:0] CrossBarSwitch_io_select_2; // @[BuildingBlock.scala 19:21]
  wire [1:0] CrossBarSwitch_io_select_3; // @[BuildingBlock.scala 19:21]
  CrossBarSwitch CrossBarSwitch ( // @[BuildingBlock.scala 19:21]
    .clock(CrossBarSwitch_clock),
    .io_fw_left_0(CrossBarSwitch_io_fw_left_0),
    .io_fw_left_1(CrossBarSwitch_io_fw_left_1),
    .io_fw_left_2(CrossBarSwitch_io_fw_left_2),
    .io_fw_left_3(CrossBarSwitch_io_fw_left_3),
    .io_fw_bottom_0(CrossBarSwitch_io_fw_bottom_0),
    .io_fw_bottom_1(CrossBarSwitch_io_fw_bottom_1),
    .io_fw_bottom_2(CrossBarSwitch_io_fw_bottom_2),
    .io_fw_bottom_3(CrossBarSwitch_io_fw_bottom_3),
    .io_select_0(CrossBarSwitch_io_select_0),
    .io_select_1(CrossBarSwitch_io_select_1),
    .io_select_2(CrossBarSwitch_io_select_2),
    .io_select_3(CrossBarSwitch_io_select_3)
  );
  assign io_out4_0 = CrossBarSwitch_io_fw_bottom_0; // @[BuildingBlock.scala 24:11]
  assign io_out4_1 = CrossBarSwitch_io_fw_bottom_1; // @[BuildingBlock.scala 24:11]
  assign io_out4_2 = CrossBarSwitch_io_fw_bottom_2; // @[BuildingBlock.scala 24:11]
  assign io_out4_3 = CrossBarSwitch_io_fw_bottom_3; // @[BuildingBlock.scala 24:11]
  assign CrossBarSwitch_clock = clock;
  assign CrossBarSwitch_io_fw_left_0 = io_in4_0; // @[BuildingBlock.scala 23:17]
  assign CrossBarSwitch_io_fw_left_1 = io_in4_1; // @[BuildingBlock.scala 23:17]
  assign CrossBarSwitch_io_fw_left_2 = io_in4_2; // @[BuildingBlock.scala 23:17]
  assign CrossBarSwitch_io_fw_left_3 = io_in4_3; // @[BuildingBlock.scala 23:17]
  assign CrossBarSwitch_io_select_0 = io_ctrl[7:6]; // @[BuildingBlock.scala 21:31]
  assign CrossBarSwitch_io_select_1 = io_ctrl[5:4]; // @[BuildingBlock.scala 21:31]
  assign CrossBarSwitch_io_select_2 = io_ctrl[3:2]; // @[BuildingBlock.scala 21:31]
  assign CrossBarSwitch_io_select_3 = io_ctrl[1:0]; // @[BuildingBlock.scala 21:31]
endmodule
module CLOSingress1(
  input          clock,
  input          reset,
  input  [63:0]  io_in64_0,
  input  [63:0]  io_in64_1,
  input  [63:0]  io_in64_2,
  input  [63:0]  io_in64_3,
  input  [63:0]  io_in64_4,
  input  [63:0]  io_in64_5,
  input  [63:0]  io_in64_6,
  input  [63:0]  io_in64_7,
  input  [63:0]  io_in64_8,
  input  [63:0]  io_in64_9,
  input  [63:0]  io_in64_10,
  input  [63:0]  io_in64_11,
  input  [63:0]  io_in64_12,
  input  [63:0]  io_in64_13,
  input  [63:0]  io_in64_14,
  input  [63:0]  io_in64_15,
  input  [63:0]  io_in64_16,
  input  [63:0]  io_in64_17,
  input  [63:0]  io_in64_18,
  input  [63:0]  io_in64_19,
  input  [63:0]  io_in64_20,
  input  [63:0]  io_in64_21,
  input  [63:0]  io_in64_22,
  input  [63:0]  io_in64_23,
  input  [63:0]  io_in64_24,
  input  [63:0]  io_in64_25,
  input  [63:0]  io_in64_26,
  input  [63:0]  io_in64_27,
  input  [63:0]  io_in64_28,
  input  [63:0]  io_in64_29,
  input  [63:0]  io_in64_30,
  input  [63:0]  io_in64_31,
  input  [63:0]  io_in64_32,
  input  [63:0]  io_in64_33,
  input  [63:0]  io_in64_34,
  input  [63:0]  io_in64_35,
  input  [63:0]  io_in64_36,
  input  [63:0]  io_in64_37,
  input  [63:0]  io_in64_38,
  input  [63:0]  io_in64_39,
  input  [63:0]  io_in64_40,
  input  [63:0]  io_in64_41,
  input  [63:0]  io_in64_42,
  input  [63:0]  io_in64_43,
  input  [63:0]  io_in64_44,
  input  [63:0]  io_in64_45,
  input  [63:0]  io_in64_46,
  input  [63:0]  io_in64_47,
  input  [63:0]  io_in64_48,
  input  [63:0]  io_in64_49,
  input  [63:0]  io_in64_50,
  input  [63:0]  io_in64_51,
  input  [63:0]  io_in64_52,
  input  [63:0]  io_in64_53,
  input  [63:0]  io_in64_54,
  input  [63:0]  io_in64_55,
  input  [63:0]  io_in64_56,
  input  [63:0]  io_in64_57,
  input  [63:0]  io_in64_58,
  input  [63:0]  io_in64_59,
  input  [63:0]  io_in64_60,
  input  [63:0]  io_in64_61,
  input  [63:0]  io_in64_62,
  input  [63:0]  io_in64_63,
  input          io_validin64_0,
  input          io_validin64_1,
  input          io_validin64_2,
  input          io_validin64_3,
  input          io_validin64_4,
  input          io_validin64_5,
  input          io_validin64_6,
  input          io_validin64_7,
  input          io_validin64_8,
  input          io_validin64_9,
  input          io_validin64_10,
  input          io_validin64_11,
  input          io_validin64_12,
  input          io_validin64_13,
  input          io_validin64_14,
  input          io_validin64_15,
  input          io_validin64_16,
  input          io_validin64_17,
  input          io_validin64_18,
  input          io_validin64_19,
  input          io_validin64_20,
  input          io_validin64_21,
  input          io_validin64_22,
  input          io_validin64_23,
  input          io_validin64_24,
  input          io_validin64_25,
  input          io_validin64_26,
  input          io_validin64_27,
  input          io_validin64_28,
  input          io_validin64_29,
  input          io_validin64_30,
  input          io_validin64_31,
  input          io_validin64_32,
  input          io_validin64_33,
  input          io_validin64_34,
  input          io_validin64_35,
  input          io_validin64_36,
  input          io_validin64_37,
  input          io_validin64_38,
  input          io_validin64_39,
  input          io_validin64_40,
  input          io_validin64_41,
  input          io_validin64_42,
  input          io_validin64_43,
  input          io_validin64_44,
  input          io_validin64_45,
  input          io_validin64_46,
  input          io_validin64_47,
  input          io_validin64_48,
  input          io_validin64_49,
  input          io_validin64_50,
  input          io_validin64_51,
  input          io_validin64_52,
  input          io_validin64_53,
  input          io_validin64_54,
  input          io_validin64_55,
  input          io_validin64_56,
  input          io_validin64_57,
  input          io_validin64_58,
  input          io_validin64_59,
  input          io_validin64_60,
  input          io_validin64_61,
  input          io_validin64_62,
  input          io_validin64_63,
  output [63:0]  io_out64_0,
  output [63:0]  io_out64_1,
  output [63:0]  io_out64_2,
  output [63:0]  io_out64_3,
  output [63:0]  io_out64_4,
  output [63:0]  io_out64_5,
  output [63:0]  io_out64_6,
  output [63:0]  io_out64_7,
  output [63:0]  io_out64_8,
  output [63:0]  io_out64_9,
  output [63:0]  io_out64_10,
  output [63:0]  io_out64_11,
  output [63:0]  io_out64_12,
  output [63:0]  io_out64_13,
  output [63:0]  io_out64_14,
  output [63:0]  io_out64_15,
  output [63:0]  io_out64_16,
  output [63:0]  io_out64_17,
  output [63:0]  io_out64_18,
  output [63:0]  io_out64_19,
  output [63:0]  io_out64_20,
  output [63:0]  io_out64_21,
  output [63:0]  io_out64_22,
  output [63:0]  io_out64_23,
  output [63:0]  io_out64_24,
  output [63:0]  io_out64_25,
  output [63:0]  io_out64_26,
  output [63:0]  io_out64_27,
  output [63:0]  io_out64_28,
  output [63:0]  io_out64_29,
  output [63:0]  io_out64_30,
  output [63:0]  io_out64_31,
  output [63:0]  io_out64_32,
  output [63:0]  io_out64_33,
  output [63:0]  io_out64_34,
  output [63:0]  io_out64_35,
  output [63:0]  io_out64_36,
  output [63:0]  io_out64_37,
  output [63:0]  io_out64_38,
  output [63:0]  io_out64_39,
  output [63:0]  io_out64_40,
  output [63:0]  io_out64_41,
  output [63:0]  io_out64_42,
  output [63:0]  io_out64_43,
  output [63:0]  io_out64_44,
  output [63:0]  io_out64_45,
  output [63:0]  io_out64_46,
  output [63:0]  io_out64_47,
  output [63:0]  io_out64_48,
  output [63:0]  io_out64_49,
  output [63:0]  io_out64_50,
  output [63:0]  io_out64_51,
  output [63:0]  io_out64_52,
  output [63:0]  io_out64_53,
  output [63:0]  io_out64_54,
  output [63:0]  io_out64_55,
  output [63:0]  io_out64_56,
  output [63:0]  io_out64_57,
  output [63:0]  io_out64_58,
  output [63:0]  io_out64_59,
  output [63:0]  io_out64_60,
  output [63:0]  io_out64_61,
  output [63:0]  io_out64_62,
  output [63:0]  io_out64_63,
  output         io_validout64_0,
  output         io_validout64_1,
  output         io_validout64_2,
  output         io_validout64_3,
  output         io_validout64_4,
  output         io_validout64_5,
  output         io_validout64_6,
  output         io_validout64_7,
  output         io_validout64_8,
  output         io_validout64_9,
  output         io_validout64_10,
  output         io_validout64_11,
  output         io_validout64_12,
  output         io_validout64_13,
  output         io_validout64_14,
  output         io_validout64_15,
  output         io_validout64_16,
  output         io_validout64_17,
  output         io_validout64_18,
  output         io_validout64_19,
  output         io_validout64_20,
  output         io_validout64_21,
  output         io_validout64_22,
  output         io_validout64_23,
  output         io_validout64_24,
  output         io_validout64_25,
  output         io_validout64_26,
  output         io_validout64_27,
  output         io_validout64_28,
  output         io_validout64_29,
  output         io_validout64_30,
  output         io_validout64_31,
  output         io_validout64_32,
  output         io_validout64_33,
  output         io_validout64_34,
  output         io_validout64_35,
  output         io_validout64_36,
  output         io_validout64_37,
  output         io_validout64_38,
  output         io_validout64_39,
  output         io_validout64_40,
  output         io_validout64_41,
  output         io_validout64_42,
  output         io_validout64_43,
  output         io_validout64_44,
  output         io_validout64_45,
  output         io_validout64_46,
  output         io_validout64_47,
  output         io_validout64_48,
  output         io_validout64_49,
  output         io_validout64_50,
  output         io_validout64_51,
  output         io_validout64_52,
  output         io_validout64_53,
  output         io_validout64_54,
  output         io_validout64_55,
  output         io_validout64_56,
  output         io_validout64_57,
  output         io_validout64_58,
  output         io_validout64_59,
  output         io_validout64_60,
  output         io_validout64_61,
  output         io_validout64_62,
  output         io_validout64_63,
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  ingress1_0_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_0_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_0_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_0_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_0_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_0_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_0_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_0_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_0_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_0_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_1_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_1_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_1_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_1_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_1_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_1_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_1_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_1_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_1_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_1_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_2_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_2_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_2_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_2_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_2_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_2_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_2_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_2_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_2_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_2_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_3_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_3_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_3_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_3_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_3_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_3_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_3_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_3_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_3_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_3_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_4_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_4_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_4_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_4_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_4_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_4_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_4_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_4_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_4_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_4_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_5_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_5_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_5_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_5_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_5_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_5_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_5_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_5_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_5_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_5_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_6_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_6_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_6_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_6_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_6_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_6_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_6_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_6_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_6_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_6_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_7_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_7_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_7_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_7_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_7_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_7_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_7_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_7_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_7_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_7_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_8_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_8_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_8_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_8_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_8_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_8_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_8_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_8_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_8_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_8_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_9_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_9_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_9_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_9_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_9_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_9_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_9_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_9_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_9_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_9_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_10_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_10_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_10_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_10_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_10_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_10_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_10_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_10_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_10_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_10_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_11_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_11_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_11_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_11_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_11_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_11_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_11_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_11_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_11_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_11_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_12_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_12_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_12_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_12_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_12_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_12_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_12_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_12_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_12_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_12_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_13_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_13_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_13_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_13_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_13_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_13_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_13_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_13_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_13_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_13_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_14_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_14_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_14_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_14_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_14_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_14_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_14_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_14_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_14_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_14_io_ctrl; // @[BuildingBlock.scala 36:52]
  wire  ingress1_15_clock; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_15_io_in4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_15_io_in4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_15_io_in4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_15_io_in4_3; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_15_io_out4_0; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_15_io_out4_1; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_15_io_out4_2; // @[BuildingBlock.scala 36:52]
  wire [64:0] ingress1_15_io_out4_3; // @[BuildingBlock.scala 36:52]
  wire [7:0] ingress1_15_io_ctrl; // @[BuildingBlock.scala 36:52]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 37:25]
  CLOScell4 ingress1_0 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_0_clock),
    .io_in4_0(ingress1_0_io_in4_0),
    .io_in4_1(ingress1_0_io_in4_1),
    .io_in4_2(ingress1_0_io_in4_2),
    .io_in4_3(ingress1_0_io_in4_3),
    .io_out4_0(ingress1_0_io_out4_0),
    .io_out4_1(ingress1_0_io_out4_1),
    .io_out4_2(ingress1_0_io_out4_2),
    .io_out4_3(ingress1_0_io_out4_3),
    .io_ctrl(ingress1_0_io_ctrl)
  );
  CLOScell4 ingress1_1 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_1_clock),
    .io_in4_0(ingress1_1_io_in4_0),
    .io_in4_1(ingress1_1_io_in4_1),
    .io_in4_2(ingress1_1_io_in4_2),
    .io_in4_3(ingress1_1_io_in4_3),
    .io_out4_0(ingress1_1_io_out4_0),
    .io_out4_1(ingress1_1_io_out4_1),
    .io_out4_2(ingress1_1_io_out4_2),
    .io_out4_3(ingress1_1_io_out4_3),
    .io_ctrl(ingress1_1_io_ctrl)
  );
  CLOScell4 ingress1_2 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_2_clock),
    .io_in4_0(ingress1_2_io_in4_0),
    .io_in4_1(ingress1_2_io_in4_1),
    .io_in4_2(ingress1_2_io_in4_2),
    .io_in4_3(ingress1_2_io_in4_3),
    .io_out4_0(ingress1_2_io_out4_0),
    .io_out4_1(ingress1_2_io_out4_1),
    .io_out4_2(ingress1_2_io_out4_2),
    .io_out4_3(ingress1_2_io_out4_3),
    .io_ctrl(ingress1_2_io_ctrl)
  );
  CLOScell4 ingress1_3 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_3_clock),
    .io_in4_0(ingress1_3_io_in4_0),
    .io_in4_1(ingress1_3_io_in4_1),
    .io_in4_2(ingress1_3_io_in4_2),
    .io_in4_3(ingress1_3_io_in4_3),
    .io_out4_0(ingress1_3_io_out4_0),
    .io_out4_1(ingress1_3_io_out4_1),
    .io_out4_2(ingress1_3_io_out4_2),
    .io_out4_3(ingress1_3_io_out4_3),
    .io_ctrl(ingress1_3_io_ctrl)
  );
  CLOScell4 ingress1_4 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_4_clock),
    .io_in4_0(ingress1_4_io_in4_0),
    .io_in4_1(ingress1_4_io_in4_1),
    .io_in4_2(ingress1_4_io_in4_2),
    .io_in4_3(ingress1_4_io_in4_3),
    .io_out4_0(ingress1_4_io_out4_0),
    .io_out4_1(ingress1_4_io_out4_1),
    .io_out4_2(ingress1_4_io_out4_2),
    .io_out4_3(ingress1_4_io_out4_3),
    .io_ctrl(ingress1_4_io_ctrl)
  );
  CLOScell4 ingress1_5 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_5_clock),
    .io_in4_0(ingress1_5_io_in4_0),
    .io_in4_1(ingress1_5_io_in4_1),
    .io_in4_2(ingress1_5_io_in4_2),
    .io_in4_3(ingress1_5_io_in4_3),
    .io_out4_0(ingress1_5_io_out4_0),
    .io_out4_1(ingress1_5_io_out4_1),
    .io_out4_2(ingress1_5_io_out4_2),
    .io_out4_3(ingress1_5_io_out4_3),
    .io_ctrl(ingress1_5_io_ctrl)
  );
  CLOScell4 ingress1_6 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_6_clock),
    .io_in4_0(ingress1_6_io_in4_0),
    .io_in4_1(ingress1_6_io_in4_1),
    .io_in4_2(ingress1_6_io_in4_2),
    .io_in4_3(ingress1_6_io_in4_3),
    .io_out4_0(ingress1_6_io_out4_0),
    .io_out4_1(ingress1_6_io_out4_1),
    .io_out4_2(ingress1_6_io_out4_2),
    .io_out4_3(ingress1_6_io_out4_3),
    .io_ctrl(ingress1_6_io_ctrl)
  );
  CLOScell4 ingress1_7 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_7_clock),
    .io_in4_0(ingress1_7_io_in4_0),
    .io_in4_1(ingress1_7_io_in4_1),
    .io_in4_2(ingress1_7_io_in4_2),
    .io_in4_3(ingress1_7_io_in4_3),
    .io_out4_0(ingress1_7_io_out4_0),
    .io_out4_1(ingress1_7_io_out4_1),
    .io_out4_2(ingress1_7_io_out4_2),
    .io_out4_3(ingress1_7_io_out4_3),
    .io_ctrl(ingress1_7_io_ctrl)
  );
  CLOScell4 ingress1_8 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_8_clock),
    .io_in4_0(ingress1_8_io_in4_0),
    .io_in4_1(ingress1_8_io_in4_1),
    .io_in4_2(ingress1_8_io_in4_2),
    .io_in4_3(ingress1_8_io_in4_3),
    .io_out4_0(ingress1_8_io_out4_0),
    .io_out4_1(ingress1_8_io_out4_1),
    .io_out4_2(ingress1_8_io_out4_2),
    .io_out4_3(ingress1_8_io_out4_3),
    .io_ctrl(ingress1_8_io_ctrl)
  );
  CLOScell4 ingress1_9 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_9_clock),
    .io_in4_0(ingress1_9_io_in4_0),
    .io_in4_1(ingress1_9_io_in4_1),
    .io_in4_2(ingress1_9_io_in4_2),
    .io_in4_3(ingress1_9_io_in4_3),
    .io_out4_0(ingress1_9_io_out4_0),
    .io_out4_1(ingress1_9_io_out4_1),
    .io_out4_2(ingress1_9_io_out4_2),
    .io_out4_3(ingress1_9_io_out4_3),
    .io_ctrl(ingress1_9_io_ctrl)
  );
  CLOScell4 ingress1_10 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_10_clock),
    .io_in4_0(ingress1_10_io_in4_0),
    .io_in4_1(ingress1_10_io_in4_1),
    .io_in4_2(ingress1_10_io_in4_2),
    .io_in4_3(ingress1_10_io_in4_3),
    .io_out4_0(ingress1_10_io_out4_0),
    .io_out4_1(ingress1_10_io_out4_1),
    .io_out4_2(ingress1_10_io_out4_2),
    .io_out4_3(ingress1_10_io_out4_3),
    .io_ctrl(ingress1_10_io_ctrl)
  );
  CLOScell4 ingress1_11 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_11_clock),
    .io_in4_0(ingress1_11_io_in4_0),
    .io_in4_1(ingress1_11_io_in4_1),
    .io_in4_2(ingress1_11_io_in4_2),
    .io_in4_3(ingress1_11_io_in4_3),
    .io_out4_0(ingress1_11_io_out4_0),
    .io_out4_1(ingress1_11_io_out4_1),
    .io_out4_2(ingress1_11_io_out4_2),
    .io_out4_3(ingress1_11_io_out4_3),
    .io_ctrl(ingress1_11_io_ctrl)
  );
  CLOScell4 ingress1_12 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_12_clock),
    .io_in4_0(ingress1_12_io_in4_0),
    .io_in4_1(ingress1_12_io_in4_1),
    .io_in4_2(ingress1_12_io_in4_2),
    .io_in4_3(ingress1_12_io_in4_3),
    .io_out4_0(ingress1_12_io_out4_0),
    .io_out4_1(ingress1_12_io_out4_1),
    .io_out4_2(ingress1_12_io_out4_2),
    .io_out4_3(ingress1_12_io_out4_3),
    .io_ctrl(ingress1_12_io_ctrl)
  );
  CLOScell4 ingress1_13 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_13_clock),
    .io_in4_0(ingress1_13_io_in4_0),
    .io_in4_1(ingress1_13_io_in4_1),
    .io_in4_2(ingress1_13_io_in4_2),
    .io_in4_3(ingress1_13_io_in4_3),
    .io_out4_0(ingress1_13_io_out4_0),
    .io_out4_1(ingress1_13_io_out4_1),
    .io_out4_2(ingress1_13_io_out4_2),
    .io_out4_3(ingress1_13_io_out4_3),
    .io_ctrl(ingress1_13_io_ctrl)
  );
  CLOScell4 ingress1_14 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_14_clock),
    .io_in4_0(ingress1_14_io_in4_0),
    .io_in4_1(ingress1_14_io_in4_1),
    .io_in4_2(ingress1_14_io_in4_2),
    .io_in4_3(ingress1_14_io_in4_3),
    .io_out4_0(ingress1_14_io_out4_0),
    .io_out4_1(ingress1_14_io_out4_1),
    .io_out4_2(ingress1_14_io_out4_2),
    .io_out4_3(ingress1_14_io_out4_3),
    .io_ctrl(ingress1_14_io_ctrl)
  );
  CLOScell4 ingress1_15 ( // @[BuildingBlock.scala 36:52]
    .clock(ingress1_15_clock),
    .io_in4_0(ingress1_15_io_in4_0),
    .io_in4_1(ingress1_15_io_in4_1),
    .io_in4_2(ingress1_15_io_in4_2),
    .io_in4_3(ingress1_15_io_in4_3),
    .io_out4_0(ingress1_15_io_out4_0),
    .io_out4_1(ingress1_15_io_out4_1),
    .io_out4_2(ingress1_15_io_out4_2),
    .io_out4_3(ingress1_15_io_out4_3),
    .io_ctrl(ingress1_15_io_ctrl)
  );
  assign io_out64_0 = ingress1_0_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_1 = ingress1_1_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_2 = ingress1_2_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_3 = ingress1_3_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_4 = ingress1_4_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_5 = ingress1_5_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_6 = ingress1_6_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_7 = ingress1_7_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_8 = ingress1_8_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_9 = ingress1_9_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_10 = ingress1_10_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_11 = ingress1_11_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_12 = ingress1_12_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_13 = ingress1_13_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_14 = ingress1_14_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_15 = ingress1_15_io_out4_0[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_16 = ingress1_0_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_17 = ingress1_1_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_18 = ingress1_2_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_19 = ingress1_3_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_20 = ingress1_4_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_21 = ingress1_5_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_22 = ingress1_6_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_23 = ingress1_7_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_24 = ingress1_8_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_25 = ingress1_9_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_26 = ingress1_10_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_27 = ingress1_11_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_28 = ingress1_12_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_29 = ingress1_13_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_30 = ingress1_14_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_31 = ingress1_15_io_out4_1[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_32 = ingress1_0_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_33 = ingress1_1_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_34 = ingress1_2_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_35 = ingress1_3_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_36 = ingress1_4_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_37 = ingress1_5_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_38 = ingress1_6_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_39 = ingress1_7_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_40 = ingress1_8_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_41 = ingress1_9_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_42 = ingress1_10_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_43 = ingress1_11_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_44 = ingress1_12_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_45 = ingress1_13_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_46 = ingress1_14_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_47 = ingress1_15_io_out4_2[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_48 = ingress1_0_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_49 = ingress1_1_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_50 = ingress1_2_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_51 = ingress1_3_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_52 = ingress1_4_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_53 = ingress1_5_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_54 = ingress1_6_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_55 = ingress1_7_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_56 = ingress1_8_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_57 = ingress1_9_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_58 = ingress1_10_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_59 = ingress1_11_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_60 = ingress1_12_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_61 = ingress1_13_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_62 = ingress1_14_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_out64_63 = ingress1_15_io_out4_3[63:0]; // @[BuildingBlock.scala 44:49]
  assign io_validout64_0 = ingress1_0_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_1 = ingress1_0_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_2 = ingress1_0_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_3 = ingress1_0_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_4 = ingress1_1_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_5 = ingress1_1_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_6 = ingress1_1_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_7 = ingress1_1_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_8 = ingress1_2_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_9 = ingress1_2_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_10 = ingress1_2_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_11 = ingress1_2_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_12 = ingress1_3_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_13 = ingress1_3_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_14 = ingress1_3_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_15 = ingress1_3_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_16 = ingress1_4_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_17 = ingress1_4_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_18 = ingress1_4_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_19 = ingress1_4_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_20 = ingress1_5_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_21 = ingress1_5_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_22 = ingress1_5_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_23 = ingress1_5_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_24 = ingress1_6_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_25 = ingress1_6_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_26 = ingress1_6_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_27 = ingress1_6_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_28 = ingress1_7_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_29 = ingress1_7_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_30 = ingress1_7_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_31 = ingress1_7_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_32 = ingress1_8_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_33 = ingress1_8_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_34 = ingress1_8_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_35 = ingress1_8_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_36 = ingress1_9_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_37 = ingress1_9_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_38 = ingress1_9_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_39 = ingress1_9_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_40 = ingress1_10_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_41 = ingress1_10_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_42 = ingress1_10_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_43 = ingress1_10_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_44 = ingress1_11_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_45 = ingress1_11_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_46 = ingress1_11_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_47 = ingress1_11_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_48 = ingress1_12_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_49 = ingress1_12_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_50 = ingress1_12_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_51 = ingress1_12_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_52 = ingress1_13_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_53 = ingress1_13_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_54 = ingress1_13_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_55 = ingress1_13_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_56 = ingress1_14_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_57 = ingress1_14_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_58 = ingress1_14_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_59 = ingress1_14_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_60 = ingress1_15_io_out4_0[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_61 = ingress1_15_io_out4_1[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_62 = ingress1_15_io_out4_2[64]; // @[BuildingBlock.scala 45:53]
  assign io_validout64_63 = ingress1_15_io_out4_3[64]; // @[BuildingBlock.scala 45:53]
  assign ingress1_0_clock = clock;
  assign ingress1_0_io_in4_0 = {io_validin64_0,io_in64_0}; // @[Cat.scala 30:58]
  assign ingress1_0_io_in4_1 = {io_validin64_1,io_in64_1}; // @[Cat.scala 30:58]
  assign ingress1_0_io_in4_2 = {io_validin64_2,io_in64_2}; // @[Cat.scala 30:58]
  assign ingress1_0_io_in4_3 = {io_validin64_3,io_in64_3}; // @[Cat.scala 30:58]
  assign ingress1_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 49:36]
  assign ingress1_1_clock = clock;
  assign ingress1_1_io_in4_0 = {io_validin64_4,io_in64_4}; // @[Cat.scala 30:58]
  assign ingress1_1_io_in4_1 = {io_validin64_5,io_in64_5}; // @[Cat.scala 30:58]
  assign ingress1_1_io_in4_2 = {io_validin64_6,io_in64_6}; // @[Cat.scala 30:58]
  assign ingress1_1_io_in4_3 = {io_validin64_7,io_in64_7}; // @[Cat.scala 30:58]
  assign ingress1_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 49:36]
  assign ingress1_2_clock = clock;
  assign ingress1_2_io_in4_0 = {io_validin64_8,io_in64_8}; // @[Cat.scala 30:58]
  assign ingress1_2_io_in4_1 = {io_validin64_9,io_in64_9}; // @[Cat.scala 30:58]
  assign ingress1_2_io_in4_2 = {io_validin64_10,io_in64_10}; // @[Cat.scala 30:58]
  assign ingress1_2_io_in4_3 = {io_validin64_11,io_in64_11}; // @[Cat.scala 30:58]
  assign ingress1_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 49:36]
  assign ingress1_3_clock = clock;
  assign ingress1_3_io_in4_0 = {io_validin64_12,io_in64_12}; // @[Cat.scala 30:58]
  assign ingress1_3_io_in4_1 = {io_validin64_13,io_in64_13}; // @[Cat.scala 30:58]
  assign ingress1_3_io_in4_2 = {io_validin64_14,io_in64_14}; // @[Cat.scala 30:58]
  assign ingress1_3_io_in4_3 = {io_validin64_15,io_in64_15}; // @[Cat.scala 30:58]
  assign ingress1_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 49:36]
  assign ingress1_4_clock = clock;
  assign ingress1_4_io_in4_0 = {io_validin64_16,io_in64_16}; // @[Cat.scala 30:58]
  assign ingress1_4_io_in4_1 = {io_validin64_17,io_in64_17}; // @[Cat.scala 30:58]
  assign ingress1_4_io_in4_2 = {io_validin64_18,io_in64_18}; // @[Cat.scala 30:58]
  assign ingress1_4_io_in4_3 = {io_validin64_19,io_in64_19}; // @[Cat.scala 30:58]
  assign ingress1_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 49:36]
  assign ingress1_5_clock = clock;
  assign ingress1_5_io_in4_0 = {io_validin64_20,io_in64_20}; // @[Cat.scala 30:58]
  assign ingress1_5_io_in4_1 = {io_validin64_21,io_in64_21}; // @[Cat.scala 30:58]
  assign ingress1_5_io_in4_2 = {io_validin64_22,io_in64_22}; // @[Cat.scala 30:58]
  assign ingress1_5_io_in4_3 = {io_validin64_23,io_in64_23}; // @[Cat.scala 30:58]
  assign ingress1_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 49:36]
  assign ingress1_6_clock = clock;
  assign ingress1_6_io_in4_0 = {io_validin64_24,io_in64_24}; // @[Cat.scala 30:58]
  assign ingress1_6_io_in4_1 = {io_validin64_25,io_in64_25}; // @[Cat.scala 30:58]
  assign ingress1_6_io_in4_2 = {io_validin64_26,io_in64_26}; // @[Cat.scala 30:58]
  assign ingress1_6_io_in4_3 = {io_validin64_27,io_in64_27}; // @[Cat.scala 30:58]
  assign ingress1_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 49:36]
  assign ingress1_7_clock = clock;
  assign ingress1_7_io_in4_0 = {io_validin64_28,io_in64_28}; // @[Cat.scala 30:58]
  assign ingress1_7_io_in4_1 = {io_validin64_29,io_in64_29}; // @[Cat.scala 30:58]
  assign ingress1_7_io_in4_2 = {io_validin64_30,io_in64_30}; // @[Cat.scala 30:58]
  assign ingress1_7_io_in4_3 = {io_validin64_31,io_in64_31}; // @[Cat.scala 30:58]
  assign ingress1_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 49:36]
  assign ingress1_8_clock = clock;
  assign ingress1_8_io_in4_0 = {io_validin64_32,io_in64_32}; // @[Cat.scala 30:58]
  assign ingress1_8_io_in4_1 = {io_validin64_33,io_in64_33}; // @[Cat.scala 30:58]
  assign ingress1_8_io_in4_2 = {io_validin64_34,io_in64_34}; // @[Cat.scala 30:58]
  assign ingress1_8_io_in4_3 = {io_validin64_35,io_in64_35}; // @[Cat.scala 30:58]
  assign ingress1_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 49:36]
  assign ingress1_9_clock = clock;
  assign ingress1_9_io_in4_0 = {io_validin64_36,io_in64_36}; // @[Cat.scala 30:58]
  assign ingress1_9_io_in4_1 = {io_validin64_37,io_in64_37}; // @[Cat.scala 30:58]
  assign ingress1_9_io_in4_2 = {io_validin64_38,io_in64_38}; // @[Cat.scala 30:58]
  assign ingress1_9_io_in4_3 = {io_validin64_39,io_in64_39}; // @[Cat.scala 30:58]
  assign ingress1_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 49:36]
  assign ingress1_10_clock = clock;
  assign ingress1_10_io_in4_0 = {io_validin64_40,io_in64_40}; // @[Cat.scala 30:58]
  assign ingress1_10_io_in4_1 = {io_validin64_41,io_in64_41}; // @[Cat.scala 30:58]
  assign ingress1_10_io_in4_2 = {io_validin64_42,io_in64_42}; // @[Cat.scala 30:58]
  assign ingress1_10_io_in4_3 = {io_validin64_43,io_in64_43}; // @[Cat.scala 30:58]
  assign ingress1_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 49:36]
  assign ingress1_11_clock = clock;
  assign ingress1_11_io_in4_0 = {io_validin64_44,io_in64_44}; // @[Cat.scala 30:58]
  assign ingress1_11_io_in4_1 = {io_validin64_45,io_in64_45}; // @[Cat.scala 30:58]
  assign ingress1_11_io_in4_2 = {io_validin64_46,io_in64_46}; // @[Cat.scala 30:58]
  assign ingress1_11_io_in4_3 = {io_validin64_47,io_in64_47}; // @[Cat.scala 30:58]
  assign ingress1_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 49:36]
  assign ingress1_12_clock = clock;
  assign ingress1_12_io_in4_0 = {io_validin64_48,io_in64_48}; // @[Cat.scala 30:58]
  assign ingress1_12_io_in4_1 = {io_validin64_49,io_in64_49}; // @[Cat.scala 30:58]
  assign ingress1_12_io_in4_2 = {io_validin64_50,io_in64_50}; // @[Cat.scala 30:58]
  assign ingress1_12_io_in4_3 = {io_validin64_51,io_in64_51}; // @[Cat.scala 30:58]
  assign ingress1_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 49:36]
  assign ingress1_13_clock = clock;
  assign ingress1_13_io_in4_0 = {io_validin64_52,io_in64_52}; // @[Cat.scala 30:58]
  assign ingress1_13_io_in4_1 = {io_validin64_53,io_in64_53}; // @[Cat.scala 30:58]
  assign ingress1_13_io_in4_2 = {io_validin64_54,io_in64_54}; // @[Cat.scala 30:58]
  assign ingress1_13_io_in4_3 = {io_validin64_55,io_in64_55}; // @[Cat.scala 30:58]
  assign ingress1_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 49:36]
  assign ingress1_14_clock = clock;
  assign ingress1_14_io_in4_0 = {io_validin64_56,io_in64_56}; // @[Cat.scala 30:58]
  assign ingress1_14_io_in4_1 = {io_validin64_57,io_in64_57}; // @[Cat.scala 30:58]
  assign ingress1_14_io_in4_2 = {io_validin64_58,io_in64_58}; // @[Cat.scala 30:58]
  assign ingress1_14_io_in4_3 = {io_validin64_59,io_in64_59}; // @[Cat.scala 30:58]
  assign ingress1_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 49:36]
  assign ingress1_15_clock = clock;
  assign ingress1_15_io_in4_0 = {io_validin64_60,io_in64_60}; // @[Cat.scala 30:58]
  assign ingress1_15_io_in4_1 = {io_validin64_61,io_in64_61}; // @[Cat.scala 30:58]
  assign ingress1_15_io_in4_2 = {io_validin64_62,io_in64_62}; // @[Cat.scala 30:58]
  assign ingress1_15_io_in4_3 = {io_validin64_63,io_in64_63}; // @[Cat.scala 30:58]
  assign ingress1_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 49:36]
  always @(posedge clock) begin
    if (reset) begin // @[BuildingBlock.scala 37:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 37:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 38:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {4{`RANDOM}};
  ctrl_reg = _RAND_0[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CLOSingress2(
  input          clock,
  input          reset,
  input  [63:0]  io_in64_0,
  input  [63:0]  io_in64_1,
  input  [63:0]  io_in64_2,
  input  [63:0]  io_in64_3,
  input  [63:0]  io_in64_4,
  input  [63:0]  io_in64_5,
  input  [63:0]  io_in64_6,
  input  [63:0]  io_in64_7,
  input  [63:0]  io_in64_8,
  input  [63:0]  io_in64_9,
  input  [63:0]  io_in64_10,
  input  [63:0]  io_in64_11,
  input  [63:0]  io_in64_12,
  input  [63:0]  io_in64_13,
  input  [63:0]  io_in64_14,
  input  [63:0]  io_in64_15,
  input  [63:0]  io_in64_16,
  input  [63:0]  io_in64_17,
  input  [63:0]  io_in64_18,
  input  [63:0]  io_in64_19,
  input  [63:0]  io_in64_20,
  input  [63:0]  io_in64_21,
  input  [63:0]  io_in64_22,
  input  [63:0]  io_in64_23,
  input  [63:0]  io_in64_24,
  input  [63:0]  io_in64_25,
  input  [63:0]  io_in64_26,
  input  [63:0]  io_in64_27,
  input  [63:0]  io_in64_28,
  input  [63:0]  io_in64_29,
  input  [63:0]  io_in64_30,
  input  [63:0]  io_in64_31,
  input  [63:0]  io_in64_32,
  input  [63:0]  io_in64_33,
  input  [63:0]  io_in64_34,
  input  [63:0]  io_in64_35,
  input  [63:0]  io_in64_36,
  input  [63:0]  io_in64_37,
  input  [63:0]  io_in64_38,
  input  [63:0]  io_in64_39,
  input  [63:0]  io_in64_40,
  input  [63:0]  io_in64_41,
  input  [63:0]  io_in64_42,
  input  [63:0]  io_in64_43,
  input  [63:0]  io_in64_44,
  input  [63:0]  io_in64_45,
  input  [63:0]  io_in64_46,
  input  [63:0]  io_in64_47,
  input  [63:0]  io_in64_48,
  input  [63:0]  io_in64_49,
  input  [63:0]  io_in64_50,
  input  [63:0]  io_in64_51,
  input  [63:0]  io_in64_52,
  input  [63:0]  io_in64_53,
  input  [63:0]  io_in64_54,
  input  [63:0]  io_in64_55,
  input  [63:0]  io_in64_56,
  input  [63:0]  io_in64_57,
  input  [63:0]  io_in64_58,
  input  [63:0]  io_in64_59,
  input  [63:0]  io_in64_60,
  input  [63:0]  io_in64_61,
  input  [63:0]  io_in64_62,
  input  [63:0]  io_in64_63,
  input          io_validin64_0,
  input          io_validin64_1,
  input          io_validin64_2,
  input          io_validin64_3,
  input          io_validin64_4,
  input          io_validin64_5,
  input          io_validin64_6,
  input          io_validin64_7,
  input          io_validin64_8,
  input          io_validin64_9,
  input          io_validin64_10,
  input          io_validin64_11,
  input          io_validin64_12,
  input          io_validin64_13,
  input          io_validin64_14,
  input          io_validin64_15,
  input          io_validin64_16,
  input          io_validin64_17,
  input          io_validin64_18,
  input          io_validin64_19,
  input          io_validin64_20,
  input          io_validin64_21,
  input          io_validin64_22,
  input          io_validin64_23,
  input          io_validin64_24,
  input          io_validin64_25,
  input          io_validin64_26,
  input          io_validin64_27,
  input          io_validin64_28,
  input          io_validin64_29,
  input          io_validin64_30,
  input          io_validin64_31,
  input          io_validin64_32,
  input          io_validin64_33,
  input          io_validin64_34,
  input          io_validin64_35,
  input          io_validin64_36,
  input          io_validin64_37,
  input          io_validin64_38,
  input          io_validin64_39,
  input          io_validin64_40,
  input          io_validin64_41,
  input          io_validin64_42,
  input          io_validin64_43,
  input          io_validin64_44,
  input          io_validin64_45,
  input          io_validin64_46,
  input          io_validin64_47,
  input          io_validin64_48,
  input          io_validin64_49,
  input          io_validin64_50,
  input          io_validin64_51,
  input          io_validin64_52,
  input          io_validin64_53,
  input          io_validin64_54,
  input          io_validin64_55,
  input          io_validin64_56,
  input          io_validin64_57,
  input          io_validin64_58,
  input          io_validin64_59,
  input          io_validin64_60,
  input          io_validin64_61,
  input          io_validin64_62,
  input          io_validin64_63,
  output [63:0]  io_out64_0,
  output [63:0]  io_out64_1,
  output [63:0]  io_out64_2,
  output [63:0]  io_out64_3,
  output [63:0]  io_out64_4,
  output [63:0]  io_out64_5,
  output [63:0]  io_out64_6,
  output [63:0]  io_out64_7,
  output [63:0]  io_out64_8,
  output [63:0]  io_out64_9,
  output [63:0]  io_out64_10,
  output [63:0]  io_out64_11,
  output [63:0]  io_out64_12,
  output [63:0]  io_out64_13,
  output [63:0]  io_out64_14,
  output [63:0]  io_out64_15,
  output [63:0]  io_out64_16,
  output [63:0]  io_out64_17,
  output [63:0]  io_out64_18,
  output [63:0]  io_out64_19,
  output [63:0]  io_out64_20,
  output [63:0]  io_out64_21,
  output [63:0]  io_out64_22,
  output [63:0]  io_out64_23,
  output [63:0]  io_out64_24,
  output [63:0]  io_out64_25,
  output [63:0]  io_out64_26,
  output [63:0]  io_out64_27,
  output [63:0]  io_out64_28,
  output [63:0]  io_out64_29,
  output [63:0]  io_out64_30,
  output [63:0]  io_out64_31,
  output [63:0]  io_out64_32,
  output [63:0]  io_out64_33,
  output [63:0]  io_out64_34,
  output [63:0]  io_out64_35,
  output [63:0]  io_out64_36,
  output [63:0]  io_out64_37,
  output [63:0]  io_out64_38,
  output [63:0]  io_out64_39,
  output [63:0]  io_out64_40,
  output [63:0]  io_out64_41,
  output [63:0]  io_out64_42,
  output [63:0]  io_out64_43,
  output [63:0]  io_out64_44,
  output [63:0]  io_out64_45,
  output [63:0]  io_out64_46,
  output [63:0]  io_out64_47,
  output [63:0]  io_out64_48,
  output [63:0]  io_out64_49,
  output [63:0]  io_out64_50,
  output [63:0]  io_out64_51,
  output [63:0]  io_out64_52,
  output [63:0]  io_out64_53,
  output [63:0]  io_out64_54,
  output [63:0]  io_out64_55,
  output [63:0]  io_out64_56,
  output [63:0]  io_out64_57,
  output [63:0]  io_out64_58,
  output [63:0]  io_out64_59,
  output [63:0]  io_out64_60,
  output [63:0]  io_out64_61,
  output [63:0]  io_out64_62,
  output [63:0]  io_out64_63,
  output         io_validout64_0,
  output         io_validout64_1,
  output         io_validout64_2,
  output         io_validout64_3,
  output         io_validout64_4,
  output         io_validout64_5,
  output         io_validout64_6,
  output         io_validout64_7,
  output         io_validout64_8,
  output         io_validout64_9,
  output         io_validout64_10,
  output         io_validout64_11,
  output         io_validout64_12,
  output         io_validout64_13,
  output         io_validout64_14,
  output         io_validout64_15,
  output         io_validout64_16,
  output         io_validout64_17,
  output         io_validout64_18,
  output         io_validout64_19,
  output         io_validout64_20,
  output         io_validout64_21,
  output         io_validout64_22,
  output         io_validout64_23,
  output         io_validout64_24,
  output         io_validout64_25,
  output         io_validout64_26,
  output         io_validout64_27,
  output         io_validout64_28,
  output         io_validout64_29,
  output         io_validout64_30,
  output         io_validout64_31,
  output         io_validout64_32,
  output         io_validout64_33,
  output         io_validout64_34,
  output         io_validout64_35,
  output         io_validout64_36,
  output         io_validout64_37,
  output         io_validout64_38,
  output         io_validout64_39,
  output         io_validout64_40,
  output         io_validout64_41,
  output         io_validout64_42,
  output         io_validout64_43,
  output         io_validout64_44,
  output         io_validout64_45,
  output         io_validout64_46,
  output         io_validout64_47,
  output         io_validout64_48,
  output         io_validout64_49,
  output         io_validout64_50,
  output         io_validout64_51,
  output         io_validout64_52,
  output         io_validout64_53,
  output         io_validout64_54,
  output         io_validout64_55,
  output         io_validout64_56,
  output         io_validout64_57,
  output         io_validout64_58,
  output         io_validout64_59,
  output         io_validout64_60,
  output         io_validout64_61,
  output         io_validout64_62,
  output         io_validout64_63,
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  ingress2_0_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_0_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_0_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_0_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_0_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_0_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_0_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_0_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_0_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_0_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_1_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_1_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_1_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_1_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_1_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_1_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_1_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_1_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_1_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_1_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_2_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_2_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_2_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_2_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_2_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_2_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_2_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_2_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_2_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_2_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_3_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_3_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_3_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_3_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_3_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_3_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_3_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_3_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_3_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_3_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_4_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_4_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_4_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_4_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_4_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_4_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_4_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_4_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_4_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_4_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_5_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_5_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_5_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_5_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_5_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_5_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_5_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_5_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_5_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_5_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_6_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_6_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_6_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_6_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_6_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_6_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_6_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_6_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_6_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_6_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_7_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_7_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_7_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_7_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_7_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_7_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_7_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_7_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_7_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_7_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_8_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_8_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_8_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_8_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_8_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_8_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_8_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_8_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_8_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_8_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_9_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_9_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_9_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_9_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_9_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_9_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_9_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_9_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_9_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_9_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_10_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_10_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_10_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_10_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_10_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_10_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_10_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_10_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_10_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_10_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_11_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_11_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_11_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_11_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_11_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_11_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_11_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_11_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_11_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_11_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_12_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_12_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_12_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_12_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_12_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_12_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_12_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_12_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_12_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_12_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_13_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_13_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_13_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_13_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_13_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_13_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_13_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_13_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_13_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_13_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_14_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_14_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_14_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_14_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_14_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_14_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_14_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_14_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_14_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_14_io_ctrl; // @[BuildingBlock.scala 61:52]
  wire  ingress2_15_clock; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_15_io_in4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_15_io_in4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_15_io_in4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_15_io_in4_3; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_15_io_out4_0; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_15_io_out4_1; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_15_io_out4_2; // @[BuildingBlock.scala 61:52]
  wire [64:0] ingress2_15_io_out4_3; // @[BuildingBlock.scala 61:52]
  wire [7:0] ingress2_15_io_ctrl; // @[BuildingBlock.scala 61:52]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 62:25]
  CLOScell4 ingress2_0 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_0_clock),
    .io_in4_0(ingress2_0_io_in4_0),
    .io_in4_1(ingress2_0_io_in4_1),
    .io_in4_2(ingress2_0_io_in4_2),
    .io_in4_3(ingress2_0_io_in4_3),
    .io_out4_0(ingress2_0_io_out4_0),
    .io_out4_1(ingress2_0_io_out4_1),
    .io_out4_2(ingress2_0_io_out4_2),
    .io_out4_3(ingress2_0_io_out4_3),
    .io_ctrl(ingress2_0_io_ctrl)
  );
  CLOScell4 ingress2_1 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_1_clock),
    .io_in4_0(ingress2_1_io_in4_0),
    .io_in4_1(ingress2_1_io_in4_1),
    .io_in4_2(ingress2_1_io_in4_2),
    .io_in4_3(ingress2_1_io_in4_3),
    .io_out4_0(ingress2_1_io_out4_0),
    .io_out4_1(ingress2_1_io_out4_1),
    .io_out4_2(ingress2_1_io_out4_2),
    .io_out4_3(ingress2_1_io_out4_3),
    .io_ctrl(ingress2_1_io_ctrl)
  );
  CLOScell4 ingress2_2 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_2_clock),
    .io_in4_0(ingress2_2_io_in4_0),
    .io_in4_1(ingress2_2_io_in4_1),
    .io_in4_2(ingress2_2_io_in4_2),
    .io_in4_3(ingress2_2_io_in4_3),
    .io_out4_0(ingress2_2_io_out4_0),
    .io_out4_1(ingress2_2_io_out4_1),
    .io_out4_2(ingress2_2_io_out4_2),
    .io_out4_3(ingress2_2_io_out4_3),
    .io_ctrl(ingress2_2_io_ctrl)
  );
  CLOScell4 ingress2_3 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_3_clock),
    .io_in4_0(ingress2_3_io_in4_0),
    .io_in4_1(ingress2_3_io_in4_1),
    .io_in4_2(ingress2_3_io_in4_2),
    .io_in4_3(ingress2_3_io_in4_3),
    .io_out4_0(ingress2_3_io_out4_0),
    .io_out4_1(ingress2_3_io_out4_1),
    .io_out4_2(ingress2_3_io_out4_2),
    .io_out4_3(ingress2_3_io_out4_3),
    .io_ctrl(ingress2_3_io_ctrl)
  );
  CLOScell4 ingress2_4 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_4_clock),
    .io_in4_0(ingress2_4_io_in4_0),
    .io_in4_1(ingress2_4_io_in4_1),
    .io_in4_2(ingress2_4_io_in4_2),
    .io_in4_3(ingress2_4_io_in4_3),
    .io_out4_0(ingress2_4_io_out4_0),
    .io_out4_1(ingress2_4_io_out4_1),
    .io_out4_2(ingress2_4_io_out4_2),
    .io_out4_3(ingress2_4_io_out4_3),
    .io_ctrl(ingress2_4_io_ctrl)
  );
  CLOScell4 ingress2_5 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_5_clock),
    .io_in4_0(ingress2_5_io_in4_0),
    .io_in4_1(ingress2_5_io_in4_1),
    .io_in4_2(ingress2_5_io_in4_2),
    .io_in4_3(ingress2_5_io_in4_3),
    .io_out4_0(ingress2_5_io_out4_0),
    .io_out4_1(ingress2_5_io_out4_1),
    .io_out4_2(ingress2_5_io_out4_2),
    .io_out4_3(ingress2_5_io_out4_3),
    .io_ctrl(ingress2_5_io_ctrl)
  );
  CLOScell4 ingress2_6 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_6_clock),
    .io_in4_0(ingress2_6_io_in4_0),
    .io_in4_1(ingress2_6_io_in4_1),
    .io_in4_2(ingress2_6_io_in4_2),
    .io_in4_3(ingress2_6_io_in4_3),
    .io_out4_0(ingress2_6_io_out4_0),
    .io_out4_1(ingress2_6_io_out4_1),
    .io_out4_2(ingress2_6_io_out4_2),
    .io_out4_3(ingress2_6_io_out4_3),
    .io_ctrl(ingress2_6_io_ctrl)
  );
  CLOScell4 ingress2_7 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_7_clock),
    .io_in4_0(ingress2_7_io_in4_0),
    .io_in4_1(ingress2_7_io_in4_1),
    .io_in4_2(ingress2_7_io_in4_2),
    .io_in4_3(ingress2_7_io_in4_3),
    .io_out4_0(ingress2_7_io_out4_0),
    .io_out4_1(ingress2_7_io_out4_1),
    .io_out4_2(ingress2_7_io_out4_2),
    .io_out4_3(ingress2_7_io_out4_3),
    .io_ctrl(ingress2_7_io_ctrl)
  );
  CLOScell4 ingress2_8 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_8_clock),
    .io_in4_0(ingress2_8_io_in4_0),
    .io_in4_1(ingress2_8_io_in4_1),
    .io_in4_2(ingress2_8_io_in4_2),
    .io_in4_3(ingress2_8_io_in4_3),
    .io_out4_0(ingress2_8_io_out4_0),
    .io_out4_1(ingress2_8_io_out4_1),
    .io_out4_2(ingress2_8_io_out4_2),
    .io_out4_3(ingress2_8_io_out4_3),
    .io_ctrl(ingress2_8_io_ctrl)
  );
  CLOScell4 ingress2_9 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_9_clock),
    .io_in4_0(ingress2_9_io_in4_0),
    .io_in4_1(ingress2_9_io_in4_1),
    .io_in4_2(ingress2_9_io_in4_2),
    .io_in4_3(ingress2_9_io_in4_3),
    .io_out4_0(ingress2_9_io_out4_0),
    .io_out4_1(ingress2_9_io_out4_1),
    .io_out4_2(ingress2_9_io_out4_2),
    .io_out4_3(ingress2_9_io_out4_3),
    .io_ctrl(ingress2_9_io_ctrl)
  );
  CLOScell4 ingress2_10 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_10_clock),
    .io_in4_0(ingress2_10_io_in4_0),
    .io_in4_1(ingress2_10_io_in4_1),
    .io_in4_2(ingress2_10_io_in4_2),
    .io_in4_3(ingress2_10_io_in4_3),
    .io_out4_0(ingress2_10_io_out4_0),
    .io_out4_1(ingress2_10_io_out4_1),
    .io_out4_2(ingress2_10_io_out4_2),
    .io_out4_3(ingress2_10_io_out4_3),
    .io_ctrl(ingress2_10_io_ctrl)
  );
  CLOScell4 ingress2_11 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_11_clock),
    .io_in4_0(ingress2_11_io_in4_0),
    .io_in4_1(ingress2_11_io_in4_1),
    .io_in4_2(ingress2_11_io_in4_2),
    .io_in4_3(ingress2_11_io_in4_3),
    .io_out4_0(ingress2_11_io_out4_0),
    .io_out4_1(ingress2_11_io_out4_1),
    .io_out4_2(ingress2_11_io_out4_2),
    .io_out4_3(ingress2_11_io_out4_3),
    .io_ctrl(ingress2_11_io_ctrl)
  );
  CLOScell4 ingress2_12 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_12_clock),
    .io_in4_0(ingress2_12_io_in4_0),
    .io_in4_1(ingress2_12_io_in4_1),
    .io_in4_2(ingress2_12_io_in4_2),
    .io_in4_3(ingress2_12_io_in4_3),
    .io_out4_0(ingress2_12_io_out4_0),
    .io_out4_1(ingress2_12_io_out4_1),
    .io_out4_2(ingress2_12_io_out4_2),
    .io_out4_3(ingress2_12_io_out4_3),
    .io_ctrl(ingress2_12_io_ctrl)
  );
  CLOScell4 ingress2_13 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_13_clock),
    .io_in4_0(ingress2_13_io_in4_0),
    .io_in4_1(ingress2_13_io_in4_1),
    .io_in4_2(ingress2_13_io_in4_2),
    .io_in4_3(ingress2_13_io_in4_3),
    .io_out4_0(ingress2_13_io_out4_0),
    .io_out4_1(ingress2_13_io_out4_1),
    .io_out4_2(ingress2_13_io_out4_2),
    .io_out4_3(ingress2_13_io_out4_3),
    .io_ctrl(ingress2_13_io_ctrl)
  );
  CLOScell4 ingress2_14 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_14_clock),
    .io_in4_0(ingress2_14_io_in4_0),
    .io_in4_1(ingress2_14_io_in4_1),
    .io_in4_2(ingress2_14_io_in4_2),
    .io_in4_3(ingress2_14_io_in4_3),
    .io_out4_0(ingress2_14_io_out4_0),
    .io_out4_1(ingress2_14_io_out4_1),
    .io_out4_2(ingress2_14_io_out4_2),
    .io_out4_3(ingress2_14_io_out4_3),
    .io_ctrl(ingress2_14_io_ctrl)
  );
  CLOScell4 ingress2_15 ( // @[BuildingBlock.scala 61:52]
    .clock(ingress2_15_clock),
    .io_in4_0(ingress2_15_io_in4_0),
    .io_in4_1(ingress2_15_io_in4_1),
    .io_in4_2(ingress2_15_io_in4_2),
    .io_in4_3(ingress2_15_io_in4_3),
    .io_out4_0(ingress2_15_io_out4_0),
    .io_out4_1(ingress2_15_io_out4_1),
    .io_out4_2(ingress2_15_io_out4_2),
    .io_out4_3(ingress2_15_io_out4_3),
    .io_ctrl(ingress2_15_io_ctrl)
  );
  assign io_out64_0 = ingress2_0_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_1 = ingress2_1_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_2 = ingress2_2_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_3 = ingress2_3_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_4 = ingress2_0_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_5 = ingress2_1_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_6 = ingress2_2_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_7 = ingress2_3_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_8 = ingress2_0_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_9 = ingress2_1_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_10 = ingress2_2_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_11 = ingress2_3_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_12 = ingress2_0_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_13 = ingress2_1_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_14 = ingress2_2_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_15 = ingress2_3_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_16 = ingress2_4_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_17 = ingress2_5_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_18 = ingress2_6_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_19 = ingress2_7_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_20 = ingress2_4_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_21 = ingress2_5_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_22 = ingress2_6_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_23 = ingress2_7_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_24 = ingress2_4_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_25 = ingress2_5_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_26 = ingress2_6_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_27 = ingress2_7_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_28 = ingress2_4_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_29 = ingress2_5_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_30 = ingress2_6_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_31 = ingress2_7_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_32 = ingress2_8_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_33 = ingress2_9_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_34 = ingress2_10_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_35 = ingress2_11_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_36 = ingress2_8_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_37 = ingress2_9_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_38 = ingress2_10_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_39 = ingress2_11_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_40 = ingress2_8_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_41 = ingress2_9_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_42 = ingress2_10_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_43 = ingress2_11_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_44 = ingress2_8_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_45 = ingress2_9_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_46 = ingress2_10_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_47 = ingress2_11_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_48 = ingress2_12_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_49 = ingress2_13_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_50 = ingress2_14_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_51 = ingress2_15_io_out4_0[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_52 = ingress2_12_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_53 = ingress2_13_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_54 = ingress2_14_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_55 = ingress2_15_io_out4_1[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_56 = ingress2_12_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_57 = ingress2_13_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_58 = ingress2_14_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_59 = ingress2_15_io_out4_2[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_60 = ingress2_12_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_61 = ingress2_13_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_62 = ingress2_14_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_out64_63 = ingress2_15_io_out4_3[63:0]; // @[BuildingBlock.scala 70:59]
  assign io_validout64_0 = ingress2_0_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_1 = ingress2_1_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_2 = ingress2_2_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_3 = ingress2_3_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_4 = ingress2_0_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_5 = ingress2_1_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_6 = ingress2_2_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_7 = ingress2_3_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_8 = ingress2_0_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_9 = ingress2_1_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_10 = ingress2_2_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_11 = ingress2_3_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_12 = ingress2_0_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_13 = ingress2_1_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_14 = ingress2_2_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_15 = ingress2_3_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_16 = ingress2_4_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_17 = ingress2_5_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_18 = ingress2_6_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_19 = ingress2_7_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_20 = ingress2_4_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_21 = ingress2_5_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_22 = ingress2_6_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_23 = ingress2_7_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_24 = ingress2_4_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_25 = ingress2_5_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_26 = ingress2_6_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_27 = ingress2_7_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_28 = ingress2_4_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_29 = ingress2_5_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_30 = ingress2_6_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_31 = ingress2_7_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_32 = ingress2_8_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_33 = ingress2_9_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_34 = ingress2_10_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_35 = ingress2_11_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_36 = ingress2_8_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_37 = ingress2_9_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_38 = ingress2_10_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_39 = ingress2_11_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_40 = ingress2_8_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_41 = ingress2_9_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_42 = ingress2_10_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_43 = ingress2_11_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_44 = ingress2_8_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_45 = ingress2_9_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_46 = ingress2_10_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_47 = ingress2_11_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_48 = ingress2_12_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_49 = ingress2_13_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_50 = ingress2_14_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_51 = ingress2_15_io_out4_0[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_52 = ingress2_12_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_53 = ingress2_13_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_54 = ingress2_14_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_55 = ingress2_15_io_out4_1[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_56 = ingress2_12_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_57 = ingress2_13_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_58 = ingress2_14_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_59 = ingress2_15_io_out4_2[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_60 = ingress2_12_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_61 = ingress2_13_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_62 = ingress2_14_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign io_validout64_63 = ingress2_15_io_out4_3[64]; // @[BuildingBlock.scala 71:64]
  assign ingress2_0_clock = clock;
  assign ingress2_0_io_in4_0 = {io_validin64_0,io_in64_0}; // @[Cat.scala 30:58]
  assign ingress2_0_io_in4_1 = {io_validin64_1,io_in64_1}; // @[Cat.scala 30:58]
  assign ingress2_0_io_in4_2 = {io_validin64_2,io_in64_2}; // @[Cat.scala 30:58]
  assign ingress2_0_io_in4_3 = {io_validin64_3,io_in64_3}; // @[Cat.scala 30:58]
  assign ingress2_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 75:36]
  assign ingress2_1_clock = clock;
  assign ingress2_1_io_in4_0 = {io_validin64_4,io_in64_4}; // @[Cat.scala 30:58]
  assign ingress2_1_io_in4_1 = {io_validin64_5,io_in64_5}; // @[Cat.scala 30:58]
  assign ingress2_1_io_in4_2 = {io_validin64_6,io_in64_6}; // @[Cat.scala 30:58]
  assign ingress2_1_io_in4_3 = {io_validin64_7,io_in64_7}; // @[Cat.scala 30:58]
  assign ingress2_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 75:36]
  assign ingress2_2_clock = clock;
  assign ingress2_2_io_in4_0 = {io_validin64_8,io_in64_8}; // @[Cat.scala 30:58]
  assign ingress2_2_io_in4_1 = {io_validin64_9,io_in64_9}; // @[Cat.scala 30:58]
  assign ingress2_2_io_in4_2 = {io_validin64_10,io_in64_10}; // @[Cat.scala 30:58]
  assign ingress2_2_io_in4_3 = {io_validin64_11,io_in64_11}; // @[Cat.scala 30:58]
  assign ingress2_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 75:36]
  assign ingress2_3_clock = clock;
  assign ingress2_3_io_in4_0 = {io_validin64_12,io_in64_12}; // @[Cat.scala 30:58]
  assign ingress2_3_io_in4_1 = {io_validin64_13,io_in64_13}; // @[Cat.scala 30:58]
  assign ingress2_3_io_in4_2 = {io_validin64_14,io_in64_14}; // @[Cat.scala 30:58]
  assign ingress2_3_io_in4_3 = {io_validin64_15,io_in64_15}; // @[Cat.scala 30:58]
  assign ingress2_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 75:36]
  assign ingress2_4_clock = clock;
  assign ingress2_4_io_in4_0 = {io_validin64_16,io_in64_16}; // @[Cat.scala 30:58]
  assign ingress2_4_io_in4_1 = {io_validin64_17,io_in64_17}; // @[Cat.scala 30:58]
  assign ingress2_4_io_in4_2 = {io_validin64_18,io_in64_18}; // @[Cat.scala 30:58]
  assign ingress2_4_io_in4_3 = {io_validin64_19,io_in64_19}; // @[Cat.scala 30:58]
  assign ingress2_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 75:36]
  assign ingress2_5_clock = clock;
  assign ingress2_5_io_in4_0 = {io_validin64_20,io_in64_20}; // @[Cat.scala 30:58]
  assign ingress2_5_io_in4_1 = {io_validin64_21,io_in64_21}; // @[Cat.scala 30:58]
  assign ingress2_5_io_in4_2 = {io_validin64_22,io_in64_22}; // @[Cat.scala 30:58]
  assign ingress2_5_io_in4_3 = {io_validin64_23,io_in64_23}; // @[Cat.scala 30:58]
  assign ingress2_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 75:36]
  assign ingress2_6_clock = clock;
  assign ingress2_6_io_in4_0 = {io_validin64_24,io_in64_24}; // @[Cat.scala 30:58]
  assign ingress2_6_io_in4_1 = {io_validin64_25,io_in64_25}; // @[Cat.scala 30:58]
  assign ingress2_6_io_in4_2 = {io_validin64_26,io_in64_26}; // @[Cat.scala 30:58]
  assign ingress2_6_io_in4_3 = {io_validin64_27,io_in64_27}; // @[Cat.scala 30:58]
  assign ingress2_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 75:36]
  assign ingress2_7_clock = clock;
  assign ingress2_7_io_in4_0 = {io_validin64_28,io_in64_28}; // @[Cat.scala 30:58]
  assign ingress2_7_io_in4_1 = {io_validin64_29,io_in64_29}; // @[Cat.scala 30:58]
  assign ingress2_7_io_in4_2 = {io_validin64_30,io_in64_30}; // @[Cat.scala 30:58]
  assign ingress2_7_io_in4_3 = {io_validin64_31,io_in64_31}; // @[Cat.scala 30:58]
  assign ingress2_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 75:36]
  assign ingress2_8_clock = clock;
  assign ingress2_8_io_in4_0 = {io_validin64_32,io_in64_32}; // @[Cat.scala 30:58]
  assign ingress2_8_io_in4_1 = {io_validin64_33,io_in64_33}; // @[Cat.scala 30:58]
  assign ingress2_8_io_in4_2 = {io_validin64_34,io_in64_34}; // @[Cat.scala 30:58]
  assign ingress2_8_io_in4_3 = {io_validin64_35,io_in64_35}; // @[Cat.scala 30:58]
  assign ingress2_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 75:36]
  assign ingress2_9_clock = clock;
  assign ingress2_9_io_in4_0 = {io_validin64_36,io_in64_36}; // @[Cat.scala 30:58]
  assign ingress2_9_io_in4_1 = {io_validin64_37,io_in64_37}; // @[Cat.scala 30:58]
  assign ingress2_9_io_in4_2 = {io_validin64_38,io_in64_38}; // @[Cat.scala 30:58]
  assign ingress2_9_io_in4_3 = {io_validin64_39,io_in64_39}; // @[Cat.scala 30:58]
  assign ingress2_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 75:36]
  assign ingress2_10_clock = clock;
  assign ingress2_10_io_in4_0 = {io_validin64_40,io_in64_40}; // @[Cat.scala 30:58]
  assign ingress2_10_io_in4_1 = {io_validin64_41,io_in64_41}; // @[Cat.scala 30:58]
  assign ingress2_10_io_in4_2 = {io_validin64_42,io_in64_42}; // @[Cat.scala 30:58]
  assign ingress2_10_io_in4_3 = {io_validin64_43,io_in64_43}; // @[Cat.scala 30:58]
  assign ingress2_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 75:36]
  assign ingress2_11_clock = clock;
  assign ingress2_11_io_in4_0 = {io_validin64_44,io_in64_44}; // @[Cat.scala 30:58]
  assign ingress2_11_io_in4_1 = {io_validin64_45,io_in64_45}; // @[Cat.scala 30:58]
  assign ingress2_11_io_in4_2 = {io_validin64_46,io_in64_46}; // @[Cat.scala 30:58]
  assign ingress2_11_io_in4_3 = {io_validin64_47,io_in64_47}; // @[Cat.scala 30:58]
  assign ingress2_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 75:36]
  assign ingress2_12_clock = clock;
  assign ingress2_12_io_in4_0 = {io_validin64_48,io_in64_48}; // @[Cat.scala 30:58]
  assign ingress2_12_io_in4_1 = {io_validin64_49,io_in64_49}; // @[Cat.scala 30:58]
  assign ingress2_12_io_in4_2 = {io_validin64_50,io_in64_50}; // @[Cat.scala 30:58]
  assign ingress2_12_io_in4_3 = {io_validin64_51,io_in64_51}; // @[Cat.scala 30:58]
  assign ingress2_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 75:36]
  assign ingress2_13_clock = clock;
  assign ingress2_13_io_in4_0 = {io_validin64_52,io_in64_52}; // @[Cat.scala 30:58]
  assign ingress2_13_io_in4_1 = {io_validin64_53,io_in64_53}; // @[Cat.scala 30:58]
  assign ingress2_13_io_in4_2 = {io_validin64_54,io_in64_54}; // @[Cat.scala 30:58]
  assign ingress2_13_io_in4_3 = {io_validin64_55,io_in64_55}; // @[Cat.scala 30:58]
  assign ingress2_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 75:36]
  assign ingress2_14_clock = clock;
  assign ingress2_14_io_in4_0 = {io_validin64_56,io_in64_56}; // @[Cat.scala 30:58]
  assign ingress2_14_io_in4_1 = {io_validin64_57,io_in64_57}; // @[Cat.scala 30:58]
  assign ingress2_14_io_in4_2 = {io_validin64_58,io_in64_58}; // @[Cat.scala 30:58]
  assign ingress2_14_io_in4_3 = {io_validin64_59,io_in64_59}; // @[Cat.scala 30:58]
  assign ingress2_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 75:36]
  assign ingress2_15_clock = clock;
  assign ingress2_15_io_in4_0 = {io_validin64_60,io_in64_60}; // @[Cat.scala 30:58]
  assign ingress2_15_io_in4_1 = {io_validin64_61,io_in64_61}; // @[Cat.scala 30:58]
  assign ingress2_15_io_in4_2 = {io_validin64_62,io_in64_62}; // @[Cat.scala 30:58]
  assign ingress2_15_io_in4_3 = {io_validin64_63,io_in64_63}; // @[Cat.scala 30:58]
  assign ingress2_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 75:36]
  always @(posedge clock) begin
    if (reset) begin // @[BuildingBlock.scala 62:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 62:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 63:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {4{`RANDOM}};
  ctrl_reg = _RAND_0[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CLOSegress1(
  input          clock,
  input          reset,
  input  [63:0]  io_in64_0,
  input  [63:0]  io_in64_1,
  input  [63:0]  io_in64_2,
  input  [63:0]  io_in64_3,
  input  [63:0]  io_in64_4,
  input  [63:0]  io_in64_5,
  input  [63:0]  io_in64_6,
  input  [63:0]  io_in64_7,
  input  [63:0]  io_in64_8,
  input  [63:0]  io_in64_9,
  input  [63:0]  io_in64_10,
  input  [63:0]  io_in64_11,
  input  [63:0]  io_in64_12,
  input  [63:0]  io_in64_13,
  input  [63:0]  io_in64_14,
  input  [63:0]  io_in64_15,
  input  [63:0]  io_in64_16,
  input  [63:0]  io_in64_17,
  input  [63:0]  io_in64_18,
  input  [63:0]  io_in64_19,
  input  [63:0]  io_in64_20,
  input  [63:0]  io_in64_21,
  input  [63:0]  io_in64_22,
  input  [63:0]  io_in64_23,
  input  [63:0]  io_in64_24,
  input  [63:0]  io_in64_25,
  input  [63:0]  io_in64_26,
  input  [63:0]  io_in64_27,
  input  [63:0]  io_in64_28,
  input  [63:0]  io_in64_29,
  input  [63:0]  io_in64_30,
  input  [63:0]  io_in64_31,
  input  [63:0]  io_in64_32,
  input  [63:0]  io_in64_33,
  input  [63:0]  io_in64_34,
  input  [63:0]  io_in64_35,
  input  [63:0]  io_in64_36,
  input  [63:0]  io_in64_37,
  input  [63:0]  io_in64_38,
  input  [63:0]  io_in64_39,
  input  [63:0]  io_in64_40,
  input  [63:0]  io_in64_41,
  input  [63:0]  io_in64_42,
  input  [63:0]  io_in64_43,
  input  [63:0]  io_in64_44,
  input  [63:0]  io_in64_45,
  input  [63:0]  io_in64_46,
  input  [63:0]  io_in64_47,
  input  [63:0]  io_in64_48,
  input  [63:0]  io_in64_49,
  input  [63:0]  io_in64_50,
  input  [63:0]  io_in64_51,
  input  [63:0]  io_in64_52,
  input  [63:0]  io_in64_53,
  input  [63:0]  io_in64_54,
  input  [63:0]  io_in64_55,
  input  [63:0]  io_in64_56,
  input  [63:0]  io_in64_57,
  input  [63:0]  io_in64_58,
  input  [63:0]  io_in64_59,
  input  [63:0]  io_in64_60,
  input  [63:0]  io_in64_61,
  input  [63:0]  io_in64_62,
  input  [63:0]  io_in64_63,
  input          io_validin64_0,
  input          io_validin64_1,
  input          io_validin64_2,
  input          io_validin64_3,
  input          io_validin64_4,
  input          io_validin64_5,
  input          io_validin64_6,
  input          io_validin64_7,
  input          io_validin64_8,
  input          io_validin64_9,
  input          io_validin64_10,
  input          io_validin64_11,
  input          io_validin64_12,
  input          io_validin64_13,
  input          io_validin64_14,
  input          io_validin64_15,
  input          io_validin64_16,
  input          io_validin64_17,
  input          io_validin64_18,
  input          io_validin64_19,
  input          io_validin64_20,
  input          io_validin64_21,
  input          io_validin64_22,
  input          io_validin64_23,
  input          io_validin64_24,
  input          io_validin64_25,
  input          io_validin64_26,
  input          io_validin64_27,
  input          io_validin64_28,
  input          io_validin64_29,
  input          io_validin64_30,
  input          io_validin64_31,
  input          io_validin64_32,
  input          io_validin64_33,
  input          io_validin64_34,
  input          io_validin64_35,
  input          io_validin64_36,
  input          io_validin64_37,
  input          io_validin64_38,
  input          io_validin64_39,
  input          io_validin64_40,
  input          io_validin64_41,
  input          io_validin64_42,
  input          io_validin64_43,
  input          io_validin64_44,
  input          io_validin64_45,
  input          io_validin64_46,
  input          io_validin64_47,
  input          io_validin64_48,
  input          io_validin64_49,
  input          io_validin64_50,
  input          io_validin64_51,
  input          io_validin64_52,
  input          io_validin64_53,
  input          io_validin64_54,
  input          io_validin64_55,
  input          io_validin64_56,
  input          io_validin64_57,
  input          io_validin64_58,
  input          io_validin64_59,
  input          io_validin64_60,
  input          io_validin64_61,
  input          io_validin64_62,
  input          io_validin64_63,
  output [63:0]  io_out64_0,
  output [63:0]  io_out64_1,
  output [63:0]  io_out64_2,
  output [63:0]  io_out64_3,
  output [63:0]  io_out64_4,
  output [63:0]  io_out64_5,
  output [63:0]  io_out64_6,
  output [63:0]  io_out64_7,
  output [63:0]  io_out64_8,
  output [63:0]  io_out64_9,
  output [63:0]  io_out64_10,
  output [63:0]  io_out64_11,
  output [63:0]  io_out64_12,
  output [63:0]  io_out64_13,
  output [63:0]  io_out64_14,
  output [63:0]  io_out64_15,
  output [63:0]  io_out64_16,
  output [63:0]  io_out64_17,
  output [63:0]  io_out64_18,
  output [63:0]  io_out64_19,
  output [63:0]  io_out64_20,
  output [63:0]  io_out64_21,
  output [63:0]  io_out64_22,
  output [63:0]  io_out64_23,
  output [63:0]  io_out64_24,
  output [63:0]  io_out64_25,
  output [63:0]  io_out64_26,
  output [63:0]  io_out64_27,
  output [63:0]  io_out64_28,
  output [63:0]  io_out64_29,
  output [63:0]  io_out64_30,
  output [63:0]  io_out64_31,
  output [63:0]  io_out64_32,
  output [63:0]  io_out64_33,
  output [63:0]  io_out64_34,
  output [63:0]  io_out64_35,
  output [63:0]  io_out64_36,
  output [63:0]  io_out64_37,
  output [63:0]  io_out64_38,
  output [63:0]  io_out64_39,
  output [63:0]  io_out64_40,
  output [63:0]  io_out64_41,
  output [63:0]  io_out64_42,
  output [63:0]  io_out64_43,
  output [63:0]  io_out64_44,
  output [63:0]  io_out64_45,
  output [63:0]  io_out64_46,
  output [63:0]  io_out64_47,
  output [63:0]  io_out64_48,
  output [63:0]  io_out64_49,
  output [63:0]  io_out64_50,
  output [63:0]  io_out64_51,
  output [63:0]  io_out64_52,
  output [63:0]  io_out64_53,
  output [63:0]  io_out64_54,
  output [63:0]  io_out64_55,
  output [63:0]  io_out64_56,
  output [63:0]  io_out64_57,
  output [63:0]  io_out64_58,
  output [63:0]  io_out64_59,
  output [63:0]  io_out64_60,
  output [63:0]  io_out64_61,
  output [63:0]  io_out64_62,
  output [63:0]  io_out64_63,
  output         io_validout64_0,
  output         io_validout64_1,
  output         io_validout64_2,
  output         io_validout64_3,
  output         io_validout64_4,
  output         io_validout64_5,
  output         io_validout64_6,
  output         io_validout64_7,
  output         io_validout64_8,
  output         io_validout64_9,
  output         io_validout64_10,
  output         io_validout64_11,
  output         io_validout64_12,
  output         io_validout64_13,
  output         io_validout64_14,
  output         io_validout64_15,
  output         io_validout64_16,
  output         io_validout64_17,
  output         io_validout64_18,
  output         io_validout64_19,
  output         io_validout64_20,
  output         io_validout64_21,
  output         io_validout64_22,
  output         io_validout64_23,
  output         io_validout64_24,
  output         io_validout64_25,
  output         io_validout64_26,
  output         io_validout64_27,
  output         io_validout64_28,
  output         io_validout64_29,
  output         io_validout64_30,
  output         io_validout64_31,
  output         io_validout64_32,
  output         io_validout64_33,
  output         io_validout64_34,
  output         io_validout64_35,
  output         io_validout64_36,
  output         io_validout64_37,
  output         io_validout64_38,
  output         io_validout64_39,
  output         io_validout64_40,
  output         io_validout64_41,
  output         io_validout64_42,
  output         io_validout64_43,
  output         io_validout64_44,
  output         io_validout64_45,
  output         io_validout64_46,
  output         io_validout64_47,
  output         io_validout64_48,
  output         io_validout64_49,
  output         io_validout64_50,
  output         io_validout64_51,
  output         io_validout64_52,
  output         io_validout64_53,
  output         io_validout64_54,
  output         io_validout64_55,
  output         io_validout64_56,
  output         io_validout64_57,
  output         io_validout64_58,
  output         io_validout64_59,
  output         io_validout64_60,
  output         io_validout64_61,
  output         io_validout64_62,
  output         io_validout64_63,
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  egress1_0_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_0_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_0_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_0_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_0_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_0_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_0_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_0_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_0_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_0_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_1_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_1_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_1_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_1_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_1_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_1_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_1_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_1_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_1_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_1_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_2_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_2_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_2_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_2_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_2_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_2_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_2_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_2_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_2_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_2_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_3_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_3_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_3_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_3_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_3_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_3_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_3_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_3_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_3_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_3_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_4_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_4_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_4_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_4_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_4_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_4_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_4_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_4_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_4_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_4_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_5_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_5_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_5_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_5_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_5_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_5_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_5_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_5_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_5_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_5_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_6_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_6_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_6_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_6_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_6_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_6_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_6_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_6_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_6_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_6_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_7_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_7_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_7_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_7_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_7_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_7_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_7_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_7_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_7_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_7_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_8_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_8_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_8_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_8_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_8_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_8_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_8_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_8_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_8_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_8_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_9_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_9_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_9_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_9_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_9_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_9_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_9_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_9_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_9_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_9_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_10_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_10_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_10_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_10_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_10_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_10_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_10_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_10_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_10_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_10_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_11_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_11_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_11_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_11_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_11_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_11_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_11_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_11_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_11_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_11_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_12_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_12_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_12_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_12_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_12_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_12_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_12_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_12_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_12_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_12_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_13_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_13_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_13_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_13_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_13_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_13_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_13_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_13_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_13_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_13_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_14_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_14_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_14_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_14_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_14_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_14_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_14_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_14_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_14_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_14_io_ctrl; // @[BuildingBlock.scala 114:51]
  wire  egress1_15_clock; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_15_io_in4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_15_io_in4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_15_io_in4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_15_io_in4_3; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_15_io_out4_0; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_15_io_out4_1; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_15_io_out4_2; // @[BuildingBlock.scala 114:51]
  wire [64:0] egress1_15_io_out4_3; // @[BuildingBlock.scala 114:51]
  wire [7:0] egress1_15_io_ctrl; // @[BuildingBlock.scala 114:51]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 115:25]
  CLOScell4 egress1_0 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_0_clock),
    .io_in4_0(egress1_0_io_in4_0),
    .io_in4_1(egress1_0_io_in4_1),
    .io_in4_2(egress1_0_io_in4_2),
    .io_in4_3(egress1_0_io_in4_3),
    .io_out4_0(egress1_0_io_out4_0),
    .io_out4_1(egress1_0_io_out4_1),
    .io_out4_2(egress1_0_io_out4_2),
    .io_out4_3(egress1_0_io_out4_3),
    .io_ctrl(egress1_0_io_ctrl)
  );
  CLOScell4 egress1_1 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_1_clock),
    .io_in4_0(egress1_1_io_in4_0),
    .io_in4_1(egress1_1_io_in4_1),
    .io_in4_2(egress1_1_io_in4_2),
    .io_in4_3(egress1_1_io_in4_3),
    .io_out4_0(egress1_1_io_out4_0),
    .io_out4_1(egress1_1_io_out4_1),
    .io_out4_2(egress1_1_io_out4_2),
    .io_out4_3(egress1_1_io_out4_3),
    .io_ctrl(egress1_1_io_ctrl)
  );
  CLOScell4 egress1_2 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_2_clock),
    .io_in4_0(egress1_2_io_in4_0),
    .io_in4_1(egress1_2_io_in4_1),
    .io_in4_2(egress1_2_io_in4_2),
    .io_in4_3(egress1_2_io_in4_3),
    .io_out4_0(egress1_2_io_out4_0),
    .io_out4_1(egress1_2_io_out4_1),
    .io_out4_2(egress1_2_io_out4_2),
    .io_out4_3(egress1_2_io_out4_3),
    .io_ctrl(egress1_2_io_ctrl)
  );
  CLOScell4 egress1_3 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_3_clock),
    .io_in4_0(egress1_3_io_in4_0),
    .io_in4_1(egress1_3_io_in4_1),
    .io_in4_2(egress1_3_io_in4_2),
    .io_in4_3(egress1_3_io_in4_3),
    .io_out4_0(egress1_3_io_out4_0),
    .io_out4_1(egress1_3_io_out4_1),
    .io_out4_2(egress1_3_io_out4_2),
    .io_out4_3(egress1_3_io_out4_3),
    .io_ctrl(egress1_3_io_ctrl)
  );
  CLOScell4 egress1_4 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_4_clock),
    .io_in4_0(egress1_4_io_in4_0),
    .io_in4_1(egress1_4_io_in4_1),
    .io_in4_2(egress1_4_io_in4_2),
    .io_in4_3(egress1_4_io_in4_3),
    .io_out4_0(egress1_4_io_out4_0),
    .io_out4_1(egress1_4_io_out4_1),
    .io_out4_2(egress1_4_io_out4_2),
    .io_out4_3(egress1_4_io_out4_3),
    .io_ctrl(egress1_4_io_ctrl)
  );
  CLOScell4 egress1_5 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_5_clock),
    .io_in4_0(egress1_5_io_in4_0),
    .io_in4_1(egress1_5_io_in4_1),
    .io_in4_2(egress1_5_io_in4_2),
    .io_in4_3(egress1_5_io_in4_3),
    .io_out4_0(egress1_5_io_out4_0),
    .io_out4_1(egress1_5_io_out4_1),
    .io_out4_2(egress1_5_io_out4_2),
    .io_out4_3(egress1_5_io_out4_3),
    .io_ctrl(egress1_5_io_ctrl)
  );
  CLOScell4 egress1_6 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_6_clock),
    .io_in4_0(egress1_6_io_in4_0),
    .io_in4_1(egress1_6_io_in4_1),
    .io_in4_2(egress1_6_io_in4_2),
    .io_in4_3(egress1_6_io_in4_3),
    .io_out4_0(egress1_6_io_out4_0),
    .io_out4_1(egress1_6_io_out4_1),
    .io_out4_2(egress1_6_io_out4_2),
    .io_out4_3(egress1_6_io_out4_3),
    .io_ctrl(egress1_6_io_ctrl)
  );
  CLOScell4 egress1_7 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_7_clock),
    .io_in4_0(egress1_7_io_in4_0),
    .io_in4_1(egress1_7_io_in4_1),
    .io_in4_2(egress1_7_io_in4_2),
    .io_in4_3(egress1_7_io_in4_3),
    .io_out4_0(egress1_7_io_out4_0),
    .io_out4_1(egress1_7_io_out4_1),
    .io_out4_2(egress1_7_io_out4_2),
    .io_out4_3(egress1_7_io_out4_3),
    .io_ctrl(egress1_7_io_ctrl)
  );
  CLOScell4 egress1_8 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_8_clock),
    .io_in4_0(egress1_8_io_in4_0),
    .io_in4_1(egress1_8_io_in4_1),
    .io_in4_2(egress1_8_io_in4_2),
    .io_in4_3(egress1_8_io_in4_3),
    .io_out4_0(egress1_8_io_out4_0),
    .io_out4_1(egress1_8_io_out4_1),
    .io_out4_2(egress1_8_io_out4_2),
    .io_out4_3(egress1_8_io_out4_3),
    .io_ctrl(egress1_8_io_ctrl)
  );
  CLOScell4 egress1_9 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_9_clock),
    .io_in4_0(egress1_9_io_in4_0),
    .io_in4_1(egress1_9_io_in4_1),
    .io_in4_2(egress1_9_io_in4_2),
    .io_in4_3(egress1_9_io_in4_3),
    .io_out4_0(egress1_9_io_out4_0),
    .io_out4_1(egress1_9_io_out4_1),
    .io_out4_2(egress1_9_io_out4_2),
    .io_out4_3(egress1_9_io_out4_3),
    .io_ctrl(egress1_9_io_ctrl)
  );
  CLOScell4 egress1_10 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_10_clock),
    .io_in4_0(egress1_10_io_in4_0),
    .io_in4_1(egress1_10_io_in4_1),
    .io_in4_2(egress1_10_io_in4_2),
    .io_in4_3(egress1_10_io_in4_3),
    .io_out4_0(egress1_10_io_out4_0),
    .io_out4_1(egress1_10_io_out4_1),
    .io_out4_2(egress1_10_io_out4_2),
    .io_out4_3(egress1_10_io_out4_3),
    .io_ctrl(egress1_10_io_ctrl)
  );
  CLOScell4 egress1_11 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_11_clock),
    .io_in4_0(egress1_11_io_in4_0),
    .io_in4_1(egress1_11_io_in4_1),
    .io_in4_2(egress1_11_io_in4_2),
    .io_in4_3(egress1_11_io_in4_3),
    .io_out4_0(egress1_11_io_out4_0),
    .io_out4_1(egress1_11_io_out4_1),
    .io_out4_2(egress1_11_io_out4_2),
    .io_out4_3(egress1_11_io_out4_3),
    .io_ctrl(egress1_11_io_ctrl)
  );
  CLOScell4 egress1_12 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_12_clock),
    .io_in4_0(egress1_12_io_in4_0),
    .io_in4_1(egress1_12_io_in4_1),
    .io_in4_2(egress1_12_io_in4_2),
    .io_in4_3(egress1_12_io_in4_3),
    .io_out4_0(egress1_12_io_out4_0),
    .io_out4_1(egress1_12_io_out4_1),
    .io_out4_2(egress1_12_io_out4_2),
    .io_out4_3(egress1_12_io_out4_3),
    .io_ctrl(egress1_12_io_ctrl)
  );
  CLOScell4 egress1_13 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_13_clock),
    .io_in4_0(egress1_13_io_in4_0),
    .io_in4_1(egress1_13_io_in4_1),
    .io_in4_2(egress1_13_io_in4_2),
    .io_in4_3(egress1_13_io_in4_3),
    .io_out4_0(egress1_13_io_out4_0),
    .io_out4_1(egress1_13_io_out4_1),
    .io_out4_2(egress1_13_io_out4_2),
    .io_out4_3(egress1_13_io_out4_3),
    .io_ctrl(egress1_13_io_ctrl)
  );
  CLOScell4 egress1_14 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_14_clock),
    .io_in4_0(egress1_14_io_in4_0),
    .io_in4_1(egress1_14_io_in4_1),
    .io_in4_2(egress1_14_io_in4_2),
    .io_in4_3(egress1_14_io_in4_3),
    .io_out4_0(egress1_14_io_out4_0),
    .io_out4_1(egress1_14_io_out4_1),
    .io_out4_2(egress1_14_io_out4_2),
    .io_out4_3(egress1_14_io_out4_3),
    .io_ctrl(egress1_14_io_ctrl)
  );
  CLOScell4 egress1_15 ( // @[BuildingBlock.scala 114:51]
    .clock(egress1_15_clock),
    .io_in4_0(egress1_15_io_in4_0),
    .io_in4_1(egress1_15_io_in4_1),
    .io_in4_2(egress1_15_io_in4_2),
    .io_in4_3(egress1_15_io_in4_3),
    .io_out4_0(egress1_15_io_out4_0),
    .io_out4_1(egress1_15_io_out4_1),
    .io_out4_2(egress1_15_io_out4_2),
    .io_out4_3(egress1_15_io_out4_3),
    .io_ctrl(egress1_15_io_ctrl)
  );
  assign io_out64_0 = egress1_0_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_1 = egress1_1_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_2 = egress1_2_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_3 = egress1_3_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_4 = egress1_4_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_5 = egress1_5_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_6 = egress1_6_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_7 = egress1_7_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_8 = egress1_8_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_9 = egress1_9_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_10 = egress1_10_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_11 = egress1_11_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_12 = egress1_12_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_13 = egress1_13_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_14 = egress1_14_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_15 = egress1_15_io_out4_0[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_16 = egress1_0_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_17 = egress1_1_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_18 = egress1_2_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_19 = egress1_3_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_20 = egress1_4_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_21 = egress1_5_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_22 = egress1_6_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_23 = egress1_7_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_24 = egress1_8_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_25 = egress1_9_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_26 = egress1_10_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_27 = egress1_11_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_28 = egress1_12_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_29 = egress1_13_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_30 = egress1_14_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_31 = egress1_15_io_out4_1[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_32 = egress1_0_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_33 = egress1_1_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_34 = egress1_2_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_35 = egress1_3_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_36 = egress1_4_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_37 = egress1_5_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_38 = egress1_6_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_39 = egress1_7_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_40 = egress1_8_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_41 = egress1_9_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_42 = egress1_10_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_43 = egress1_11_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_44 = egress1_12_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_45 = egress1_13_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_46 = egress1_14_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_47 = egress1_15_io_out4_2[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_48 = egress1_0_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_49 = egress1_1_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_50 = egress1_2_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_51 = egress1_3_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_52 = egress1_4_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_53 = egress1_5_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_54 = egress1_6_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_55 = egress1_7_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_56 = egress1_8_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_57 = egress1_9_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_58 = egress1_10_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_59 = egress1_11_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_60 = egress1_12_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_61 = egress1_13_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_62 = egress1_14_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_out64_63 = egress1_15_io_out4_3[63:0]; // @[BuildingBlock.scala 122:48]
  assign io_validout64_0 = egress1_0_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_1 = egress1_1_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_2 = egress1_2_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_3 = egress1_3_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_4 = egress1_4_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_5 = egress1_5_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_6 = egress1_6_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_7 = egress1_7_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_8 = egress1_8_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_9 = egress1_9_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_10 = egress1_10_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_11 = egress1_11_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_12 = egress1_12_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_13 = egress1_13_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_14 = egress1_14_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_15 = egress1_15_io_out4_0[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_16 = egress1_0_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_17 = egress1_1_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_18 = egress1_2_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_19 = egress1_3_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_20 = egress1_4_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_21 = egress1_5_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_22 = egress1_6_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_23 = egress1_7_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_24 = egress1_8_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_25 = egress1_9_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_26 = egress1_10_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_27 = egress1_11_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_28 = egress1_12_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_29 = egress1_13_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_30 = egress1_14_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_31 = egress1_15_io_out4_1[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_32 = egress1_0_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_33 = egress1_1_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_34 = egress1_2_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_35 = egress1_3_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_36 = egress1_4_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_37 = egress1_5_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_38 = egress1_6_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_39 = egress1_7_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_40 = egress1_8_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_41 = egress1_9_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_42 = egress1_10_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_43 = egress1_11_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_44 = egress1_12_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_45 = egress1_13_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_46 = egress1_14_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_47 = egress1_15_io_out4_2[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_48 = egress1_0_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_49 = egress1_1_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_50 = egress1_2_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_51 = egress1_3_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_52 = egress1_4_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_53 = egress1_5_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_54 = egress1_6_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_55 = egress1_7_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_56 = egress1_8_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_57 = egress1_9_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_58 = egress1_10_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_59 = egress1_11_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_60 = egress1_12_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_61 = egress1_13_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_62 = egress1_14_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign io_validout64_63 = egress1_15_io_out4_3[64]; // @[BuildingBlock.scala 123:53]
  assign egress1_0_clock = clock;
  assign egress1_0_io_in4_0 = {io_validin64_0,io_in64_0}; // @[Cat.scala 30:58]
  assign egress1_0_io_in4_1 = {io_validin64_1,io_in64_1}; // @[Cat.scala 30:58]
  assign egress1_0_io_in4_2 = {io_validin64_2,io_in64_2}; // @[Cat.scala 30:58]
  assign egress1_0_io_in4_3 = {io_validin64_3,io_in64_3}; // @[Cat.scala 30:58]
  assign egress1_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 127:35]
  assign egress1_1_clock = clock;
  assign egress1_1_io_in4_0 = {io_validin64_4,io_in64_4}; // @[Cat.scala 30:58]
  assign egress1_1_io_in4_1 = {io_validin64_5,io_in64_5}; // @[Cat.scala 30:58]
  assign egress1_1_io_in4_2 = {io_validin64_6,io_in64_6}; // @[Cat.scala 30:58]
  assign egress1_1_io_in4_3 = {io_validin64_7,io_in64_7}; // @[Cat.scala 30:58]
  assign egress1_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 127:35]
  assign egress1_2_clock = clock;
  assign egress1_2_io_in4_0 = {io_validin64_8,io_in64_8}; // @[Cat.scala 30:58]
  assign egress1_2_io_in4_1 = {io_validin64_9,io_in64_9}; // @[Cat.scala 30:58]
  assign egress1_2_io_in4_2 = {io_validin64_10,io_in64_10}; // @[Cat.scala 30:58]
  assign egress1_2_io_in4_3 = {io_validin64_11,io_in64_11}; // @[Cat.scala 30:58]
  assign egress1_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 127:35]
  assign egress1_3_clock = clock;
  assign egress1_3_io_in4_0 = {io_validin64_12,io_in64_12}; // @[Cat.scala 30:58]
  assign egress1_3_io_in4_1 = {io_validin64_13,io_in64_13}; // @[Cat.scala 30:58]
  assign egress1_3_io_in4_2 = {io_validin64_14,io_in64_14}; // @[Cat.scala 30:58]
  assign egress1_3_io_in4_3 = {io_validin64_15,io_in64_15}; // @[Cat.scala 30:58]
  assign egress1_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 127:35]
  assign egress1_4_clock = clock;
  assign egress1_4_io_in4_0 = {io_validin64_16,io_in64_16}; // @[Cat.scala 30:58]
  assign egress1_4_io_in4_1 = {io_validin64_17,io_in64_17}; // @[Cat.scala 30:58]
  assign egress1_4_io_in4_2 = {io_validin64_18,io_in64_18}; // @[Cat.scala 30:58]
  assign egress1_4_io_in4_3 = {io_validin64_19,io_in64_19}; // @[Cat.scala 30:58]
  assign egress1_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 127:35]
  assign egress1_5_clock = clock;
  assign egress1_5_io_in4_0 = {io_validin64_20,io_in64_20}; // @[Cat.scala 30:58]
  assign egress1_5_io_in4_1 = {io_validin64_21,io_in64_21}; // @[Cat.scala 30:58]
  assign egress1_5_io_in4_2 = {io_validin64_22,io_in64_22}; // @[Cat.scala 30:58]
  assign egress1_5_io_in4_3 = {io_validin64_23,io_in64_23}; // @[Cat.scala 30:58]
  assign egress1_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 127:35]
  assign egress1_6_clock = clock;
  assign egress1_6_io_in4_0 = {io_validin64_24,io_in64_24}; // @[Cat.scala 30:58]
  assign egress1_6_io_in4_1 = {io_validin64_25,io_in64_25}; // @[Cat.scala 30:58]
  assign egress1_6_io_in4_2 = {io_validin64_26,io_in64_26}; // @[Cat.scala 30:58]
  assign egress1_6_io_in4_3 = {io_validin64_27,io_in64_27}; // @[Cat.scala 30:58]
  assign egress1_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 127:35]
  assign egress1_7_clock = clock;
  assign egress1_7_io_in4_0 = {io_validin64_28,io_in64_28}; // @[Cat.scala 30:58]
  assign egress1_7_io_in4_1 = {io_validin64_29,io_in64_29}; // @[Cat.scala 30:58]
  assign egress1_7_io_in4_2 = {io_validin64_30,io_in64_30}; // @[Cat.scala 30:58]
  assign egress1_7_io_in4_3 = {io_validin64_31,io_in64_31}; // @[Cat.scala 30:58]
  assign egress1_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 127:35]
  assign egress1_8_clock = clock;
  assign egress1_8_io_in4_0 = {io_validin64_32,io_in64_32}; // @[Cat.scala 30:58]
  assign egress1_8_io_in4_1 = {io_validin64_33,io_in64_33}; // @[Cat.scala 30:58]
  assign egress1_8_io_in4_2 = {io_validin64_34,io_in64_34}; // @[Cat.scala 30:58]
  assign egress1_8_io_in4_3 = {io_validin64_35,io_in64_35}; // @[Cat.scala 30:58]
  assign egress1_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 127:35]
  assign egress1_9_clock = clock;
  assign egress1_9_io_in4_0 = {io_validin64_36,io_in64_36}; // @[Cat.scala 30:58]
  assign egress1_9_io_in4_1 = {io_validin64_37,io_in64_37}; // @[Cat.scala 30:58]
  assign egress1_9_io_in4_2 = {io_validin64_38,io_in64_38}; // @[Cat.scala 30:58]
  assign egress1_9_io_in4_3 = {io_validin64_39,io_in64_39}; // @[Cat.scala 30:58]
  assign egress1_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 127:35]
  assign egress1_10_clock = clock;
  assign egress1_10_io_in4_0 = {io_validin64_40,io_in64_40}; // @[Cat.scala 30:58]
  assign egress1_10_io_in4_1 = {io_validin64_41,io_in64_41}; // @[Cat.scala 30:58]
  assign egress1_10_io_in4_2 = {io_validin64_42,io_in64_42}; // @[Cat.scala 30:58]
  assign egress1_10_io_in4_3 = {io_validin64_43,io_in64_43}; // @[Cat.scala 30:58]
  assign egress1_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 127:35]
  assign egress1_11_clock = clock;
  assign egress1_11_io_in4_0 = {io_validin64_44,io_in64_44}; // @[Cat.scala 30:58]
  assign egress1_11_io_in4_1 = {io_validin64_45,io_in64_45}; // @[Cat.scala 30:58]
  assign egress1_11_io_in4_2 = {io_validin64_46,io_in64_46}; // @[Cat.scala 30:58]
  assign egress1_11_io_in4_3 = {io_validin64_47,io_in64_47}; // @[Cat.scala 30:58]
  assign egress1_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 127:35]
  assign egress1_12_clock = clock;
  assign egress1_12_io_in4_0 = {io_validin64_48,io_in64_48}; // @[Cat.scala 30:58]
  assign egress1_12_io_in4_1 = {io_validin64_49,io_in64_49}; // @[Cat.scala 30:58]
  assign egress1_12_io_in4_2 = {io_validin64_50,io_in64_50}; // @[Cat.scala 30:58]
  assign egress1_12_io_in4_3 = {io_validin64_51,io_in64_51}; // @[Cat.scala 30:58]
  assign egress1_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 127:35]
  assign egress1_13_clock = clock;
  assign egress1_13_io_in4_0 = {io_validin64_52,io_in64_52}; // @[Cat.scala 30:58]
  assign egress1_13_io_in4_1 = {io_validin64_53,io_in64_53}; // @[Cat.scala 30:58]
  assign egress1_13_io_in4_2 = {io_validin64_54,io_in64_54}; // @[Cat.scala 30:58]
  assign egress1_13_io_in4_3 = {io_validin64_55,io_in64_55}; // @[Cat.scala 30:58]
  assign egress1_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 127:35]
  assign egress1_14_clock = clock;
  assign egress1_14_io_in4_0 = {io_validin64_56,io_in64_56}; // @[Cat.scala 30:58]
  assign egress1_14_io_in4_1 = {io_validin64_57,io_in64_57}; // @[Cat.scala 30:58]
  assign egress1_14_io_in4_2 = {io_validin64_58,io_in64_58}; // @[Cat.scala 30:58]
  assign egress1_14_io_in4_3 = {io_validin64_59,io_in64_59}; // @[Cat.scala 30:58]
  assign egress1_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 127:35]
  assign egress1_15_clock = clock;
  assign egress1_15_io_in4_0 = {io_validin64_60,io_in64_60}; // @[Cat.scala 30:58]
  assign egress1_15_io_in4_1 = {io_validin64_61,io_in64_61}; // @[Cat.scala 30:58]
  assign egress1_15_io_in4_2 = {io_validin64_62,io_in64_62}; // @[Cat.scala 30:58]
  assign egress1_15_io_in4_3 = {io_validin64_63,io_in64_63}; // @[Cat.scala 30:58]
  assign egress1_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 127:35]
  always @(posedge clock) begin
    if (reset) begin // @[BuildingBlock.scala 115:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 115:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 116:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {4{`RANDOM}};
  ctrl_reg = _RAND_0[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CLOSegress2(
  input          clock,
  input          reset,
  input  [63:0]  io_in64_0,
  input  [63:0]  io_in64_1,
  input  [63:0]  io_in64_2,
  input  [63:0]  io_in64_3,
  input  [63:0]  io_in64_4,
  input  [63:0]  io_in64_5,
  input  [63:0]  io_in64_6,
  input  [63:0]  io_in64_7,
  input  [63:0]  io_in64_8,
  input  [63:0]  io_in64_9,
  input  [63:0]  io_in64_10,
  input  [63:0]  io_in64_11,
  input  [63:0]  io_in64_12,
  input  [63:0]  io_in64_13,
  input  [63:0]  io_in64_14,
  input  [63:0]  io_in64_15,
  input  [63:0]  io_in64_16,
  input  [63:0]  io_in64_17,
  input  [63:0]  io_in64_18,
  input  [63:0]  io_in64_19,
  input  [63:0]  io_in64_20,
  input  [63:0]  io_in64_21,
  input  [63:0]  io_in64_22,
  input  [63:0]  io_in64_23,
  input  [63:0]  io_in64_24,
  input  [63:0]  io_in64_25,
  input  [63:0]  io_in64_26,
  input  [63:0]  io_in64_27,
  input  [63:0]  io_in64_28,
  input  [63:0]  io_in64_29,
  input  [63:0]  io_in64_30,
  input  [63:0]  io_in64_31,
  input  [63:0]  io_in64_32,
  input  [63:0]  io_in64_33,
  input  [63:0]  io_in64_34,
  input  [63:0]  io_in64_35,
  input  [63:0]  io_in64_36,
  input  [63:0]  io_in64_37,
  input  [63:0]  io_in64_38,
  input  [63:0]  io_in64_39,
  input  [63:0]  io_in64_40,
  input  [63:0]  io_in64_41,
  input  [63:0]  io_in64_42,
  input  [63:0]  io_in64_43,
  input  [63:0]  io_in64_44,
  input  [63:0]  io_in64_45,
  input  [63:0]  io_in64_46,
  input  [63:0]  io_in64_47,
  input  [63:0]  io_in64_48,
  input  [63:0]  io_in64_49,
  input  [63:0]  io_in64_50,
  input  [63:0]  io_in64_51,
  input  [63:0]  io_in64_52,
  input  [63:0]  io_in64_53,
  input  [63:0]  io_in64_54,
  input  [63:0]  io_in64_55,
  input  [63:0]  io_in64_56,
  input  [63:0]  io_in64_57,
  input  [63:0]  io_in64_58,
  input  [63:0]  io_in64_59,
  input  [63:0]  io_in64_60,
  input  [63:0]  io_in64_61,
  input  [63:0]  io_in64_62,
  input  [63:0]  io_in64_63,
  input          io_validin64_0,
  input          io_validin64_1,
  input          io_validin64_2,
  input          io_validin64_3,
  input          io_validin64_4,
  input          io_validin64_5,
  input          io_validin64_6,
  input          io_validin64_7,
  input          io_validin64_8,
  input          io_validin64_9,
  input          io_validin64_10,
  input          io_validin64_11,
  input          io_validin64_12,
  input          io_validin64_13,
  input          io_validin64_14,
  input          io_validin64_15,
  input          io_validin64_16,
  input          io_validin64_17,
  input          io_validin64_18,
  input          io_validin64_19,
  input          io_validin64_20,
  input          io_validin64_21,
  input          io_validin64_22,
  input          io_validin64_23,
  input          io_validin64_24,
  input          io_validin64_25,
  input          io_validin64_26,
  input          io_validin64_27,
  input          io_validin64_28,
  input          io_validin64_29,
  input          io_validin64_30,
  input          io_validin64_31,
  input          io_validin64_32,
  input          io_validin64_33,
  input          io_validin64_34,
  input          io_validin64_35,
  input          io_validin64_36,
  input          io_validin64_37,
  input          io_validin64_38,
  input          io_validin64_39,
  input          io_validin64_40,
  input          io_validin64_41,
  input          io_validin64_42,
  input          io_validin64_43,
  input          io_validin64_44,
  input          io_validin64_45,
  input          io_validin64_46,
  input          io_validin64_47,
  input          io_validin64_48,
  input          io_validin64_49,
  input          io_validin64_50,
  input          io_validin64_51,
  input          io_validin64_52,
  input          io_validin64_53,
  input          io_validin64_54,
  input          io_validin64_55,
  input          io_validin64_56,
  input          io_validin64_57,
  input          io_validin64_58,
  input          io_validin64_59,
  input          io_validin64_60,
  input          io_validin64_61,
  input          io_validin64_62,
  input          io_validin64_63,
  output [63:0]  io_out64_0,
  output [63:0]  io_out64_1,
  output [63:0]  io_out64_2,
  output [63:0]  io_out64_3,
  output [63:0]  io_out64_4,
  output [63:0]  io_out64_5,
  output [63:0]  io_out64_6,
  output [63:0]  io_out64_7,
  output [63:0]  io_out64_8,
  output [63:0]  io_out64_9,
  output [63:0]  io_out64_10,
  output [63:0]  io_out64_11,
  output [63:0]  io_out64_12,
  output [63:0]  io_out64_13,
  output [63:0]  io_out64_14,
  output [63:0]  io_out64_15,
  output [63:0]  io_out64_16,
  output [63:0]  io_out64_17,
  output [63:0]  io_out64_18,
  output [63:0]  io_out64_19,
  output [63:0]  io_out64_20,
  output [63:0]  io_out64_21,
  output [63:0]  io_out64_22,
  output [63:0]  io_out64_23,
  output [63:0]  io_out64_24,
  output [63:0]  io_out64_25,
  output [63:0]  io_out64_26,
  output [63:0]  io_out64_27,
  output [63:0]  io_out64_28,
  output [63:0]  io_out64_29,
  output [63:0]  io_out64_30,
  output [63:0]  io_out64_31,
  output [63:0]  io_out64_32,
  output [63:0]  io_out64_33,
  output [63:0]  io_out64_34,
  output [63:0]  io_out64_35,
  output [63:0]  io_out64_36,
  output [63:0]  io_out64_37,
  output [63:0]  io_out64_38,
  output [63:0]  io_out64_39,
  output [63:0]  io_out64_40,
  output [63:0]  io_out64_41,
  output [63:0]  io_out64_42,
  output [63:0]  io_out64_43,
  output [63:0]  io_out64_44,
  output [63:0]  io_out64_45,
  output [63:0]  io_out64_46,
  output [63:0]  io_out64_47,
  output [63:0]  io_out64_48,
  output [63:0]  io_out64_49,
  output [63:0]  io_out64_50,
  output [63:0]  io_out64_51,
  output [63:0]  io_out64_52,
  output [63:0]  io_out64_53,
  output [63:0]  io_out64_54,
  output [63:0]  io_out64_55,
  output [63:0]  io_out64_56,
  output [63:0]  io_out64_57,
  output [63:0]  io_out64_58,
  output [63:0]  io_out64_59,
  output [63:0]  io_out64_60,
  output [63:0]  io_out64_61,
  output [63:0]  io_out64_62,
  output [63:0]  io_out64_63,
  output         io_validout64_0,
  output         io_validout64_1,
  output         io_validout64_2,
  output         io_validout64_3,
  output         io_validout64_4,
  output         io_validout64_5,
  output         io_validout64_6,
  output         io_validout64_7,
  output         io_validout64_8,
  output         io_validout64_9,
  output         io_validout64_10,
  output         io_validout64_11,
  output         io_validout64_12,
  output         io_validout64_13,
  output         io_validout64_14,
  output         io_validout64_15,
  output         io_validout64_16,
  output         io_validout64_17,
  output         io_validout64_18,
  output         io_validout64_19,
  output         io_validout64_20,
  output         io_validout64_21,
  output         io_validout64_22,
  output         io_validout64_23,
  output         io_validout64_24,
  output         io_validout64_25,
  output         io_validout64_26,
  output         io_validout64_27,
  output         io_validout64_28,
  output         io_validout64_29,
  output         io_validout64_30,
  output         io_validout64_31,
  output         io_validout64_32,
  output         io_validout64_33,
  output         io_validout64_34,
  output         io_validout64_35,
  output         io_validout64_36,
  output         io_validout64_37,
  output         io_validout64_38,
  output         io_validout64_39,
  output         io_validout64_40,
  output         io_validout64_41,
  output         io_validout64_42,
  output         io_validout64_43,
  output         io_validout64_44,
  output         io_validout64_45,
  output         io_validout64_46,
  output         io_validout64_47,
  output         io_validout64_48,
  output         io_validout64_49,
  output         io_validout64_50,
  output         io_validout64_51,
  output         io_validout64_52,
  output         io_validout64_53,
  output         io_validout64_54,
  output         io_validout64_55,
  output         io_validout64_56,
  output         io_validout64_57,
  output         io_validout64_58,
  output         io_validout64_59,
  output         io_validout64_60,
  output         io_validout64_61,
  output         io_validout64_62,
  output         io_validout64_63,
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  egress2_0_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_0_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_0_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_0_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_0_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_0_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_0_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_0_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_0_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_0_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_1_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_1_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_1_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_1_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_1_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_1_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_1_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_1_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_1_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_1_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_2_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_2_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_2_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_2_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_2_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_2_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_2_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_2_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_2_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_2_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_3_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_3_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_3_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_3_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_3_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_3_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_3_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_3_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_3_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_3_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_4_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_4_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_4_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_4_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_4_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_4_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_4_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_4_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_4_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_4_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_5_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_5_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_5_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_5_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_5_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_5_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_5_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_5_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_5_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_5_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_6_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_6_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_6_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_6_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_6_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_6_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_6_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_6_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_6_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_6_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_7_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_7_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_7_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_7_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_7_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_7_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_7_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_7_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_7_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_7_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_8_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_8_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_8_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_8_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_8_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_8_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_8_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_8_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_8_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_8_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_9_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_9_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_9_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_9_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_9_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_9_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_9_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_9_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_9_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_9_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_10_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_10_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_10_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_10_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_10_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_10_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_10_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_10_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_10_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_10_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_11_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_11_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_11_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_11_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_11_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_11_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_11_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_11_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_11_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_11_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_12_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_12_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_12_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_12_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_12_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_12_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_12_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_12_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_12_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_12_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_13_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_13_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_13_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_13_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_13_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_13_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_13_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_13_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_13_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_13_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_14_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_14_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_14_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_14_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_14_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_14_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_14_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_14_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_14_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_14_io_ctrl; // @[BuildingBlock.scala 139:51]
  wire  egress2_15_clock; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_15_io_in4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_15_io_in4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_15_io_in4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_15_io_in4_3; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_15_io_out4_0; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_15_io_out4_1; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_15_io_out4_2; // @[BuildingBlock.scala 139:51]
  wire [64:0] egress2_15_io_out4_3; // @[BuildingBlock.scala 139:51]
  wire [7:0] egress2_15_io_ctrl; // @[BuildingBlock.scala 139:51]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 140:25]
  CLOScell4 egress2_0 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_0_clock),
    .io_in4_0(egress2_0_io_in4_0),
    .io_in4_1(egress2_0_io_in4_1),
    .io_in4_2(egress2_0_io_in4_2),
    .io_in4_3(egress2_0_io_in4_3),
    .io_out4_0(egress2_0_io_out4_0),
    .io_out4_1(egress2_0_io_out4_1),
    .io_out4_2(egress2_0_io_out4_2),
    .io_out4_3(egress2_0_io_out4_3),
    .io_ctrl(egress2_0_io_ctrl)
  );
  CLOScell4 egress2_1 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_1_clock),
    .io_in4_0(egress2_1_io_in4_0),
    .io_in4_1(egress2_1_io_in4_1),
    .io_in4_2(egress2_1_io_in4_2),
    .io_in4_3(egress2_1_io_in4_3),
    .io_out4_0(egress2_1_io_out4_0),
    .io_out4_1(egress2_1_io_out4_1),
    .io_out4_2(egress2_1_io_out4_2),
    .io_out4_3(egress2_1_io_out4_3),
    .io_ctrl(egress2_1_io_ctrl)
  );
  CLOScell4 egress2_2 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_2_clock),
    .io_in4_0(egress2_2_io_in4_0),
    .io_in4_1(egress2_2_io_in4_1),
    .io_in4_2(egress2_2_io_in4_2),
    .io_in4_3(egress2_2_io_in4_3),
    .io_out4_0(egress2_2_io_out4_0),
    .io_out4_1(egress2_2_io_out4_1),
    .io_out4_2(egress2_2_io_out4_2),
    .io_out4_3(egress2_2_io_out4_3),
    .io_ctrl(egress2_2_io_ctrl)
  );
  CLOScell4 egress2_3 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_3_clock),
    .io_in4_0(egress2_3_io_in4_0),
    .io_in4_1(egress2_3_io_in4_1),
    .io_in4_2(egress2_3_io_in4_2),
    .io_in4_3(egress2_3_io_in4_3),
    .io_out4_0(egress2_3_io_out4_0),
    .io_out4_1(egress2_3_io_out4_1),
    .io_out4_2(egress2_3_io_out4_2),
    .io_out4_3(egress2_3_io_out4_3),
    .io_ctrl(egress2_3_io_ctrl)
  );
  CLOScell4 egress2_4 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_4_clock),
    .io_in4_0(egress2_4_io_in4_0),
    .io_in4_1(egress2_4_io_in4_1),
    .io_in4_2(egress2_4_io_in4_2),
    .io_in4_3(egress2_4_io_in4_3),
    .io_out4_0(egress2_4_io_out4_0),
    .io_out4_1(egress2_4_io_out4_1),
    .io_out4_2(egress2_4_io_out4_2),
    .io_out4_3(egress2_4_io_out4_3),
    .io_ctrl(egress2_4_io_ctrl)
  );
  CLOScell4 egress2_5 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_5_clock),
    .io_in4_0(egress2_5_io_in4_0),
    .io_in4_1(egress2_5_io_in4_1),
    .io_in4_2(egress2_5_io_in4_2),
    .io_in4_3(egress2_5_io_in4_3),
    .io_out4_0(egress2_5_io_out4_0),
    .io_out4_1(egress2_5_io_out4_1),
    .io_out4_2(egress2_5_io_out4_2),
    .io_out4_3(egress2_5_io_out4_3),
    .io_ctrl(egress2_5_io_ctrl)
  );
  CLOScell4 egress2_6 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_6_clock),
    .io_in4_0(egress2_6_io_in4_0),
    .io_in4_1(egress2_6_io_in4_1),
    .io_in4_2(egress2_6_io_in4_2),
    .io_in4_3(egress2_6_io_in4_3),
    .io_out4_0(egress2_6_io_out4_0),
    .io_out4_1(egress2_6_io_out4_1),
    .io_out4_2(egress2_6_io_out4_2),
    .io_out4_3(egress2_6_io_out4_3),
    .io_ctrl(egress2_6_io_ctrl)
  );
  CLOScell4 egress2_7 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_7_clock),
    .io_in4_0(egress2_7_io_in4_0),
    .io_in4_1(egress2_7_io_in4_1),
    .io_in4_2(egress2_7_io_in4_2),
    .io_in4_3(egress2_7_io_in4_3),
    .io_out4_0(egress2_7_io_out4_0),
    .io_out4_1(egress2_7_io_out4_1),
    .io_out4_2(egress2_7_io_out4_2),
    .io_out4_3(egress2_7_io_out4_3),
    .io_ctrl(egress2_7_io_ctrl)
  );
  CLOScell4 egress2_8 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_8_clock),
    .io_in4_0(egress2_8_io_in4_0),
    .io_in4_1(egress2_8_io_in4_1),
    .io_in4_2(egress2_8_io_in4_2),
    .io_in4_3(egress2_8_io_in4_3),
    .io_out4_0(egress2_8_io_out4_0),
    .io_out4_1(egress2_8_io_out4_1),
    .io_out4_2(egress2_8_io_out4_2),
    .io_out4_3(egress2_8_io_out4_3),
    .io_ctrl(egress2_8_io_ctrl)
  );
  CLOScell4 egress2_9 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_9_clock),
    .io_in4_0(egress2_9_io_in4_0),
    .io_in4_1(egress2_9_io_in4_1),
    .io_in4_2(egress2_9_io_in4_2),
    .io_in4_3(egress2_9_io_in4_3),
    .io_out4_0(egress2_9_io_out4_0),
    .io_out4_1(egress2_9_io_out4_1),
    .io_out4_2(egress2_9_io_out4_2),
    .io_out4_3(egress2_9_io_out4_3),
    .io_ctrl(egress2_9_io_ctrl)
  );
  CLOScell4 egress2_10 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_10_clock),
    .io_in4_0(egress2_10_io_in4_0),
    .io_in4_1(egress2_10_io_in4_1),
    .io_in4_2(egress2_10_io_in4_2),
    .io_in4_3(egress2_10_io_in4_3),
    .io_out4_0(egress2_10_io_out4_0),
    .io_out4_1(egress2_10_io_out4_1),
    .io_out4_2(egress2_10_io_out4_2),
    .io_out4_3(egress2_10_io_out4_3),
    .io_ctrl(egress2_10_io_ctrl)
  );
  CLOScell4 egress2_11 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_11_clock),
    .io_in4_0(egress2_11_io_in4_0),
    .io_in4_1(egress2_11_io_in4_1),
    .io_in4_2(egress2_11_io_in4_2),
    .io_in4_3(egress2_11_io_in4_3),
    .io_out4_0(egress2_11_io_out4_0),
    .io_out4_1(egress2_11_io_out4_1),
    .io_out4_2(egress2_11_io_out4_2),
    .io_out4_3(egress2_11_io_out4_3),
    .io_ctrl(egress2_11_io_ctrl)
  );
  CLOScell4 egress2_12 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_12_clock),
    .io_in4_0(egress2_12_io_in4_0),
    .io_in4_1(egress2_12_io_in4_1),
    .io_in4_2(egress2_12_io_in4_2),
    .io_in4_3(egress2_12_io_in4_3),
    .io_out4_0(egress2_12_io_out4_0),
    .io_out4_1(egress2_12_io_out4_1),
    .io_out4_2(egress2_12_io_out4_2),
    .io_out4_3(egress2_12_io_out4_3),
    .io_ctrl(egress2_12_io_ctrl)
  );
  CLOScell4 egress2_13 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_13_clock),
    .io_in4_0(egress2_13_io_in4_0),
    .io_in4_1(egress2_13_io_in4_1),
    .io_in4_2(egress2_13_io_in4_2),
    .io_in4_3(egress2_13_io_in4_3),
    .io_out4_0(egress2_13_io_out4_0),
    .io_out4_1(egress2_13_io_out4_1),
    .io_out4_2(egress2_13_io_out4_2),
    .io_out4_3(egress2_13_io_out4_3),
    .io_ctrl(egress2_13_io_ctrl)
  );
  CLOScell4 egress2_14 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_14_clock),
    .io_in4_0(egress2_14_io_in4_0),
    .io_in4_1(egress2_14_io_in4_1),
    .io_in4_2(egress2_14_io_in4_2),
    .io_in4_3(egress2_14_io_in4_3),
    .io_out4_0(egress2_14_io_out4_0),
    .io_out4_1(egress2_14_io_out4_1),
    .io_out4_2(egress2_14_io_out4_2),
    .io_out4_3(egress2_14_io_out4_3),
    .io_ctrl(egress2_14_io_ctrl)
  );
  CLOScell4 egress2_15 ( // @[BuildingBlock.scala 139:51]
    .clock(egress2_15_clock),
    .io_in4_0(egress2_15_io_in4_0),
    .io_in4_1(egress2_15_io_in4_1),
    .io_in4_2(egress2_15_io_in4_2),
    .io_in4_3(egress2_15_io_in4_3),
    .io_out4_0(egress2_15_io_out4_0),
    .io_out4_1(egress2_15_io_out4_1),
    .io_out4_2(egress2_15_io_out4_2),
    .io_out4_3(egress2_15_io_out4_3),
    .io_ctrl(egress2_15_io_ctrl)
  );
  assign io_out64_0 = egress2_0_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_1 = egress2_0_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_2 = egress2_0_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_3 = egress2_0_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_4 = egress2_1_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_5 = egress2_1_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_6 = egress2_1_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_7 = egress2_1_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_8 = egress2_2_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_9 = egress2_2_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_10 = egress2_2_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_11 = egress2_2_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_12 = egress2_3_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_13 = egress2_3_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_14 = egress2_3_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_15 = egress2_3_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_16 = egress2_4_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_17 = egress2_4_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_18 = egress2_4_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_19 = egress2_4_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_20 = egress2_5_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_21 = egress2_5_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_22 = egress2_5_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_23 = egress2_5_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_24 = egress2_6_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_25 = egress2_6_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_26 = egress2_6_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_27 = egress2_6_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_28 = egress2_7_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_29 = egress2_7_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_30 = egress2_7_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_31 = egress2_7_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_32 = egress2_8_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_33 = egress2_8_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_34 = egress2_8_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_35 = egress2_8_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_36 = egress2_9_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_37 = egress2_9_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_38 = egress2_9_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_39 = egress2_9_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_40 = egress2_10_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_41 = egress2_10_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_42 = egress2_10_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_43 = egress2_10_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_44 = egress2_11_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_45 = egress2_11_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_46 = egress2_11_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_47 = egress2_11_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_48 = egress2_12_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_49 = egress2_12_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_50 = egress2_12_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_51 = egress2_12_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_52 = egress2_13_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_53 = egress2_13_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_54 = egress2_13_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_55 = egress2_13_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_56 = egress2_14_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_57 = egress2_14_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_58 = egress2_14_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_59 = egress2_14_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_60 = egress2_15_io_out4_0[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_61 = egress2_15_io_out4_1[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_62 = egress2_15_io_out4_2[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_out64_63 = egress2_15_io_out4_3[63:0]; // @[BuildingBlock.scala 147:47]
  assign io_validout64_0 = egress2_0_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_1 = egress2_0_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_2 = egress2_0_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_3 = egress2_0_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_4 = egress2_1_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_5 = egress2_1_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_6 = egress2_1_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_7 = egress2_1_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_8 = egress2_2_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_9 = egress2_2_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_10 = egress2_2_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_11 = egress2_2_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_12 = egress2_3_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_13 = egress2_3_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_14 = egress2_3_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_15 = egress2_3_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_16 = egress2_4_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_17 = egress2_4_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_18 = egress2_4_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_19 = egress2_4_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_20 = egress2_5_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_21 = egress2_5_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_22 = egress2_5_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_23 = egress2_5_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_24 = egress2_6_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_25 = egress2_6_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_26 = egress2_6_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_27 = egress2_6_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_28 = egress2_7_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_29 = egress2_7_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_30 = egress2_7_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_31 = egress2_7_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_32 = egress2_8_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_33 = egress2_8_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_34 = egress2_8_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_35 = egress2_8_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_36 = egress2_9_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_37 = egress2_9_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_38 = egress2_9_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_39 = egress2_9_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_40 = egress2_10_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_41 = egress2_10_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_42 = egress2_10_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_43 = egress2_10_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_44 = egress2_11_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_45 = egress2_11_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_46 = egress2_11_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_47 = egress2_11_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_48 = egress2_12_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_49 = egress2_12_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_50 = egress2_12_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_51 = egress2_12_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_52 = egress2_13_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_53 = egress2_13_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_54 = egress2_13_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_55 = egress2_13_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_56 = egress2_14_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_57 = egress2_14_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_58 = egress2_14_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_59 = egress2_14_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_60 = egress2_15_io_out4_0[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_61 = egress2_15_io_out4_1[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_62 = egress2_15_io_out4_2[64]; // @[BuildingBlock.scala 148:52]
  assign io_validout64_63 = egress2_15_io_out4_3[64]; // @[BuildingBlock.scala 148:52]
  assign egress2_0_clock = clock;
  assign egress2_0_io_in4_0 = {io_validin64_0,io_in64_0}; // @[Cat.scala 30:58]
  assign egress2_0_io_in4_1 = {io_validin64_1,io_in64_1}; // @[Cat.scala 30:58]
  assign egress2_0_io_in4_2 = {io_validin64_2,io_in64_2}; // @[Cat.scala 30:58]
  assign egress2_0_io_in4_3 = {io_validin64_3,io_in64_3}; // @[Cat.scala 30:58]
  assign egress2_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 152:35]
  assign egress2_1_clock = clock;
  assign egress2_1_io_in4_0 = {io_validin64_4,io_in64_4}; // @[Cat.scala 30:58]
  assign egress2_1_io_in4_1 = {io_validin64_5,io_in64_5}; // @[Cat.scala 30:58]
  assign egress2_1_io_in4_2 = {io_validin64_6,io_in64_6}; // @[Cat.scala 30:58]
  assign egress2_1_io_in4_3 = {io_validin64_7,io_in64_7}; // @[Cat.scala 30:58]
  assign egress2_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 152:35]
  assign egress2_2_clock = clock;
  assign egress2_2_io_in4_0 = {io_validin64_8,io_in64_8}; // @[Cat.scala 30:58]
  assign egress2_2_io_in4_1 = {io_validin64_9,io_in64_9}; // @[Cat.scala 30:58]
  assign egress2_2_io_in4_2 = {io_validin64_10,io_in64_10}; // @[Cat.scala 30:58]
  assign egress2_2_io_in4_3 = {io_validin64_11,io_in64_11}; // @[Cat.scala 30:58]
  assign egress2_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 152:35]
  assign egress2_3_clock = clock;
  assign egress2_3_io_in4_0 = {io_validin64_12,io_in64_12}; // @[Cat.scala 30:58]
  assign egress2_3_io_in4_1 = {io_validin64_13,io_in64_13}; // @[Cat.scala 30:58]
  assign egress2_3_io_in4_2 = {io_validin64_14,io_in64_14}; // @[Cat.scala 30:58]
  assign egress2_3_io_in4_3 = {io_validin64_15,io_in64_15}; // @[Cat.scala 30:58]
  assign egress2_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 152:35]
  assign egress2_4_clock = clock;
  assign egress2_4_io_in4_0 = {io_validin64_16,io_in64_16}; // @[Cat.scala 30:58]
  assign egress2_4_io_in4_1 = {io_validin64_17,io_in64_17}; // @[Cat.scala 30:58]
  assign egress2_4_io_in4_2 = {io_validin64_18,io_in64_18}; // @[Cat.scala 30:58]
  assign egress2_4_io_in4_3 = {io_validin64_19,io_in64_19}; // @[Cat.scala 30:58]
  assign egress2_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 152:35]
  assign egress2_5_clock = clock;
  assign egress2_5_io_in4_0 = {io_validin64_20,io_in64_20}; // @[Cat.scala 30:58]
  assign egress2_5_io_in4_1 = {io_validin64_21,io_in64_21}; // @[Cat.scala 30:58]
  assign egress2_5_io_in4_2 = {io_validin64_22,io_in64_22}; // @[Cat.scala 30:58]
  assign egress2_5_io_in4_3 = {io_validin64_23,io_in64_23}; // @[Cat.scala 30:58]
  assign egress2_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 152:35]
  assign egress2_6_clock = clock;
  assign egress2_6_io_in4_0 = {io_validin64_24,io_in64_24}; // @[Cat.scala 30:58]
  assign egress2_6_io_in4_1 = {io_validin64_25,io_in64_25}; // @[Cat.scala 30:58]
  assign egress2_6_io_in4_2 = {io_validin64_26,io_in64_26}; // @[Cat.scala 30:58]
  assign egress2_6_io_in4_3 = {io_validin64_27,io_in64_27}; // @[Cat.scala 30:58]
  assign egress2_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 152:35]
  assign egress2_7_clock = clock;
  assign egress2_7_io_in4_0 = {io_validin64_28,io_in64_28}; // @[Cat.scala 30:58]
  assign egress2_7_io_in4_1 = {io_validin64_29,io_in64_29}; // @[Cat.scala 30:58]
  assign egress2_7_io_in4_2 = {io_validin64_30,io_in64_30}; // @[Cat.scala 30:58]
  assign egress2_7_io_in4_3 = {io_validin64_31,io_in64_31}; // @[Cat.scala 30:58]
  assign egress2_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 152:35]
  assign egress2_8_clock = clock;
  assign egress2_8_io_in4_0 = {io_validin64_32,io_in64_32}; // @[Cat.scala 30:58]
  assign egress2_8_io_in4_1 = {io_validin64_33,io_in64_33}; // @[Cat.scala 30:58]
  assign egress2_8_io_in4_2 = {io_validin64_34,io_in64_34}; // @[Cat.scala 30:58]
  assign egress2_8_io_in4_3 = {io_validin64_35,io_in64_35}; // @[Cat.scala 30:58]
  assign egress2_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 152:35]
  assign egress2_9_clock = clock;
  assign egress2_9_io_in4_0 = {io_validin64_36,io_in64_36}; // @[Cat.scala 30:58]
  assign egress2_9_io_in4_1 = {io_validin64_37,io_in64_37}; // @[Cat.scala 30:58]
  assign egress2_9_io_in4_2 = {io_validin64_38,io_in64_38}; // @[Cat.scala 30:58]
  assign egress2_9_io_in4_3 = {io_validin64_39,io_in64_39}; // @[Cat.scala 30:58]
  assign egress2_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 152:35]
  assign egress2_10_clock = clock;
  assign egress2_10_io_in4_0 = {io_validin64_40,io_in64_40}; // @[Cat.scala 30:58]
  assign egress2_10_io_in4_1 = {io_validin64_41,io_in64_41}; // @[Cat.scala 30:58]
  assign egress2_10_io_in4_2 = {io_validin64_42,io_in64_42}; // @[Cat.scala 30:58]
  assign egress2_10_io_in4_3 = {io_validin64_43,io_in64_43}; // @[Cat.scala 30:58]
  assign egress2_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 152:35]
  assign egress2_11_clock = clock;
  assign egress2_11_io_in4_0 = {io_validin64_44,io_in64_44}; // @[Cat.scala 30:58]
  assign egress2_11_io_in4_1 = {io_validin64_45,io_in64_45}; // @[Cat.scala 30:58]
  assign egress2_11_io_in4_2 = {io_validin64_46,io_in64_46}; // @[Cat.scala 30:58]
  assign egress2_11_io_in4_3 = {io_validin64_47,io_in64_47}; // @[Cat.scala 30:58]
  assign egress2_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 152:35]
  assign egress2_12_clock = clock;
  assign egress2_12_io_in4_0 = {io_validin64_48,io_in64_48}; // @[Cat.scala 30:58]
  assign egress2_12_io_in4_1 = {io_validin64_49,io_in64_49}; // @[Cat.scala 30:58]
  assign egress2_12_io_in4_2 = {io_validin64_50,io_in64_50}; // @[Cat.scala 30:58]
  assign egress2_12_io_in4_3 = {io_validin64_51,io_in64_51}; // @[Cat.scala 30:58]
  assign egress2_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 152:35]
  assign egress2_13_clock = clock;
  assign egress2_13_io_in4_0 = {io_validin64_52,io_in64_52}; // @[Cat.scala 30:58]
  assign egress2_13_io_in4_1 = {io_validin64_53,io_in64_53}; // @[Cat.scala 30:58]
  assign egress2_13_io_in4_2 = {io_validin64_54,io_in64_54}; // @[Cat.scala 30:58]
  assign egress2_13_io_in4_3 = {io_validin64_55,io_in64_55}; // @[Cat.scala 30:58]
  assign egress2_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 152:35]
  assign egress2_14_clock = clock;
  assign egress2_14_io_in4_0 = {io_validin64_56,io_in64_56}; // @[Cat.scala 30:58]
  assign egress2_14_io_in4_1 = {io_validin64_57,io_in64_57}; // @[Cat.scala 30:58]
  assign egress2_14_io_in4_2 = {io_validin64_58,io_in64_58}; // @[Cat.scala 30:58]
  assign egress2_14_io_in4_3 = {io_validin64_59,io_in64_59}; // @[Cat.scala 30:58]
  assign egress2_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 152:35]
  assign egress2_15_clock = clock;
  assign egress2_15_io_in4_0 = {io_validin64_60,io_in64_60}; // @[Cat.scala 30:58]
  assign egress2_15_io_in4_1 = {io_validin64_61,io_in64_61}; // @[Cat.scala 30:58]
  assign egress2_15_io_in4_2 = {io_validin64_62,io_in64_62}; // @[Cat.scala 30:58]
  assign egress2_15_io_in4_3 = {io_validin64_63,io_in64_63}; // @[Cat.scala 30:58]
  assign egress2_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 152:35]
  always @(posedge clock) begin
    if (reset) begin // @[BuildingBlock.scala 140:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 140:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 141:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {4{`RANDOM}};
  ctrl_reg = _RAND_0[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module BuildingBlockNew(
  input          clock,
  input          reset,
  input  [63:0]  io_d_in_0_a,
  input          io_d_in_0_valid_a,
  input  [63:0]  io_d_in_0_b,
  input          io_d_in_0_valid_b,
  input  [63:0]  io_d_in_1_a,
  input          io_d_in_1_valid_a,
  input  [63:0]  io_d_in_1_b,
  input          io_d_in_1_valid_b,
  input  [63:0]  io_d_in_2_a,
  input          io_d_in_2_valid_a,
  input  [63:0]  io_d_in_2_b,
  input          io_d_in_2_valid_b,
  input  [63:0]  io_d_in_3_a,
  input          io_d_in_3_valid_a,
  input  [63:0]  io_d_in_3_b,
  input          io_d_in_3_valid_b,
  input  [63:0]  io_d_in_4_a,
  input          io_d_in_4_valid_a,
  input  [63:0]  io_d_in_4_b,
  input          io_d_in_4_valid_b,
  input  [63:0]  io_d_in_5_a,
  input          io_d_in_5_valid_a,
  input  [63:0]  io_d_in_5_b,
  input          io_d_in_5_valid_b,
  input  [63:0]  io_d_in_6_a,
  input          io_d_in_6_valid_a,
  input  [63:0]  io_d_in_6_b,
  input          io_d_in_6_valid_b,
  input  [63:0]  io_d_in_7_a,
  input          io_d_in_7_valid_a,
  input  [63:0]  io_d_in_7_b,
  input          io_d_in_7_valid_b,
  input  [63:0]  io_d_in_8_a,
  input          io_d_in_8_valid_a,
  input  [63:0]  io_d_in_8_b,
  input          io_d_in_8_valid_b,
  input  [63:0]  io_d_in_9_a,
  input          io_d_in_9_valid_a,
  input  [63:0]  io_d_in_9_b,
  input          io_d_in_9_valid_b,
  input  [63:0]  io_d_in_10_a,
  input          io_d_in_10_valid_a,
  input  [63:0]  io_d_in_10_b,
  input          io_d_in_10_valid_b,
  input  [63:0]  io_d_in_11_a,
  input          io_d_in_11_valid_a,
  input  [63:0]  io_d_in_11_b,
  input          io_d_in_11_valid_b,
  input  [63:0]  io_d_in_12_a,
  input          io_d_in_12_valid_a,
  input  [63:0]  io_d_in_12_b,
  input          io_d_in_12_valid_b,
  input  [63:0]  io_d_in_13_a,
  input          io_d_in_13_valid_a,
  input  [63:0]  io_d_in_13_b,
  input          io_d_in_13_valid_b,
  input  [63:0]  io_d_in_14_a,
  input          io_d_in_14_valid_a,
  input  [63:0]  io_d_in_14_b,
  input          io_d_in_14_valid_b,
  input  [63:0]  io_d_in_15_a,
  input          io_d_in_15_valid_a,
  input  [63:0]  io_d_in_15_b,
  input          io_d_in_15_valid_b,
  input  [63:0]  io_d_in_16_a,
  input          io_d_in_16_valid_a,
  input  [63:0]  io_d_in_16_b,
  input          io_d_in_16_valid_b,
  input  [63:0]  io_d_in_17_a,
  input          io_d_in_17_valid_a,
  input  [63:0]  io_d_in_17_b,
  input          io_d_in_17_valid_b,
  input  [63:0]  io_d_in_18_a,
  input          io_d_in_18_valid_a,
  input  [63:0]  io_d_in_18_b,
  input          io_d_in_18_valid_b,
  input  [63:0]  io_d_in_19_a,
  input          io_d_in_19_valid_a,
  input  [63:0]  io_d_in_19_b,
  input          io_d_in_19_valid_b,
  input  [63:0]  io_d_in_20_a,
  input          io_d_in_20_valid_a,
  input  [63:0]  io_d_in_20_b,
  input          io_d_in_20_valid_b,
  input  [63:0]  io_d_in_21_a,
  input          io_d_in_21_valid_a,
  input  [63:0]  io_d_in_21_b,
  input          io_d_in_21_valid_b,
  input  [63:0]  io_d_in_22_a,
  input          io_d_in_22_valid_a,
  input  [63:0]  io_d_in_22_b,
  input          io_d_in_22_valid_b,
  input  [63:0]  io_d_in_23_a,
  input          io_d_in_23_valid_a,
  input  [63:0]  io_d_in_23_b,
  input          io_d_in_23_valid_b,
  input  [63:0]  io_d_in_24_a,
  input          io_d_in_24_valid_a,
  input  [63:0]  io_d_in_24_b,
  input          io_d_in_24_valid_b,
  input  [63:0]  io_d_in_25_a,
  input          io_d_in_25_valid_a,
  input  [63:0]  io_d_in_25_b,
  input          io_d_in_25_valid_b,
  input  [63:0]  io_d_in_26_a,
  input          io_d_in_26_valid_a,
  input  [63:0]  io_d_in_26_b,
  input          io_d_in_26_valid_b,
  input  [63:0]  io_d_in_27_a,
  input          io_d_in_27_valid_a,
  input  [63:0]  io_d_in_27_b,
  input          io_d_in_27_valid_b,
  input  [63:0]  io_d_in_28_a,
  input          io_d_in_28_valid_a,
  input  [63:0]  io_d_in_28_b,
  input          io_d_in_28_valid_b,
  input  [63:0]  io_d_in_29_a,
  input          io_d_in_29_valid_a,
  input  [63:0]  io_d_in_29_b,
  input          io_d_in_29_valid_b,
  input  [63:0]  io_d_in_30_a,
  input          io_d_in_30_valid_a,
  input  [63:0]  io_d_in_30_b,
  input          io_d_in_30_valid_b,
  input  [63:0]  io_d_in_31_a,
  input          io_d_in_31_valid_a,
  input  [63:0]  io_d_in_31_b,
  input          io_d_in_31_valid_b,
  output [63:0]  io_d_out_0_a,
  output         io_d_out_0_valid_a,
  output [63:0]  io_d_out_0_b,
  output         io_d_out_0_valid_b,
  output [63:0]  io_d_out_1_a,
  output         io_d_out_1_valid_a,
  output [63:0]  io_d_out_1_b,
  output         io_d_out_1_valid_b,
  output [63:0]  io_d_out_2_a,
  output         io_d_out_2_valid_a,
  output [63:0]  io_d_out_2_b,
  output         io_d_out_2_valid_b,
  output [63:0]  io_d_out_3_a,
  output         io_d_out_3_valid_a,
  output [63:0]  io_d_out_3_b,
  output         io_d_out_3_valid_b,
  output [63:0]  io_d_out_4_a,
  output         io_d_out_4_valid_a,
  output [63:0]  io_d_out_4_b,
  output         io_d_out_4_valid_b,
  output [63:0]  io_d_out_5_a,
  output         io_d_out_5_valid_a,
  output [63:0]  io_d_out_5_b,
  output         io_d_out_5_valid_b,
  output [63:0]  io_d_out_6_a,
  output         io_d_out_6_valid_a,
  output [63:0]  io_d_out_6_b,
  output         io_d_out_6_valid_b,
  output [63:0]  io_d_out_7_a,
  output         io_d_out_7_valid_a,
  output [63:0]  io_d_out_7_b,
  output         io_d_out_7_valid_b,
  output [63:0]  io_d_out_8_a,
  output         io_d_out_8_valid_a,
  output [63:0]  io_d_out_8_b,
  output         io_d_out_8_valid_b,
  output [63:0]  io_d_out_9_a,
  output         io_d_out_9_valid_a,
  output [63:0]  io_d_out_9_b,
  output         io_d_out_9_valid_b,
  output [63:0]  io_d_out_10_a,
  output         io_d_out_10_valid_a,
  output [63:0]  io_d_out_10_b,
  output         io_d_out_10_valid_b,
  output [63:0]  io_d_out_11_a,
  output         io_d_out_11_valid_a,
  output [63:0]  io_d_out_11_b,
  output         io_d_out_11_valid_b,
  output [63:0]  io_d_out_12_a,
  output         io_d_out_12_valid_a,
  output [63:0]  io_d_out_12_b,
  output         io_d_out_12_valid_b,
  output [63:0]  io_d_out_13_a,
  output         io_d_out_13_valid_a,
  output [63:0]  io_d_out_13_b,
  output         io_d_out_13_valid_b,
  output [63:0]  io_d_out_14_a,
  output         io_d_out_14_valid_a,
  output [63:0]  io_d_out_14_b,
  output         io_d_out_14_valid_b,
  output [63:0]  io_d_out_15_a,
  output         io_d_out_15_valid_a,
  output [63:0]  io_d_out_15_b,
  output         io_d_out_15_valid_b,
  output [63:0]  io_d_out_16_a,
  output         io_d_out_16_valid_a,
  output [63:0]  io_d_out_16_b,
  output         io_d_out_16_valid_b,
  output [63:0]  io_d_out_17_a,
  output         io_d_out_17_valid_a,
  output [63:0]  io_d_out_17_b,
  output         io_d_out_17_valid_b,
  output [63:0]  io_d_out_18_a,
  output         io_d_out_18_valid_a,
  output [63:0]  io_d_out_18_b,
  output         io_d_out_18_valid_b,
  output [63:0]  io_d_out_19_a,
  output         io_d_out_19_valid_a,
  output [63:0]  io_d_out_19_b,
  output         io_d_out_19_valid_b,
  output [63:0]  io_d_out_20_a,
  output         io_d_out_20_valid_a,
  output [63:0]  io_d_out_20_b,
  output         io_d_out_20_valid_b,
  output [63:0]  io_d_out_21_a,
  output         io_d_out_21_valid_a,
  output [63:0]  io_d_out_21_b,
  output         io_d_out_21_valid_b,
  output [63:0]  io_d_out_22_a,
  output         io_d_out_22_valid_a,
  output [63:0]  io_d_out_22_b,
  output         io_d_out_22_valid_b,
  output [63:0]  io_d_out_23_a,
  output         io_d_out_23_valid_a,
  output [63:0]  io_d_out_23_b,
  output         io_d_out_23_valid_b,
  output [63:0]  io_d_out_24_a,
  output         io_d_out_24_valid_a,
  output [63:0]  io_d_out_24_b,
  output         io_d_out_24_valid_b,
  output [63:0]  io_d_out_25_a,
  output         io_d_out_25_valid_a,
  output [63:0]  io_d_out_25_b,
  output         io_d_out_25_valid_b,
  output [63:0]  io_d_out_26_a,
  output         io_d_out_26_valid_a,
  output [63:0]  io_d_out_26_b,
  output         io_d_out_26_valid_b,
  output [63:0]  io_d_out_27_a,
  output         io_d_out_27_valid_a,
  output [63:0]  io_d_out_27_b,
  output         io_d_out_27_valid_b,
  output [63:0]  io_d_out_28_a,
  output         io_d_out_28_valid_a,
  output [63:0]  io_d_out_28_b,
  output         io_d_out_28_valid_b,
  output [63:0]  io_d_out_29_a,
  output         io_d_out_29_valid_a,
  output [63:0]  io_d_out_29_b,
  output         io_d_out_29_valid_b,
  output [63:0]  io_d_out_30_a,
  output         io_d_out_30_valid_a,
  output [63:0]  io_d_out_30_b,
  output         io_d_out_30_valid_b,
  output [63:0]  io_d_out_31_a,
  output         io_d_out_31_valid_a,
  output [63:0]  io_d_out_31_b,
  output         io_d_out_31_valid_b,
  input          io_wr_en_mem1,
  input          io_wr_en_mem2,
  input          io_wr_en_mem3,
  input          io_wr_en_mem4,
  input          io_wr_en_mem5,
  input          io_wr_en_mem6,
  input  [127:0] io_wr_instr_mem1,
  input  [127:0] io_wr_instr_mem2,
  input  [127:0] io_wr_instr_mem3,
  input  [127:0] io_wr_instr_mem4,
  input  [127:0] io_wr_instr_mem5,
  input  [127:0] io_wr_instr_mem6,
  input          io_run
);
`ifdef RANDOMIZE_MEM_INIT
  reg [127:0] _RAND_0;
  reg [127:0] _RAND_1;
  reg [127:0] _RAND_2;
  reg [127:0] _RAND_3;
  reg [127:0] _RAND_4;
  reg [127:0] _RAND_5;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [127:0] _RAND_18;
  reg [127:0] _RAND_19;
  reg [127:0] _RAND_20;
  reg [127:0] _RAND_21;
  reg [127:0] _RAND_22;
  reg [127:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
`endif // RANDOMIZE_REG_INIT
  reg [127:0] Mem1 [0:255]; // @[BuildingBlockNew.scala 29:17]
  wire [127:0] Mem1_instr1_MPORT_data; // @[BuildingBlockNew.scala 29:17]
  wire [7:0] Mem1_instr1_MPORT_addr; // @[BuildingBlockNew.scala 29:17]
  wire [127:0] Mem1_MPORT_data; // @[BuildingBlockNew.scala 29:17]
  wire [7:0] Mem1_MPORT_addr; // @[BuildingBlockNew.scala 29:17]
  wire  Mem1_MPORT_mask; // @[BuildingBlockNew.scala 29:17]
  wire  Mem1_MPORT_en; // @[BuildingBlockNew.scala 29:17]
  reg [127:0] Mem2 [0:255]; // @[BuildingBlockNew.scala 30:17]
  wire [127:0] Mem2_instr2_MPORT_data; // @[BuildingBlockNew.scala 30:17]
  wire [7:0] Mem2_instr2_MPORT_addr; // @[BuildingBlockNew.scala 30:17]
  wire [127:0] Mem2_MPORT_1_data; // @[BuildingBlockNew.scala 30:17]
  wire [7:0] Mem2_MPORT_1_addr; // @[BuildingBlockNew.scala 30:17]
  wire  Mem2_MPORT_1_mask; // @[BuildingBlockNew.scala 30:17]
  wire  Mem2_MPORT_1_en; // @[BuildingBlockNew.scala 30:17]
  reg [127:0] Mem3 [0:255]; // @[BuildingBlockNew.scala 31:17]
  wire [127:0] Mem3_instr3_MPORT_data; // @[BuildingBlockNew.scala 31:17]
  wire [7:0] Mem3_instr3_MPORT_addr; // @[BuildingBlockNew.scala 31:17]
  wire [127:0] Mem3_MPORT_2_data; // @[BuildingBlockNew.scala 31:17]
  wire [7:0] Mem3_MPORT_2_addr; // @[BuildingBlockNew.scala 31:17]
  wire  Mem3_MPORT_2_mask; // @[BuildingBlockNew.scala 31:17]
  wire  Mem3_MPORT_2_en; // @[BuildingBlockNew.scala 31:17]
  reg [127:0] Mem4 [0:255]; // @[BuildingBlockNew.scala 32:17]
  wire [127:0] Mem4_instr4_MPORT_data; // @[BuildingBlockNew.scala 32:17]
  wire [7:0] Mem4_instr4_MPORT_addr; // @[BuildingBlockNew.scala 32:17]
  wire [127:0] Mem4_MPORT_3_data; // @[BuildingBlockNew.scala 32:17]
  wire [7:0] Mem4_MPORT_3_addr; // @[BuildingBlockNew.scala 32:17]
  wire  Mem4_MPORT_3_mask; // @[BuildingBlockNew.scala 32:17]
  wire  Mem4_MPORT_3_en; // @[BuildingBlockNew.scala 32:17]
  reg [127:0] Mem5 [0:255]; // @[BuildingBlockNew.scala 33:17]
  wire [127:0] Mem5_instr5_MPORT_data; // @[BuildingBlockNew.scala 33:17]
  wire [7:0] Mem5_instr5_MPORT_addr; // @[BuildingBlockNew.scala 33:17]
  wire [127:0] Mem5_MPORT_4_data; // @[BuildingBlockNew.scala 33:17]
  wire [7:0] Mem5_MPORT_4_addr; // @[BuildingBlockNew.scala 33:17]
  wire  Mem5_MPORT_4_mask; // @[BuildingBlockNew.scala 33:17]
  wire  Mem5_MPORT_4_en; // @[BuildingBlockNew.scala 33:17]
  reg [127:0] Mem6 [0:255]; // @[BuildingBlockNew.scala 34:17]
  wire [127:0] Mem6_instr6_MPORT_data; // @[BuildingBlockNew.scala 34:17]
  wire [7:0] Mem6_instr6_MPORT_addr; // @[BuildingBlockNew.scala 34:17]
  wire [127:0] Mem6_MPORT_5_data; // @[BuildingBlockNew.scala 34:17]
  wire [7:0] Mem6_MPORT_5_addr; // @[BuildingBlockNew.scala 34:17]
  wire  Mem6_MPORT_5_mask; // @[BuildingBlockNew.scala 34:17]
  wire  Mem6_MPORT_5_en; // @[BuildingBlockNew.scala 34:17]
  wire  peCol_clock; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_reset; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_0_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_0_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_0_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_0_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_1_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_1_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_1_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_1_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_2_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_2_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_2_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_2_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_3_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_3_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_3_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_3_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_4_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_4_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_4_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_4_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_5_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_5_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_5_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_5_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_6_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_6_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_6_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_6_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_7_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_7_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_7_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_7_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_8_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_8_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_8_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_8_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_9_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_9_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_9_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_9_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_10_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_10_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_10_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_10_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_11_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_11_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_11_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_11_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_12_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_12_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_12_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_12_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_13_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_13_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_13_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_13_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_14_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_14_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_14_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_14_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_15_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_15_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_15_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_15_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_16_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_16_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_16_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_16_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_17_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_17_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_17_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_17_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_18_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_18_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_18_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_18_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_19_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_19_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_19_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_19_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_20_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_20_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_20_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_20_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_21_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_21_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_21_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_21_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_22_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_22_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_22_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_22_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_23_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_23_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_23_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_23_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_24_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_24_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_24_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_24_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_25_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_25_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_25_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_25_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_26_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_26_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_26_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_26_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_27_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_27_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_27_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_27_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_28_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_28_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_28_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_28_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_29_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_29_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_29_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_29_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_30_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_30_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_30_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_30_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_31_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_31_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_in_31_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_in_31_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_0_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_0_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_0_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_0_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_1_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_1_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_1_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_1_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_2_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_2_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_2_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_2_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_3_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_3_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_3_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_3_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_4_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_4_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_4_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_4_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_5_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_5_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_5_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_5_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_6_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_6_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_6_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_6_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_7_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_7_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_7_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_7_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_8_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_8_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_8_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_8_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_9_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_9_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_9_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_9_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_10_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_10_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_10_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_10_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_11_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_11_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_11_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_11_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_12_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_12_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_12_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_12_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_13_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_13_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_13_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_13_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_14_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_14_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_14_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_14_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_15_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_15_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_15_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_15_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_16_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_16_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_16_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_16_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_17_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_17_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_17_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_17_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_18_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_18_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_18_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_18_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_19_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_19_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_19_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_19_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_20_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_20_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_20_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_20_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_21_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_21_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_21_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_21_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_22_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_22_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_22_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_22_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_23_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_23_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_23_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_23_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_24_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_24_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_24_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_24_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_25_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_25_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_25_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_25_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_26_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_26_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_26_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_26_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_27_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_27_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_27_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_27_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_28_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_28_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_28_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_28_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_29_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_29_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_29_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_29_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_30_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_30_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_30_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_30_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_31_a; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_31_valid_a; // @[BuildingBlockNew.scala 60:21]
  wire [63:0] peCol_io_d_out_31_b; // @[BuildingBlockNew.scala 60:21]
  wire  peCol_io_d_out_31_valid_b; // @[BuildingBlockNew.scala 60:21]
  wire [127:0] peCol_io_instr; // @[BuildingBlockNew.scala 60:21]
  wire  ingress1_clock; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_reset; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_0; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_1; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_2; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_3; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_4; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_5; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_6; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_7; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_8; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_9; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_10; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_11; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_12; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_13; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_14; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_15; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_16; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_17; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_18; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_19; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_20; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_21; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_22; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_23; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_24; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_25; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_26; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_27; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_28; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_29; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_30; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_31; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_32; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_33; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_34; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_35; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_36; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_37; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_38; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_39; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_40; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_41; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_42; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_43; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_44; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_45; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_46; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_47; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_48; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_49; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_50; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_51; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_52; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_53; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_54; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_55; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_56; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_57; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_58; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_59; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_60; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_61; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_62; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_in64_63; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_0; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_1; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_2; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_3; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_4; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_5; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_6; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_7; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_8; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_9; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_10; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_11; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_12; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_13; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_14; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_15; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_16; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_17; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_18; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_19; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_20; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_21; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_22; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_23; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_24; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_25; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_26; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_27; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_28; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_29; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_30; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_31; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_32; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_33; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_34; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_35; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_36; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_37; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_38; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_39; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_40; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_41; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_42; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_43; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_44; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_45; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_46; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_47; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_48; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_49; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_50; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_51; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_52; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_53; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_54; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_55; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_56; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_57; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_58; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_59; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_60; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_61; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_62; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validin64_63; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_0; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_1; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_2; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_3; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_4; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_5; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_6; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_7; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_8; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_9; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_10; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_11; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_12; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_13; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_14; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_15; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_16; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_17; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_18; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_19; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_20; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_21; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_22; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_23; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_24; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_25; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_26; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_27; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_28; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_29; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_30; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_31; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_32; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_33; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_34; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_35; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_36; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_37; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_38; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_39; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_40; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_41; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_42; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_43; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_44; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_45; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_46; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_47; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_48; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_49; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_50; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_51; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_52; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_53; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_54; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_55; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_56; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_57; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_58; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_59; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_60; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_61; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_62; // @[BuildingBlockNew.scala 61:24]
  wire [63:0] ingress1_io_out64_63; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_0; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_1; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_2; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_3; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_4; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_5; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_6; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_7; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_8; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_9; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_10; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_11; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_12; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_13; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_14; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_15; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_16; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_17; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_18; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_19; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_20; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_21; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_22; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_23; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_24; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_25; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_26; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_27; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_28; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_29; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_30; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_31; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_32; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_33; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_34; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_35; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_36; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_37; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_38; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_39; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_40; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_41; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_42; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_43; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_44; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_45; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_46; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_47; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_48; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_49; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_50; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_51; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_52; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_53; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_54; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_55; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_56; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_57; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_58; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_59; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_60; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_61; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_62; // @[BuildingBlockNew.scala 61:24]
  wire  ingress1_io_validout64_63; // @[BuildingBlockNew.scala 61:24]
  wire [127:0] ingress1_io_ctrl; // @[BuildingBlockNew.scala 61:24]
  wire  ingress2_clock; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_reset; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_0; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_1; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_2; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_3; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_4; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_5; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_6; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_7; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_8; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_9; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_10; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_11; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_12; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_13; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_14; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_15; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_16; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_17; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_18; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_19; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_20; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_21; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_22; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_23; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_24; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_25; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_26; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_27; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_28; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_29; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_30; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_31; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_32; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_33; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_34; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_35; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_36; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_37; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_38; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_39; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_40; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_41; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_42; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_43; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_44; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_45; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_46; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_47; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_48; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_49; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_50; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_51; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_52; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_53; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_54; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_55; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_56; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_57; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_58; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_59; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_60; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_61; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_62; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_in64_63; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_0; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_1; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_2; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_3; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_4; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_5; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_6; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_7; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_8; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_9; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_10; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_11; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_12; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_13; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_14; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_15; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_16; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_17; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_18; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_19; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_20; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_21; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_22; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_23; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_24; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_25; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_26; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_27; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_28; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_29; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_30; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_31; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_32; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_33; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_34; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_35; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_36; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_37; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_38; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_39; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_40; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_41; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_42; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_43; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_44; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_45; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_46; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_47; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_48; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_49; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_50; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_51; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_52; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_53; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_54; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_55; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_56; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_57; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_58; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_59; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_60; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_61; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_62; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validin64_63; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_0; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_1; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_2; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_3; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_4; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_5; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_6; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_7; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_8; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_9; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_10; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_11; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_12; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_13; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_14; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_15; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_16; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_17; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_18; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_19; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_20; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_21; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_22; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_23; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_24; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_25; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_26; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_27; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_28; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_29; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_30; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_31; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_32; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_33; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_34; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_35; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_36; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_37; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_38; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_39; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_40; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_41; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_42; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_43; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_44; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_45; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_46; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_47; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_48; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_49; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_50; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_51; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_52; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_53; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_54; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_55; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_56; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_57; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_58; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_59; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_60; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_61; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_62; // @[BuildingBlockNew.scala 62:24]
  wire [63:0] ingress2_io_out64_63; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_0; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_1; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_2; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_3; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_4; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_5; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_6; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_7; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_8; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_9; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_10; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_11; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_12; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_13; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_14; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_15; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_16; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_17; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_18; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_19; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_20; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_21; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_22; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_23; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_24; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_25; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_26; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_27; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_28; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_29; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_30; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_31; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_32; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_33; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_34; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_35; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_36; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_37; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_38; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_39; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_40; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_41; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_42; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_43; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_44; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_45; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_46; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_47; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_48; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_49; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_50; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_51; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_52; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_53; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_54; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_55; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_56; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_57; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_58; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_59; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_60; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_61; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_62; // @[BuildingBlockNew.scala 62:24]
  wire  ingress2_io_validout64_63; // @[BuildingBlockNew.scala 62:24]
  wire [127:0] ingress2_io_ctrl; // @[BuildingBlockNew.scala 62:24]
  wire  middle_clock; // @[BuildingBlockNew.scala 63:22]
  wire  middle_reset; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_0; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_1; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_2; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_3; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_4; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_5; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_6; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_7; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_8; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_9; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_10; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_11; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_12; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_13; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_14; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_15; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_16; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_17; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_18; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_19; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_20; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_21; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_22; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_23; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_24; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_25; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_26; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_27; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_28; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_29; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_30; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_31; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_32; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_33; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_34; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_35; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_36; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_37; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_38; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_39; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_40; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_41; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_42; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_43; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_44; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_45; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_46; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_47; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_48; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_49; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_50; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_51; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_52; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_53; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_54; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_55; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_56; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_57; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_58; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_59; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_60; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_61; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_62; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_in64_63; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_0; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_1; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_2; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_3; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_4; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_5; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_6; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_7; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_8; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_9; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_10; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_11; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_12; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_13; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_14; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_15; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_16; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_17; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_18; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_19; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_20; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_21; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_22; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_23; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_24; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_25; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_26; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_27; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_28; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_29; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_30; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_31; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_32; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_33; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_34; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_35; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_36; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_37; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_38; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_39; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_40; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_41; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_42; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_43; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_44; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_45; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_46; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_47; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_48; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_49; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_50; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_51; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_52; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_53; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_54; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_55; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_56; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_57; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_58; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_59; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_60; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_61; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_62; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validin64_63; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_0; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_1; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_2; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_3; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_4; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_5; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_6; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_7; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_8; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_9; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_10; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_11; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_12; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_13; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_14; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_15; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_16; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_17; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_18; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_19; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_20; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_21; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_22; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_23; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_24; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_25; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_26; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_27; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_28; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_29; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_30; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_31; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_32; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_33; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_34; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_35; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_36; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_37; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_38; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_39; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_40; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_41; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_42; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_43; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_44; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_45; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_46; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_47; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_48; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_49; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_50; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_51; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_52; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_53; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_54; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_55; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_56; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_57; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_58; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_59; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_60; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_61; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_62; // @[BuildingBlockNew.scala 63:22]
  wire [63:0] middle_io_out64_63; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_0; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_1; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_2; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_3; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_4; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_5; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_6; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_7; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_8; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_9; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_10; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_11; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_12; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_13; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_14; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_15; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_16; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_17; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_18; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_19; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_20; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_21; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_22; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_23; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_24; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_25; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_26; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_27; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_28; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_29; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_30; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_31; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_32; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_33; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_34; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_35; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_36; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_37; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_38; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_39; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_40; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_41; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_42; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_43; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_44; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_45; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_46; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_47; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_48; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_49; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_50; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_51; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_52; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_53; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_54; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_55; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_56; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_57; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_58; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_59; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_60; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_61; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_62; // @[BuildingBlockNew.scala 63:22]
  wire  middle_io_validout64_63; // @[BuildingBlockNew.scala 63:22]
  wire [127:0] middle_io_ctrl; // @[BuildingBlockNew.scala 63:22]
  wire  egress1_clock; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_reset; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_0; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_1; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_2; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_3; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_4; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_5; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_6; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_7; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_8; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_9; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_10; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_11; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_12; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_13; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_14; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_15; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_16; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_17; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_18; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_19; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_20; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_21; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_22; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_23; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_24; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_25; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_26; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_27; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_28; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_29; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_30; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_31; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_32; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_33; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_34; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_35; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_36; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_37; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_38; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_39; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_40; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_41; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_42; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_43; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_44; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_45; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_46; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_47; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_48; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_49; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_50; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_51; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_52; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_53; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_54; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_55; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_56; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_57; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_58; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_59; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_60; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_61; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_62; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_in64_63; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_0; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_1; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_2; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_3; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_4; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_5; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_6; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_7; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_8; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_9; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_10; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_11; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_12; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_13; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_14; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_15; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_16; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_17; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_18; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_19; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_20; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_21; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_22; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_23; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_24; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_25; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_26; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_27; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_28; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_29; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_30; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_31; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_32; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_33; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_34; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_35; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_36; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_37; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_38; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_39; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_40; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_41; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_42; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_43; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_44; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_45; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_46; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_47; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_48; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_49; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_50; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_51; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_52; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_53; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_54; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_55; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_56; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_57; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_58; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_59; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_60; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_61; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_62; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validin64_63; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_0; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_1; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_2; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_3; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_4; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_5; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_6; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_7; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_8; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_9; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_10; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_11; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_12; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_13; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_14; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_15; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_16; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_17; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_18; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_19; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_20; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_21; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_22; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_23; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_24; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_25; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_26; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_27; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_28; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_29; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_30; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_31; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_32; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_33; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_34; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_35; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_36; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_37; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_38; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_39; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_40; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_41; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_42; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_43; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_44; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_45; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_46; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_47; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_48; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_49; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_50; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_51; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_52; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_53; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_54; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_55; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_56; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_57; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_58; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_59; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_60; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_61; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_62; // @[BuildingBlockNew.scala 64:23]
  wire [63:0] egress1_io_out64_63; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_0; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_1; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_2; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_3; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_4; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_5; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_6; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_7; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_8; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_9; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_10; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_11; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_12; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_13; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_14; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_15; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_16; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_17; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_18; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_19; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_20; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_21; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_22; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_23; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_24; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_25; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_26; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_27; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_28; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_29; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_30; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_31; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_32; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_33; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_34; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_35; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_36; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_37; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_38; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_39; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_40; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_41; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_42; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_43; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_44; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_45; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_46; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_47; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_48; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_49; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_50; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_51; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_52; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_53; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_54; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_55; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_56; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_57; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_58; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_59; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_60; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_61; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_62; // @[BuildingBlockNew.scala 64:23]
  wire  egress1_io_validout64_63; // @[BuildingBlockNew.scala 64:23]
  wire [127:0] egress1_io_ctrl; // @[BuildingBlockNew.scala 64:23]
  wire  egress2_clock; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_reset; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_0; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_1; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_2; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_3; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_4; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_5; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_6; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_7; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_8; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_9; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_10; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_11; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_12; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_13; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_14; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_15; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_16; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_17; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_18; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_19; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_20; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_21; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_22; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_23; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_24; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_25; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_26; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_27; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_28; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_29; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_30; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_31; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_32; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_33; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_34; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_35; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_36; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_37; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_38; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_39; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_40; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_41; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_42; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_43; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_44; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_45; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_46; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_47; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_48; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_49; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_50; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_51; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_52; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_53; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_54; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_55; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_56; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_57; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_58; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_59; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_60; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_61; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_62; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_in64_63; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_0; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_1; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_2; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_3; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_4; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_5; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_6; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_7; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_8; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_9; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_10; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_11; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_12; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_13; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_14; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_15; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_16; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_17; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_18; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_19; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_20; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_21; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_22; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_23; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_24; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_25; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_26; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_27; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_28; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_29; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_30; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_31; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_32; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_33; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_34; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_35; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_36; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_37; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_38; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_39; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_40; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_41; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_42; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_43; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_44; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_45; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_46; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_47; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_48; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_49; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_50; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_51; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_52; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_53; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_54; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_55; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_56; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_57; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_58; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_59; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_60; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_61; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_62; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validin64_63; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_0; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_1; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_2; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_3; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_4; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_5; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_6; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_7; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_8; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_9; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_10; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_11; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_12; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_13; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_14; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_15; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_16; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_17; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_18; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_19; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_20; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_21; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_22; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_23; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_24; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_25; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_26; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_27; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_28; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_29; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_30; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_31; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_32; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_33; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_34; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_35; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_36; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_37; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_38; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_39; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_40; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_41; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_42; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_43; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_44; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_45; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_46; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_47; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_48; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_49; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_50; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_51; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_52; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_53; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_54; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_55; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_56; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_57; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_58; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_59; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_60; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_61; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_62; // @[BuildingBlockNew.scala 65:23]
  wire [63:0] egress2_io_out64_63; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_0; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_1; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_2; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_3; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_4; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_5; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_6; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_7; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_8; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_9; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_10; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_11; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_12; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_13; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_14; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_15; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_16; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_17; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_18; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_19; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_20; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_21; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_22; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_23; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_24; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_25; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_26; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_27; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_28; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_29; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_30; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_31; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_32; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_33; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_34; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_35; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_36; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_37; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_38; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_39; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_40; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_41; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_42; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_43; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_44; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_45; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_46; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_47; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_48; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_49; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_50; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_51; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_52; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_53; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_54; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_55; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_56; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_57; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_58; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_59; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_60; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_61; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_62; // @[BuildingBlockNew.scala 65:23]
  wire  egress2_io_validout64_63; // @[BuildingBlockNew.scala 65:23]
  wire [127:0] egress2_io_ctrl; // @[BuildingBlockNew.scala 65:23]
  reg [7:0] PC1; // @[BuildingBlockNew.scala 35:20]
  reg [7:0] PC2; // @[BuildingBlockNew.scala 36:20]
  reg [7:0] PC3; // @[BuildingBlockNew.scala 37:20]
  reg [7:0] PC4; // @[BuildingBlockNew.scala 38:20]
  reg [7:0] PC5; // @[BuildingBlockNew.scala 39:20]
  reg [7:0] PC6; // @[BuildingBlockNew.scala 40:20]
  reg [7:0] wrAddr1; // @[BuildingBlockNew.scala 41:24]
  reg [7:0] wrAddr2; // @[BuildingBlockNew.scala 42:24]
  reg [7:0] wrAddr3; // @[BuildingBlockNew.scala 43:24]
  reg [7:0] wrAddr4; // @[BuildingBlockNew.scala 44:24]
  reg [7:0] wrAddr5; // @[BuildingBlockNew.scala 45:24]
  reg [7:0] wrAddr6; // @[BuildingBlockNew.scala 46:24]
  reg [127:0] instr1; // @[BuildingBlockNew.scala 47:23]
  reg [127:0] instr2; // @[BuildingBlockNew.scala 48:23]
  reg [127:0] instr3; // @[BuildingBlockNew.scala 49:23]
  reg [127:0] instr4; // @[BuildingBlockNew.scala 50:23]
  reg [127:0] instr5; // @[BuildingBlockNew.scala 51:23]
  reg [127:0] instr6; // @[BuildingBlockNew.scala 52:23]
  reg  run2; // @[BuildingBlockNew.scala 54:21]
  reg  run3_REG; // @[BuildingBlockNew.scala 55:29]
  reg  run3; // @[BuildingBlockNew.scala 55:21]
  reg  run4_REG; // @[BuildingBlockNew.scala 56:37]
  reg  run4_REG_1; // @[BuildingBlockNew.scala 56:29]
  reg  run4; // @[BuildingBlockNew.scala 56:21]
  reg  run5_REG; // @[BuildingBlockNew.scala 57:45]
  reg  run5_REG_1; // @[BuildingBlockNew.scala 57:37]
  reg  run5_REG_2; // @[BuildingBlockNew.scala 57:29]
  reg  run5; // @[BuildingBlockNew.scala 57:21]
  reg  run6_REG; // @[BuildingBlockNew.scala 58:53]
  reg  run6_REG_1; // @[BuildingBlockNew.scala 58:45]
  reg  run6_REG_2; // @[BuildingBlockNew.scala 58:37]
  reg  run6_REG_3; // @[BuildingBlockNew.scala 58:29]
  reg  run6; // @[BuildingBlockNew.scala 58:21]
  wire [7:0] _PC1_T_1 = PC1 + 8'h1; // @[BuildingBlockNew.scala 68:16]
  wire [7:0] _PC2_T_1 = PC2 + 8'h1; // @[BuildingBlockNew.scala 76:16]
  wire [7:0] _PC3_T_1 = PC3 + 8'h1; // @[BuildingBlockNew.scala 84:16]
  wire [7:0] _PC4_T_1 = PC4 + 8'h1; // @[BuildingBlockNew.scala 92:16]
  wire [7:0] _PC5_T_1 = PC5 + 8'h1; // @[BuildingBlockNew.scala 100:16]
  wire [7:0] _PC6_T_1 = PC6 + 8'h1; // @[BuildingBlockNew.scala 108:16]
  wire [7:0] _wrAddr1_T_1 = wrAddr1 + 8'h1; // @[BuildingBlockNew.scala 126:24]
  wire [7:0] _wrAddr2_T_1 = wrAddr2 + 8'h1; // @[BuildingBlockNew.scala 130:24]
  wire [7:0] _wrAddr3_T_1 = wrAddr3 + 8'h1; // @[BuildingBlockNew.scala 134:24]
  wire [7:0] _wrAddr4_T_1 = wrAddr4 + 8'h1; // @[BuildingBlockNew.scala 138:24]
  wire [7:0] _wrAddr5_T_1 = wrAddr5 + 8'h1; // @[BuildingBlockNew.scala 142:24]
  wire [7:0] _wrAddr6_T_1 = wrAddr6 + 8'h1; // @[BuildingBlockNew.scala 146:24]
  PEcol peCol ( // @[BuildingBlockNew.scala 60:21]
    .clock(peCol_clock),
    .reset(peCol_reset),
    .io_d_in_0_a(peCol_io_d_in_0_a),
    .io_d_in_0_valid_a(peCol_io_d_in_0_valid_a),
    .io_d_in_0_b(peCol_io_d_in_0_b),
    .io_d_in_0_valid_b(peCol_io_d_in_0_valid_b),
    .io_d_in_1_a(peCol_io_d_in_1_a),
    .io_d_in_1_valid_a(peCol_io_d_in_1_valid_a),
    .io_d_in_1_b(peCol_io_d_in_1_b),
    .io_d_in_1_valid_b(peCol_io_d_in_1_valid_b),
    .io_d_in_2_a(peCol_io_d_in_2_a),
    .io_d_in_2_valid_a(peCol_io_d_in_2_valid_a),
    .io_d_in_2_b(peCol_io_d_in_2_b),
    .io_d_in_2_valid_b(peCol_io_d_in_2_valid_b),
    .io_d_in_3_a(peCol_io_d_in_3_a),
    .io_d_in_3_valid_a(peCol_io_d_in_3_valid_a),
    .io_d_in_3_b(peCol_io_d_in_3_b),
    .io_d_in_3_valid_b(peCol_io_d_in_3_valid_b),
    .io_d_in_4_a(peCol_io_d_in_4_a),
    .io_d_in_4_valid_a(peCol_io_d_in_4_valid_a),
    .io_d_in_4_b(peCol_io_d_in_4_b),
    .io_d_in_4_valid_b(peCol_io_d_in_4_valid_b),
    .io_d_in_5_a(peCol_io_d_in_5_a),
    .io_d_in_5_valid_a(peCol_io_d_in_5_valid_a),
    .io_d_in_5_b(peCol_io_d_in_5_b),
    .io_d_in_5_valid_b(peCol_io_d_in_5_valid_b),
    .io_d_in_6_a(peCol_io_d_in_6_a),
    .io_d_in_6_valid_a(peCol_io_d_in_6_valid_a),
    .io_d_in_6_b(peCol_io_d_in_6_b),
    .io_d_in_6_valid_b(peCol_io_d_in_6_valid_b),
    .io_d_in_7_a(peCol_io_d_in_7_a),
    .io_d_in_7_valid_a(peCol_io_d_in_7_valid_a),
    .io_d_in_7_b(peCol_io_d_in_7_b),
    .io_d_in_7_valid_b(peCol_io_d_in_7_valid_b),
    .io_d_in_8_a(peCol_io_d_in_8_a),
    .io_d_in_8_valid_a(peCol_io_d_in_8_valid_a),
    .io_d_in_8_b(peCol_io_d_in_8_b),
    .io_d_in_8_valid_b(peCol_io_d_in_8_valid_b),
    .io_d_in_9_a(peCol_io_d_in_9_a),
    .io_d_in_9_valid_a(peCol_io_d_in_9_valid_a),
    .io_d_in_9_b(peCol_io_d_in_9_b),
    .io_d_in_9_valid_b(peCol_io_d_in_9_valid_b),
    .io_d_in_10_a(peCol_io_d_in_10_a),
    .io_d_in_10_valid_a(peCol_io_d_in_10_valid_a),
    .io_d_in_10_b(peCol_io_d_in_10_b),
    .io_d_in_10_valid_b(peCol_io_d_in_10_valid_b),
    .io_d_in_11_a(peCol_io_d_in_11_a),
    .io_d_in_11_valid_a(peCol_io_d_in_11_valid_a),
    .io_d_in_11_b(peCol_io_d_in_11_b),
    .io_d_in_11_valid_b(peCol_io_d_in_11_valid_b),
    .io_d_in_12_a(peCol_io_d_in_12_a),
    .io_d_in_12_valid_a(peCol_io_d_in_12_valid_a),
    .io_d_in_12_b(peCol_io_d_in_12_b),
    .io_d_in_12_valid_b(peCol_io_d_in_12_valid_b),
    .io_d_in_13_a(peCol_io_d_in_13_a),
    .io_d_in_13_valid_a(peCol_io_d_in_13_valid_a),
    .io_d_in_13_b(peCol_io_d_in_13_b),
    .io_d_in_13_valid_b(peCol_io_d_in_13_valid_b),
    .io_d_in_14_a(peCol_io_d_in_14_a),
    .io_d_in_14_valid_a(peCol_io_d_in_14_valid_a),
    .io_d_in_14_b(peCol_io_d_in_14_b),
    .io_d_in_14_valid_b(peCol_io_d_in_14_valid_b),
    .io_d_in_15_a(peCol_io_d_in_15_a),
    .io_d_in_15_valid_a(peCol_io_d_in_15_valid_a),
    .io_d_in_15_b(peCol_io_d_in_15_b),
    .io_d_in_15_valid_b(peCol_io_d_in_15_valid_b),
    .io_d_in_16_a(peCol_io_d_in_16_a),
    .io_d_in_16_valid_a(peCol_io_d_in_16_valid_a),
    .io_d_in_16_b(peCol_io_d_in_16_b),
    .io_d_in_16_valid_b(peCol_io_d_in_16_valid_b),
    .io_d_in_17_a(peCol_io_d_in_17_a),
    .io_d_in_17_valid_a(peCol_io_d_in_17_valid_a),
    .io_d_in_17_b(peCol_io_d_in_17_b),
    .io_d_in_17_valid_b(peCol_io_d_in_17_valid_b),
    .io_d_in_18_a(peCol_io_d_in_18_a),
    .io_d_in_18_valid_a(peCol_io_d_in_18_valid_a),
    .io_d_in_18_b(peCol_io_d_in_18_b),
    .io_d_in_18_valid_b(peCol_io_d_in_18_valid_b),
    .io_d_in_19_a(peCol_io_d_in_19_a),
    .io_d_in_19_valid_a(peCol_io_d_in_19_valid_a),
    .io_d_in_19_b(peCol_io_d_in_19_b),
    .io_d_in_19_valid_b(peCol_io_d_in_19_valid_b),
    .io_d_in_20_a(peCol_io_d_in_20_a),
    .io_d_in_20_valid_a(peCol_io_d_in_20_valid_a),
    .io_d_in_20_b(peCol_io_d_in_20_b),
    .io_d_in_20_valid_b(peCol_io_d_in_20_valid_b),
    .io_d_in_21_a(peCol_io_d_in_21_a),
    .io_d_in_21_valid_a(peCol_io_d_in_21_valid_a),
    .io_d_in_21_b(peCol_io_d_in_21_b),
    .io_d_in_21_valid_b(peCol_io_d_in_21_valid_b),
    .io_d_in_22_a(peCol_io_d_in_22_a),
    .io_d_in_22_valid_a(peCol_io_d_in_22_valid_a),
    .io_d_in_22_b(peCol_io_d_in_22_b),
    .io_d_in_22_valid_b(peCol_io_d_in_22_valid_b),
    .io_d_in_23_a(peCol_io_d_in_23_a),
    .io_d_in_23_valid_a(peCol_io_d_in_23_valid_a),
    .io_d_in_23_b(peCol_io_d_in_23_b),
    .io_d_in_23_valid_b(peCol_io_d_in_23_valid_b),
    .io_d_in_24_a(peCol_io_d_in_24_a),
    .io_d_in_24_valid_a(peCol_io_d_in_24_valid_a),
    .io_d_in_24_b(peCol_io_d_in_24_b),
    .io_d_in_24_valid_b(peCol_io_d_in_24_valid_b),
    .io_d_in_25_a(peCol_io_d_in_25_a),
    .io_d_in_25_valid_a(peCol_io_d_in_25_valid_a),
    .io_d_in_25_b(peCol_io_d_in_25_b),
    .io_d_in_25_valid_b(peCol_io_d_in_25_valid_b),
    .io_d_in_26_a(peCol_io_d_in_26_a),
    .io_d_in_26_valid_a(peCol_io_d_in_26_valid_a),
    .io_d_in_26_b(peCol_io_d_in_26_b),
    .io_d_in_26_valid_b(peCol_io_d_in_26_valid_b),
    .io_d_in_27_a(peCol_io_d_in_27_a),
    .io_d_in_27_valid_a(peCol_io_d_in_27_valid_a),
    .io_d_in_27_b(peCol_io_d_in_27_b),
    .io_d_in_27_valid_b(peCol_io_d_in_27_valid_b),
    .io_d_in_28_a(peCol_io_d_in_28_a),
    .io_d_in_28_valid_a(peCol_io_d_in_28_valid_a),
    .io_d_in_28_b(peCol_io_d_in_28_b),
    .io_d_in_28_valid_b(peCol_io_d_in_28_valid_b),
    .io_d_in_29_a(peCol_io_d_in_29_a),
    .io_d_in_29_valid_a(peCol_io_d_in_29_valid_a),
    .io_d_in_29_b(peCol_io_d_in_29_b),
    .io_d_in_29_valid_b(peCol_io_d_in_29_valid_b),
    .io_d_in_30_a(peCol_io_d_in_30_a),
    .io_d_in_30_valid_a(peCol_io_d_in_30_valid_a),
    .io_d_in_30_b(peCol_io_d_in_30_b),
    .io_d_in_30_valid_b(peCol_io_d_in_30_valid_b),
    .io_d_in_31_a(peCol_io_d_in_31_a),
    .io_d_in_31_valid_a(peCol_io_d_in_31_valid_a),
    .io_d_in_31_b(peCol_io_d_in_31_b),
    .io_d_in_31_valid_b(peCol_io_d_in_31_valid_b),
    .io_d_out_0_a(peCol_io_d_out_0_a),
    .io_d_out_0_valid_a(peCol_io_d_out_0_valid_a),
    .io_d_out_0_b(peCol_io_d_out_0_b),
    .io_d_out_0_valid_b(peCol_io_d_out_0_valid_b),
    .io_d_out_1_a(peCol_io_d_out_1_a),
    .io_d_out_1_valid_a(peCol_io_d_out_1_valid_a),
    .io_d_out_1_b(peCol_io_d_out_1_b),
    .io_d_out_1_valid_b(peCol_io_d_out_1_valid_b),
    .io_d_out_2_a(peCol_io_d_out_2_a),
    .io_d_out_2_valid_a(peCol_io_d_out_2_valid_a),
    .io_d_out_2_b(peCol_io_d_out_2_b),
    .io_d_out_2_valid_b(peCol_io_d_out_2_valid_b),
    .io_d_out_3_a(peCol_io_d_out_3_a),
    .io_d_out_3_valid_a(peCol_io_d_out_3_valid_a),
    .io_d_out_3_b(peCol_io_d_out_3_b),
    .io_d_out_3_valid_b(peCol_io_d_out_3_valid_b),
    .io_d_out_4_a(peCol_io_d_out_4_a),
    .io_d_out_4_valid_a(peCol_io_d_out_4_valid_a),
    .io_d_out_4_b(peCol_io_d_out_4_b),
    .io_d_out_4_valid_b(peCol_io_d_out_4_valid_b),
    .io_d_out_5_a(peCol_io_d_out_5_a),
    .io_d_out_5_valid_a(peCol_io_d_out_5_valid_a),
    .io_d_out_5_b(peCol_io_d_out_5_b),
    .io_d_out_5_valid_b(peCol_io_d_out_5_valid_b),
    .io_d_out_6_a(peCol_io_d_out_6_a),
    .io_d_out_6_valid_a(peCol_io_d_out_6_valid_a),
    .io_d_out_6_b(peCol_io_d_out_6_b),
    .io_d_out_6_valid_b(peCol_io_d_out_6_valid_b),
    .io_d_out_7_a(peCol_io_d_out_7_a),
    .io_d_out_7_valid_a(peCol_io_d_out_7_valid_a),
    .io_d_out_7_b(peCol_io_d_out_7_b),
    .io_d_out_7_valid_b(peCol_io_d_out_7_valid_b),
    .io_d_out_8_a(peCol_io_d_out_8_a),
    .io_d_out_8_valid_a(peCol_io_d_out_8_valid_a),
    .io_d_out_8_b(peCol_io_d_out_8_b),
    .io_d_out_8_valid_b(peCol_io_d_out_8_valid_b),
    .io_d_out_9_a(peCol_io_d_out_9_a),
    .io_d_out_9_valid_a(peCol_io_d_out_9_valid_a),
    .io_d_out_9_b(peCol_io_d_out_9_b),
    .io_d_out_9_valid_b(peCol_io_d_out_9_valid_b),
    .io_d_out_10_a(peCol_io_d_out_10_a),
    .io_d_out_10_valid_a(peCol_io_d_out_10_valid_a),
    .io_d_out_10_b(peCol_io_d_out_10_b),
    .io_d_out_10_valid_b(peCol_io_d_out_10_valid_b),
    .io_d_out_11_a(peCol_io_d_out_11_a),
    .io_d_out_11_valid_a(peCol_io_d_out_11_valid_a),
    .io_d_out_11_b(peCol_io_d_out_11_b),
    .io_d_out_11_valid_b(peCol_io_d_out_11_valid_b),
    .io_d_out_12_a(peCol_io_d_out_12_a),
    .io_d_out_12_valid_a(peCol_io_d_out_12_valid_a),
    .io_d_out_12_b(peCol_io_d_out_12_b),
    .io_d_out_12_valid_b(peCol_io_d_out_12_valid_b),
    .io_d_out_13_a(peCol_io_d_out_13_a),
    .io_d_out_13_valid_a(peCol_io_d_out_13_valid_a),
    .io_d_out_13_b(peCol_io_d_out_13_b),
    .io_d_out_13_valid_b(peCol_io_d_out_13_valid_b),
    .io_d_out_14_a(peCol_io_d_out_14_a),
    .io_d_out_14_valid_a(peCol_io_d_out_14_valid_a),
    .io_d_out_14_b(peCol_io_d_out_14_b),
    .io_d_out_14_valid_b(peCol_io_d_out_14_valid_b),
    .io_d_out_15_a(peCol_io_d_out_15_a),
    .io_d_out_15_valid_a(peCol_io_d_out_15_valid_a),
    .io_d_out_15_b(peCol_io_d_out_15_b),
    .io_d_out_15_valid_b(peCol_io_d_out_15_valid_b),
    .io_d_out_16_a(peCol_io_d_out_16_a),
    .io_d_out_16_valid_a(peCol_io_d_out_16_valid_a),
    .io_d_out_16_b(peCol_io_d_out_16_b),
    .io_d_out_16_valid_b(peCol_io_d_out_16_valid_b),
    .io_d_out_17_a(peCol_io_d_out_17_a),
    .io_d_out_17_valid_a(peCol_io_d_out_17_valid_a),
    .io_d_out_17_b(peCol_io_d_out_17_b),
    .io_d_out_17_valid_b(peCol_io_d_out_17_valid_b),
    .io_d_out_18_a(peCol_io_d_out_18_a),
    .io_d_out_18_valid_a(peCol_io_d_out_18_valid_a),
    .io_d_out_18_b(peCol_io_d_out_18_b),
    .io_d_out_18_valid_b(peCol_io_d_out_18_valid_b),
    .io_d_out_19_a(peCol_io_d_out_19_a),
    .io_d_out_19_valid_a(peCol_io_d_out_19_valid_a),
    .io_d_out_19_b(peCol_io_d_out_19_b),
    .io_d_out_19_valid_b(peCol_io_d_out_19_valid_b),
    .io_d_out_20_a(peCol_io_d_out_20_a),
    .io_d_out_20_valid_a(peCol_io_d_out_20_valid_a),
    .io_d_out_20_b(peCol_io_d_out_20_b),
    .io_d_out_20_valid_b(peCol_io_d_out_20_valid_b),
    .io_d_out_21_a(peCol_io_d_out_21_a),
    .io_d_out_21_valid_a(peCol_io_d_out_21_valid_a),
    .io_d_out_21_b(peCol_io_d_out_21_b),
    .io_d_out_21_valid_b(peCol_io_d_out_21_valid_b),
    .io_d_out_22_a(peCol_io_d_out_22_a),
    .io_d_out_22_valid_a(peCol_io_d_out_22_valid_a),
    .io_d_out_22_b(peCol_io_d_out_22_b),
    .io_d_out_22_valid_b(peCol_io_d_out_22_valid_b),
    .io_d_out_23_a(peCol_io_d_out_23_a),
    .io_d_out_23_valid_a(peCol_io_d_out_23_valid_a),
    .io_d_out_23_b(peCol_io_d_out_23_b),
    .io_d_out_23_valid_b(peCol_io_d_out_23_valid_b),
    .io_d_out_24_a(peCol_io_d_out_24_a),
    .io_d_out_24_valid_a(peCol_io_d_out_24_valid_a),
    .io_d_out_24_b(peCol_io_d_out_24_b),
    .io_d_out_24_valid_b(peCol_io_d_out_24_valid_b),
    .io_d_out_25_a(peCol_io_d_out_25_a),
    .io_d_out_25_valid_a(peCol_io_d_out_25_valid_a),
    .io_d_out_25_b(peCol_io_d_out_25_b),
    .io_d_out_25_valid_b(peCol_io_d_out_25_valid_b),
    .io_d_out_26_a(peCol_io_d_out_26_a),
    .io_d_out_26_valid_a(peCol_io_d_out_26_valid_a),
    .io_d_out_26_b(peCol_io_d_out_26_b),
    .io_d_out_26_valid_b(peCol_io_d_out_26_valid_b),
    .io_d_out_27_a(peCol_io_d_out_27_a),
    .io_d_out_27_valid_a(peCol_io_d_out_27_valid_a),
    .io_d_out_27_b(peCol_io_d_out_27_b),
    .io_d_out_27_valid_b(peCol_io_d_out_27_valid_b),
    .io_d_out_28_a(peCol_io_d_out_28_a),
    .io_d_out_28_valid_a(peCol_io_d_out_28_valid_a),
    .io_d_out_28_b(peCol_io_d_out_28_b),
    .io_d_out_28_valid_b(peCol_io_d_out_28_valid_b),
    .io_d_out_29_a(peCol_io_d_out_29_a),
    .io_d_out_29_valid_a(peCol_io_d_out_29_valid_a),
    .io_d_out_29_b(peCol_io_d_out_29_b),
    .io_d_out_29_valid_b(peCol_io_d_out_29_valid_b),
    .io_d_out_30_a(peCol_io_d_out_30_a),
    .io_d_out_30_valid_a(peCol_io_d_out_30_valid_a),
    .io_d_out_30_b(peCol_io_d_out_30_b),
    .io_d_out_30_valid_b(peCol_io_d_out_30_valid_b),
    .io_d_out_31_a(peCol_io_d_out_31_a),
    .io_d_out_31_valid_a(peCol_io_d_out_31_valid_a),
    .io_d_out_31_b(peCol_io_d_out_31_b),
    .io_d_out_31_valid_b(peCol_io_d_out_31_valid_b),
    .io_instr(peCol_io_instr)
  );
  CLOSingress1 ingress1 ( // @[BuildingBlockNew.scala 61:24]
    .clock(ingress1_clock),
    .reset(ingress1_reset),
    .io_in64_0(ingress1_io_in64_0),
    .io_in64_1(ingress1_io_in64_1),
    .io_in64_2(ingress1_io_in64_2),
    .io_in64_3(ingress1_io_in64_3),
    .io_in64_4(ingress1_io_in64_4),
    .io_in64_5(ingress1_io_in64_5),
    .io_in64_6(ingress1_io_in64_6),
    .io_in64_7(ingress1_io_in64_7),
    .io_in64_8(ingress1_io_in64_8),
    .io_in64_9(ingress1_io_in64_9),
    .io_in64_10(ingress1_io_in64_10),
    .io_in64_11(ingress1_io_in64_11),
    .io_in64_12(ingress1_io_in64_12),
    .io_in64_13(ingress1_io_in64_13),
    .io_in64_14(ingress1_io_in64_14),
    .io_in64_15(ingress1_io_in64_15),
    .io_in64_16(ingress1_io_in64_16),
    .io_in64_17(ingress1_io_in64_17),
    .io_in64_18(ingress1_io_in64_18),
    .io_in64_19(ingress1_io_in64_19),
    .io_in64_20(ingress1_io_in64_20),
    .io_in64_21(ingress1_io_in64_21),
    .io_in64_22(ingress1_io_in64_22),
    .io_in64_23(ingress1_io_in64_23),
    .io_in64_24(ingress1_io_in64_24),
    .io_in64_25(ingress1_io_in64_25),
    .io_in64_26(ingress1_io_in64_26),
    .io_in64_27(ingress1_io_in64_27),
    .io_in64_28(ingress1_io_in64_28),
    .io_in64_29(ingress1_io_in64_29),
    .io_in64_30(ingress1_io_in64_30),
    .io_in64_31(ingress1_io_in64_31),
    .io_in64_32(ingress1_io_in64_32),
    .io_in64_33(ingress1_io_in64_33),
    .io_in64_34(ingress1_io_in64_34),
    .io_in64_35(ingress1_io_in64_35),
    .io_in64_36(ingress1_io_in64_36),
    .io_in64_37(ingress1_io_in64_37),
    .io_in64_38(ingress1_io_in64_38),
    .io_in64_39(ingress1_io_in64_39),
    .io_in64_40(ingress1_io_in64_40),
    .io_in64_41(ingress1_io_in64_41),
    .io_in64_42(ingress1_io_in64_42),
    .io_in64_43(ingress1_io_in64_43),
    .io_in64_44(ingress1_io_in64_44),
    .io_in64_45(ingress1_io_in64_45),
    .io_in64_46(ingress1_io_in64_46),
    .io_in64_47(ingress1_io_in64_47),
    .io_in64_48(ingress1_io_in64_48),
    .io_in64_49(ingress1_io_in64_49),
    .io_in64_50(ingress1_io_in64_50),
    .io_in64_51(ingress1_io_in64_51),
    .io_in64_52(ingress1_io_in64_52),
    .io_in64_53(ingress1_io_in64_53),
    .io_in64_54(ingress1_io_in64_54),
    .io_in64_55(ingress1_io_in64_55),
    .io_in64_56(ingress1_io_in64_56),
    .io_in64_57(ingress1_io_in64_57),
    .io_in64_58(ingress1_io_in64_58),
    .io_in64_59(ingress1_io_in64_59),
    .io_in64_60(ingress1_io_in64_60),
    .io_in64_61(ingress1_io_in64_61),
    .io_in64_62(ingress1_io_in64_62),
    .io_in64_63(ingress1_io_in64_63),
    .io_validin64_0(ingress1_io_validin64_0),
    .io_validin64_1(ingress1_io_validin64_1),
    .io_validin64_2(ingress1_io_validin64_2),
    .io_validin64_3(ingress1_io_validin64_3),
    .io_validin64_4(ingress1_io_validin64_4),
    .io_validin64_5(ingress1_io_validin64_5),
    .io_validin64_6(ingress1_io_validin64_6),
    .io_validin64_7(ingress1_io_validin64_7),
    .io_validin64_8(ingress1_io_validin64_8),
    .io_validin64_9(ingress1_io_validin64_9),
    .io_validin64_10(ingress1_io_validin64_10),
    .io_validin64_11(ingress1_io_validin64_11),
    .io_validin64_12(ingress1_io_validin64_12),
    .io_validin64_13(ingress1_io_validin64_13),
    .io_validin64_14(ingress1_io_validin64_14),
    .io_validin64_15(ingress1_io_validin64_15),
    .io_validin64_16(ingress1_io_validin64_16),
    .io_validin64_17(ingress1_io_validin64_17),
    .io_validin64_18(ingress1_io_validin64_18),
    .io_validin64_19(ingress1_io_validin64_19),
    .io_validin64_20(ingress1_io_validin64_20),
    .io_validin64_21(ingress1_io_validin64_21),
    .io_validin64_22(ingress1_io_validin64_22),
    .io_validin64_23(ingress1_io_validin64_23),
    .io_validin64_24(ingress1_io_validin64_24),
    .io_validin64_25(ingress1_io_validin64_25),
    .io_validin64_26(ingress1_io_validin64_26),
    .io_validin64_27(ingress1_io_validin64_27),
    .io_validin64_28(ingress1_io_validin64_28),
    .io_validin64_29(ingress1_io_validin64_29),
    .io_validin64_30(ingress1_io_validin64_30),
    .io_validin64_31(ingress1_io_validin64_31),
    .io_validin64_32(ingress1_io_validin64_32),
    .io_validin64_33(ingress1_io_validin64_33),
    .io_validin64_34(ingress1_io_validin64_34),
    .io_validin64_35(ingress1_io_validin64_35),
    .io_validin64_36(ingress1_io_validin64_36),
    .io_validin64_37(ingress1_io_validin64_37),
    .io_validin64_38(ingress1_io_validin64_38),
    .io_validin64_39(ingress1_io_validin64_39),
    .io_validin64_40(ingress1_io_validin64_40),
    .io_validin64_41(ingress1_io_validin64_41),
    .io_validin64_42(ingress1_io_validin64_42),
    .io_validin64_43(ingress1_io_validin64_43),
    .io_validin64_44(ingress1_io_validin64_44),
    .io_validin64_45(ingress1_io_validin64_45),
    .io_validin64_46(ingress1_io_validin64_46),
    .io_validin64_47(ingress1_io_validin64_47),
    .io_validin64_48(ingress1_io_validin64_48),
    .io_validin64_49(ingress1_io_validin64_49),
    .io_validin64_50(ingress1_io_validin64_50),
    .io_validin64_51(ingress1_io_validin64_51),
    .io_validin64_52(ingress1_io_validin64_52),
    .io_validin64_53(ingress1_io_validin64_53),
    .io_validin64_54(ingress1_io_validin64_54),
    .io_validin64_55(ingress1_io_validin64_55),
    .io_validin64_56(ingress1_io_validin64_56),
    .io_validin64_57(ingress1_io_validin64_57),
    .io_validin64_58(ingress1_io_validin64_58),
    .io_validin64_59(ingress1_io_validin64_59),
    .io_validin64_60(ingress1_io_validin64_60),
    .io_validin64_61(ingress1_io_validin64_61),
    .io_validin64_62(ingress1_io_validin64_62),
    .io_validin64_63(ingress1_io_validin64_63),
    .io_out64_0(ingress1_io_out64_0),
    .io_out64_1(ingress1_io_out64_1),
    .io_out64_2(ingress1_io_out64_2),
    .io_out64_3(ingress1_io_out64_3),
    .io_out64_4(ingress1_io_out64_4),
    .io_out64_5(ingress1_io_out64_5),
    .io_out64_6(ingress1_io_out64_6),
    .io_out64_7(ingress1_io_out64_7),
    .io_out64_8(ingress1_io_out64_8),
    .io_out64_9(ingress1_io_out64_9),
    .io_out64_10(ingress1_io_out64_10),
    .io_out64_11(ingress1_io_out64_11),
    .io_out64_12(ingress1_io_out64_12),
    .io_out64_13(ingress1_io_out64_13),
    .io_out64_14(ingress1_io_out64_14),
    .io_out64_15(ingress1_io_out64_15),
    .io_out64_16(ingress1_io_out64_16),
    .io_out64_17(ingress1_io_out64_17),
    .io_out64_18(ingress1_io_out64_18),
    .io_out64_19(ingress1_io_out64_19),
    .io_out64_20(ingress1_io_out64_20),
    .io_out64_21(ingress1_io_out64_21),
    .io_out64_22(ingress1_io_out64_22),
    .io_out64_23(ingress1_io_out64_23),
    .io_out64_24(ingress1_io_out64_24),
    .io_out64_25(ingress1_io_out64_25),
    .io_out64_26(ingress1_io_out64_26),
    .io_out64_27(ingress1_io_out64_27),
    .io_out64_28(ingress1_io_out64_28),
    .io_out64_29(ingress1_io_out64_29),
    .io_out64_30(ingress1_io_out64_30),
    .io_out64_31(ingress1_io_out64_31),
    .io_out64_32(ingress1_io_out64_32),
    .io_out64_33(ingress1_io_out64_33),
    .io_out64_34(ingress1_io_out64_34),
    .io_out64_35(ingress1_io_out64_35),
    .io_out64_36(ingress1_io_out64_36),
    .io_out64_37(ingress1_io_out64_37),
    .io_out64_38(ingress1_io_out64_38),
    .io_out64_39(ingress1_io_out64_39),
    .io_out64_40(ingress1_io_out64_40),
    .io_out64_41(ingress1_io_out64_41),
    .io_out64_42(ingress1_io_out64_42),
    .io_out64_43(ingress1_io_out64_43),
    .io_out64_44(ingress1_io_out64_44),
    .io_out64_45(ingress1_io_out64_45),
    .io_out64_46(ingress1_io_out64_46),
    .io_out64_47(ingress1_io_out64_47),
    .io_out64_48(ingress1_io_out64_48),
    .io_out64_49(ingress1_io_out64_49),
    .io_out64_50(ingress1_io_out64_50),
    .io_out64_51(ingress1_io_out64_51),
    .io_out64_52(ingress1_io_out64_52),
    .io_out64_53(ingress1_io_out64_53),
    .io_out64_54(ingress1_io_out64_54),
    .io_out64_55(ingress1_io_out64_55),
    .io_out64_56(ingress1_io_out64_56),
    .io_out64_57(ingress1_io_out64_57),
    .io_out64_58(ingress1_io_out64_58),
    .io_out64_59(ingress1_io_out64_59),
    .io_out64_60(ingress1_io_out64_60),
    .io_out64_61(ingress1_io_out64_61),
    .io_out64_62(ingress1_io_out64_62),
    .io_out64_63(ingress1_io_out64_63),
    .io_validout64_0(ingress1_io_validout64_0),
    .io_validout64_1(ingress1_io_validout64_1),
    .io_validout64_2(ingress1_io_validout64_2),
    .io_validout64_3(ingress1_io_validout64_3),
    .io_validout64_4(ingress1_io_validout64_4),
    .io_validout64_5(ingress1_io_validout64_5),
    .io_validout64_6(ingress1_io_validout64_6),
    .io_validout64_7(ingress1_io_validout64_7),
    .io_validout64_8(ingress1_io_validout64_8),
    .io_validout64_9(ingress1_io_validout64_9),
    .io_validout64_10(ingress1_io_validout64_10),
    .io_validout64_11(ingress1_io_validout64_11),
    .io_validout64_12(ingress1_io_validout64_12),
    .io_validout64_13(ingress1_io_validout64_13),
    .io_validout64_14(ingress1_io_validout64_14),
    .io_validout64_15(ingress1_io_validout64_15),
    .io_validout64_16(ingress1_io_validout64_16),
    .io_validout64_17(ingress1_io_validout64_17),
    .io_validout64_18(ingress1_io_validout64_18),
    .io_validout64_19(ingress1_io_validout64_19),
    .io_validout64_20(ingress1_io_validout64_20),
    .io_validout64_21(ingress1_io_validout64_21),
    .io_validout64_22(ingress1_io_validout64_22),
    .io_validout64_23(ingress1_io_validout64_23),
    .io_validout64_24(ingress1_io_validout64_24),
    .io_validout64_25(ingress1_io_validout64_25),
    .io_validout64_26(ingress1_io_validout64_26),
    .io_validout64_27(ingress1_io_validout64_27),
    .io_validout64_28(ingress1_io_validout64_28),
    .io_validout64_29(ingress1_io_validout64_29),
    .io_validout64_30(ingress1_io_validout64_30),
    .io_validout64_31(ingress1_io_validout64_31),
    .io_validout64_32(ingress1_io_validout64_32),
    .io_validout64_33(ingress1_io_validout64_33),
    .io_validout64_34(ingress1_io_validout64_34),
    .io_validout64_35(ingress1_io_validout64_35),
    .io_validout64_36(ingress1_io_validout64_36),
    .io_validout64_37(ingress1_io_validout64_37),
    .io_validout64_38(ingress1_io_validout64_38),
    .io_validout64_39(ingress1_io_validout64_39),
    .io_validout64_40(ingress1_io_validout64_40),
    .io_validout64_41(ingress1_io_validout64_41),
    .io_validout64_42(ingress1_io_validout64_42),
    .io_validout64_43(ingress1_io_validout64_43),
    .io_validout64_44(ingress1_io_validout64_44),
    .io_validout64_45(ingress1_io_validout64_45),
    .io_validout64_46(ingress1_io_validout64_46),
    .io_validout64_47(ingress1_io_validout64_47),
    .io_validout64_48(ingress1_io_validout64_48),
    .io_validout64_49(ingress1_io_validout64_49),
    .io_validout64_50(ingress1_io_validout64_50),
    .io_validout64_51(ingress1_io_validout64_51),
    .io_validout64_52(ingress1_io_validout64_52),
    .io_validout64_53(ingress1_io_validout64_53),
    .io_validout64_54(ingress1_io_validout64_54),
    .io_validout64_55(ingress1_io_validout64_55),
    .io_validout64_56(ingress1_io_validout64_56),
    .io_validout64_57(ingress1_io_validout64_57),
    .io_validout64_58(ingress1_io_validout64_58),
    .io_validout64_59(ingress1_io_validout64_59),
    .io_validout64_60(ingress1_io_validout64_60),
    .io_validout64_61(ingress1_io_validout64_61),
    .io_validout64_62(ingress1_io_validout64_62),
    .io_validout64_63(ingress1_io_validout64_63),
    .io_ctrl(ingress1_io_ctrl)
  );
  CLOSingress2 ingress2 ( // @[BuildingBlockNew.scala 62:24]
    .clock(ingress2_clock),
    .reset(ingress2_reset),
    .io_in64_0(ingress2_io_in64_0),
    .io_in64_1(ingress2_io_in64_1),
    .io_in64_2(ingress2_io_in64_2),
    .io_in64_3(ingress2_io_in64_3),
    .io_in64_4(ingress2_io_in64_4),
    .io_in64_5(ingress2_io_in64_5),
    .io_in64_6(ingress2_io_in64_6),
    .io_in64_7(ingress2_io_in64_7),
    .io_in64_8(ingress2_io_in64_8),
    .io_in64_9(ingress2_io_in64_9),
    .io_in64_10(ingress2_io_in64_10),
    .io_in64_11(ingress2_io_in64_11),
    .io_in64_12(ingress2_io_in64_12),
    .io_in64_13(ingress2_io_in64_13),
    .io_in64_14(ingress2_io_in64_14),
    .io_in64_15(ingress2_io_in64_15),
    .io_in64_16(ingress2_io_in64_16),
    .io_in64_17(ingress2_io_in64_17),
    .io_in64_18(ingress2_io_in64_18),
    .io_in64_19(ingress2_io_in64_19),
    .io_in64_20(ingress2_io_in64_20),
    .io_in64_21(ingress2_io_in64_21),
    .io_in64_22(ingress2_io_in64_22),
    .io_in64_23(ingress2_io_in64_23),
    .io_in64_24(ingress2_io_in64_24),
    .io_in64_25(ingress2_io_in64_25),
    .io_in64_26(ingress2_io_in64_26),
    .io_in64_27(ingress2_io_in64_27),
    .io_in64_28(ingress2_io_in64_28),
    .io_in64_29(ingress2_io_in64_29),
    .io_in64_30(ingress2_io_in64_30),
    .io_in64_31(ingress2_io_in64_31),
    .io_in64_32(ingress2_io_in64_32),
    .io_in64_33(ingress2_io_in64_33),
    .io_in64_34(ingress2_io_in64_34),
    .io_in64_35(ingress2_io_in64_35),
    .io_in64_36(ingress2_io_in64_36),
    .io_in64_37(ingress2_io_in64_37),
    .io_in64_38(ingress2_io_in64_38),
    .io_in64_39(ingress2_io_in64_39),
    .io_in64_40(ingress2_io_in64_40),
    .io_in64_41(ingress2_io_in64_41),
    .io_in64_42(ingress2_io_in64_42),
    .io_in64_43(ingress2_io_in64_43),
    .io_in64_44(ingress2_io_in64_44),
    .io_in64_45(ingress2_io_in64_45),
    .io_in64_46(ingress2_io_in64_46),
    .io_in64_47(ingress2_io_in64_47),
    .io_in64_48(ingress2_io_in64_48),
    .io_in64_49(ingress2_io_in64_49),
    .io_in64_50(ingress2_io_in64_50),
    .io_in64_51(ingress2_io_in64_51),
    .io_in64_52(ingress2_io_in64_52),
    .io_in64_53(ingress2_io_in64_53),
    .io_in64_54(ingress2_io_in64_54),
    .io_in64_55(ingress2_io_in64_55),
    .io_in64_56(ingress2_io_in64_56),
    .io_in64_57(ingress2_io_in64_57),
    .io_in64_58(ingress2_io_in64_58),
    .io_in64_59(ingress2_io_in64_59),
    .io_in64_60(ingress2_io_in64_60),
    .io_in64_61(ingress2_io_in64_61),
    .io_in64_62(ingress2_io_in64_62),
    .io_in64_63(ingress2_io_in64_63),
    .io_validin64_0(ingress2_io_validin64_0),
    .io_validin64_1(ingress2_io_validin64_1),
    .io_validin64_2(ingress2_io_validin64_2),
    .io_validin64_3(ingress2_io_validin64_3),
    .io_validin64_4(ingress2_io_validin64_4),
    .io_validin64_5(ingress2_io_validin64_5),
    .io_validin64_6(ingress2_io_validin64_6),
    .io_validin64_7(ingress2_io_validin64_7),
    .io_validin64_8(ingress2_io_validin64_8),
    .io_validin64_9(ingress2_io_validin64_9),
    .io_validin64_10(ingress2_io_validin64_10),
    .io_validin64_11(ingress2_io_validin64_11),
    .io_validin64_12(ingress2_io_validin64_12),
    .io_validin64_13(ingress2_io_validin64_13),
    .io_validin64_14(ingress2_io_validin64_14),
    .io_validin64_15(ingress2_io_validin64_15),
    .io_validin64_16(ingress2_io_validin64_16),
    .io_validin64_17(ingress2_io_validin64_17),
    .io_validin64_18(ingress2_io_validin64_18),
    .io_validin64_19(ingress2_io_validin64_19),
    .io_validin64_20(ingress2_io_validin64_20),
    .io_validin64_21(ingress2_io_validin64_21),
    .io_validin64_22(ingress2_io_validin64_22),
    .io_validin64_23(ingress2_io_validin64_23),
    .io_validin64_24(ingress2_io_validin64_24),
    .io_validin64_25(ingress2_io_validin64_25),
    .io_validin64_26(ingress2_io_validin64_26),
    .io_validin64_27(ingress2_io_validin64_27),
    .io_validin64_28(ingress2_io_validin64_28),
    .io_validin64_29(ingress2_io_validin64_29),
    .io_validin64_30(ingress2_io_validin64_30),
    .io_validin64_31(ingress2_io_validin64_31),
    .io_validin64_32(ingress2_io_validin64_32),
    .io_validin64_33(ingress2_io_validin64_33),
    .io_validin64_34(ingress2_io_validin64_34),
    .io_validin64_35(ingress2_io_validin64_35),
    .io_validin64_36(ingress2_io_validin64_36),
    .io_validin64_37(ingress2_io_validin64_37),
    .io_validin64_38(ingress2_io_validin64_38),
    .io_validin64_39(ingress2_io_validin64_39),
    .io_validin64_40(ingress2_io_validin64_40),
    .io_validin64_41(ingress2_io_validin64_41),
    .io_validin64_42(ingress2_io_validin64_42),
    .io_validin64_43(ingress2_io_validin64_43),
    .io_validin64_44(ingress2_io_validin64_44),
    .io_validin64_45(ingress2_io_validin64_45),
    .io_validin64_46(ingress2_io_validin64_46),
    .io_validin64_47(ingress2_io_validin64_47),
    .io_validin64_48(ingress2_io_validin64_48),
    .io_validin64_49(ingress2_io_validin64_49),
    .io_validin64_50(ingress2_io_validin64_50),
    .io_validin64_51(ingress2_io_validin64_51),
    .io_validin64_52(ingress2_io_validin64_52),
    .io_validin64_53(ingress2_io_validin64_53),
    .io_validin64_54(ingress2_io_validin64_54),
    .io_validin64_55(ingress2_io_validin64_55),
    .io_validin64_56(ingress2_io_validin64_56),
    .io_validin64_57(ingress2_io_validin64_57),
    .io_validin64_58(ingress2_io_validin64_58),
    .io_validin64_59(ingress2_io_validin64_59),
    .io_validin64_60(ingress2_io_validin64_60),
    .io_validin64_61(ingress2_io_validin64_61),
    .io_validin64_62(ingress2_io_validin64_62),
    .io_validin64_63(ingress2_io_validin64_63),
    .io_out64_0(ingress2_io_out64_0),
    .io_out64_1(ingress2_io_out64_1),
    .io_out64_2(ingress2_io_out64_2),
    .io_out64_3(ingress2_io_out64_3),
    .io_out64_4(ingress2_io_out64_4),
    .io_out64_5(ingress2_io_out64_5),
    .io_out64_6(ingress2_io_out64_6),
    .io_out64_7(ingress2_io_out64_7),
    .io_out64_8(ingress2_io_out64_8),
    .io_out64_9(ingress2_io_out64_9),
    .io_out64_10(ingress2_io_out64_10),
    .io_out64_11(ingress2_io_out64_11),
    .io_out64_12(ingress2_io_out64_12),
    .io_out64_13(ingress2_io_out64_13),
    .io_out64_14(ingress2_io_out64_14),
    .io_out64_15(ingress2_io_out64_15),
    .io_out64_16(ingress2_io_out64_16),
    .io_out64_17(ingress2_io_out64_17),
    .io_out64_18(ingress2_io_out64_18),
    .io_out64_19(ingress2_io_out64_19),
    .io_out64_20(ingress2_io_out64_20),
    .io_out64_21(ingress2_io_out64_21),
    .io_out64_22(ingress2_io_out64_22),
    .io_out64_23(ingress2_io_out64_23),
    .io_out64_24(ingress2_io_out64_24),
    .io_out64_25(ingress2_io_out64_25),
    .io_out64_26(ingress2_io_out64_26),
    .io_out64_27(ingress2_io_out64_27),
    .io_out64_28(ingress2_io_out64_28),
    .io_out64_29(ingress2_io_out64_29),
    .io_out64_30(ingress2_io_out64_30),
    .io_out64_31(ingress2_io_out64_31),
    .io_out64_32(ingress2_io_out64_32),
    .io_out64_33(ingress2_io_out64_33),
    .io_out64_34(ingress2_io_out64_34),
    .io_out64_35(ingress2_io_out64_35),
    .io_out64_36(ingress2_io_out64_36),
    .io_out64_37(ingress2_io_out64_37),
    .io_out64_38(ingress2_io_out64_38),
    .io_out64_39(ingress2_io_out64_39),
    .io_out64_40(ingress2_io_out64_40),
    .io_out64_41(ingress2_io_out64_41),
    .io_out64_42(ingress2_io_out64_42),
    .io_out64_43(ingress2_io_out64_43),
    .io_out64_44(ingress2_io_out64_44),
    .io_out64_45(ingress2_io_out64_45),
    .io_out64_46(ingress2_io_out64_46),
    .io_out64_47(ingress2_io_out64_47),
    .io_out64_48(ingress2_io_out64_48),
    .io_out64_49(ingress2_io_out64_49),
    .io_out64_50(ingress2_io_out64_50),
    .io_out64_51(ingress2_io_out64_51),
    .io_out64_52(ingress2_io_out64_52),
    .io_out64_53(ingress2_io_out64_53),
    .io_out64_54(ingress2_io_out64_54),
    .io_out64_55(ingress2_io_out64_55),
    .io_out64_56(ingress2_io_out64_56),
    .io_out64_57(ingress2_io_out64_57),
    .io_out64_58(ingress2_io_out64_58),
    .io_out64_59(ingress2_io_out64_59),
    .io_out64_60(ingress2_io_out64_60),
    .io_out64_61(ingress2_io_out64_61),
    .io_out64_62(ingress2_io_out64_62),
    .io_out64_63(ingress2_io_out64_63),
    .io_validout64_0(ingress2_io_validout64_0),
    .io_validout64_1(ingress2_io_validout64_1),
    .io_validout64_2(ingress2_io_validout64_2),
    .io_validout64_3(ingress2_io_validout64_3),
    .io_validout64_4(ingress2_io_validout64_4),
    .io_validout64_5(ingress2_io_validout64_5),
    .io_validout64_6(ingress2_io_validout64_6),
    .io_validout64_7(ingress2_io_validout64_7),
    .io_validout64_8(ingress2_io_validout64_8),
    .io_validout64_9(ingress2_io_validout64_9),
    .io_validout64_10(ingress2_io_validout64_10),
    .io_validout64_11(ingress2_io_validout64_11),
    .io_validout64_12(ingress2_io_validout64_12),
    .io_validout64_13(ingress2_io_validout64_13),
    .io_validout64_14(ingress2_io_validout64_14),
    .io_validout64_15(ingress2_io_validout64_15),
    .io_validout64_16(ingress2_io_validout64_16),
    .io_validout64_17(ingress2_io_validout64_17),
    .io_validout64_18(ingress2_io_validout64_18),
    .io_validout64_19(ingress2_io_validout64_19),
    .io_validout64_20(ingress2_io_validout64_20),
    .io_validout64_21(ingress2_io_validout64_21),
    .io_validout64_22(ingress2_io_validout64_22),
    .io_validout64_23(ingress2_io_validout64_23),
    .io_validout64_24(ingress2_io_validout64_24),
    .io_validout64_25(ingress2_io_validout64_25),
    .io_validout64_26(ingress2_io_validout64_26),
    .io_validout64_27(ingress2_io_validout64_27),
    .io_validout64_28(ingress2_io_validout64_28),
    .io_validout64_29(ingress2_io_validout64_29),
    .io_validout64_30(ingress2_io_validout64_30),
    .io_validout64_31(ingress2_io_validout64_31),
    .io_validout64_32(ingress2_io_validout64_32),
    .io_validout64_33(ingress2_io_validout64_33),
    .io_validout64_34(ingress2_io_validout64_34),
    .io_validout64_35(ingress2_io_validout64_35),
    .io_validout64_36(ingress2_io_validout64_36),
    .io_validout64_37(ingress2_io_validout64_37),
    .io_validout64_38(ingress2_io_validout64_38),
    .io_validout64_39(ingress2_io_validout64_39),
    .io_validout64_40(ingress2_io_validout64_40),
    .io_validout64_41(ingress2_io_validout64_41),
    .io_validout64_42(ingress2_io_validout64_42),
    .io_validout64_43(ingress2_io_validout64_43),
    .io_validout64_44(ingress2_io_validout64_44),
    .io_validout64_45(ingress2_io_validout64_45),
    .io_validout64_46(ingress2_io_validout64_46),
    .io_validout64_47(ingress2_io_validout64_47),
    .io_validout64_48(ingress2_io_validout64_48),
    .io_validout64_49(ingress2_io_validout64_49),
    .io_validout64_50(ingress2_io_validout64_50),
    .io_validout64_51(ingress2_io_validout64_51),
    .io_validout64_52(ingress2_io_validout64_52),
    .io_validout64_53(ingress2_io_validout64_53),
    .io_validout64_54(ingress2_io_validout64_54),
    .io_validout64_55(ingress2_io_validout64_55),
    .io_validout64_56(ingress2_io_validout64_56),
    .io_validout64_57(ingress2_io_validout64_57),
    .io_validout64_58(ingress2_io_validout64_58),
    .io_validout64_59(ingress2_io_validout64_59),
    .io_validout64_60(ingress2_io_validout64_60),
    .io_validout64_61(ingress2_io_validout64_61),
    .io_validout64_62(ingress2_io_validout64_62),
    .io_validout64_63(ingress2_io_validout64_63),
    .io_ctrl(ingress2_io_ctrl)
  );
  CLOSingress2 middle ( // @[BuildingBlockNew.scala 63:22]
    .clock(middle_clock),
    .reset(middle_reset),
    .io_in64_0(middle_io_in64_0),
    .io_in64_1(middle_io_in64_1),
    .io_in64_2(middle_io_in64_2),
    .io_in64_3(middle_io_in64_3),
    .io_in64_4(middle_io_in64_4),
    .io_in64_5(middle_io_in64_5),
    .io_in64_6(middle_io_in64_6),
    .io_in64_7(middle_io_in64_7),
    .io_in64_8(middle_io_in64_8),
    .io_in64_9(middle_io_in64_9),
    .io_in64_10(middle_io_in64_10),
    .io_in64_11(middle_io_in64_11),
    .io_in64_12(middle_io_in64_12),
    .io_in64_13(middle_io_in64_13),
    .io_in64_14(middle_io_in64_14),
    .io_in64_15(middle_io_in64_15),
    .io_in64_16(middle_io_in64_16),
    .io_in64_17(middle_io_in64_17),
    .io_in64_18(middle_io_in64_18),
    .io_in64_19(middle_io_in64_19),
    .io_in64_20(middle_io_in64_20),
    .io_in64_21(middle_io_in64_21),
    .io_in64_22(middle_io_in64_22),
    .io_in64_23(middle_io_in64_23),
    .io_in64_24(middle_io_in64_24),
    .io_in64_25(middle_io_in64_25),
    .io_in64_26(middle_io_in64_26),
    .io_in64_27(middle_io_in64_27),
    .io_in64_28(middle_io_in64_28),
    .io_in64_29(middle_io_in64_29),
    .io_in64_30(middle_io_in64_30),
    .io_in64_31(middle_io_in64_31),
    .io_in64_32(middle_io_in64_32),
    .io_in64_33(middle_io_in64_33),
    .io_in64_34(middle_io_in64_34),
    .io_in64_35(middle_io_in64_35),
    .io_in64_36(middle_io_in64_36),
    .io_in64_37(middle_io_in64_37),
    .io_in64_38(middle_io_in64_38),
    .io_in64_39(middle_io_in64_39),
    .io_in64_40(middle_io_in64_40),
    .io_in64_41(middle_io_in64_41),
    .io_in64_42(middle_io_in64_42),
    .io_in64_43(middle_io_in64_43),
    .io_in64_44(middle_io_in64_44),
    .io_in64_45(middle_io_in64_45),
    .io_in64_46(middle_io_in64_46),
    .io_in64_47(middle_io_in64_47),
    .io_in64_48(middle_io_in64_48),
    .io_in64_49(middle_io_in64_49),
    .io_in64_50(middle_io_in64_50),
    .io_in64_51(middle_io_in64_51),
    .io_in64_52(middle_io_in64_52),
    .io_in64_53(middle_io_in64_53),
    .io_in64_54(middle_io_in64_54),
    .io_in64_55(middle_io_in64_55),
    .io_in64_56(middle_io_in64_56),
    .io_in64_57(middle_io_in64_57),
    .io_in64_58(middle_io_in64_58),
    .io_in64_59(middle_io_in64_59),
    .io_in64_60(middle_io_in64_60),
    .io_in64_61(middle_io_in64_61),
    .io_in64_62(middle_io_in64_62),
    .io_in64_63(middle_io_in64_63),
    .io_validin64_0(middle_io_validin64_0),
    .io_validin64_1(middle_io_validin64_1),
    .io_validin64_2(middle_io_validin64_2),
    .io_validin64_3(middle_io_validin64_3),
    .io_validin64_4(middle_io_validin64_4),
    .io_validin64_5(middle_io_validin64_5),
    .io_validin64_6(middle_io_validin64_6),
    .io_validin64_7(middle_io_validin64_7),
    .io_validin64_8(middle_io_validin64_8),
    .io_validin64_9(middle_io_validin64_9),
    .io_validin64_10(middle_io_validin64_10),
    .io_validin64_11(middle_io_validin64_11),
    .io_validin64_12(middle_io_validin64_12),
    .io_validin64_13(middle_io_validin64_13),
    .io_validin64_14(middle_io_validin64_14),
    .io_validin64_15(middle_io_validin64_15),
    .io_validin64_16(middle_io_validin64_16),
    .io_validin64_17(middle_io_validin64_17),
    .io_validin64_18(middle_io_validin64_18),
    .io_validin64_19(middle_io_validin64_19),
    .io_validin64_20(middle_io_validin64_20),
    .io_validin64_21(middle_io_validin64_21),
    .io_validin64_22(middle_io_validin64_22),
    .io_validin64_23(middle_io_validin64_23),
    .io_validin64_24(middle_io_validin64_24),
    .io_validin64_25(middle_io_validin64_25),
    .io_validin64_26(middle_io_validin64_26),
    .io_validin64_27(middle_io_validin64_27),
    .io_validin64_28(middle_io_validin64_28),
    .io_validin64_29(middle_io_validin64_29),
    .io_validin64_30(middle_io_validin64_30),
    .io_validin64_31(middle_io_validin64_31),
    .io_validin64_32(middle_io_validin64_32),
    .io_validin64_33(middle_io_validin64_33),
    .io_validin64_34(middle_io_validin64_34),
    .io_validin64_35(middle_io_validin64_35),
    .io_validin64_36(middle_io_validin64_36),
    .io_validin64_37(middle_io_validin64_37),
    .io_validin64_38(middle_io_validin64_38),
    .io_validin64_39(middle_io_validin64_39),
    .io_validin64_40(middle_io_validin64_40),
    .io_validin64_41(middle_io_validin64_41),
    .io_validin64_42(middle_io_validin64_42),
    .io_validin64_43(middle_io_validin64_43),
    .io_validin64_44(middle_io_validin64_44),
    .io_validin64_45(middle_io_validin64_45),
    .io_validin64_46(middle_io_validin64_46),
    .io_validin64_47(middle_io_validin64_47),
    .io_validin64_48(middle_io_validin64_48),
    .io_validin64_49(middle_io_validin64_49),
    .io_validin64_50(middle_io_validin64_50),
    .io_validin64_51(middle_io_validin64_51),
    .io_validin64_52(middle_io_validin64_52),
    .io_validin64_53(middle_io_validin64_53),
    .io_validin64_54(middle_io_validin64_54),
    .io_validin64_55(middle_io_validin64_55),
    .io_validin64_56(middle_io_validin64_56),
    .io_validin64_57(middle_io_validin64_57),
    .io_validin64_58(middle_io_validin64_58),
    .io_validin64_59(middle_io_validin64_59),
    .io_validin64_60(middle_io_validin64_60),
    .io_validin64_61(middle_io_validin64_61),
    .io_validin64_62(middle_io_validin64_62),
    .io_validin64_63(middle_io_validin64_63),
    .io_out64_0(middle_io_out64_0),
    .io_out64_1(middle_io_out64_1),
    .io_out64_2(middle_io_out64_2),
    .io_out64_3(middle_io_out64_3),
    .io_out64_4(middle_io_out64_4),
    .io_out64_5(middle_io_out64_5),
    .io_out64_6(middle_io_out64_6),
    .io_out64_7(middle_io_out64_7),
    .io_out64_8(middle_io_out64_8),
    .io_out64_9(middle_io_out64_9),
    .io_out64_10(middle_io_out64_10),
    .io_out64_11(middle_io_out64_11),
    .io_out64_12(middle_io_out64_12),
    .io_out64_13(middle_io_out64_13),
    .io_out64_14(middle_io_out64_14),
    .io_out64_15(middle_io_out64_15),
    .io_out64_16(middle_io_out64_16),
    .io_out64_17(middle_io_out64_17),
    .io_out64_18(middle_io_out64_18),
    .io_out64_19(middle_io_out64_19),
    .io_out64_20(middle_io_out64_20),
    .io_out64_21(middle_io_out64_21),
    .io_out64_22(middle_io_out64_22),
    .io_out64_23(middle_io_out64_23),
    .io_out64_24(middle_io_out64_24),
    .io_out64_25(middle_io_out64_25),
    .io_out64_26(middle_io_out64_26),
    .io_out64_27(middle_io_out64_27),
    .io_out64_28(middle_io_out64_28),
    .io_out64_29(middle_io_out64_29),
    .io_out64_30(middle_io_out64_30),
    .io_out64_31(middle_io_out64_31),
    .io_out64_32(middle_io_out64_32),
    .io_out64_33(middle_io_out64_33),
    .io_out64_34(middle_io_out64_34),
    .io_out64_35(middle_io_out64_35),
    .io_out64_36(middle_io_out64_36),
    .io_out64_37(middle_io_out64_37),
    .io_out64_38(middle_io_out64_38),
    .io_out64_39(middle_io_out64_39),
    .io_out64_40(middle_io_out64_40),
    .io_out64_41(middle_io_out64_41),
    .io_out64_42(middle_io_out64_42),
    .io_out64_43(middle_io_out64_43),
    .io_out64_44(middle_io_out64_44),
    .io_out64_45(middle_io_out64_45),
    .io_out64_46(middle_io_out64_46),
    .io_out64_47(middle_io_out64_47),
    .io_out64_48(middle_io_out64_48),
    .io_out64_49(middle_io_out64_49),
    .io_out64_50(middle_io_out64_50),
    .io_out64_51(middle_io_out64_51),
    .io_out64_52(middle_io_out64_52),
    .io_out64_53(middle_io_out64_53),
    .io_out64_54(middle_io_out64_54),
    .io_out64_55(middle_io_out64_55),
    .io_out64_56(middle_io_out64_56),
    .io_out64_57(middle_io_out64_57),
    .io_out64_58(middle_io_out64_58),
    .io_out64_59(middle_io_out64_59),
    .io_out64_60(middle_io_out64_60),
    .io_out64_61(middle_io_out64_61),
    .io_out64_62(middle_io_out64_62),
    .io_out64_63(middle_io_out64_63),
    .io_validout64_0(middle_io_validout64_0),
    .io_validout64_1(middle_io_validout64_1),
    .io_validout64_2(middle_io_validout64_2),
    .io_validout64_3(middle_io_validout64_3),
    .io_validout64_4(middle_io_validout64_4),
    .io_validout64_5(middle_io_validout64_5),
    .io_validout64_6(middle_io_validout64_6),
    .io_validout64_7(middle_io_validout64_7),
    .io_validout64_8(middle_io_validout64_8),
    .io_validout64_9(middle_io_validout64_9),
    .io_validout64_10(middle_io_validout64_10),
    .io_validout64_11(middle_io_validout64_11),
    .io_validout64_12(middle_io_validout64_12),
    .io_validout64_13(middle_io_validout64_13),
    .io_validout64_14(middle_io_validout64_14),
    .io_validout64_15(middle_io_validout64_15),
    .io_validout64_16(middle_io_validout64_16),
    .io_validout64_17(middle_io_validout64_17),
    .io_validout64_18(middle_io_validout64_18),
    .io_validout64_19(middle_io_validout64_19),
    .io_validout64_20(middle_io_validout64_20),
    .io_validout64_21(middle_io_validout64_21),
    .io_validout64_22(middle_io_validout64_22),
    .io_validout64_23(middle_io_validout64_23),
    .io_validout64_24(middle_io_validout64_24),
    .io_validout64_25(middle_io_validout64_25),
    .io_validout64_26(middle_io_validout64_26),
    .io_validout64_27(middle_io_validout64_27),
    .io_validout64_28(middle_io_validout64_28),
    .io_validout64_29(middle_io_validout64_29),
    .io_validout64_30(middle_io_validout64_30),
    .io_validout64_31(middle_io_validout64_31),
    .io_validout64_32(middle_io_validout64_32),
    .io_validout64_33(middle_io_validout64_33),
    .io_validout64_34(middle_io_validout64_34),
    .io_validout64_35(middle_io_validout64_35),
    .io_validout64_36(middle_io_validout64_36),
    .io_validout64_37(middle_io_validout64_37),
    .io_validout64_38(middle_io_validout64_38),
    .io_validout64_39(middle_io_validout64_39),
    .io_validout64_40(middle_io_validout64_40),
    .io_validout64_41(middle_io_validout64_41),
    .io_validout64_42(middle_io_validout64_42),
    .io_validout64_43(middle_io_validout64_43),
    .io_validout64_44(middle_io_validout64_44),
    .io_validout64_45(middle_io_validout64_45),
    .io_validout64_46(middle_io_validout64_46),
    .io_validout64_47(middle_io_validout64_47),
    .io_validout64_48(middle_io_validout64_48),
    .io_validout64_49(middle_io_validout64_49),
    .io_validout64_50(middle_io_validout64_50),
    .io_validout64_51(middle_io_validout64_51),
    .io_validout64_52(middle_io_validout64_52),
    .io_validout64_53(middle_io_validout64_53),
    .io_validout64_54(middle_io_validout64_54),
    .io_validout64_55(middle_io_validout64_55),
    .io_validout64_56(middle_io_validout64_56),
    .io_validout64_57(middle_io_validout64_57),
    .io_validout64_58(middle_io_validout64_58),
    .io_validout64_59(middle_io_validout64_59),
    .io_validout64_60(middle_io_validout64_60),
    .io_validout64_61(middle_io_validout64_61),
    .io_validout64_62(middle_io_validout64_62),
    .io_validout64_63(middle_io_validout64_63),
    .io_ctrl(middle_io_ctrl)
  );
  CLOSegress1 egress1 ( // @[BuildingBlockNew.scala 64:23]
    .clock(egress1_clock),
    .reset(egress1_reset),
    .io_in64_0(egress1_io_in64_0),
    .io_in64_1(egress1_io_in64_1),
    .io_in64_2(egress1_io_in64_2),
    .io_in64_3(egress1_io_in64_3),
    .io_in64_4(egress1_io_in64_4),
    .io_in64_5(egress1_io_in64_5),
    .io_in64_6(egress1_io_in64_6),
    .io_in64_7(egress1_io_in64_7),
    .io_in64_8(egress1_io_in64_8),
    .io_in64_9(egress1_io_in64_9),
    .io_in64_10(egress1_io_in64_10),
    .io_in64_11(egress1_io_in64_11),
    .io_in64_12(egress1_io_in64_12),
    .io_in64_13(egress1_io_in64_13),
    .io_in64_14(egress1_io_in64_14),
    .io_in64_15(egress1_io_in64_15),
    .io_in64_16(egress1_io_in64_16),
    .io_in64_17(egress1_io_in64_17),
    .io_in64_18(egress1_io_in64_18),
    .io_in64_19(egress1_io_in64_19),
    .io_in64_20(egress1_io_in64_20),
    .io_in64_21(egress1_io_in64_21),
    .io_in64_22(egress1_io_in64_22),
    .io_in64_23(egress1_io_in64_23),
    .io_in64_24(egress1_io_in64_24),
    .io_in64_25(egress1_io_in64_25),
    .io_in64_26(egress1_io_in64_26),
    .io_in64_27(egress1_io_in64_27),
    .io_in64_28(egress1_io_in64_28),
    .io_in64_29(egress1_io_in64_29),
    .io_in64_30(egress1_io_in64_30),
    .io_in64_31(egress1_io_in64_31),
    .io_in64_32(egress1_io_in64_32),
    .io_in64_33(egress1_io_in64_33),
    .io_in64_34(egress1_io_in64_34),
    .io_in64_35(egress1_io_in64_35),
    .io_in64_36(egress1_io_in64_36),
    .io_in64_37(egress1_io_in64_37),
    .io_in64_38(egress1_io_in64_38),
    .io_in64_39(egress1_io_in64_39),
    .io_in64_40(egress1_io_in64_40),
    .io_in64_41(egress1_io_in64_41),
    .io_in64_42(egress1_io_in64_42),
    .io_in64_43(egress1_io_in64_43),
    .io_in64_44(egress1_io_in64_44),
    .io_in64_45(egress1_io_in64_45),
    .io_in64_46(egress1_io_in64_46),
    .io_in64_47(egress1_io_in64_47),
    .io_in64_48(egress1_io_in64_48),
    .io_in64_49(egress1_io_in64_49),
    .io_in64_50(egress1_io_in64_50),
    .io_in64_51(egress1_io_in64_51),
    .io_in64_52(egress1_io_in64_52),
    .io_in64_53(egress1_io_in64_53),
    .io_in64_54(egress1_io_in64_54),
    .io_in64_55(egress1_io_in64_55),
    .io_in64_56(egress1_io_in64_56),
    .io_in64_57(egress1_io_in64_57),
    .io_in64_58(egress1_io_in64_58),
    .io_in64_59(egress1_io_in64_59),
    .io_in64_60(egress1_io_in64_60),
    .io_in64_61(egress1_io_in64_61),
    .io_in64_62(egress1_io_in64_62),
    .io_in64_63(egress1_io_in64_63),
    .io_validin64_0(egress1_io_validin64_0),
    .io_validin64_1(egress1_io_validin64_1),
    .io_validin64_2(egress1_io_validin64_2),
    .io_validin64_3(egress1_io_validin64_3),
    .io_validin64_4(egress1_io_validin64_4),
    .io_validin64_5(egress1_io_validin64_5),
    .io_validin64_6(egress1_io_validin64_6),
    .io_validin64_7(egress1_io_validin64_7),
    .io_validin64_8(egress1_io_validin64_8),
    .io_validin64_9(egress1_io_validin64_9),
    .io_validin64_10(egress1_io_validin64_10),
    .io_validin64_11(egress1_io_validin64_11),
    .io_validin64_12(egress1_io_validin64_12),
    .io_validin64_13(egress1_io_validin64_13),
    .io_validin64_14(egress1_io_validin64_14),
    .io_validin64_15(egress1_io_validin64_15),
    .io_validin64_16(egress1_io_validin64_16),
    .io_validin64_17(egress1_io_validin64_17),
    .io_validin64_18(egress1_io_validin64_18),
    .io_validin64_19(egress1_io_validin64_19),
    .io_validin64_20(egress1_io_validin64_20),
    .io_validin64_21(egress1_io_validin64_21),
    .io_validin64_22(egress1_io_validin64_22),
    .io_validin64_23(egress1_io_validin64_23),
    .io_validin64_24(egress1_io_validin64_24),
    .io_validin64_25(egress1_io_validin64_25),
    .io_validin64_26(egress1_io_validin64_26),
    .io_validin64_27(egress1_io_validin64_27),
    .io_validin64_28(egress1_io_validin64_28),
    .io_validin64_29(egress1_io_validin64_29),
    .io_validin64_30(egress1_io_validin64_30),
    .io_validin64_31(egress1_io_validin64_31),
    .io_validin64_32(egress1_io_validin64_32),
    .io_validin64_33(egress1_io_validin64_33),
    .io_validin64_34(egress1_io_validin64_34),
    .io_validin64_35(egress1_io_validin64_35),
    .io_validin64_36(egress1_io_validin64_36),
    .io_validin64_37(egress1_io_validin64_37),
    .io_validin64_38(egress1_io_validin64_38),
    .io_validin64_39(egress1_io_validin64_39),
    .io_validin64_40(egress1_io_validin64_40),
    .io_validin64_41(egress1_io_validin64_41),
    .io_validin64_42(egress1_io_validin64_42),
    .io_validin64_43(egress1_io_validin64_43),
    .io_validin64_44(egress1_io_validin64_44),
    .io_validin64_45(egress1_io_validin64_45),
    .io_validin64_46(egress1_io_validin64_46),
    .io_validin64_47(egress1_io_validin64_47),
    .io_validin64_48(egress1_io_validin64_48),
    .io_validin64_49(egress1_io_validin64_49),
    .io_validin64_50(egress1_io_validin64_50),
    .io_validin64_51(egress1_io_validin64_51),
    .io_validin64_52(egress1_io_validin64_52),
    .io_validin64_53(egress1_io_validin64_53),
    .io_validin64_54(egress1_io_validin64_54),
    .io_validin64_55(egress1_io_validin64_55),
    .io_validin64_56(egress1_io_validin64_56),
    .io_validin64_57(egress1_io_validin64_57),
    .io_validin64_58(egress1_io_validin64_58),
    .io_validin64_59(egress1_io_validin64_59),
    .io_validin64_60(egress1_io_validin64_60),
    .io_validin64_61(egress1_io_validin64_61),
    .io_validin64_62(egress1_io_validin64_62),
    .io_validin64_63(egress1_io_validin64_63),
    .io_out64_0(egress1_io_out64_0),
    .io_out64_1(egress1_io_out64_1),
    .io_out64_2(egress1_io_out64_2),
    .io_out64_3(egress1_io_out64_3),
    .io_out64_4(egress1_io_out64_4),
    .io_out64_5(egress1_io_out64_5),
    .io_out64_6(egress1_io_out64_6),
    .io_out64_7(egress1_io_out64_7),
    .io_out64_8(egress1_io_out64_8),
    .io_out64_9(egress1_io_out64_9),
    .io_out64_10(egress1_io_out64_10),
    .io_out64_11(egress1_io_out64_11),
    .io_out64_12(egress1_io_out64_12),
    .io_out64_13(egress1_io_out64_13),
    .io_out64_14(egress1_io_out64_14),
    .io_out64_15(egress1_io_out64_15),
    .io_out64_16(egress1_io_out64_16),
    .io_out64_17(egress1_io_out64_17),
    .io_out64_18(egress1_io_out64_18),
    .io_out64_19(egress1_io_out64_19),
    .io_out64_20(egress1_io_out64_20),
    .io_out64_21(egress1_io_out64_21),
    .io_out64_22(egress1_io_out64_22),
    .io_out64_23(egress1_io_out64_23),
    .io_out64_24(egress1_io_out64_24),
    .io_out64_25(egress1_io_out64_25),
    .io_out64_26(egress1_io_out64_26),
    .io_out64_27(egress1_io_out64_27),
    .io_out64_28(egress1_io_out64_28),
    .io_out64_29(egress1_io_out64_29),
    .io_out64_30(egress1_io_out64_30),
    .io_out64_31(egress1_io_out64_31),
    .io_out64_32(egress1_io_out64_32),
    .io_out64_33(egress1_io_out64_33),
    .io_out64_34(egress1_io_out64_34),
    .io_out64_35(egress1_io_out64_35),
    .io_out64_36(egress1_io_out64_36),
    .io_out64_37(egress1_io_out64_37),
    .io_out64_38(egress1_io_out64_38),
    .io_out64_39(egress1_io_out64_39),
    .io_out64_40(egress1_io_out64_40),
    .io_out64_41(egress1_io_out64_41),
    .io_out64_42(egress1_io_out64_42),
    .io_out64_43(egress1_io_out64_43),
    .io_out64_44(egress1_io_out64_44),
    .io_out64_45(egress1_io_out64_45),
    .io_out64_46(egress1_io_out64_46),
    .io_out64_47(egress1_io_out64_47),
    .io_out64_48(egress1_io_out64_48),
    .io_out64_49(egress1_io_out64_49),
    .io_out64_50(egress1_io_out64_50),
    .io_out64_51(egress1_io_out64_51),
    .io_out64_52(egress1_io_out64_52),
    .io_out64_53(egress1_io_out64_53),
    .io_out64_54(egress1_io_out64_54),
    .io_out64_55(egress1_io_out64_55),
    .io_out64_56(egress1_io_out64_56),
    .io_out64_57(egress1_io_out64_57),
    .io_out64_58(egress1_io_out64_58),
    .io_out64_59(egress1_io_out64_59),
    .io_out64_60(egress1_io_out64_60),
    .io_out64_61(egress1_io_out64_61),
    .io_out64_62(egress1_io_out64_62),
    .io_out64_63(egress1_io_out64_63),
    .io_validout64_0(egress1_io_validout64_0),
    .io_validout64_1(egress1_io_validout64_1),
    .io_validout64_2(egress1_io_validout64_2),
    .io_validout64_3(egress1_io_validout64_3),
    .io_validout64_4(egress1_io_validout64_4),
    .io_validout64_5(egress1_io_validout64_5),
    .io_validout64_6(egress1_io_validout64_6),
    .io_validout64_7(egress1_io_validout64_7),
    .io_validout64_8(egress1_io_validout64_8),
    .io_validout64_9(egress1_io_validout64_9),
    .io_validout64_10(egress1_io_validout64_10),
    .io_validout64_11(egress1_io_validout64_11),
    .io_validout64_12(egress1_io_validout64_12),
    .io_validout64_13(egress1_io_validout64_13),
    .io_validout64_14(egress1_io_validout64_14),
    .io_validout64_15(egress1_io_validout64_15),
    .io_validout64_16(egress1_io_validout64_16),
    .io_validout64_17(egress1_io_validout64_17),
    .io_validout64_18(egress1_io_validout64_18),
    .io_validout64_19(egress1_io_validout64_19),
    .io_validout64_20(egress1_io_validout64_20),
    .io_validout64_21(egress1_io_validout64_21),
    .io_validout64_22(egress1_io_validout64_22),
    .io_validout64_23(egress1_io_validout64_23),
    .io_validout64_24(egress1_io_validout64_24),
    .io_validout64_25(egress1_io_validout64_25),
    .io_validout64_26(egress1_io_validout64_26),
    .io_validout64_27(egress1_io_validout64_27),
    .io_validout64_28(egress1_io_validout64_28),
    .io_validout64_29(egress1_io_validout64_29),
    .io_validout64_30(egress1_io_validout64_30),
    .io_validout64_31(egress1_io_validout64_31),
    .io_validout64_32(egress1_io_validout64_32),
    .io_validout64_33(egress1_io_validout64_33),
    .io_validout64_34(egress1_io_validout64_34),
    .io_validout64_35(egress1_io_validout64_35),
    .io_validout64_36(egress1_io_validout64_36),
    .io_validout64_37(egress1_io_validout64_37),
    .io_validout64_38(egress1_io_validout64_38),
    .io_validout64_39(egress1_io_validout64_39),
    .io_validout64_40(egress1_io_validout64_40),
    .io_validout64_41(egress1_io_validout64_41),
    .io_validout64_42(egress1_io_validout64_42),
    .io_validout64_43(egress1_io_validout64_43),
    .io_validout64_44(egress1_io_validout64_44),
    .io_validout64_45(egress1_io_validout64_45),
    .io_validout64_46(egress1_io_validout64_46),
    .io_validout64_47(egress1_io_validout64_47),
    .io_validout64_48(egress1_io_validout64_48),
    .io_validout64_49(egress1_io_validout64_49),
    .io_validout64_50(egress1_io_validout64_50),
    .io_validout64_51(egress1_io_validout64_51),
    .io_validout64_52(egress1_io_validout64_52),
    .io_validout64_53(egress1_io_validout64_53),
    .io_validout64_54(egress1_io_validout64_54),
    .io_validout64_55(egress1_io_validout64_55),
    .io_validout64_56(egress1_io_validout64_56),
    .io_validout64_57(egress1_io_validout64_57),
    .io_validout64_58(egress1_io_validout64_58),
    .io_validout64_59(egress1_io_validout64_59),
    .io_validout64_60(egress1_io_validout64_60),
    .io_validout64_61(egress1_io_validout64_61),
    .io_validout64_62(egress1_io_validout64_62),
    .io_validout64_63(egress1_io_validout64_63),
    .io_ctrl(egress1_io_ctrl)
  );
  CLOSegress2 egress2 ( // @[BuildingBlockNew.scala 65:23]
    .clock(egress2_clock),
    .reset(egress2_reset),
    .io_in64_0(egress2_io_in64_0),
    .io_in64_1(egress2_io_in64_1),
    .io_in64_2(egress2_io_in64_2),
    .io_in64_3(egress2_io_in64_3),
    .io_in64_4(egress2_io_in64_4),
    .io_in64_5(egress2_io_in64_5),
    .io_in64_6(egress2_io_in64_6),
    .io_in64_7(egress2_io_in64_7),
    .io_in64_8(egress2_io_in64_8),
    .io_in64_9(egress2_io_in64_9),
    .io_in64_10(egress2_io_in64_10),
    .io_in64_11(egress2_io_in64_11),
    .io_in64_12(egress2_io_in64_12),
    .io_in64_13(egress2_io_in64_13),
    .io_in64_14(egress2_io_in64_14),
    .io_in64_15(egress2_io_in64_15),
    .io_in64_16(egress2_io_in64_16),
    .io_in64_17(egress2_io_in64_17),
    .io_in64_18(egress2_io_in64_18),
    .io_in64_19(egress2_io_in64_19),
    .io_in64_20(egress2_io_in64_20),
    .io_in64_21(egress2_io_in64_21),
    .io_in64_22(egress2_io_in64_22),
    .io_in64_23(egress2_io_in64_23),
    .io_in64_24(egress2_io_in64_24),
    .io_in64_25(egress2_io_in64_25),
    .io_in64_26(egress2_io_in64_26),
    .io_in64_27(egress2_io_in64_27),
    .io_in64_28(egress2_io_in64_28),
    .io_in64_29(egress2_io_in64_29),
    .io_in64_30(egress2_io_in64_30),
    .io_in64_31(egress2_io_in64_31),
    .io_in64_32(egress2_io_in64_32),
    .io_in64_33(egress2_io_in64_33),
    .io_in64_34(egress2_io_in64_34),
    .io_in64_35(egress2_io_in64_35),
    .io_in64_36(egress2_io_in64_36),
    .io_in64_37(egress2_io_in64_37),
    .io_in64_38(egress2_io_in64_38),
    .io_in64_39(egress2_io_in64_39),
    .io_in64_40(egress2_io_in64_40),
    .io_in64_41(egress2_io_in64_41),
    .io_in64_42(egress2_io_in64_42),
    .io_in64_43(egress2_io_in64_43),
    .io_in64_44(egress2_io_in64_44),
    .io_in64_45(egress2_io_in64_45),
    .io_in64_46(egress2_io_in64_46),
    .io_in64_47(egress2_io_in64_47),
    .io_in64_48(egress2_io_in64_48),
    .io_in64_49(egress2_io_in64_49),
    .io_in64_50(egress2_io_in64_50),
    .io_in64_51(egress2_io_in64_51),
    .io_in64_52(egress2_io_in64_52),
    .io_in64_53(egress2_io_in64_53),
    .io_in64_54(egress2_io_in64_54),
    .io_in64_55(egress2_io_in64_55),
    .io_in64_56(egress2_io_in64_56),
    .io_in64_57(egress2_io_in64_57),
    .io_in64_58(egress2_io_in64_58),
    .io_in64_59(egress2_io_in64_59),
    .io_in64_60(egress2_io_in64_60),
    .io_in64_61(egress2_io_in64_61),
    .io_in64_62(egress2_io_in64_62),
    .io_in64_63(egress2_io_in64_63),
    .io_validin64_0(egress2_io_validin64_0),
    .io_validin64_1(egress2_io_validin64_1),
    .io_validin64_2(egress2_io_validin64_2),
    .io_validin64_3(egress2_io_validin64_3),
    .io_validin64_4(egress2_io_validin64_4),
    .io_validin64_5(egress2_io_validin64_5),
    .io_validin64_6(egress2_io_validin64_6),
    .io_validin64_7(egress2_io_validin64_7),
    .io_validin64_8(egress2_io_validin64_8),
    .io_validin64_9(egress2_io_validin64_9),
    .io_validin64_10(egress2_io_validin64_10),
    .io_validin64_11(egress2_io_validin64_11),
    .io_validin64_12(egress2_io_validin64_12),
    .io_validin64_13(egress2_io_validin64_13),
    .io_validin64_14(egress2_io_validin64_14),
    .io_validin64_15(egress2_io_validin64_15),
    .io_validin64_16(egress2_io_validin64_16),
    .io_validin64_17(egress2_io_validin64_17),
    .io_validin64_18(egress2_io_validin64_18),
    .io_validin64_19(egress2_io_validin64_19),
    .io_validin64_20(egress2_io_validin64_20),
    .io_validin64_21(egress2_io_validin64_21),
    .io_validin64_22(egress2_io_validin64_22),
    .io_validin64_23(egress2_io_validin64_23),
    .io_validin64_24(egress2_io_validin64_24),
    .io_validin64_25(egress2_io_validin64_25),
    .io_validin64_26(egress2_io_validin64_26),
    .io_validin64_27(egress2_io_validin64_27),
    .io_validin64_28(egress2_io_validin64_28),
    .io_validin64_29(egress2_io_validin64_29),
    .io_validin64_30(egress2_io_validin64_30),
    .io_validin64_31(egress2_io_validin64_31),
    .io_validin64_32(egress2_io_validin64_32),
    .io_validin64_33(egress2_io_validin64_33),
    .io_validin64_34(egress2_io_validin64_34),
    .io_validin64_35(egress2_io_validin64_35),
    .io_validin64_36(egress2_io_validin64_36),
    .io_validin64_37(egress2_io_validin64_37),
    .io_validin64_38(egress2_io_validin64_38),
    .io_validin64_39(egress2_io_validin64_39),
    .io_validin64_40(egress2_io_validin64_40),
    .io_validin64_41(egress2_io_validin64_41),
    .io_validin64_42(egress2_io_validin64_42),
    .io_validin64_43(egress2_io_validin64_43),
    .io_validin64_44(egress2_io_validin64_44),
    .io_validin64_45(egress2_io_validin64_45),
    .io_validin64_46(egress2_io_validin64_46),
    .io_validin64_47(egress2_io_validin64_47),
    .io_validin64_48(egress2_io_validin64_48),
    .io_validin64_49(egress2_io_validin64_49),
    .io_validin64_50(egress2_io_validin64_50),
    .io_validin64_51(egress2_io_validin64_51),
    .io_validin64_52(egress2_io_validin64_52),
    .io_validin64_53(egress2_io_validin64_53),
    .io_validin64_54(egress2_io_validin64_54),
    .io_validin64_55(egress2_io_validin64_55),
    .io_validin64_56(egress2_io_validin64_56),
    .io_validin64_57(egress2_io_validin64_57),
    .io_validin64_58(egress2_io_validin64_58),
    .io_validin64_59(egress2_io_validin64_59),
    .io_validin64_60(egress2_io_validin64_60),
    .io_validin64_61(egress2_io_validin64_61),
    .io_validin64_62(egress2_io_validin64_62),
    .io_validin64_63(egress2_io_validin64_63),
    .io_out64_0(egress2_io_out64_0),
    .io_out64_1(egress2_io_out64_1),
    .io_out64_2(egress2_io_out64_2),
    .io_out64_3(egress2_io_out64_3),
    .io_out64_4(egress2_io_out64_4),
    .io_out64_5(egress2_io_out64_5),
    .io_out64_6(egress2_io_out64_6),
    .io_out64_7(egress2_io_out64_7),
    .io_out64_8(egress2_io_out64_8),
    .io_out64_9(egress2_io_out64_9),
    .io_out64_10(egress2_io_out64_10),
    .io_out64_11(egress2_io_out64_11),
    .io_out64_12(egress2_io_out64_12),
    .io_out64_13(egress2_io_out64_13),
    .io_out64_14(egress2_io_out64_14),
    .io_out64_15(egress2_io_out64_15),
    .io_out64_16(egress2_io_out64_16),
    .io_out64_17(egress2_io_out64_17),
    .io_out64_18(egress2_io_out64_18),
    .io_out64_19(egress2_io_out64_19),
    .io_out64_20(egress2_io_out64_20),
    .io_out64_21(egress2_io_out64_21),
    .io_out64_22(egress2_io_out64_22),
    .io_out64_23(egress2_io_out64_23),
    .io_out64_24(egress2_io_out64_24),
    .io_out64_25(egress2_io_out64_25),
    .io_out64_26(egress2_io_out64_26),
    .io_out64_27(egress2_io_out64_27),
    .io_out64_28(egress2_io_out64_28),
    .io_out64_29(egress2_io_out64_29),
    .io_out64_30(egress2_io_out64_30),
    .io_out64_31(egress2_io_out64_31),
    .io_out64_32(egress2_io_out64_32),
    .io_out64_33(egress2_io_out64_33),
    .io_out64_34(egress2_io_out64_34),
    .io_out64_35(egress2_io_out64_35),
    .io_out64_36(egress2_io_out64_36),
    .io_out64_37(egress2_io_out64_37),
    .io_out64_38(egress2_io_out64_38),
    .io_out64_39(egress2_io_out64_39),
    .io_out64_40(egress2_io_out64_40),
    .io_out64_41(egress2_io_out64_41),
    .io_out64_42(egress2_io_out64_42),
    .io_out64_43(egress2_io_out64_43),
    .io_out64_44(egress2_io_out64_44),
    .io_out64_45(egress2_io_out64_45),
    .io_out64_46(egress2_io_out64_46),
    .io_out64_47(egress2_io_out64_47),
    .io_out64_48(egress2_io_out64_48),
    .io_out64_49(egress2_io_out64_49),
    .io_out64_50(egress2_io_out64_50),
    .io_out64_51(egress2_io_out64_51),
    .io_out64_52(egress2_io_out64_52),
    .io_out64_53(egress2_io_out64_53),
    .io_out64_54(egress2_io_out64_54),
    .io_out64_55(egress2_io_out64_55),
    .io_out64_56(egress2_io_out64_56),
    .io_out64_57(egress2_io_out64_57),
    .io_out64_58(egress2_io_out64_58),
    .io_out64_59(egress2_io_out64_59),
    .io_out64_60(egress2_io_out64_60),
    .io_out64_61(egress2_io_out64_61),
    .io_out64_62(egress2_io_out64_62),
    .io_out64_63(egress2_io_out64_63),
    .io_validout64_0(egress2_io_validout64_0),
    .io_validout64_1(egress2_io_validout64_1),
    .io_validout64_2(egress2_io_validout64_2),
    .io_validout64_3(egress2_io_validout64_3),
    .io_validout64_4(egress2_io_validout64_4),
    .io_validout64_5(egress2_io_validout64_5),
    .io_validout64_6(egress2_io_validout64_6),
    .io_validout64_7(egress2_io_validout64_7),
    .io_validout64_8(egress2_io_validout64_8),
    .io_validout64_9(egress2_io_validout64_9),
    .io_validout64_10(egress2_io_validout64_10),
    .io_validout64_11(egress2_io_validout64_11),
    .io_validout64_12(egress2_io_validout64_12),
    .io_validout64_13(egress2_io_validout64_13),
    .io_validout64_14(egress2_io_validout64_14),
    .io_validout64_15(egress2_io_validout64_15),
    .io_validout64_16(egress2_io_validout64_16),
    .io_validout64_17(egress2_io_validout64_17),
    .io_validout64_18(egress2_io_validout64_18),
    .io_validout64_19(egress2_io_validout64_19),
    .io_validout64_20(egress2_io_validout64_20),
    .io_validout64_21(egress2_io_validout64_21),
    .io_validout64_22(egress2_io_validout64_22),
    .io_validout64_23(egress2_io_validout64_23),
    .io_validout64_24(egress2_io_validout64_24),
    .io_validout64_25(egress2_io_validout64_25),
    .io_validout64_26(egress2_io_validout64_26),
    .io_validout64_27(egress2_io_validout64_27),
    .io_validout64_28(egress2_io_validout64_28),
    .io_validout64_29(egress2_io_validout64_29),
    .io_validout64_30(egress2_io_validout64_30),
    .io_validout64_31(egress2_io_validout64_31),
    .io_validout64_32(egress2_io_validout64_32),
    .io_validout64_33(egress2_io_validout64_33),
    .io_validout64_34(egress2_io_validout64_34),
    .io_validout64_35(egress2_io_validout64_35),
    .io_validout64_36(egress2_io_validout64_36),
    .io_validout64_37(egress2_io_validout64_37),
    .io_validout64_38(egress2_io_validout64_38),
    .io_validout64_39(egress2_io_validout64_39),
    .io_validout64_40(egress2_io_validout64_40),
    .io_validout64_41(egress2_io_validout64_41),
    .io_validout64_42(egress2_io_validout64_42),
    .io_validout64_43(egress2_io_validout64_43),
    .io_validout64_44(egress2_io_validout64_44),
    .io_validout64_45(egress2_io_validout64_45),
    .io_validout64_46(egress2_io_validout64_46),
    .io_validout64_47(egress2_io_validout64_47),
    .io_validout64_48(egress2_io_validout64_48),
    .io_validout64_49(egress2_io_validout64_49),
    .io_validout64_50(egress2_io_validout64_50),
    .io_validout64_51(egress2_io_validout64_51),
    .io_validout64_52(egress2_io_validout64_52),
    .io_validout64_53(egress2_io_validout64_53),
    .io_validout64_54(egress2_io_validout64_54),
    .io_validout64_55(egress2_io_validout64_55),
    .io_validout64_56(egress2_io_validout64_56),
    .io_validout64_57(egress2_io_validout64_57),
    .io_validout64_58(egress2_io_validout64_58),
    .io_validout64_59(egress2_io_validout64_59),
    .io_validout64_60(egress2_io_validout64_60),
    .io_validout64_61(egress2_io_validout64_61),
    .io_validout64_62(egress2_io_validout64_62),
    .io_validout64_63(egress2_io_validout64_63),
    .io_ctrl(egress2_io_ctrl)
  );
  assign Mem1_instr1_MPORT_addr = PC1;
  assign Mem1_instr1_MPORT_data = Mem1[Mem1_instr1_MPORT_addr]; // @[BuildingBlockNew.scala 29:17]
  assign Mem1_MPORT_data = io_wr_instr_mem1;
  assign Mem1_MPORT_addr = wrAddr1;
  assign Mem1_MPORT_mask = 1'h1;
  assign Mem1_MPORT_en = io_wr_en_mem1;
  assign Mem2_instr2_MPORT_addr = PC2;
  assign Mem2_instr2_MPORT_data = Mem2[Mem2_instr2_MPORT_addr]; // @[BuildingBlockNew.scala 30:17]
  assign Mem2_MPORT_1_data = io_wr_instr_mem2;
  assign Mem2_MPORT_1_addr = wrAddr2;
  assign Mem2_MPORT_1_mask = 1'h1;
  assign Mem2_MPORT_1_en = io_wr_en_mem2;
  assign Mem3_instr3_MPORT_addr = PC3;
  assign Mem3_instr3_MPORT_data = Mem3[Mem3_instr3_MPORT_addr]; // @[BuildingBlockNew.scala 31:17]
  assign Mem3_MPORT_2_data = io_wr_instr_mem3;
  assign Mem3_MPORT_2_addr = wrAddr3;
  assign Mem3_MPORT_2_mask = 1'h1;
  assign Mem3_MPORT_2_en = io_wr_en_mem3;
  assign Mem4_instr4_MPORT_addr = PC4;
  assign Mem4_instr4_MPORT_data = Mem4[Mem4_instr4_MPORT_addr]; // @[BuildingBlockNew.scala 32:17]
  assign Mem4_MPORT_3_data = io_wr_instr_mem4;
  assign Mem4_MPORT_3_addr = wrAddr4;
  assign Mem4_MPORT_3_mask = 1'h1;
  assign Mem4_MPORT_3_en = io_wr_en_mem4;
  assign Mem5_instr5_MPORT_addr = PC5;
  assign Mem5_instr5_MPORT_data = Mem5[Mem5_instr5_MPORT_addr]; // @[BuildingBlockNew.scala 33:17]
  assign Mem5_MPORT_4_data = io_wr_instr_mem5;
  assign Mem5_MPORT_4_addr = wrAddr5;
  assign Mem5_MPORT_4_mask = 1'h1;
  assign Mem5_MPORT_4_en = io_wr_en_mem5;
  assign Mem6_instr6_MPORT_addr = PC6;
  assign Mem6_instr6_MPORT_data = Mem6[Mem6_instr6_MPORT_addr]; // @[BuildingBlockNew.scala 34:17]
  assign Mem6_MPORT_5_data = io_wr_instr_mem6;
  assign Mem6_MPORT_5_addr = wrAddr6;
  assign Mem6_MPORT_5_mask = 1'h1;
  assign Mem6_MPORT_5_en = io_wr_en_mem6;
  assign io_d_out_0_a = egress2_io_out64_0; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_0_valid_a = egress2_io_validout64_0; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_0_b = egress2_io_out64_1; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_0_valid_b = egress2_io_validout64_1; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_1_a = egress2_io_out64_2; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_1_valid_a = egress2_io_validout64_2; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_1_b = egress2_io_out64_3; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_1_valid_b = egress2_io_validout64_3; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_2_a = egress2_io_out64_4; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_2_valid_a = egress2_io_validout64_4; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_2_b = egress2_io_out64_5; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_2_valid_b = egress2_io_validout64_5; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_3_a = egress2_io_out64_6; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_3_valid_a = egress2_io_validout64_6; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_3_b = egress2_io_out64_7; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_3_valid_b = egress2_io_validout64_7; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_4_a = egress2_io_out64_8; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_4_valid_a = egress2_io_validout64_8; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_4_b = egress2_io_out64_9; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_4_valid_b = egress2_io_validout64_9; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_5_a = egress2_io_out64_10; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_5_valid_a = egress2_io_validout64_10; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_5_b = egress2_io_out64_11; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_5_valid_b = egress2_io_validout64_11; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_6_a = egress2_io_out64_12; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_6_valid_a = egress2_io_validout64_12; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_6_b = egress2_io_out64_13; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_6_valid_b = egress2_io_validout64_13; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_7_a = egress2_io_out64_14; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_7_valid_a = egress2_io_validout64_14; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_7_b = egress2_io_out64_15; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_7_valid_b = egress2_io_validout64_15; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_8_a = egress2_io_out64_16; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_8_valid_a = egress2_io_validout64_16; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_8_b = egress2_io_out64_17; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_8_valid_b = egress2_io_validout64_17; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_9_a = egress2_io_out64_18; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_9_valid_a = egress2_io_validout64_18; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_9_b = egress2_io_out64_19; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_9_valid_b = egress2_io_validout64_19; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_10_a = egress2_io_out64_20; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_10_valid_a = egress2_io_validout64_20; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_10_b = egress2_io_out64_21; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_10_valid_b = egress2_io_validout64_21; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_11_a = egress2_io_out64_22; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_11_valid_a = egress2_io_validout64_22; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_11_b = egress2_io_out64_23; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_11_valid_b = egress2_io_validout64_23; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_12_a = egress2_io_out64_24; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_12_valid_a = egress2_io_validout64_24; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_12_b = egress2_io_out64_25; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_12_valid_b = egress2_io_validout64_25; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_13_a = egress2_io_out64_26; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_13_valid_a = egress2_io_validout64_26; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_13_b = egress2_io_out64_27; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_13_valid_b = egress2_io_validout64_27; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_14_a = egress2_io_out64_28; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_14_valid_a = egress2_io_validout64_28; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_14_b = egress2_io_out64_29; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_14_valid_b = egress2_io_validout64_29; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_15_a = egress2_io_out64_30; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_15_valid_a = egress2_io_validout64_30; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_15_b = egress2_io_out64_31; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_15_valid_b = egress2_io_validout64_31; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_16_a = egress2_io_out64_32; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_16_valid_a = egress2_io_validout64_32; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_16_b = egress2_io_out64_33; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_16_valid_b = egress2_io_validout64_33; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_17_a = egress2_io_out64_34; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_17_valid_a = egress2_io_validout64_34; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_17_b = egress2_io_out64_35; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_17_valid_b = egress2_io_validout64_35; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_18_a = egress2_io_out64_36; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_18_valid_a = egress2_io_validout64_36; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_18_b = egress2_io_out64_37; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_18_valid_b = egress2_io_validout64_37; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_19_a = egress2_io_out64_38; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_19_valid_a = egress2_io_validout64_38; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_19_b = egress2_io_out64_39; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_19_valid_b = egress2_io_validout64_39; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_20_a = egress2_io_out64_40; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_20_valid_a = egress2_io_validout64_40; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_20_b = egress2_io_out64_41; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_20_valid_b = egress2_io_validout64_41; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_21_a = egress2_io_out64_42; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_21_valid_a = egress2_io_validout64_42; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_21_b = egress2_io_out64_43; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_21_valid_b = egress2_io_validout64_43; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_22_a = egress2_io_out64_44; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_22_valid_a = egress2_io_validout64_44; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_22_b = egress2_io_out64_45; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_22_valid_b = egress2_io_validout64_45; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_23_a = egress2_io_out64_46; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_23_valid_a = egress2_io_validout64_46; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_23_b = egress2_io_out64_47; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_23_valid_b = egress2_io_validout64_47; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_24_a = egress2_io_out64_48; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_24_valid_a = egress2_io_validout64_48; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_24_b = egress2_io_out64_49; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_24_valid_b = egress2_io_validout64_49; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_25_a = egress2_io_out64_50; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_25_valid_a = egress2_io_validout64_50; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_25_b = egress2_io_out64_51; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_25_valid_b = egress2_io_validout64_51; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_26_a = egress2_io_out64_52; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_26_valid_a = egress2_io_validout64_52; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_26_b = egress2_io_out64_53; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_26_valid_b = egress2_io_validout64_53; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_27_a = egress2_io_out64_54; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_27_valid_a = egress2_io_validout64_54; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_27_b = egress2_io_out64_55; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_27_valid_b = egress2_io_validout64_55; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_28_a = egress2_io_out64_56; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_28_valid_a = egress2_io_validout64_56; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_28_b = egress2_io_out64_57; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_28_valid_b = egress2_io_validout64_57; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_29_a = egress2_io_out64_58; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_29_valid_a = egress2_io_validout64_58; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_29_b = egress2_io_out64_59; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_29_valid_b = egress2_io_validout64_59; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_30_a = egress2_io_out64_60; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_30_valid_a = egress2_io_validout64_60; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_30_b = egress2_io_out64_61; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_30_valid_b = egress2_io_validout64_61; // @[BuildingBlockNew.scala 173:25]
  assign io_d_out_31_a = egress2_io_out64_62; // @[BuildingBlockNew.scala 170:19]
  assign io_d_out_31_valid_a = egress2_io_validout64_62; // @[BuildingBlockNew.scala 172:25]
  assign io_d_out_31_b = egress2_io_out64_63; // @[BuildingBlockNew.scala 171:19]
  assign io_d_out_31_valid_b = egress2_io_validout64_63; // @[BuildingBlockNew.scala 173:25]
  assign peCol_clock = clock;
  assign peCol_reset = reset;
  assign peCol_io_d_in_0_a = io_d_in_0_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_0_valid_a = io_d_in_0_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_0_b = io_d_in_0_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_0_valid_b = io_d_in_0_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_1_a = io_d_in_1_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_1_valid_a = io_d_in_1_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_1_b = io_d_in_1_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_1_valid_b = io_d_in_1_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_2_a = io_d_in_2_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_2_valid_a = io_d_in_2_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_2_b = io_d_in_2_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_2_valid_b = io_d_in_2_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_3_a = io_d_in_3_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_3_valid_a = io_d_in_3_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_3_b = io_d_in_3_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_3_valid_b = io_d_in_3_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_4_a = io_d_in_4_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_4_valid_a = io_d_in_4_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_4_b = io_d_in_4_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_4_valid_b = io_d_in_4_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_5_a = io_d_in_5_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_5_valid_a = io_d_in_5_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_5_b = io_d_in_5_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_5_valid_b = io_d_in_5_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_6_a = io_d_in_6_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_6_valid_a = io_d_in_6_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_6_b = io_d_in_6_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_6_valid_b = io_d_in_6_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_7_a = io_d_in_7_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_7_valid_a = io_d_in_7_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_7_b = io_d_in_7_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_7_valid_b = io_d_in_7_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_8_a = io_d_in_8_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_8_valid_a = io_d_in_8_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_8_b = io_d_in_8_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_8_valid_b = io_d_in_8_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_9_a = io_d_in_9_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_9_valid_a = io_d_in_9_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_9_b = io_d_in_9_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_9_valid_b = io_d_in_9_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_10_a = io_d_in_10_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_10_valid_a = io_d_in_10_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_10_b = io_d_in_10_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_10_valid_b = io_d_in_10_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_11_a = io_d_in_11_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_11_valid_a = io_d_in_11_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_11_b = io_d_in_11_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_11_valid_b = io_d_in_11_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_12_a = io_d_in_12_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_12_valid_a = io_d_in_12_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_12_b = io_d_in_12_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_12_valid_b = io_d_in_12_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_13_a = io_d_in_13_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_13_valid_a = io_d_in_13_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_13_b = io_d_in_13_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_13_valid_b = io_d_in_13_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_14_a = io_d_in_14_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_14_valid_a = io_d_in_14_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_14_b = io_d_in_14_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_14_valid_b = io_d_in_14_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_15_a = io_d_in_15_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_15_valid_a = io_d_in_15_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_15_b = io_d_in_15_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_15_valid_b = io_d_in_15_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_16_a = io_d_in_16_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_16_valid_a = io_d_in_16_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_16_b = io_d_in_16_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_16_valid_b = io_d_in_16_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_17_a = io_d_in_17_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_17_valid_a = io_d_in_17_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_17_b = io_d_in_17_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_17_valid_b = io_d_in_17_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_18_a = io_d_in_18_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_18_valid_a = io_d_in_18_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_18_b = io_d_in_18_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_18_valid_b = io_d_in_18_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_19_a = io_d_in_19_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_19_valid_a = io_d_in_19_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_19_b = io_d_in_19_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_19_valid_b = io_d_in_19_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_20_a = io_d_in_20_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_20_valid_a = io_d_in_20_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_20_b = io_d_in_20_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_20_valid_b = io_d_in_20_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_21_a = io_d_in_21_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_21_valid_a = io_d_in_21_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_21_b = io_d_in_21_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_21_valid_b = io_d_in_21_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_22_a = io_d_in_22_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_22_valid_a = io_d_in_22_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_22_b = io_d_in_22_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_22_valid_b = io_d_in_22_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_23_a = io_d_in_23_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_23_valid_a = io_d_in_23_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_23_b = io_d_in_23_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_23_valid_b = io_d_in_23_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_24_a = io_d_in_24_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_24_valid_a = io_d_in_24_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_24_b = io_d_in_24_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_24_valid_b = io_d_in_24_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_25_a = io_d_in_25_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_25_valid_a = io_d_in_25_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_25_b = io_d_in_25_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_25_valid_b = io_d_in_25_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_26_a = io_d_in_26_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_26_valid_a = io_d_in_26_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_26_b = io_d_in_26_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_26_valid_b = io_d_in_26_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_27_a = io_d_in_27_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_27_valid_a = io_d_in_27_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_27_b = io_d_in_27_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_27_valid_b = io_d_in_27_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_28_a = io_d_in_28_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_28_valid_a = io_d_in_28_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_28_b = io_d_in_28_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_28_valid_b = io_d_in_28_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_29_a = io_d_in_29_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_29_valid_a = io_d_in_29_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_29_b = io_d_in_29_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_29_valid_b = io_d_in_29_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_30_a = io_d_in_30_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_30_valid_a = io_d_in_30_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_30_b = io_d_in_30_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_30_valid_b = io_d_in_30_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_31_a = io_d_in_31_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_31_valid_a = io_d_in_31_valid_a; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_31_b = io_d_in_31_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_d_in_31_valid_b = io_d_in_31_valid_b; // @[BuildingBlockNew.scala 150:17]
  assign peCol_io_instr = instr1; // @[BuildingBlockNew.scala 115:18]
  assign ingress1_clock = clock;
  assign ingress1_reset = reset;
  assign ingress1_io_in64_0 = peCol_io_d_out_0_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_1 = peCol_io_d_out_0_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_2 = peCol_io_d_out_1_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_3 = peCol_io_d_out_1_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_4 = peCol_io_d_out_2_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_5 = peCol_io_d_out_2_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_6 = peCol_io_d_out_3_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_7 = peCol_io_d_out_3_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_8 = peCol_io_d_out_4_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_9 = peCol_io_d_out_4_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_10 = peCol_io_d_out_5_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_11 = peCol_io_d_out_5_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_12 = peCol_io_d_out_6_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_13 = peCol_io_d_out_6_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_14 = peCol_io_d_out_7_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_15 = peCol_io_d_out_7_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_16 = peCol_io_d_out_8_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_17 = peCol_io_d_out_8_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_18 = peCol_io_d_out_9_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_19 = peCol_io_d_out_9_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_20 = peCol_io_d_out_10_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_21 = peCol_io_d_out_10_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_22 = peCol_io_d_out_11_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_23 = peCol_io_d_out_11_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_24 = peCol_io_d_out_12_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_25 = peCol_io_d_out_12_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_26 = peCol_io_d_out_13_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_27 = peCol_io_d_out_13_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_28 = peCol_io_d_out_14_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_29 = peCol_io_d_out_14_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_30 = peCol_io_d_out_15_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_31 = peCol_io_d_out_15_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_32 = peCol_io_d_out_16_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_33 = peCol_io_d_out_16_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_34 = peCol_io_d_out_17_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_35 = peCol_io_d_out_17_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_36 = peCol_io_d_out_18_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_37 = peCol_io_d_out_18_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_38 = peCol_io_d_out_19_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_39 = peCol_io_d_out_19_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_40 = peCol_io_d_out_20_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_41 = peCol_io_d_out_20_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_42 = peCol_io_d_out_21_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_43 = peCol_io_d_out_21_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_44 = peCol_io_d_out_22_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_45 = peCol_io_d_out_22_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_46 = peCol_io_d_out_23_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_47 = peCol_io_d_out_23_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_48 = peCol_io_d_out_24_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_49 = peCol_io_d_out_24_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_50 = peCol_io_d_out_25_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_51 = peCol_io_d_out_25_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_52 = peCol_io_d_out_26_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_53 = peCol_io_d_out_26_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_54 = peCol_io_d_out_27_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_55 = peCol_io_d_out_27_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_56 = peCol_io_d_out_28_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_57 = peCol_io_d_out_28_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_58 = peCol_io_d_out_29_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_59 = peCol_io_d_out_29_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_60 = peCol_io_d_out_30_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_61 = peCol_io_d_out_30_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_in64_62 = peCol_io_d_out_31_a; // @[BuildingBlockNew.scala 153:27]
  assign ingress1_io_in64_63 = peCol_io_d_out_31_b; // @[BuildingBlockNew.scala 154:29]
  assign ingress1_io_validin64_0 = peCol_io_d_out_0_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_1 = peCol_io_d_out_0_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_2 = peCol_io_d_out_1_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_3 = peCol_io_d_out_1_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_4 = peCol_io_d_out_2_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_5 = peCol_io_d_out_2_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_6 = peCol_io_d_out_3_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_7 = peCol_io_d_out_3_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_8 = peCol_io_d_out_4_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_9 = peCol_io_d_out_4_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_10 = peCol_io_d_out_5_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_11 = peCol_io_d_out_5_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_12 = peCol_io_d_out_6_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_13 = peCol_io_d_out_6_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_14 = peCol_io_d_out_7_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_15 = peCol_io_d_out_7_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_16 = peCol_io_d_out_8_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_17 = peCol_io_d_out_8_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_18 = peCol_io_d_out_9_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_19 = peCol_io_d_out_9_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_20 = peCol_io_d_out_10_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_21 = peCol_io_d_out_10_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_22 = peCol_io_d_out_11_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_23 = peCol_io_d_out_11_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_24 = peCol_io_d_out_12_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_25 = peCol_io_d_out_12_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_26 = peCol_io_d_out_13_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_27 = peCol_io_d_out_13_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_28 = peCol_io_d_out_14_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_29 = peCol_io_d_out_14_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_30 = peCol_io_d_out_15_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_31 = peCol_io_d_out_15_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_32 = peCol_io_d_out_16_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_33 = peCol_io_d_out_16_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_34 = peCol_io_d_out_17_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_35 = peCol_io_d_out_17_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_36 = peCol_io_d_out_18_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_37 = peCol_io_d_out_18_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_38 = peCol_io_d_out_19_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_39 = peCol_io_d_out_19_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_40 = peCol_io_d_out_20_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_41 = peCol_io_d_out_20_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_42 = peCol_io_d_out_21_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_43 = peCol_io_d_out_21_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_44 = peCol_io_d_out_22_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_45 = peCol_io_d_out_22_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_46 = peCol_io_d_out_23_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_47 = peCol_io_d_out_23_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_48 = peCol_io_d_out_24_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_49 = peCol_io_d_out_24_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_50 = peCol_io_d_out_25_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_51 = peCol_io_d_out_25_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_52 = peCol_io_d_out_26_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_53 = peCol_io_d_out_26_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_54 = peCol_io_d_out_27_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_55 = peCol_io_d_out_27_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_56 = peCol_io_d_out_28_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_57 = peCol_io_d_out_28_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_58 = peCol_io_d_out_29_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_59 = peCol_io_d_out_29_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_60 = peCol_io_d_out_30_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_61 = peCol_io_d_out_30_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_validin64_62 = peCol_io_d_out_31_valid_a; // @[BuildingBlockNew.scala 155:32]
  assign ingress1_io_validin64_63 = peCol_io_d_out_31_valid_b; // @[BuildingBlockNew.scala 156:34]
  assign ingress1_io_ctrl = instr2; // @[BuildingBlockNew.scala 116:20]
  assign ingress2_clock = clock;
  assign ingress2_reset = reset;
  assign ingress2_io_in64_0 = ingress1_io_out64_0; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_1 = ingress1_io_out64_1; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_2 = ingress1_io_out64_2; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_3 = ingress1_io_out64_3; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_4 = ingress1_io_out64_4; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_5 = ingress1_io_out64_5; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_6 = ingress1_io_out64_6; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_7 = ingress1_io_out64_7; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_8 = ingress1_io_out64_8; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_9 = ingress1_io_out64_9; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_10 = ingress1_io_out64_10; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_11 = ingress1_io_out64_11; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_12 = ingress1_io_out64_12; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_13 = ingress1_io_out64_13; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_14 = ingress1_io_out64_14; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_15 = ingress1_io_out64_15; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_16 = ingress1_io_out64_16; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_17 = ingress1_io_out64_17; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_18 = ingress1_io_out64_18; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_19 = ingress1_io_out64_19; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_20 = ingress1_io_out64_20; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_21 = ingress1_io_out64_21; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_22 = ingress1_io_out64_22; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_23 = ingress1_io_out64_23; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_24 = ingress1_io_out64_24; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_25 = ingress1_io_out64_25; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_26 = ingress1_io_out64_26; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_27 = ingress1_io_out64_27; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_28 = ingress1_io_out64_28; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_29 = ingress1_io_out64_29; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_30 = ingress1_io_out64_30; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_31 = ingress1_io_out64_31; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_32 = ingress1_io_out64_32; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_33 = ingress1_io_out64_33; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_34 = ingress1_io_out64_34; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_35 = ingress1_io_out64_35; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_36 = ingress1_io_out64_36; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_37 = ingress1_io_out64_37; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_38 = ingress1_io_out64_38; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_39 = ingress1_io_out64_39; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_40 = ingress1_io_out64_40; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_41 = ingress1_io_out64_41; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_42 = ingress1_io_out64_42; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_43 = ingress1_io_out64_43; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_44 = ingress1_io_out64_44; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_45 = ingress1_io_out64_45; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_46 = ingress1_io_out64_46; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_47 = ingress1_io_out64_47; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_48 = ingress1_io_out64_48; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_49 = ingress1_io_out64_49; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_50 = ingress1_io_out64_50; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_51 = ingress1_io_out64_51; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_52 = ingress1_io_out64_52; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_53 = ingress1_io_out64_53; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_54 = ingress1_io_out64_54; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_55 = ingress1_io_out64_55; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_56 = ingress1_io_out64_56; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_57 = ingress1_io_out64_57; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_58 = ingress1_io_out64_58; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_59 = ingress1_io_out64_59; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_60 = ingress1_io_out64_60; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_61 = ingress1_io_out64_61; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_62 = ingress1_io_out64_62; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_in64_63 = ingress1_io_out64_63; // @[BuildingBlockNew.scala 159:20]
  assign ingress2_io_validin64_0 = ingress1_io_validout64_0; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_1 = ingress1_io_validout64_1; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_2 = ingress1_io_validout64_2; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_3 = ingress1_io_validout64_3; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_4 = ingress1_io_validout64_4; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_5 = ingress1_io_validout64_5; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_6 = ingress1_io_validout64_6; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_7 = ingress1_io_validout64_7; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_8 = ingress1_io_validout64_8; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_9 = ingress1_io_validout64_9; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_10 = ingress1_io_validout64_10; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_11 = ingress1_io_validout64_11; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_12 = ingress1_io_validout64_12; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_13 = ingress1_io_validout64_13; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_14 = ingress1_io_validout64_14; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_15 = ingress1_io_validout64_15; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_16 = ingress1_io_validout64_16; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_17 = ingress1_io_validout64_17; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_18 = ingress1_io_validout64_18; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_19 = ingress1_io_validout64_19; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_20 = ingress1_io_validout64_20; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_21 = ingress1_io_validout64_21; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_22 = ingress1_io_validout64_22; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_23 = ingress1_io_validout64_23; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_24 = ingress1_io_validout64_24; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_25 = ingress1_io_validout64_25; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_26 = ingress1_io_validout64_26; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_27 = ingress1_io_validout64_27; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_28 = ingress1_io_validout64_28; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_29 = ingress1_io_validout64_29; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_30 = ingress1_io_validout64_30; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_31 = ingress1_io_validout64_31; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_32 = ingress1_io_validout64_32; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_33 = ingress1_io_validout64_33; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_34 = ingress1_io_validout64_34; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_35 = ingress1_io_validout64_35; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_36 = ingress1_io_validout64_36; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_37 = ingress1_io_validout64_37; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_38 = ingress1_io_validout64_38; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_39 = ingress1_io_validout64_39; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_40 = ingress1_io_validout64_40; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_41 = ingress1_io_validout64_41; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_42 = ingress1_io_validout64_42; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_43 = ingress1_io_validout64_43; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_44 = ingress1_io_validout64_44; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_45 = ingress1_io_validout64_45; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_46 = ingress1_io_validout64_46; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_47 = ingress1_io_validout64_47; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_48 = ingress1_io_validout64_48; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_49 = ingress1_io_validout64_49; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_50 = ingress1_io_validout64_50; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_51 = ingress1_io_validout64_51; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_52 = ingress1_io_validout64_52; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_53 = ingress1_io_validout64_53; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_54 = ingress1_io_validout64_54; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_55 = ingress1_io_validout64_55; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_56 = ingress1_io_validout64_56; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_57 = ingress1_io_validout64_57; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_58 = ingress1_io_validout64_58; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_59 = ingress1_io_validout64_59; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_60 = ingress1_io_validout64_60; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_61 = ingress1_io_validout64_61; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_62 = ingress1_io_validout64_62; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_validin64_63 = ingress1_io_validout64_63; // @[BuildingBlockNew.scala 160:25]
  assign ingress2_io_ctrl = instr3; // @[BuildingBlockNew.scala 117:20]
  assign middle_clock = clock;
  assign middle_reset = reset;
  assign middle_io_in64_0 = ingress2_io_out64_0; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_1 = ingress2_io_out64_1; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_2 = ingress2_io_out64_2; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_3 = ingress2_io_out64_3; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_4 = ingress2_io_out64_4; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_5 = ingress2_io_out64_5; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_6 = ingress2_io_out64_6; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_7 = ingress2_io_out64_7; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_8 = ingress2_io_out64_8; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_9 = ingress2_io_out64_9; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_10 = ingress2_io_out64_10; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_11 = ingress2_io_out64_11; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_12 = ingress2_io_out64_12; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_13 = ingress2_io_out64_13; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_14 = ingress2_io_out64_14; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_15 = ingress2_io_out64_15; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_16 = ingress2_io_out64_16; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_17 = ingress2_io_out64_17; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_18 = ingress2_io_out64_18; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_19 = ingress2_io_out64_19; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_20 = ingress2_io_out64_20; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_21 = ingress2_io_out64_21; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_22 = ingress2_io_out64_22; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_23 = ingress2_io_out64_23; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_24 = ingress2_io_out64_24; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_25 = ingress2_io_out64_25; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_26 = ingress2_io_out64_26; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_27 = ingress2_io_out64_27; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_28 = ingress2_io_out64_28; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_29 = ingress2_io_out64_29; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_30 = ingress2_io_out64_30; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_31 = ingress2_io_out64_31; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_32 = ingress2_io_out64_32; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_33 = ingress2_io_out64_33; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_34 = ingress2_io_out64_34; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_35 = ingress2_io_out64_35; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_36 = ingress2_io_out64_36; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_37 = ingress2_io_out64_37; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_38 = ingress2_io_out64_38; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_39 = ingress2_io_out64_39; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_40 = ingress2_io_out64_40; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_41 = ingress2_io_out64_41; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_42 = ingress2_io_out64_42; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_43 = ingress2_io_out64_43; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_44 = ingress2_io_out64_44; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_45 = ingress2_io_out64_45; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_46 = ingress2_io_out64_46; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_47 = ingress2_io_out64_47; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_48 = ingress2_io_out64_48; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_49 = ingress2_io_out64_49; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_50 = ingress2_io_out64_50; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_51 = ingress2_io_out64_51; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_52 = ingress2_io_out64_52; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_53 = ingress2_io_out64_53; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_54 = ingress2_io_out64_54; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_55 = ingress2_io_out64_55; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_56 = ingress2_io_out64_56; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_57 = ingress2_io_out64_57; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_58 = ingress2_io_out64_58; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_59 = ingress2_io_out64_59; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_60 = ingress2_io_out64_60; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_61 = ingress2_io_out64_61; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_62 = ingress2_io_out64_62; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_in64_63 = ingress2_io_out64_63; // @[BuildingBlockNew.scala 161:18]
  assign middle_io_validin64_0 = ingress2_io_validout64_0; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_1 = ingress2_io_validout64_1; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_2 = ingress2_io_validout64_2; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_3 = ingress2_io_validout64_3; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_4 = ingress2_io_validout64_4; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_5 = ingress2_io_validout64_5; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_6 = ingress2_io_validout64_6; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_7 = ingress2_io_validout64_7; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_8 = ingress2_io_validout64_8; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_9 = ingress2_io_validout64_9; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_10 = ingress2_io_validout64_10; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_11 = ingress2_io_validout64_11; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_12 = ingress2_io_validout64_12; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_13 = ingress2_io_validout64_13; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_14 = ingress2_io_validout64_14; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_15 = ingress2_io_validout64_15; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_16 = ingress2_io_validout64_16; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_17 = ingress2_io_validout64_17; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_18 = ingress2_io_validout64_18; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_19 = ingress2_io_validout64_19; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_20 = ingress2_io_validout64_20; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_21 = ingress2_io_validout64_21; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_22 = ingress2_io_validout64_22; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_23 = ingress2_io_validout64_23; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_24 = ingress2_io_validout64_24; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_25 = ingress2_io_validout64_25; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_26 = ingress2_io_validout64_26; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_27 = ingress2_io_validout64_27; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_28 = ingress2_io_validout64_28; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_29 = ingress2_io_validout64_29; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_30 = ingress2_io_validout64_30; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_31 = ingress2_io_validout64_31; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_32 = ingress2_io_validout64_32; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_33 = ingress2_io_validout64_33; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_34 = ingress2_io_validout64_34; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_35 = ingress2_io_validout64_35; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_36 = ingress2_io_validout64_36; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_37 = ingress2_io_validout64_37; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_38 = ingress2_io_validout64_38; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_39 = ingress2_io_validout64_39; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_40 = ingress2_io_validout64_40; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_41 = ingress2_io_validout64_41; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_42 = ingress2_io_validout64_42; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_43 = ingress2_io_validout64_43; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_44 = ingress2_io_validout64_44; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_45 = ingress2_io_validout64_45; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_46 = ingress2_io_validout64_46; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_47 = ingress2_io_validout64_47; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_48 = ingress2_io_validout64_48; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_49 = ingress2_io_validout64_49; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_50 = ingress2_io_validout64_50; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_51 = ingress2_io_validout64_51; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_52 = ingress2_io_validout64_52; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_53 = ingress2_io_validout64_53; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_54 = ingress2_io_validout64_54; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_55 = ingress2_io_validout64_55; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_56 = ingress2_io_validout64_56; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_57 = ingress2_io_validout64_57; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_58 = ingress2_io_validout64_58; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_59 = ingress2_io_validout64_59; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_60 = ingress2_io_validout64_60; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_61 = ingress2_io_validout64_61; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_62 = ingress2_io_validout64_62; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_validin64_63 = ingress2_io_validout64_63; // @[BuildingBlockNew.scala 162:23]
  assign middle_io_ctrl = instr4; // @[BuildingBlockNew.scala 118:18]
  assign egress1_clock = clock;
  assign egress1_reset = reset;
  assign egress1_io_in64_0 = middle_io_out64_0; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_1 = middle_io_out64_1; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_2 = middle_io_out64_2; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_3 = middle_io_out64_3; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_4 = middle_io_out64_4; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_5 = middle_io_out64_5; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_6 = middle_io_out64_6; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_7 = middle_io_out64_7; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_8 = middle_io_out64_8; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_9 = middle_io_out64_9; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_10 = middle_io_out64_10; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_11 = middle_io_out64_11; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_12 = middle_io_out64_12; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_13 = middle_io_out64_13; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_14 = middle_io_out64_14; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_15 = middle_io_out64_15; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_16 = middle_io_out64_16; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_17 = middle_io_out64_17; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_18 = middle_io_out64_18; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_19 = middle_io_out64_19; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_20 = middle_io_out64_20; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_21 = middle_io_out64_21; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_22 = middle_io_out64_22; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_23 = middle_io_out64_23; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_24 = middle_io_out64_24; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_25 = middle_io_out64_25; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_26 = middle_io_out64_26; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_27 = middle_io_out64_27; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_28 = middle_io_out64_28; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_29 = middle_io_out64_29; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_30 = middle_io_out64_30; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_31 = middle_io_out64_31; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_32 = middle_io_out64_32; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_33 = middle_io_out64_33; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_34 = middle_io_out64_34; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_35 = middle_io_out64_35; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_36 = middle_io_out64_36; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_37 = middle_io_out64_37; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_38 = middle_io_out64_38; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_39 = middle_io_out64_39; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_40 = middle_io_out64_40; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_41 = middle_io_out64_41; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_42 = middle_io_out64_42; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_43 = middle_io_out64_43; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_44 = middle_io_out64_44; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_45 = middle_io_out64_45; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_46 = middle_io_out64_46; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_47 = middle_io_out64_47; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_48 = middle_io_out64_48; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_49 = middle_io_out64_49; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_50 = middle_io_out64_50; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_51 = middle_io_out64_51; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_52 = middle_io_out64_52; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_53 = middle_io_out64_53; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_54 = middle_io_out64_54; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_55 = middle_io_out64_55; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_56 = middle_io_out64_56; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_57 = middle_io_out64_57; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_58 = middle_io_out64_58; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_59 = middle_io_out64_59; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_60 = middle_io_out64_60; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_61 = middle_io_out64_61; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_62 = middle_io_out64_62; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_in64_63 = middle_io_out64_63; // @[BuildingBlockNew.scala 163:19]
  assign egress1_io_validin64_0 = middle_io_validout64_0; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_1 = middle_io_validout64_1; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_2 = middle_io_validout64_2; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_3 = middle_io_validout64_3; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_4 = middle_io_validout64_4; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_5 = middle_io_validout64_5; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_6 = middle_io_validout64_6; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_7 = middle_io_validout64_7; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_8 = middle_io_validout64_8; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_9 = middle_io_validout64_9; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_10 = middle_io_validout64_10; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_11 = middle_io_validout64_11; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_12 = middle_io_validout64_12; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_13 = middle_io_validout64_13; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_14 = middle_io_validout64_14; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_15 = middle_io_validout64_15; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_16 = middle_io_validout64_16; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_17 = middle_io_validout64_17; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_18 = middle_io_validout64_18; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_19 = middle_io_validout64_19; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_20 = middle_io_validout64_20; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_21 = middle_io_validout64_21; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_22 = middle_io_validout64_22; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_23 = middle_io_validout64_23; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_24 = middle_io_validout64_24; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_25 = middle_io_validout64_25; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_26 = middle_io_validout64_26; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_27 = middle_io_validout64_27; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_28 = middle_io_validout64_28; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_29 = middle_io_validout64_29; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_30 = middle_io_validout64_30; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_31 = middle_io_validout64_31; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_32 = middle_io_validout64_32; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_33 = middle_io_validout64_33; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_34 = middle_io_validout64_34; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_35 = middle_io_validout64_35; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_36 = middle_io_validout64_36; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_37 = middle_io_validout64_37; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_38 = middle_io_validout64_38; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_39 = middle_io_validout64_39; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_40 = middle_io_validout64_40; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_41 = middle_io_validout64_41; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_42 = middle_io_validout64_42; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_43 = middle_io_validout64_43; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_44 = middle_io_validout64_44; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_45 = middle_io_validout64_45; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_46 = middle_io_validout64_46; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_47 = middle_io_validout64_47; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_48 = middle_io_validout64_48; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_49 = middle_io_validout64_49; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_50 = middle_io_validout64_50; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_51 = middle_io_validout64_51; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_52 = middle_io_validout64_52; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_53 = middle_io_validout64_53; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_54 = middle_io_validout64_54; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_55 = middle_io_validout64_55; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_56 = middle_io_validout64_56; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_57 = middle_io_validout64_57; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_58 = middle_io_validout64_58; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_59 = middle_io_validout64_59; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_60 = middle_io_validout64_60; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_61 = middle_io_validout64_61; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_62 = middle_io_validout64_62; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_validin64_63 = middle_io_validout64_63; // @[BuildingBlockNew.scala 164:24]
  assign egress1_io_ctrl = instr5; // @[BuildingBlockNew.scala 119:19]
  assign egress2_clock = clock;
  assign egress2_reset = reset;
  assign egress2_io_in64_0 = egress1_io_out64_0; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_1 = egress1_io_out64_1; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_2 = egress1_io_out64_2; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_3 = egress1_io_out64_3; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_4 = egress1_io_out64_4; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_5 = egress1_io_out64_5; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_6 = egress1_io_out64_6; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_7 = egress1_io_out64_7; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_8 = egress1_io_out64_8; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_9 = egress1_io_out64_9; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_10 = egress1_io_out64_10; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_11 = egress1_io_out64_11; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_12 = egress1_io_out64_12; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_13 = egress1_io_out64_13; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_14 = egress1_io_out64_14; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_15 = egress1_io_out64_15; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_16 = egress1_io_out64_16; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_17 = egress1_io_out64_17; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_18 = egress1_io_out64_18; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_19 = egress1_io_out64_19; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_20 = egress1_io_out64_20; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_21 = egress1_io_out64_21; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_22 = egress1_io_out64_22; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_23 = egress1_io_out64_23; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_24 = egress1_io_out64_24; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_25 = egress1_io_out64_25; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_26 = egress1_io_out64_26; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_27 = egress1_io_out64_27; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_28 = egress1_io_out64_28; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_29 = egress1_io_out64_29; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_30 = egress1_io_out64_30; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_31 = egress1_io_out64_31; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_32 = egress1_io_out64_32; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_33 = egress1_io_out64_33; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_34 = egress1_io_out64_34; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_35 = egress1_io_out64_35; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_36 = egress1_io_out64_36; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_37 = egress1_io_out64_37; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_38 = egress1_io_out64_38; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_39 = egress1_io_out64_39; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_40 = egress1_io_out64_40; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_41 = egress1_io_out64_41; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_42 = egress1_io_out64_42; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_43 = egress1_io_out64_43; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_44 = egress1_io_out64_44; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_45 = egress1_io_out64_45; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_46 = egress1_io_out64_46; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_47 = egress1_io_out64_47; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_48 = egress1_io_out64_48; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_49 = egress1_io_out64_49; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_50 = egress1_io_out64_50; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_51 = egress1_io_out64_51; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_52 = egress1_io_out64_52; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_53 = egress1_io_out64_53; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_54 = egress1_io_out64_54; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_55 = egress1_io_out64_55; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_56 = egress1_io_out64_56; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_57 = egress1_io_out64_57; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_58 = egress1_io_out64_58; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_59 = egress1_io_out64_59; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_60 = egress1_io_out64_60; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_61 = egress1_io_out64_61; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_62 = egress1_io_out64_62; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_in64_63 = egress1_io_out64_63; // @[BuildingBlockNew.scala 165:19]
  assign egress2_io_validin64_0 = egress1_io_validout64_0; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_1 = egress1_io_validout64_1; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_2 = egress1_io_validout64_2; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_3 = egress1_io_validout64_3; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_4 = egress1_io_validout64_4; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_5 = egress1_io_validout64_5; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_6 = egress1_io_validout64_6; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_7 = egress1_io_validout64_7; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_8 = egress1_io_validout64_8; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_9 = egress1_io_validout64_9; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_10 = egress1_io_validout64_10; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_11 = egress1_io_validout64_11; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_12 = egress1_io_validout64_12; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_13 = egress1_io_validout64_13; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_14 = egress1_io_validout64_14; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_15 = egress1_io_validout64_15; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_16 = egress1_io_validout64_16; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_17 = egress1_io_validout64_17; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_18 = egress1_io_validout64_18; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_19 = egress1_io_validout64_19; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_20 = egress1_io_validout64_20; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_21 = egress1_io_validout64_21; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_22 = egress1_io_validout64_22; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_23 = egress1_io_validout64_23; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_24 = egress1_io_validout64_24; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_25 = egress1_io_validout64_25; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_26 = egress1_io_validout64_26; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_27 = egress1_io_validout64_27; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_28 = egress1_io_validout64_28; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_29 = egress1_io_validout64_29; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_30 = egress1_io_validout64_30; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_31 = egress1_io_validout64_31; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_32 = egress1_io_validout64_32; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_33 = egress1_io_validout64_33; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_34 = egress1_io_validout64_34; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_35 = egress1_io_validout64_35; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_36 = egress1_io_validout64_36; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_37 = egress1_io_validout64_37; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_38 = egress1_io_validout64_38; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_39 = egress1_io_validout64_39; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_40 = egress1_io_validout64_40; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_41 = egress1_io_validout64_41; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_42 = egress1_io_validout64_42; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_43 = egress1_io_validout64_43; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_44 = egress1_io_validout64_44; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_45 = egress1_io_validout64_45; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_46 = egress1_io_validout64_46; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_47 = egress1_io_validout64_47; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_48 = egress1_io_validout64_48; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_49 = egress1_io_validout64_49; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_50 = egress1_io_validout64_50; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_51 = egress1_io_validout64_51; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_52 = egress1_io_validout64_52; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_53 = egress1_io_validout64_53; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_54 = egress1_io_validout64_54; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_55 = egress1_io_validout64_55; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_56 = egress1_io_validout64_56; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_57 = egress1_io_validout64_57; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_58 = egress1_io_validout64_58; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_59 = egress1_io_validout64_59; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_60 = egress1_io_validout64_60; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_61 = egress1_io_validout64_61; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_62 = egress1_io_validout64_62; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_validin64_63 = egress1_io_validout64_63; // @[BuildingBlockNew.scala 166:24]
  assign egress2_io_ctrl = instr6; // @[BuildingBlockNew.scala 120:19]
  always @(posedge clock) begin
    if(Mem1_MPORT_en & Mem1_MPORT_mask) begin
      Mem1[Mem1_MPORT_addr] <= Mem1_MPORT_data; // @[BuildingBlockNew.scala 29:17]
    end
    if(Mem2_MPORT_1_en & Mem2_MPORT_1_mask) begin
      Mem2[Mem2_MPORT_1_addr] <= Mem2_MPORT_1_data; // @[BuildingBlockNew.scala 30:17]
    end
    if(Mem3_MPORT_2_en & Mem3_MPORT_2_mask) begin
      Mem3[Mem3_MPORT_2_addr] <= Mem3_MPORT_2_data; // @[BuildingBlockNew.scala 31:17]
    end
    if(Mem4_MPORT_3_en & Mem4_MPORT_3_mask) begin
      Mem4[Mem4_MPORT_3_addr] <= Mem4_MPORT_3_data; // @[BuildingBlockNew.scala 32:17]
    end
    if(Mem5_MPORT_4_en & Mem5_MPORT_4_mask) begin
      Mem5[Mem5_MPORT_4_addr] <= Mem5_MPORT_4_data; // @[BuildingBlockNew.scala 33:17]
    end
    if(Mem6_MPORT_5_en & Mem6_MPORT_5_mask) begin
      Mem6[Mem6_MPORT_5_addr] <= Mem6_MPORT_5_data; // @[BuildingBlockNew.scala 34:17]
    end
    if (reset) begin // @[BuildingBlockNew.scala 35:20]
      PC1 <= 8'h0; // @[BuildingBlockNew.scala 35:20]
    end else if (io_run) begin // @[BuildingBlockNew.scala 67:13]
      PC1 <= _PC1_T_1; // @[BuildingBlockNew.scala 68:9]
    end
    if (reset) begin // @[BuildingBlockNew.scala 36:20]
      PC2 <= 8'h0; // @[BuildingBlockNew.scala 36:20]
    end else if (run2) begin // @[BuildingBlockNew.scala 75:13]
      PC2 <= _PC2_T_1; // @[BuildingBlockNew.scala 76:9]
    end
    if (reset) begin // @[BuildingBlockNew.scala 37:20]
      PC3 <= 8'h0; // @[BuildingBlockNew.scala 37:20]
    end else if (run3) begin // @[BuildingBlockNew.scala 83:13]
      PC3 <= _PC3_T_1; // @[BuildingBlockNew.scala 84:9]
    end
    if (reset) begin // @[BuildingBlockNew.scala 38:20]
      PC4 <= 8'h0; // @[BuildingBlockNew.scala 38:20]
    end else if (run4) begin // @[BuildingBlockNew.scala 91:13]
      PC4 <= _PC4_T_1; // @[BuildingBlockNew.scala 92:9]
    end
    if (reset) begin // @[BuildingBlockNew.scala 39:20]
      PC5 <= 8'h0; // @[BuildingBlockNew.scala 39:20]
    end else if (run5) begin // @[BuildingBlockNew.scala 99:13]
      PC5 <= _PC5_T_1; // @[BuildingBlockNew.scala 100:9]
    end
    if (reset) begin // @[BuildingBlockNew.scala 40:20]
      PC6 <= 8'h0; // @[BuildingBlockNew.scala 40:20]
    end else if (run6) begin // @[BuildingBlockNew.scala 107:13]
      PC6 <= _PC6_T_1; // @[BuildingBlockNew.scala 108:9]
    end
    if (reset) begin // @[BuildingBlockNew.scala 41:24]
      wrAddr1 <= 8'h0; // @[BuildingBlockNew.scala 41:24]
    end else if (io_wr_en_mem1) begin // @[BuildingBlockNew.scala 124:22]
      wrAddr1 <= _wrAddr1_T_1; // @[BuildingBlockNew.scala 126:13]
    end
    if (reset) begin // @[BuildingBlockNew.scala 42:24]
      wrAddr2 <= 8'h0; // @[BuildingBlockNew.scala 42:24]
    end else if (io_wr_en_mem2) begin // @[BuildingBlockNew.scala 128:22]
      wrAddr2 <= _wrAddr2_T_1; // @[BuildingBlockNew.scala 130:13]
    end
    if (reset) begin // @[BuildingBlockNew.scala 43:24]
      wrAddr3 <= 8'h0; // @[BuildingBlockNew.scala 43:24]
    end else if (io_wr_en_mem3) begin // @[BuildingBlockNew.scala 132:22]
      wrAddr3 <= _wrAddr3_T_1; // @[BuildingBlockNew.scala 134:13]
    end
    if (reset) begin // @[BuildingBlockNew.scala 44:24]
      wrAddr4 <= 8'h0; // @[BuildingBlockNew.scala 44:24]
    end else if (io_wr_en_mem4) begin // @[BuildingBlockNew.scala 136:22]
      wrAddr4 <= _wrAddr4_T_1; // @[BuildingBlockNew.scala 138:13]
    end
    if (reset) begin // @[BuildingBlockNew.scala 45:24]
      wrAddr5 <= 8'h0; // @[BuildingBlockNew.scala 45:24]
    end else if (io_wr_en_mem5) begin // @[BuildingBlockNew.scala 140:22]
      wrAddr5 <= _wrAddr5_T_1; // @[BuildingBlockNew.scala 142:13]
    end
    if (reset) begin // @[BuildingBlockNew.scala 46:24]
      wrAddr6 <= 8'h0; // @[BuildingBlockNew.scala 46:24]
    end else if (io_wr_en_mem6) begin // @[BuildingBlockNew.scala 144:22]
      wrAddr6 <= _wrAddr6_T_1; // @[BuildingBlockNew.scala 146:13]
    end
    if (reset) begin // @[BuildingBlockNew.scala 47:23]
      instr1 <= 128'h0; // @[BuildingBlockNew.scala 47:23]
    end else if (io_run) begin // @[BuildingBlockNew.scala 67:13]
      instr1 <= Mem1_instr1_MPORT_data; // @[BuildingBlockNew.scala 69:12]
    end
    if (reset) begin // @[BuildingBlockNew.scala 48:23]
      instr2 <= 128'h0; // @[BuildingBlockNew.scala 48:23]
    end else if (run2) begin // @[BuildingBlockNew.scala 75:13]
      instr2 <= Mem2_instr2_MPORT_data; // @[BuildingBlockNew.scala 77:12]
    end
    if (reset) begin // @[BuildingBlockNew.scala 49:23]
      instr3 <= 128'h0; // @[BuildingBlockNew.scala 49:23]
    end else if (run3) begin // @[BuildingBlockNew.scala 83:13]
      instr3 <= Mem3_instr3_MPORT_data; // @[BuildingBlockNew.scala 85:12]
    end
    if (reset) begin // @[BuildingBlockNew.scala 50:23]
      instr4 <= 128'h0; // @[BuildingBlockNew.scala 50:23]
    end else if (run4) begin // @[BuildingBlockNew.scala 91:13]
      instr4 <= Mem4_instr4_MPORT_data; // @[BuildingBlockNew.scala 93:12]
    end
    if (reset) begin // @[BuildingBlockNew.scala 51:23]
      instr5 <= 128'h0; // @[BuildingBlockNew.scala 51:23]
    end else if (run5) begin // @[BuildingBlockNew.scala 99:13]
      instr5 <= Mem5_instr5_MPORT_data; // @[BuildingBlockNew.scala 101:12]
    end
    if (reset) begin // @[BuildingBlockNew.scala 52:23]
      instr6 <= 128'h0; // @[BuildingBlockNew.scala 52:23]
    end else if (run6) begin // @[BuildingBlockNew.scala 107:13]
      instr6 <= Mem6_instr6_MPORT_data; // @[BuildingBlockNew.scala 109:12]
    end
    run2 <= io_run; // @[BuildingBlockNew.scala 54:21]
    run3_REG <= io_run; // @[BuildingBlockNew.scala 55:29]
    run3 <= run3_REG; // @[BuildingBlockNew.scala 55:21]
    run4_REG <= io_run; // @[BuildingBlockNew.scala 56:37]
    run4_REG_1 <= run4_REG; // @[BuildingBlockNew.scala 56:29]
    run4 <= run4_REG_1; // @[BuildingBlockNew.scala 56:21]
    run5_REG <= io_run; // @[BuildingBlockNew.scala 57:45]
    run5_REG_1 <= run5_REG; // @[BuildingBlockNew.scala 57:37]
    run5_REG_2 <= run5_REG_1; // @[BuildingBlockNew.scala 57:29]
    run5 <= run5_REG_2; // @[BuildingBlockNew.scala 57:21]
    run6_REG <= io_run; // @[BuildingBlockNew.scala 58:53]
    run6_REG_1 <= run6_REG; // @[BuildingBlockNew.scala 58:45]
    run6_REG_2 <= run6_REG_1; // @[BuildingBlockNew.scala 58:37]
    run6_REG_3 <= run6_REG_2; // @[BuildingBlockNew.scala 58:29]
    run6 <= run6_REG_3; // @[BuildingBlockNew.scala 58:21]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem1[initvar] = _RAND_0[127:0];
  _RAND_1 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem2[initvar] = _RAND_1[127:0];
  _RAND_2 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem3[initvar] = _RAND_2[127:0];
  _RAND_3 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem4[initvar] = _RAND_3[127:0];
  _RAND_4 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem5[initvar] = _RAND_4[127:0];
  _RAND_5 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem6[initvar] = _RAND_5[127:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  PC1 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  PC2 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  PC3 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  PC4 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  PC5 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  PC6 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  wrAddr1 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  wrAddr2 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  wrAddr3 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  wrAddr4 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  wrAddr5 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  wrAddr6 = _RAND_17[7:0];
  _RAND_18 = {4{`RANDOM}};
  instr1 = _RAND_18[127:0];
  _RAND_19 = {4{`RANDOM}};
  instr2 = _RAND_19[127:0];
  _RAND_20 = {4{`RANDOM}};
  instr3 = _RAND_20[127:0];
  _RAND_21 = {4{`RANDOM}};
  instr4 = _RAND_21[127:0];
  _RAND_22 = {4{`RANDOM}};
  instr5 = _RAND_22[127:0];
  _RAND_23 = {4{`RANDOM}};
  instr6 = _RAND_23[127:0];
  _RAND_24 = {1{`RANDOM}};
  run2 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  run3_REG = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  run3 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  run4_REG = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  run4_REG_1 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  run4 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  run5_REG = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  run5_REG_1 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  run5_REG_2 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  run5 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  run6_REG = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  run6_REG_1 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  run6_REG_2 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  run6_REG_3 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  run6 = _RAND_38[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
