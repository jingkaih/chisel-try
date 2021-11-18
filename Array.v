module ALU(
  input         clock,
  input         reset,
  input  [3:0]  io_opcode,
  input  [63:0] io_in_a,
  input  [63:0] io_in_b,
  output [63:0] io_out_a,
  output [63:0] io_out_b
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] temp_result_a; // @[ALU.scala 27:30]
  reg [63:0] temp_result_b; // @[ALU.scala 28:30]
  wire  _T = 4'h0 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_1 = 4'h1 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T = io_in_a & io_in_b; // @[ALU.scala 36:26]
  wire  _T_2 = 4'h2 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _GEN_32 = {{63'd0}, io_in_a == 64'h0}; // @[ALU.scala 40:27]
  wire [63:0] _temp_result_a_T_2 = _GEN_32 & io_in_b; // @[ALU.scala 40:27]
  wire  _T_3 = 4'h3 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_3 = io_in_a | io_in_b; // @[ALU.scala 44:26]
  wire  _T_4 = 4'h4 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_5 = _GEN_32 | io_in_b; // @[ALU.scala 48:27]
  wire  _T_5 = 4'h5 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_6 = io_in_a ^ io_in_b; // @[ALU.scala 52:26]
  wire  _T_6 = 4'h6 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_8 = _GEN_32 ^ io_in_b; // @[ALU.scala 56:27]
  wire  _T_7 = 4'h7 == io_opcode; // @[Conditional.scala 37:30]
  wire  _temp_result_a_T_10 = _temp_result_a_T_6 == 64'h0; // @[ALU.scala 60:24]
  wire  _T_8 = 4'h8 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_9 = 4'h9 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_10 = 4'ha == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_11 = 4'hb == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_12 = 4'hc == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_13 = 4'hd == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_14 = 4'he == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_15 = 4'hf == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _GEN_0 = _T_15 ? io_in_b : temp_result_a; // @[Conditional.scala 39:67 ALU.scala 92:21 ALU.scala 27:30]
  wire [63:0] _GEN_1 = _T_15 ? io_in_a : temp_result_b; // @[Conditional.scala 39:67 ALU.scala 93:21 ALU.scala 28:30]
  wire [63:0] _GEN_2 = _T_14 ? {{63'd0}, _temp_result_a_T_10} : _GEN_0; // @[Conditional.scala 39:67 ALU.scala 88:21]
  wire [63:0] _GEN_3 = _T_14 ? io_in_b : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 89:21]
  wire [63:0] _GEN_4 = _T_13 ? _temp_result_a_T_8 : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 84:21]
  wire [63:0] _GEN_5 = _T_13 ? io_in_b : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 85:21]
  wire [63:0] _GEN_6 = _T_12 ? _temp_result_a_T_6 : _GEN_4; // @[Conditional.scala 39:67 ALU.scala 80:21]
  wire [63:0] _GEN_7 = _T_12 ? io_in_b : _GEN_5; // @[Conditional.scala 39:67 ALU.scala 81:21]
  wire [63:0] _GEN_8 = _T_11 ? _temp_result_a_T_5 : _GEN_6; // @[Conditional.scala 39:67 ALU.scala 76:21]
  wire [63:0] _GEN_9 = _T_11 ? io_in_b : _GEN_7; // @[Conditional.scala 39:67 ALU.scala 77:21]
  wire [63:0] _GEN_10 = _T_10 ? _temp_result_a_T_3 : _GEN_8; // @[Conditional.scala 39:67 ALU.scala 72:21]
  wire [63:0] _GEN_11 = _T_10 ? io_in_b : _GEN_9; // @[Conditional.scala 39:67 ALU.scala 73:21]
  wire [63:0] _GEN_12 = _T_9 ? _temp_result_a_T_2 : _GEN_10; // @[Conditional.scala 39:67 ALU.scala 68:21]
  wire [63:0] _GEN_13 = _T_9 ? io_in_b : _GEN_11; // @[Conditional.scala 39:67 ALU.scala 69:21]
  wire [63:0] _GEN_14 = _T_8 ? _temp_result_a_T : _GEN_12; // @[Conditional.scala 39:67 ALU.scala 64:21]
  wire [63:0] _GEN_15 = _T_8 ? io_in_b : _GEN_13; // @[Conditional.scala 39:67 ALU.scala 65:21]
  wire [63:0] _GEN_16 = _T_7 ? {{63'd0}, _temp_result_a_T_6 == 64'h0} : _GEN_14; // @[Conditional.scala 39:67 ALU.scala 60:21]
  wire [63:0] _GEN_17 = _T_7 ? 64'h0 : _GEN_15; // @[Conditional.scala 39:67 ALU.scala 61:21]
  wire [63:0] _GEN_18 = _T_6 ? _temp_result_a_T_8 : _GEN_16; // @[Conditional.scala 39:67 ALU.scala 56:21]
  wire [63:0] _GEN_19 = _T_6 ? 64'h0 : _GEN_17; // @[Conditional.scala 39:67 ALU.scala 57:21]
  wire [63:0] _GEN_20 = _T_5 ? _temp_result_a_T_6 : _GEN_18; // @[Conditional.scala 39:67 ALU.scala 52:21]
  wire [63:0] _GEN_21 = _T_5 ? 64'h0 : _GEN_19; // @[Conditional.scala 39:67 ALU.scala 53:21]
  wire [63:0] _GEN_22 = _T_4 ? _temp_result_a_T_5 : _GEN_20; // @[Conditional.scala 39:67 ALU.scala 48:21]
  wire [63:0] _GEN_23 = _T_4 ? 64'h0 : _GEN_21; // @[Conditional.scala 39:67 ALU.scala 49:21]
  wire [63:0] _GEN_24 = _T_3 ? _temp_result_a_T_3 : _GEN_22; // @[Conditional.scala 39:67 ALU.scala 44:21]
  wire [63:0] _GEN_25 = _T_3 ? 64'h0 : _GEN_23; // @[Conditional.scala 39:67 ALU.scala 45:21]
  assign io_out_a = temp_result_a; // @[ALU.scala 96:12]
  assign io_out_b = temp_result_b; // @[ALU.scala 97:12]
  always @(posedge clock) begin
    if (reset) begin // @[ALU.scala 27:30]
      temp_result_a <= 64'h0; // @[ALU.scala 27:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result_a <= 64'h0; // @[ALU.scala 32:21]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result_a <= _temp_result_a_T; // @[ALU.scala 36:21]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result_a <= _temp_result_a_T_2; // @[ALU.scala 40:21]
    end else begin
      temp_result_a <= _GEN_24;
    end
    if (reset) begin // @[ALU.scala 28:30]
      temp_result_b <= 64'h0; // @[ALU.scala 28:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result_b <= 64'h0; // @[ALU.scala 33:21]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result_b <= 64'h0; // @[ALU.scala 37:21]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result_b <= 64'h0; // @[ALU.scala 41:21]
    end else begin
      temp_result_b <= _GEN_25;
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
  temp_result_a = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  temp_result_b = _RAND_1[63:0];
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
  input  [63:0]  io_d_in_0_b,
  input  [63:0]  io_d_in_1_a,
  input  [63:0]  io_d_in_1_b,
  input  [63:0]  io_d_in_2_a,
  input  [63:0]  io_d_in_2_b,
  input  [63:0]  io_d_in_3_a,
  input  [63:0]  io_d_in_3_b,
  input  [63:0]  io_d_in_4_a,
  input  [63:0]  io_d_in_4_b,
  input  [63:0]  io_d_in_5_a,
  input  [63:0]  io_d_in_5_b,
  input  [63:0]  io_d_in_6_a,
  input  [63:0]  io_d_in_6_b,
  input  [63:0]  io_d_in_7_a,
  input  [63:0]  io_d_in_7_b,
  input  [63:0]  io_d_in_8_a,
  input  [63:0]  io_d_in_8_b,
  input  [63:0]  io_d_in_9_a,
  input  [63:0]  io_d_in_9_b,
  input  [63:0]  io_d_in_10_a,
  input  [63:0]  io_d_in_10_b,
  input  [63:0]  io_d_in_11_a,
  input  [63:0]  io_d_in_11_b,
  input  [63:0]  io_d_in_12_a,
  input  [63:0]  io_d_in_12_b,
  input  [63:0]  io_d_in_13_a,
  input  [63:0]  io_d_in_13_b,
  input  [63:0]  io_d_in_14_a,
  input  [63:0]  io_d_in_14_b,
  input  [63:0]  io_d_in_15_a,
  input  [63:0]  io_d_in_15_b,
  input  [63:0]  io_d_in_16_a,
  input  [63:0]  io_d_in_16_b,
  input  [63:0]  io_d_in_17_a,
  input  [63:0]  io_d_in_17_b,
  input  [63:0]  io_d_in_18_a,
  input  [63:0]  io_d_in_18_b,
  input  [63:0]  io_d_in_19_a,
  input  [63:0]  io_d_in_19_b,
  input  [63:0]  io_d_in_20_a,
  input  [63:0]  io_d_in_20_b,
  input  [63:0]  io_d_in_21_a,
  input  [63:0]  io_d_in_21_b,
  input  [63:0]  io_d_in_22_a,
  input  [63:0]  io_d_in_22_b,
  input  [63:0]  io_d_in_23_a,
  input  [63:0]  io_d_in_23_b,
  input  [63:0]  io_d_in_24_a,
  input  [63:0]  io_d_in_24_b,
  input  [63:0]  io_d_in_25_a,
  input  [63:0]  io_d_in_25_b,
  input  [63:0]  io_d_in_26_a,
  input  [63:0]  io_d_in_26_b,
  input  [63:0]  io_d_in_27_a,
  input  [63:0]  io_d_in_27_b,
  input  [63:0]  io_d_in_28_a,
  input  [63:0]  io_d_in_28_b,
  input  [63:0]  io_d_in_29_a,
  input  [63:0]  io_d_in_29_b,
  input  [63:0]  io_d_in_30_a,
  input  [63:0]  io_d_in_30_b,
  input  [63:0]  io_d_in_31_a,
  input  [63:0]  io_d_in_31_b,
  output [63:0]  io_d_out_0_a,
  output [63:0]  io_d_out_0_b,
  output [63:0]  io_d_out_1_a,
  output [63:0]  io_d_out_1_b,
  output [63:0]  io_d_out_2_a,
  output [63:0]  io_d_out_2_b,
  output [63:0]  io_d_out_3_a,
  output [63:0]  io_d_out_3_b,
  output [63:0]  io_d_out_4_a,
  output [63:0]  io_d_out_4_b,
  output [63:0]  io_d_out_5_a,
  output [63:0]  io_d_out_5_b,
  output [63:0]  io_d_out_6_a,
  output [63:0]  io_d_out_6_b,
  output [63:0]  io_d_out_7_a,
  output [63:0]  io_d_out_7_b,
  output [63:0]  io_d_out_8_a,
  output [63:0]  io_d_out_8_b,
  output [63:0]  io_d_out_9_a,
  output [63:0]  io_d_out_9_b,
  output [63:0]  io_d_out_10_a,
  output [63:0]  io_d_out_10_b,
  output [63:0]  io_d_out_11_a,
  output [63:0]  io_d_out_11_b,
  output [63:0]  io_d_out_12_a,
  output [63:0]  io_d_out_12_b,
  output [63:0]  io_d_out_13_a,
  output [63:0]  io_d_out_13_b,
  output [63:0]  io_d_out_14_a,
  output [63:0]  io_d_out_14_b,
  output [63:0]  io_d_out_15_a,
  output [63:0]  io_d_out_15_b,
  output [63:0]  io_d_out_16_a,
  output [63:0]  io_d_out_16_b,
  output [63:0]  io_d_out_17_a,
  output [63:0]  io_d_out_17_b,
  output [63:0]  io_d_out_18_a,
  output [63:0]  io_d_out_18_b,
  output [63:0]  io_d_out_19_a,
  output [63:0]  io_d_out_19_b,
  output [63:0]  io_d_out_20_a,
  output [63:0]  io_d_out_20_b,
  output [63:0]  io_d_out_21_a,
  output [63:0]  io_d_out_21_b,
  output [63:0]  io_d_out_22_a,
  output [63:0]  io_d_out_22_b,
  output [63:0]  io_d_out_23_a,
  output [63:0]  io_d_out_23_b,
  output [63:0]  io_d_out_24_a,
  output [63:0]  io_d_out_24_b,
  output [63:0]  io_d_out_25_a,
  output [63:0]  io_d_out_25_b,
  output [63:0]  io_d_out_26_a,
  output [63:0]  io_d_out_26_b,
  output [63:0]  io_d_out_27_a,
  output [63:0]  io_d_out_27_b,
  output [63:0]  io_d_out_28_a,
  output [63:0]  io_d_out_28_b,
  output [63:0]  io_d_out_29_a,
  output [63:0]  io_d_out_29_b,
  output [63:0]  io_d_out_30_a,
  output [63:0]  io_d_out_30_b,
  output [63:0]  io_d_out_31_a,
  output [63:0]  io_d_out_31_b,
  input  [127:0] io_instr
);
  wire  ALU64_32_0_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_0_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_0_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_0_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_0_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_0_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_0_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_1_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_1_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_1_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_1_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_1_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_1_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_1_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_2_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_2_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_2_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_2_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_2_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_2_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_2_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_3_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_3_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_3_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_3_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_3_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_3_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_3_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_4_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_4_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_4_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_4_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_4_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_4_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_4_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_5_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_5_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_5_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_5_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_5_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_5_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_5_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_6_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_6_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_6_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_6_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_6_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_6_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_6_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_7_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_7_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_7_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_7_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_7_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_7_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_7_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_8_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_8_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_8_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_8_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_8_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_8_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_8_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_9_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_9_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_9_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_9_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_9_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_9_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_9_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_10_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_10_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_10_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_10_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_10_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_10_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_10_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_11_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_11_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_11_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_11_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_11_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_11_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_11_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_12_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_12_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_12_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_12_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_12_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_12_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_12_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_13_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_13_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_13_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_13_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_13_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_13_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_13_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_14_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_14_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_14_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_14_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_14_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_14_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_14_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_15_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_15_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_15_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_15_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_15_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_15_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_15_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_16_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_16_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_16_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_16_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_16_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_16_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_16_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_17_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_17_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_17_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_17_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_17_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_17_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_17_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_18_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_18_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_18_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_18_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_18_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_18_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_18_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_19_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_19_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_19_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_19_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_19_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_19_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_19_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_20_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_20_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_20_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_20_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_20_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_20_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_20_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_21_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_21_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_21_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_21_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_21_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_21_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_21_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_22_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_22_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_22_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_22_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_22_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_22_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_22_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_23_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_23_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_23_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_23_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_23_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_23_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_23_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_24_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_24_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_24_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_24_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_24_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_24_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_24_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_25_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_25_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_25_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_25_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_25_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_25_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_25_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_26_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_26_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_26_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_26_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_26_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_26_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_26_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_27_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_27_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_27_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_27_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_27_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_27_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_27_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_28_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_28_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_28_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_28_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_28_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_28_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_28_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_29_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_29_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_29_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_29_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_29_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_29_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_29_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_30_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_30_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_30_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_30_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_30_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_30_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_30_io_out_b; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_31_clock; // @[BuildingBlock.scala 149:52]
  wire  ALU64_32_31_reset; // @[BuildingBlock.scala 149:52]
  wire [3:0] ALU64_32_31_io_opcode; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_31_io_in_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_31_io_in_b; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_31_io_out_a; // @[BuildingBlock.scala 149:52]
  wire [63:0] ALU64_32_31_io_out_b; // @[BuildingBlock.scala 149:52]
  ALU ALU64_32_0 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_0_clock),
    .reset(ALU64_32_0_reset),
    .io_opcode(ALU64_32_0_io_opcode),
    .io_in_a(ALU64_32_0_io_in_a),
    .io_in_b(ALU64_32_0_io_in_b),
    .io_out_a(ALU64_32_0_io_out_a),
    .io_out_b(ALU64_32_0_io_out_b)
  );
  ALU ALU64_32_1 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_1_clock),
    .reset(ALU64_32_1_reset),
    .io_opcode(ALU64_32_1_io_opcode),
    .io_in_a(ALU64_32_1_io_in_a),
    .io_in_b(ALU64_32_1_io_in_b),
    .io_out_a(ALU64_32_1_io_out_a),
    .io_out_b(ALU64_32_1_io_out_b)
  );
  ALU ALU64_32_2 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_2_clock),
    .reset(ALU64_32_2_reset),
    .io_opcode(ALU64_32_2_io_opcode),
    .io_in_a(ALU64_32_2_io_in_a),
    .io_in_b(ALU64_32_2_io_in_b),
    .io_out_a(ALU64_32_2_io_out_a),
    .io_out_b(ALU64_32_2_io_out_b)
  );
  ALU ALU64_32_3 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_3_clock),
    .reset(ALU64_32_3_reset),
    .io_opcode(ALU64_32_3_io_opcode),
    .io_in_a(ALU64_32_3_io_in_a),
    .io_in_b(ALU64_32_3_io_in_b),
    .io_out_a(ALU64_32_3_io_out_a),
    .io_out_b(ALU64_32_3_io_out_b)
  );
  ALU ALU64_32_4 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_4_clock),
    .reset(ALU64_32_4_reset),
    .io_opcode(ALU64_32_4_io_opcode),
    .io_in_a(ALU64_32_4_io_in_a),
    .io_in_b(ALU64_32_4_io_in_b),
    .io_out_a(ALU64_32_4_io_out_a),
    .io_out_b(ALU64_32_4_io_out_b)
  );
  ALU ALU64_32_5 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_5_clock),
    .reset(ALU64_32_5_reset),
    .io_opcode(ALU64_32_5_io_opcode),
    .io_in_a(ALU64_32_5_io_in_a),
    .io_in_b(ALU64_32_5_io_in_b),
    .io_out_a(ALU64_32_5_io_out_a),
    .io_out_b(ALU64_32_5_io_out_b)
  );
  ALU ALU64_32_6 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_6_clock),
    .reset(ALU64_32_6_reset),
    .io_opcode(ALU64_32_6_io_opcode),
    .io_in_a(ALU64_32_6_io_in_a),
    .io_in_b(ALU64_32_6_io_in_b),
    .io_out_a(ALU64_32_6_io_out_a),
    .io_out_b(ALU64_32_6_io_out_b)
  );
  ALU ALU64_32_7 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_7_clock),
    .reset(ALU64_32_7_reset),
    .io_opcode(ALU64_32_7_io_opcode),
    .io_in_a(ALU64_32_7_io_in_a),
    .io_in_b(ALU64_32_7_io_in_b),
    .io_out_a(ALU64_32_7_io_out_a),
    .io_out_b(ALU64_32_7_io_out_b)
  );
  ALU ALU64_32_8 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_8_clock),
    .reset(ALU64_32_8_reset),
    .io_opcode(ALU64_32_8_io_opcode),
    .io_in_a(ALU64_32_8_io_in_a),
    .io_in_b(ALU64_32_8_io_in_b),
    .io_out_a(ALU64_32_8_io_out_a),
    .io_out_b(ALU64_32_8_io_out_b)
  );
  ALU ALU64_32_9 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_9_clock),
    .reset(ALU64_32_9_reset),
    .io_opcode(ALU64_32_9_io_opcode),
    .io_in_a(ALU64_32_9_io_in_a),
    .io_in_b(ALU64_32_9_io_in_b),
    .io_out_a(ALU64_32_9_io_out_a),
    .io_out_b(ALU64_32_9_io_out_b)
  );
  ALU ALU64_32_10 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_10_clock),
    .reset(ALU64_32_10_reset),
    .io_opcode(ALU64_32_10_io_opcode),
    .io_in_a(ALU64_32_10_io_in_a),
    .io_in_b(ALU64_32_10_io_in_b),
    .io_out_a(ALU64_32_10_io_out_a),
    .io_out_b(ALU64_32_10_io_out_b)
  );
  ALU ALU64_32_11 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_11_clock),
    .reset(ALU64_32_11_reset),
    .io_opcode(ALU64_32_11_io_opcode),
    .io_in_a(ALU64_32_11_io_in_a),
    .io_in_b(ALU64_32_11_io_in_b),
    .io_out_a(ALU64_32_11_io_out_a),
    .io_out_b(ALU64_32_11_io_out_b)
  );
  ALU ALU64_32_12 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_12_clock),
    .reset(ALU64_32_12_reset),
    .io_opcode(ALU64_32_12_io_opcode),
    .io_in_a(ALU64_32_12_io_in_a),
    .io_in_b(ALU64_32_12_io_in_b),
    .io_out_a(ALU64_32_12_io_out_a),
    .io_out_b(ALU64_32_12_io_out_b)
  );
  ALU ALU64_32_13 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_13_clock),
    .reset(ALU64_32_13_reset),
    .io_opcode(ALU64_32_13_io_opcode),
    .io_in_a(ALU64_32_13_io_in_a),
    .io_in_b(ALU64_32_13_io_in_b),
    .io_out_a(ALU64_32_13_io_out_a),
    .io_out_b(ALU64_32_13_io_out_b)
  );
  ALU ALU64_32_14 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_14_clock),
    .reset(ALU64_32_14_reset),
    .io_opcode(ALU64_32_14_io_opcode),
    .io_in_a(ALU64_32_14_io_in_a),
    .io_in_b(ALU64_32_14_io_in_b),
    .io_out_a(ALU64_32_14_io_out_a),
    .io_out_b(ALU64_32_14_io_out_b)
  );
  ALU ALU64_32_15 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_15_clock),
    .reset(ALU64_32_15_reset),
    .io_opcode(ALU64_32_15_io_opcode),
    .io_in_a(ALU64_32_15_io_in_a),
    .io_in_b(ALU64_32_15_io_in_b),
    .io_out_a(ALU64_32_15_io_out_a),
    .io_out_b(ALU64_32_15_io_out_b)
  );
  ALU ALU64_32_16 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_16_clock),
    .reset(ALU64_32_16_reset),
    .io_opcode(ALU64_32_16_io_opcode),
    .io_in_a(ALU64_32_16_io_in_a),
    .io_in_b(ALU64_32_16_io_in_b),
    .io_out_a(ALU64_32_16_io_out_a),
    .io_out_b(ALU64_32_16_io_out_b)
  );
  ALU ALU64_32_17 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_17_clock),
    .reset(ALU64_32_17_reset),
    .io_opcode(ALU64_32_17_io_opcode),
    .io_in_a(ALU64_32_17_io_in_a),
    .io_in_b(ALU64_32_17_io_in_b),
    .io_out_a(ALU64_32_17_io_out_a),
    .io_out_b(ALU64_32_17_io_out_b)
  );
  ALU ALU64_32_18 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_18_clock),
    .reset(ALU64_32_18_reset),
    .io_opcode(ALU64_32_18_io_opcode),
    .io_in_a(ALU64_32_18_io_in_a),
    .io_in_b(ALU64_32_18_io_in_b),
    .io_out_a(ALU64_32_18_io_out_a),
    .io_out_b(ALU64_32_18_io_out_b)
  );
  ALU ALU64_32_19 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_19_clock),
    .reset(ALU64_32_19_reset),
    .io_opcode(ALU64_32_19_io_opcode),
    .io_in_a(ALU64_32_19_io_in_a),
    .io_in_b(ALU64_32_19_io_in_b),
    .io_out_a(ALU64_32_19_io_out_a),
    .io_out_b(ALU64_32_19_io_out_b)
  );
  ALU ALU64_32_20 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_20_clock),
    .reset(ALU64_32_20_reset),
    .io_opcode(ALU64_32_20_io_opcode),
    .io_in_a(ALU64_32_20_io_in_a),
    .io_in_b(ALU64_32_20_io_in_b),
    .io_out_a(ALU64_32_20_io_out_a),
    .io_out_b(ALU64_32_20_io_out_b)
  );
  ALU ALU64_32_21 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_21_clock),
    .reset(ALU64_32_21_reset),
    .io_opcode(ALU64_32_21_io_opcode),
    .io_in_a(ALU64_32_21_io_in_a),
    .io_in_b(ALU64_32_21_io_in_b),
    .io_out_a(ALU64_32_21_io_out_a),
    .io_out_b(ALU64_32_21_io_out_b)
  );
  ALU ALU64_32_22 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_22_clock),
    .reset(ALU64_32_22_reset),
    .io_opcode(ALU64_32_22_io_opcode),
    .io_in_a(ALU64_32_22_io_in_a),
    .io_in_b(ALU64_32_22_io_in_b),
    .io_out_a(ALU64_32_22_io_out_a),
    .io_out_b(ALU64_32_22_io_out_b)
  );
  ALU ALU64_32_23 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_23_clock),
    .reset(ALU64_32_23_reset),
    .io_opcode(ALU64_32_23_io_opcode),
    .io_in_a(ALU64_32_23_io_in_a),
    .io_in_b(ALU64_32_23_io_in_b),
    .io_out_a(ALU64_32_23_io_out_a),
    .io_out_b(ALU64_32_23_io_out_b)
  );
  ALU ALU64_32_24 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_24_clock),
    .reset(ALU64_32_24_reset),
    .io_opcode(ALU64_32_24_io_opcode),
    .io_in_a(ALU64_32_24_io_in_a),
    .io_in_b(ALU64_32_24_io_in_b),
    .io_out_a(ALU64_32_24_io_out_a),
    .io_out_b(ALU64_32_24_io_out_b)
  );
  ALU ALU64_32_25 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_25_clock),
    .reset(ALU64_32_25_reset),
    .io_opcode(ALU64_32_25_io_opcode),
    .io_in_a(ALU64_32_25_io_in_a),
    .io_in_b(ALU64_32_25_io_in_b),
    .io_out_a(ALU64_32_25_io_out_a),
    .io_out_b(ALU64_32_25_io_out_b)
  );
  ALU ALU64_32_26 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_26_clock),
    .reset(ALU64_32_26_reset),
    .io_opcode(ALU64_32_26_io_opcode),
    .io_in_a(ALU64_32_26_io_in_a),
    .io_in_b(ALU64_32_26_io_in_b),
    .io_out_a(ALU64_32_26_io_out_a),
    .io_out_b(ALU64_32_26_io_out_b)
  );
  ALU ALU64_32_27 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_27_clock),
    .reset(ALU64_32_27_reset),
    .io_opcode(ALU64_32_27_io_opcode),
    .io_in_a(ALU64_32_27_io_in_a),
    .io_in_b(ALU64_32_27_io_in_b),
    .io_out_a(ALU64_32_27_io_out_a),
    .io_out_b(ALU64_32_27_io_out_b)
  );
  ALU ALU64_32_28 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_28_clock),
    .reset(ALU64_32_28_reset),
    .io_opcode(ALU64_32_28_io_opcode),
    .io_in_a(ALU64_32_28_io_in_a),
    .io_in_b(ALU64_32_28_io_in_b),
    .io_out_a(ALU64_32_28_io_out_a),
    .io_out_b(ALU64_32_28_io_out_b)
  );
  ALU ALU64_32_29 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_29_clock),
    .reset(ALU64_32_29_reset),
    .io_opcode(ALU64_32_29_io_opcode),
    .io_in_a(ALU64_32_29_io_in_a),
    .io_in_b(ALU64_32_29_io_in_b),
    .io_out_a(ALU64_32_29_io_out_a),
    .io_out_b(ALU64_32_29_io_out_b)
  );
  ALU ALU64_32_30 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_30_clock),
    .reset(ALU64_32_30_reset),
    .io_opcode(ALU64_32_30_io_opcode),
    .io_in_a(ALU64_32_30_io_in_a),
    .io_in_b(ALU64_32_30_io_in_b),
    .io_out_a(ALU64_32_30_io_out_a),
    .io_out_b(ALU64_32_30_io_out_b)
  );
  ALU ALU64_32_31 ( // @[BuildingBlock.scala 149:52]
    .clock(ALU64_32_31_clock),
    .reset(ALU64_32_31_reset),
    .io_opcode(ALU64_32_31_io_opcode),
    .io_in_a(ALU64_32_31_io_in_a),
    .io_in_b(ALU64_32_31_io_in_b),
    .io_out_a(ALU64_32_31_io_out_a),
    .io_out_b(ALU64_32_31_io_out_b)
  );
  assign io_d_out_0_a = ALU64_32_0_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_0_b = ALU64_32_0_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_1_a = ALU64_32_1_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_1_b = ALU64_32_1_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_2_a = ALU64_32_2_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_2_b = ALU64_32_2_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_3_a = ALU64_32_3_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_3_b = ALU64_32_3_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_4_a = ALU64_32_4_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_4_b = ALU64_32_4_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_5_a = ALU64_32_5_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_5_b = ALU64_32_5_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_6_a = ALU64_32_6_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_6_b = ALU64_32_6_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_7_a = ALU64_32_7_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_7_b = ALU64_32_7_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_8_a = ALU64_32_8_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_8_b = ALU64_32_8_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_9_a = ALU64_32_9_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_9_b = ALU64_32_9_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_10_a = ALU64_32_10_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_10_b = ALU64_32_10_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_11_a = ALU64_32_11_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_11_b = ALU64_32_11_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_12_a = ALU64_32_12_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_12_b = ALU64_32_12_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_13_a = ALU64_32_13_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_13_b = ALU64_32_13_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_14_a = ALU64_32_14_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_14_b = ALU64_32_14_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_15_a = ALU64_32_15_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_15_b = ALU64_32_15_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_16_a = ALU64_32_16_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_16_b = ALU64_32_16_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_17_a = ALU64_32_17_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_17_b = ALU64_32_17_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_18_a = ALU64_32_18_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_18_b = ALU64_32_18_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_19_a = ALU64_32_19_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_19_b = ALU64_32_19_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_20_a = ALU64_32_20_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_20_b = ALU64_32_20_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_21_a = ALU64_32_21_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_21_b = ALU64_32_21_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_22_a = ALU64_32_22_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_22_b = ALU64_32_22_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_23_a = ALU64_32_23_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_23_b = ALU64_32_23_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_24_a = ALU64_32_24_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_24_b = ALU64_32_24_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_25_a = ALU64_32_25_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_25_b = ALU64_32_25_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_26_a = ALU64_32_26_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_26_b = ALU64_32_26_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_27_a = ALU64_32_27_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_27_b = ALU64_32_27_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_28_a = ALU64_32_28_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_28_b = ALU64_32_28_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_29_a = ALU64_32_29_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_29_b = ALU64_32_29_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_30_a = ALU64_32_30_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_30_b = ALU64_32_30_io_out_b; // @[BuildingBlock.scala 159:19]
  assign io_d_out_31_a = ALU64_32_31_io_out_a; // @[BuildingBlock.scala 158:19]
  assign io_d_out_31_b = ALU64_32_31_io_out_b; // @[BuildingBlock.scala 159:19]
  assign ALU64_32_0_clock = clock;
  assign ALU64_32_0_reset = reset;
  assign ALU64_32_0_io_opcode = io_instr[127:124]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_0_io_in_a = io_d_in_0_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_0_io_in_b = io_d_in_0_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_1_clock = clock;
  assign ALU64_32_1_reset = reset;
  assign ALU64_32_1_io_opcode = io_instr[123:120]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_1_io_in_a = io_d_in_1_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_1_io_in_b = io_d_in_1_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_2_clock = clock;
  assign ALU64_32_2_reset = reset;
  assign ALU64_32_2_io_opcode = io_instr[119:116]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_2_io_in_a = io_d_in_2_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_2_io_in_b = io_d_in_2_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_3_clock = clock;
  assign ALU64_32_3_reset = reset;
  assign ALU64_32_3_io_opcode = io_instr[115:112]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_3_io_in_a = io_d_in_3_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_3_io_in_b = io_d_in_3_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_4_clock = clock;
  assign ALU64_32_4_reset = reset;
  assign ALU64_32_4_io_opcode = io_instr[111:108]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_4_io_in_a = io_d_in_4_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_4_io_in_b = io_d_in_4_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_5_clock = clock;
  assign ALU64_32_5_reset = reset;
  assign ALU64_32_5_io_opcode = io_instr[107:104]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_5_io_in_a = io_d_in_5_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_5_io_in_b = io_d_in_5_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_6_clock = clock;
  assign ALU64_32_6_reset = reset;
  assign ALU64_32_6_io_opcode = io_instr[103:100]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_6_io_in_a = io_d_in_6_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_6_io_in_b = io_d_in_6_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_7_clock = clock;
  assign ALU64_32_7_reset = reset;
  assign ALU64_32_7_io_opcode = io_instr[99:96]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_7_io_in_a = io_d_in_7_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_7_io_in_b = io_d_in_7_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_8_clock = clock;
  assign ALU64_32_8_reset = reset;
  assign ALU64_32_8_io_opcode = io_instr[95:92]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_8_io_in_a = io_d_in_8_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_8_io_in_b = io_d_in_8_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_9_clock = clock;
  assign ALU64_32_9_reset = reset;
  assign ALU64_32_9_io_opcode = io_instr[91:88]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_9_io_in_a = io_d_in_9_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_9_io_in_b = io_d_in_9_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_10_clock = clock;
  assign ALU64_32_10_reset = reset;
  assign ALU64_32_10_io_opcode = io_instr[87:84]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_10_io_in_a = io_d_in_10_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_10_io_in_b = io_d_in_10_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_11_clock = clock;
  assign ALU64_32_11_reset = reset;
  assign ALU64_32_11_io_opcode = io_instr[83:80]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_11_io_in_a = io_d_in_11_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_11_io_in_b = io_d_in_11_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_12_clock = clock;
  assign ALU64_32_12_reset = reset;
  assign ALU64_32_12_io_opcode = io_instr[79:76]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_12_io_in_a = io_d_in_12_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_12_io_in_b = io_d_in_12_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_13_clock = clock;
  assign ALU64_32_13_reset = reset;
  assign ALU64_32_13_io_opcode = io_instr[75:72]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_13_io_in_a = io_d_in_13_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_13_io_in_b = io_d_in_13_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_14_clock = clock;
  assign ALU64_32_14_reset = reset;
  assign ALU64_32_14_io_opcode = io_instr[71:68]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_14_io_in_a = io_d_in_14_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_14_io_in_b = io_d_in_14_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_15_clock = clock;
  assign ALU64_32_15_reset = reset;
  assign ALU64_32_15_io_opcode = io_instr[67:64]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_15_io_in_a = io_d_in_15_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_15_io_in_b = io_d_in_15_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_16_clock = clock;
  assign ALU64_32_16_reset = reset;
  assign ALU64_32_16_io_opcode = io_instr[63:60]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_16_io_in_a = io_d_in_16_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_16_io_in_b = io_d_in_16_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_17_clock = clock;
  assign ALU64_32_17_reset = reset;
  assign ALU64_32_17_io_opcode = io_instr[59:56]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_17_io_in_a = io_d_in_17_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_17_io_in_b = io_d_in_17_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_18_clock = clock;
  assign ALU64_32_18_reset = reset;
  assign ALU64_32_18_io_opcode = io_instr[55:52]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_18_io_in_a = io_d_in_18_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_18_io_in_b = io_d_in_18_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_19_clock = clock;
  assign ALU64_32_19_reset = reset;
  assign ALU64_32_19_io_opcode = io_instr[51:48]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_19_io_in_a = io_d_in_19_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_19_io_in_b = io_d_in_19_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_20_clock = clock;
  assign ALU64_32_20_reset = reset;
  assign ALU64_32_20_io_opcode = io_instr[47:44]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_20_io_in_a = io_d_in_20_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_20_io_in_b = io_d_in_20_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_21_clock = clock;
  assign ALU64_32_21_reset = reset;
  assign ALU64_32_21_io_opcode = io_instr[43:40]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_21_io_in_a = io_d_in_21_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_21_io_in_b = io_d_in_21_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_22_clock = clock;
  assign ALU64_32_22_reset = reset;
  assign ALU64_32_22_io_opcode = io_instr[39:36]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_22_io_in_a = io_d_in_22_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_22_io_in_b = io_d_in_22_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_23_clock = clock;
  assign ALU64_32_23_reset = reset;
  assign ALU64_32_23_io_opcode = io_instr[35:32]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_23_io_in_a = io_d_in_23_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_23_io_in_b = io_d_in_23_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_24_clock = clock;
  assign ALU64_32_24_reset = reset;
  assign ALU64_32_24_io_opcode = io_instr[31:28]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_24_io_in_a = io_d_in_24_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_24_io_in_b = io_d_in_24_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_25_clock = clock;
  assign ALU64_32_25_reset = reset;
  assign ALU64_32_25_io_opcode = io_instr[27:24]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_25_io_in_a = io_d_in_25_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_25_io_in_b = io_d_in_25_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_26_clock = clock;
  assign ALU64_32_26_reset = reset;
  assign ALU64_32_26_io_opcode = io_instr[23:20]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_26_io_in_a = io_d_in_26_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_26_io_in_b = io_d_in_26_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_27_clock = clock;
  assign ALU64_32_27_reset = reset;
  assign ALU64_32_27_io_opcode = io_instr[19:16]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_27_io_in_a = io_d_in_27_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_27_io_in_b = io_d_in_27_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_28_clock = clock;
  assign ALU64_32_28_reset = reset;
  assign ALU64_32_28_io_opcode = io_instr[15:12]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_28_io_in_a = io_d_in_28_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_28_io_in_b = io_d_in_28_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_29_clock = clock;
  assign ALU64_32_29_reset = reset;
  assign ALU64_32_29_io_opcode = io_instr[11:8]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_29_io_in_a = io_d_in_29_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_29_io_in_b = io_d_in_29_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_30_clock = clock;
  assign ALU64_32_30_reset = reset;
  assign ALU64_32_30_io_opcode = io_instr[7:4]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_30_io_in_a = io_d_in_30_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_30_io_in_b = io_d_in_30_b; // @[BuildingBlock.scala 155:25]
  assign ALU64_32_31_clock = clock;
  assign ALU64_32_31_reset = reset;
  assign ALU64_32_31_io_opcode = io_instr[3:0]; // @[BuildingBlock.scala 156:38]
  assign ALU64_32_31_io_in_a = io_d_in_31_a; // @[BuildingBlock.scala 154:25]
  assign ALU64_32_31_io_in_b = io_d_in_31_b; // @[BuildingBlock.scala 155:25]
endmodule
module CrossBarCell(
  input  [63:0] io_fw_left,
  input  [63:0] io_fw_top,
  output [63:0] io_fw_bottom,
  output [63:0] io_fw_right,
  input         io_sel
);
  assign io_fw_bottom = io_sel ? io_fw_left : io_fw_top; // @[CrossBarSwitch.scala 15:17 CrossBarSwitch.scala 16:18 CrossBarSwitch.scala 18:18]
  assign io_fw_right = io_fw_left; // @[CrossBarSwitch.scala 14:15]
endmodule
module CrossBarSwitch(
  input         clock,
  input  [63:0] io_fw_left_0,
  input  [63:0] io_fw_left_1,
  input  [63:0] io_fw_left_2,
  input  [63:0] io_fw_left_3,
  output [63:0] io_fw_bottom_0,
  output [63:0] io_fw_bottom_1,
  output [63:0] io_fw_bottom_2,
  output [63:0] io_fw_bottom_3,
  input  [1:0]  io_select_0,
  input  [1:0]  io_select_1,
  input  [1:0]  io_select_2,
  input  [1:0]  io_select_3
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] cells_2d_0_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_0_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_0_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_0_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_0_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_1_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_1_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_1_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_1_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_1_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_2_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_2_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_2_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_2_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_2_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_3_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_3_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_3_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_3_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_3_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_4_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_4_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_4_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_4_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_4_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_5_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_5_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_5_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_5_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_5_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_6_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_6_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_6_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_6_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_6_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_7_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_7_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_7_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_7_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_7_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_8_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_8_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_8_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_8_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_8_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_9_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_9_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_9_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_9_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_9_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_10_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_10_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_10_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_10_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_10_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_11_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_11_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_11_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_11_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_11_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_12_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_12_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_12_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_12_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_12_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_13_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_13_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_13_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_13_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_13_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_14_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_14_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_14_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_14_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_14_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_15_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_15_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_15_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_15_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_15_io_sel; // @[CrossBarSwitch.scala 37:53]
  reg [63:0] fw_left_reg_0; // @[CrossBarSwitch.scala 33:28]
  reg [63:0] fw_left_reg_1; // @[CrossBarSwitch.scala 33:28]
  reg [63:0] fw_left_reg_2; // @[CrossBarSwitch.scala 33:28]
  reg [63:0] fw_left_reg_3; // @[CrossBarSwitch.scala 33:28]
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
  assign cells_2d_0_io_fw_top = 64'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_0_io_sel = select_onehot_0[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_1_io_fw_left = cells_2d_0_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_1_io_fw_top = 64'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_1_io_sel = select_onehot_1[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_2_io_fw_left = cells_2d_1_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_2_io_fw_top = 64'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_2_io_sel = select_onehot_2[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_3_io_fw_left = cells_2d_2_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_3_io_fw_top = 64'h0; // @[CrossBarSwitch.scala 55:28]
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
  _RAND_0 = {2{`RANDOM}};
  fw_left_reg_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  fw_left_reg_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  fw_left_reg_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  fw_left_reg_3 = _RAND_3[63:0];
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
  input  [63:0] io_in4_0,
  input  [63:0] io_in4_1,
  input  [63:0] io_in4_2,
  input  [63:0] io_in4_3,
  output [63:0] io_out4_0,
  output [63:0] io_out4_1,
  output [63:0] io_out4_2,
  output [63:0] io_out4_3,
  input  [7:0]  io_ctrl
);
  wire  CrossBarSwitch_clock; // @[BuildingBlock.scala 17:21]
  wire [63:0] CrossBarSwitch_io_fw_left_0; // @[BuildingBlock.scala 17:21]
  wire [63:0] CrossBarSwitch_io_fw_left_1; // @[BuildingBlock.scala 17:21]
  wire [63:0] CrossBarSwitch_io_fw_left_2; // @[BuildingBlock.scala 17:21]
  wire [63:0] CrossBarSwitch_io_fw_left_3; // @[BuildingBlock.scala 17:21]
  wire [63:0] CrossBarSwitch_io_fw_bottom_0; // @[BuildingBlock.scala 17:21]
  wire [63:0] CrossBarSwitch_io_fw_bottom_1; // @[BuildingBlock.scala 17:21]
  wire [63:0] CrossBarSwitch_io_fw_bottom_2; // @[BuildingBlock.scala 17:21]
  wire [63:0] CrossBarSwitch_io_fw_bottom_3; // @[BuildingBlock.scala 17:21]
  wire [1:0] CrossBarSwitch_io_select_0; // @[BuildingBlock.scala 17:21]
  wire [1:0] CrossBarSwitch_io_select_1; // @[BuildingBlock.scala 17:21]
  wire [1:0] CrossBarSwitch_io_select_2; // @[BuildingBlock.scala 17:21]
  wire [1:0] CrossBarSwitch_io_select_3; // @[BuildingBlock.scala 17:21]
  CrossBarSwitch CrossBarSwitch ( // @[BuildingBlock.scala 17:21]
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
  assign io_out4_0 = CrossBarSwitch_io_fw_bottom_0; // @[BuildingBlock.scala 22:11]
  assign io_out4_1 = CrossBarSwitch_io_fw_bottom_1; // @[BuildingBlock.scala 22:11]
  assign io_out4_2 = CrossBarSwitch_io_fw_bottom_2; // @[BuildingBlock.scala 22:11]
  assign io_out4_3 = CrossBarSwitch_io_fw_bottom_3; // @[BuildingBlock.scala 22:11]
  assign CrossBarSwitch_clock = clock;
  assign CrossBarSwitch_io_fw_left_0 = io_in4_0; // @[BuildingBlock.scala 21:17]
  assign CrossBarSwitch_io_fw_left_1 = io_in4_1; // @[BuildingBlock.scala 21:17]
  assign CrossBarSwitch_io_fw_left_2 = io_in4_2; // @[BuildingBlock.scala 21:17]
  assign CrossBarSwitch_io_fw_left_3 = io_in4_3; // @[BuildingBlock.scala 21:17]
  assign CrossBarSwitch_io_select_0 = io_ctrl[7:6]; // @[BuildingBlock.scala 19:31]
  assign CrossBarSwitch_io_select_1 = io_ctrl[5:4]; // @[BuildingBlock.scala 19:31]
  assign CrossBarSwitch_io_select_2 = io_ctrl[3:2]; // @[BuildingBlock.scala 19:31]
  assign CrossBarSwitch_io_select_3 = io_ctrl[1:0]; // @[BuildingBlock.scala 19:31]
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
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  ingress1_0_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_0_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_0_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_0_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_0_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_0_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_0_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_0_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_0_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_0_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_1_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_1_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_1_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_1_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_1_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_1_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_1_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_1_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_1_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_1_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_2_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_2_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_2_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_2_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_2_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_2_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_2_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_2_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_2_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_2_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_3_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_3_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_3_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_3_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_3_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_3_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_3_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_3_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_3_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_3_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_4_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_4_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_4_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_4_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_4_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_4_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_4_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_4_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_4_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_4_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_5_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_5_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_5_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_5_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_5_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_5_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_5_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_5_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_5_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_5_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_6_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_6_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_6_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_6_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_6_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_6_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_6_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_6_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_6_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_6_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_7_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_7_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_7_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_7_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_7_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_7_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_7_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_7_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_7_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_7_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_8_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_8_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_8_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_8_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_8_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_8_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_8_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_8_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_8_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_8_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_9_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_9_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_9_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_9_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_9_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_9_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_9_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_9_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_9_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_9_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_10_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_10_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_10_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_10_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_10_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_10_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_10_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_10_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_10_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_10_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_11_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_11_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_11_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_11_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_11_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_11_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_11_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_11_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_11_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_11_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_12_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_12_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_12_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_12_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_12_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_12_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_12_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_12_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_12_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_12_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_13_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_13_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_13_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_13_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_13_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_13_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_13_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_13_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_13_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_13_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_14_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_14_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_14_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_14_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_14_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_14_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_14_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_14_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_14_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_14_io_ctrl; // @[BuildingBlock.scala 32:52]
  wire  ingress1_15_clock; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_15_io_in4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_15_io_in4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_15_io_in4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_15_io_in4_3; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_15_io_out4_0; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_15_io_out4_1; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_15_io_out4_2; // @[BuildingBlock.scala 32:52]
  wire [63:0] ingress1_15_io_out4_3; // @[BuildingBlock.scala 32:52]
  wire [7:0] ingress1_15_io_ctrl; // @[BuildingBlock.scala 32:52]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 33:25]
  CLOScell4 ingress1_0 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_1 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_2 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_3 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_4 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_5 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_6 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_7 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_8 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_9 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_10 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_11 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_12 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_13 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_14 ( // @[BuildingBlock.scala 32:52]
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
  CLOScell4 ingress1_15 ( // @[BuildingBlock.scala 32:52]
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
  assign io_out64_0 = ingress1_0_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_1 = ingress1_1_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_2 = ingress1_2_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_3 = ingress1_3_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_4 = ingress1_4_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_5 = ingress1_5_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_6 = ingress1_6_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_7 = ingress1_7_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_8 = ingress1_8_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_9 = ingress1_9_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_10 = ingress1_10_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_11 = ingress1_11_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_12 = ingress1_12_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_13 = ingress1_13_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_14 = ingress1_14_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_15 = ingress1_15_io_out4_0; // @[BuildingBlock.scala 40:24]
  assign io_out64_16 = ingress1_0_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_17 = ingress1_1_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_18 = ingress1_2_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_19 = ingress1_3_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_20 = ingress1_4_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_21 = ingress1_5_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_22 = ingress1_6_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_23 = ingress1_7_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_24 = ingress1_8_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_25 = ingress1_9_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_26 = ingress1_10_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_27 = ingress1_11_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_28 = ingress1_12_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_29 = ingress1_13_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_30 = ingress1_14_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_31 = ingress1_15_io_out4_1; // @[BuildingBlock.scala 40:24]
  assign io_out64_32 = ingress1_0_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_33 = ingress1_1_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_34 = ingress1_2_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_35 = ingress1_3_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_36 = ingress1_4_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_37 = ingress1_5_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_38 = ingress1_6_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_39 = ingress1_7_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_40 = ingress1_8_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_41 = ingress1_9_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_42 = ingress1_10_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_43 = ingress1_11_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_44 = ingress1_12_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_45 = ingress1_13_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_46 = ingress1_14_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_47 = ingress1_15_io_out4_2; // @[BuildingBlock.scala 40:24]
  assign io_out64_48 = ingress1_0_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_49 = ingress1_1_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_50 = ingress1_2_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_51 = ingress1_3_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_52 = ingress1_4_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_53 = ingress1_5_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_54 = ingress1_6_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_55 = ingress1_7_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_56 = ingress1_8_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_57 = ingress1_9_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_58 = ingress1_10_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_59 = ingress1_11_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_60 = ingress1_12_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_61 = ingress1_13_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_62 = ingress1_14_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign io_out64_63 = ingress1_15_io_out4_3; // @[BuildingBlock.scala 40:24]
  assign ingress1_0_clock = clock;
  assign ingress1_0_io_in4_0 = io_in64_0; // @[BuildingBlock.scala 39:29]
  assign ingress1_0_io_in4_1 = io_in64_1; // @[BuildingBlock.scala 39:29]
  assign ingress1_0_io_in4_2 = io_in64_2; // @[BuildingBlock.scala 39:29]
  assign ingress1_0_io_in4_3 = io_in64_3; // @[BuildingBlock.scala 39:29]
  assign ingress1_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 44:36]
  assign ingress1_1_clock = clock;
  assign ingress1_1_io_in4_0 = io_in64_4; // @[BuildingBlock.scala 39:29]
  assign ingress1_1_io_in4_1 = io_in64_5; // @[BuildingBlock.scala 39:29]
  assign ingress1_1_io_in4_2 = io_in64_6; // @[BuildingBlock.scala 39:29]
  assign ingress1_1_io_in4_3 = io_in64_7; // @[BuildingBlock.scala 39:29]
  assign ingress1_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 44:36]
  assign ingress1_2_clock = clock;
  assign ingress1_2_io_in4_0 = io_in64_8; // @[BuildingBlock.scala 39:29]
  assign ingress1_2_io_in4_1 = io_in64_9; // @[BuildingBlock.scala 39:29]
  assign ingress1_2_io_in4_2 = io_in64_10; // @[BuildingBlock.scala 39:29]
  assign ingress1_2_io_in4_3 = io_in64_11; // @[BuildingBlock.scala 39:29]
  assign ingress1_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 44:36]
  assign ingress1_3_clock = clock;
  assign ingress1_3_io_in4_0 = io_in64_12; // @[BuildingBlock.scala 39:29]
  assign ingress1_3_io_in4_1 = io_in64_13; // @[BuildingBlock.scala 39:29]
  assign ingress1_3_io_in4_2 = io_in64_14; // @[BuildingBlock.scala 39:29]
  assign ingress1_3_io_in4_3 = io_in64_15; // @[BuildingBlock.scala 39:29]
  assign ingress1_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 44:36]
  assign ingress1_4_clock = clock;
  assign ingress1_4_io_in4_0 = io_in64_16; // @[BuildingBlock.scala 39:29]
  assign ingress1_4_io_in4_1 = io_in64_17; // @[BuildingBlock.scala 39:29]
  assign ingress1_4_io_in4_2 = io_in64_18; // @[BuildingBlock.scala 39:29]
  assign ingress1_4_io_in4_3 = io_in64_19; // @[BuildingBlock.scala 39:29]
  assign ingress1_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 44:36]
  assign ingress1_5_clock = clock;
  assign ingress1_5_io_in4_0 = io_in64_20; // @[BuildingBlock.scala 39:29]
  assign ingress1_5_io_in4_1 = io_in64_21; // @[BuildingBlock.scala 39:29]
  assign ingress1_5_io_in4_2 = io_in64_22; // @[BuildingBlock.scala 39:29]
  assign ingress1_5_io_in4_3 = io_in64_23; // @[BuildingBlock.scala 39:29]
  assign ingress1_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 44:36]
  assign ingress1_6_clock = clock;
  assign ingress1_6_io_in4_0 = io_in64_24; // @[BuildingBlock.scala 39:29]
  assign ingress1_6_io_in4_1 = io_in64_25; // @[BuildingBlock.scala 39:29]
  assign ingress1_6_io_in4_2 = io_in64_26; // @[BuildingBlock.scala 39:29]
  assign ingress1_6_io_in4_3 = io_in64_27; // @[BuildingBlock.scala 39:29]
  assign ingress1_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 44:36]
  assign ingress1_7_clock = clock;
  assign ingress1_7_io_in4_0 = io_in64_28; // @[BuildingBlock.scala 39:29]
  assign ingress1_7_io_in4_1 = io_in64_29; // @[BuildingBlock.scala 39:29]
  assign ingress1_7_io_in4_2 = io_in64_30; // @[BuildingBlock.scala 39:29]
  assign ingress1_7_io_in4_3 = io_in64_31; // @[BuildingBlock.scala 39:29]
  assign ingress1_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 44:36]
  assign ingress1_8_clock = clock;
  assign ingress1_8_io_in4_0 = io_in64_32; // @[BuildingBlock.scala 39:29]
  assign ingress1_8_io_in4_1 = io_in64_33; // @[BuildingBlock.scala 39:29]
  assign ingress1_8_io_in4_2 = io_in64_34; // @[BuildingBlock.scala 39:29]
  assign ingress1_8_io_in4_3 = io_in64_35; // @[BuildingBlock.scala 39:29]
  assign ingress1_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 44:36]
  assign ingress1_9_clock = clock;
  assign ingress1_9_io_in4_0 = io_in64_36; // @[BuildingBlock.scala 39:29]
  assign ingress1_9_io_in4_1 = io_in64_37; // @[BuildingBlock.scala 39:29]
  assign ingress1_9_io_in4_2 = io_in64_38; // @[BuildingBlock.scala 39:29]
  assign ingress1_9_io_in4_3 = io_in64_39; // @[BuildingBlock.scala 39:29]
  assign ingress1_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 44:36]
  assign ingress1_10_clock = clock;
  assign ingress1_10_io_in4_0 = io_in64_40; // @[BuildingBlock.scala 39:29]
  assign ingress1_10_io_in4_1 = io_in64_41; // @[BuildingBlock.scala 39:29]
  assign ingress1_10_io_in4_2 = io_in64_42; // @[BuildingBlock.scala 39:29]
  assign ingress1_10_io_in4_3 = io_in64_43; // @[BuildingBlock.scala 39:29]
  assign ingress1_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 44:36]
  assign ingress1_11_clock = clock;
  assign ingress1_11_io_in4_0 = io_in64_44; // @[BuildingBlock.scala 39:29]
  assign ingress1_11_io_in4_1 = io_in64_45; // @[BuildingBlock.scala 39:29]
  assign ingress1_11_io_in4_2 = io_in64_46; // @[BuildingBlock.scala 39:29]
  assign ingress1_11_io_in4_3 = io_in64_47; // @[BuildingBlock.scala 39:29]
  assign ingress1_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 44:36]
  assign ingress1_12_clock = clock;
  assign ingress1_12_io_in4_0 = io_in64_48; // @[BuildingBlock.scala 39:29]
  assign ingress1_12_io_in4_1 = io_in64_49; // @[BuildingBlock.scala 39:29]
  assign ingress1_12_io_in4_2 = io_in64_50; // @[BuildingBlock.scala 39:29]
  assign ingress1_12_io_in4_3 = io_in64_51; // @[BuildingBlock.scala 39:29]
  assign ingress1_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 44:36]
  assign ingress1_13_clock = clock;
  assign ingress1_13_io_in4_0 = io_in64_52; // @[BuildingBlock.scala 39:29]
  assign ingress1_13_io_in4_1 = io_in64_53; // @[BuildingBlock.scala 39:29]
  assign ingress1_13_io_in4_2 = io_in64_54; // @[BuildingBlock.scala 39:29]
  assign ingress1_13_io_in4_3 = io_in64_55; // @[BuildingBlock.scala 39:29]
  assign ingress1_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 44:36]
  assign ingress1_14_clock = clock;
  assign ingress1_14_io_in4_0 = io_in64_56; // @[BuildingBlock.scala 39:29]
  assign ingress1_14_io_in4_1 = io_in64_57; // @[BuildingBlock.scala 39:29]
  assign ingress1_14_io_in4_2 = io_in64_58; // @[BuildingBlock.scala 39:29]
  assign ingress1_14_io_in4_3 = io_in64_59; // @[BuildingBlock.scala 39:29]
  assign ingress1_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 44:36]
  assign ingress1_15_clock = clock;
  assign ingress1_15_io_in4_0 = io_in64_60; // @[BuildingBlock.scala 39:29]
  assign ingress1_15_io_in4_1 = io_in64_61; // @[BuildingBlock.scala 39:29]
  assign ingress1_15_io_in4_2 = io_in64_62; // @[BuildingBlock.scala 39:29]
  assign ingress1_15_io_in4_3 = io_in64_63; // @[BuildingBlock.scala 39:29]
  assign ingress1_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 44:36]
  always @(posedge clock) begin
    if (reset) begin // @[BuildingBlock.scala 33:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 33:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 34:12]
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
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  ingress2_0_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_0_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_0_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_0_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_0_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_0_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_0_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_0_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_0_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_0_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_1_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_1_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_1_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_1_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_1_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_1_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_1_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_1_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_1_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_1_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_2_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_2_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_2_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_2_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_2_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_2_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_2_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_2_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_2_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_2_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_3_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_3_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_3_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_3_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_3_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_3_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_3_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_3_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_3_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_3_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_4_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_4_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_4_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_4_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_4_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_4_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_4_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_4_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_4_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_4_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_5_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_5_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_5_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_5_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_5_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_5_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_5_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_5_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_5_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_5_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_6_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_6_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_6_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_6_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_6_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_6_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_6_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_6_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_6_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_6_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_7_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_7_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_7_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_7_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_7_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_7_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_7_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_7_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_7_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_7_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_8_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_8_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_8_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_8_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_8_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_8_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_8_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_8_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_8_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_8_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_9_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_9_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_9_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_9_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_9_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_9_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_9_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_9_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_9_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_9_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_10_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_10_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_10_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_10_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_10_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_10_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_10_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_10_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_10_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_10_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_11_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_11_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_11_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_11_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_11_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_11_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_11_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_11_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_11_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_11_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_12_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_12_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_12_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_12_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_12_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_12_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_12_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_12_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_12_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_12_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_13_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_13_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_13_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_13_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_13_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_13_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_13_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_13_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_13_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_13_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_14_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_14_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_14_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_14_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_14_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_14_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_14_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_14_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_14_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_14_io_ctrl; // @[BuildingBlock.scala 54:52]
  wire  ingress2_15_clock; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_15_io_in4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_15_io_in4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_15_io_in4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_15_io_in4_3; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_15_io_out4_0; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_15_io_out4_1; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_15_io_out4_2; // @[BuildingBlock.scala 54:52]
  wire [63:0] ingress2_15_io_out4_3; // @[BuildingBlock.scala 54:52]
  wire [7:0] ingress2_15_io_ctrl; // @[BuildingBlock.scala 54:52]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 55:25]
  CLOScell4 ingress2_0 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_1 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_2 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_3 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_4 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_5 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_6 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_7 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_8 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_9 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_10 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_11 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_12 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_13 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_14 ( // @[BuildingBlock.scala 54:52]
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
  CLOScell4 ingress2_15 ( // @[BuildingBlock.scala 54:52]
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
  assign io_out64_0 = ingress2_0_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_1 = ingress2_1_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_2 = ingress2_2_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_3 = ingress2_3_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_4 = ingress2_0_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_5 = ingress2_1_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_6 = ingress2_2_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_7 = ingress2_3_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_8 = ingress2_0_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_9 = ingress2_1_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_10 = ingress2_2_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_11 = ingress2_3_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_12 = ingress2_0_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_13 = ingress2_1_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_14 = ingress2_2_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_15 = ingress2_3_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_16 = ingress2_4_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_17 = ingress2_5_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_18 = ingress2_6_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_19 = ingress2_7_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_20 = ingress2_4_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_21 = ingress2_5_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_22 = ingress2_6_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_23 = ingress2_7_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_24 = ingress2_4_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_25 = ingress2_5_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_26 = ingress2_6_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_27 = ingress2_7_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_28 = ingress2_4_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_29 = ingress2_5_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_30 = ingress2_6_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_31 = ingress2_7_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_32 = ingress2_8_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_33 = ingress2_9_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_34 = ingress2_10_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_35 = ingress2_11_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_36 = ingress2_8_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_37 = ingress2_9_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_38 = ingress2_10_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_39 = ingress2_11_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_40 = ingress2_8_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_41 = ingress2_9_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_42 = ingress2_10_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_43 = ingress2_11_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_44 = ingress2_8_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_45 = ingress2_9_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_46 = ingress2_10_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_47 = ingress2_11_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_48 = ingress2_12_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_49 = ingress2_13_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_50 = ingress2_14_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_51 = ingress2_15_io_out4_0; // @[BuildingBlock.scala 63:30]
  assign io_out64_52 = ingress2_12_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_53 = ingress2_13_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_54 = ingress2_14_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_55 = ingress2_15_io_out4_1; // @[BuildingBlock.scala 63:30]
  assign io_out64_56 = ingress2_12_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_57 = ingress2_13_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_58 = ingress2_14_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_59 = ingress2_15_io_out4_2; // @[BuildingBlock.scala 63:30]
  assign io_out64_60 = ingress2_12_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_61 = ingress2_13_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_62 = ingress2_14_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign io_out64_63 = ingress2_15_io_out4_3; // @[BuildingBlock.scala 63:30]
  assign ingress2_0_clock = clock;
  assign ingress2_0_io_in4_0 = io_in64_0; // @[BuildingBlock.scala 62:35]
  assign ingress2_0_io_in4_1 = io_in64_1; // @[BuildingBlock.scala 62:35]
  assign ingress2_0_io_in4_2 = io_in64_2; // @[BuildingBlock.scala 62:35]
  assign ingress2_0_io_in4_3 = io_in64_3; // @[BuildingBlock.scala 62:35]
  assign ingress2_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 67:36]
  assign ingress2_1_clock = clock;
  assign ingress2_1_io_in4_0 = io_in64_4; // @[BuildingBlock.scala 62:35]
  assign ingress2_1_io_in4_1 = io_in64_5; // @[BuildingBlock.scala 62:35]
  assign ingress2_1_io_in4_2 = io_in64_6; // @[BuildingBlock.scala 62:35]
  assign ingress2_1_io_in4_3 = io_in64_7; // @[BuildingBlock.scala 62:35]
  assign ingress2_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 67:36]
  assign ingress2_2_clock = clock;
  assign ingress2_2_io_in4_0 = io_in64_8; // @[BuildingBlock.scala 62:35]
  assign ingress2_2_io_in4_1 = io_in64_9; // @[BuildingBlock.scala 62:35]
  assign ingress2_2_io_in4_2 = io_in64_10; // @[BuildingBlock.scala 62:35]
  assign ingress2_2_io_in4_3 = io_in64_11; // @[BuildingBlock.scala 62:35]
  assign ingress2_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 67:36]
  assign ingress2_3_clock = clock;
  assign ingress2_3_io_in4_0 = io_in64_12; // @[BuildingBlock.scala 62:35]
  assign ingress2_3_io_in4_1 = io_in64_13; // @[BuildingBlock.scala 62:35]
  assign ingress2_3_io_in4_2 = io_in64_14; // @[BuildingBlock.scala 62:35]
  assign ingress2_3_io_in4_3 = io_in64_15; // @[BuildingBlock.scala 62:35]
  assign ingress2_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 67:36]
  assign ingress2_4_clock = clock;
  assign ingress2_4_io_in4_0 = io_in64_16; // @[BuildingBlock.scala 62:35]
  assign ingress2_4_io_in4_1 = io_in64_17; // @[BuildingBlock.scala 62:35]
  assign ingress2_4_io_in4_2 = io_in64_18; // @[BuildingBlock.scala 62:35]
  assign ingress2_4_io_in4_3 = io_in64_19; // @[BuildingBlock.scala 62:35]
  assign ingress2_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 67:36]
  assign ingress2_5_clock = clock;
  assign ingress2_5_io_in4_0 = io_in64_20; // @[BuildingBlock.scala 62:35]
  assign ingress2_5_io_in4_1 = io_in64_21; // @[BuildingBlock.scala 62:35]
  assign ingress2_5_io_in4_2 = io_in64_22; // @[BuildingBlock.scala 62:35]
  assign ingress2_5_io_in4_3 = io_in64_23; // @[BuildingBlock.scala 62:35]
  assign ingress2_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 67:36]
  assign ingress2_6_clock = clock;
  assign ingress2_6_io_in4_0 = io_in64_24; // @[BuildingBlock.scala 62:35]
  assign ingress2_6_io_in4_1 = io_in64_25; // @[BuildingBlock.scala 62:35]
  assign ingress2_6_io_in4_2 = io_in64_26; // @[BuildingBlock.scala 62:35]
  assign ingress2_6_io_in4_3 = io_in64_27; // @[BuildingBlock.scala 62:35]
  assign ingress2_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 67:36]
  assign ingress2_7_clock = clock;
  assign ingress2_7_io_in4_0 = io_in64_28; // @[BuildingBlock.scala 62:35]
  assign ingress2_7_io_in4_1 = io_in64_29; // @[BuildingBlock.scala 62:35]
  assign ingress2_7_io_in4_2 = io_in64_30; // @[BuildingBlock.scala 62:35]
  assign ingress2_7_io_in4_3 = io_in64_31; // @[BuildingBlock.scala 62:35]
  assign ingress2_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 67:36]
  assign ingress2_8_clock = clock;
  assign ingress2_8_io_in4_0 = io_in64_32; // @[BuildingBlock.scala 62:35]
  assign ingress2_8_io_in4_1 = io_in64_33; // @[BuildingBlock.scala 62:35]
  assign ingress2_8_io_in4_2 = io_in64_34; // @[BuildingBlock.scala 62:35]
  assign ingress2_8_io_in4_3 = io_in64_35; // @[BuildingBlock.scala 62:35]
  assign ingress2_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 67:36]
  assign ingress2_9_clock = clock;
  assign ingress2_9_io_in4_0 = io_in64_36; // @[BuildingBlock.scala 62:35]
  assign ingress2_9_io_in4_1 = io_in64_37; // @[BuildingBlock.scala 62:35]
  assign ingress2_9_io_in4_2 = io_in64_38; // @[BuildingBlock.scala 62:35]
  assign ingress2_9_io_in4_3 = io_in64_39; // @[BuildingBlock.scala 62:35]
  assign ingress2_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 67:36]
  assign ingress2_10_clock = clock;
  assign ingress2_10_io_in4_0 = io_in64_40; // @[BuildingBlock.scala 62:35]
  assign ingress2_10_io_in4_1 = io_in64_41; // @[BuildingBlock.scala 62:35]
  assign ingress2_10_io_in4_2 = io_in64_42; // @[BuildingBlock.scala 62:35]
  assign ingress2_10_io_in4_3 = io_in64_43; // @[BuildingBlock.scala 62:35]
  assign ingress2_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 67:36]
  assign ingress2_11_clock = clock;
  assign ingress2_11_io_in4_0 = io_in64_44; // @[BuildingBlock.scala 62:35]
  assign ingress2_11_io_in4_1 = io_in64_45; // @[BuildingBlock.scala 62:35]
  assign ingress2_11_io_in4_2 = io_in64_46; // @[BuildingBlock.scala 62:35]
  assign ingress2_11_io_in4_3 = io_in64_47; // @[BuildingBlock.scala 62:35]
  assign ingress2_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 67:36]
  assign ingress2_12_clock = clock;
  assign ingress2_12_io_in4_0 = io_in64_48; // @[BuildingBlock.scala 62:35]
  assign ingress2_12_io_in4_1 = io_in64_49; // @[BuildingBlock.scala 62:35]
  assign ingress2_12_io_in4_2 = io_in64_50; // @[BuildingBlock.scala 62:35]
  assign ingress2_12_io_in4_3 = io_in64_51; // @[BuildingBlock.scala 62:35]
  assign ingress2_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 67:36]
  assign ingress2_13_clock = clock;
  assign ingress2_13_io_in4_0 = io_in64_52; // @[BuildingBlock.scala 62:35]
  assign ingress2_13_io_in4_1 = io_in64_53; // @[BuildingBlock.scala 62:35]
  assign ingress2_13_io_in4_2 = io_in64_54; // @[BuildingBlock.scala 62:35]
  assign ingress2_13_io_in4_3 = io_in64_55; // @[BuildingBlock.scala 62:35]
  assign ingress2_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 67:36]
  assign ingress2_14_clock = clock;
  assign ingress2_14_io_in4_0 = io_in64_56; // @[BuildingBlock.scala 62:35]
  assign ingress2_14_io_in4_1 = io_in64_57; // @[BuildingBlock.scala 62:35]
  assign ingress2_14_io_in4_2 = io_in64_58; // @[BuildingBlock.scala 62:35]
  assign ingress2_14_io_in4_3 = io_in64_59; // @[BuildingBlock.scala 62:35]
  assign ingress2_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 67:36]
  assign ingress2_15_clock = clock;
  assign ingress2_15_io_in4_0 = io_in64_60; // @[BuildingBlock.scala 62:35]
  assign ingress2_15_io_in4_1 = io_in64_61; // @[BuildingBlock.scala 62:35]
  assign ingress2_15_io_in4_2 = io_in64_62; // @[BuildingBlock.scala 62:35]
  assign ingress2_15_io_in4_3 = io_in64_63; // @[BuildingBlock.scala 62:35]
  assign ingress2_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 67:36]
  always @(posedge clock) begin
    if (reset) begin // @[BuildingBlock.scala 55:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 55:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 56:12]
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
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  egress2_0_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_0_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_0_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_0_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_0_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_0_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_0_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_0_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_0_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_0_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_1_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_1_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_1_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_1_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_1_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_1_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_1_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_1_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_1_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_1_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_2_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_2_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_2_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_2_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_2_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_2_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_2_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_2_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_2_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_2_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_3_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_3_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_3_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_3_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_3_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_3_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_3_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_3_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_3_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_3_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_4_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_4_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_4_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_4_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_4_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_4_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_4_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_4_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_4_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_4_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_5_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_5_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_5_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_5_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_5_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_5_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_5_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_5_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_5_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_5_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_6_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_6_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_6_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_6_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_6_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_6_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_6_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_6_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_6_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_6_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_7_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_7_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_7_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_7_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_7_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_7_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_7_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_7_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_7_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_7_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_8_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_8_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_8_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_8_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_8_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_8_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_8_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_8_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_8_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_8_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_9_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_9_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_9_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_9_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_9_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_9_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_9_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_9_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_9_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_9_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_10_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_10_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_10_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_10_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_10_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_10_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_10_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_10_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_10_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_10_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_11_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_11_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_11_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_11_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_11_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_11_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_11_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_11_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_11_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_11_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_12_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_12_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_12_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_12_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_12_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_12_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_12_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_12_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_12_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_12_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_13_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_13_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_13_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_13_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_13_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_13_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_13_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_13_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_13_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_13_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_14_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_14_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_14_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_14_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_14_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_14_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_14_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_14_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_14_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_14_io_ctrl; // @[BuildingBlock.scala 122:51]
  wire  egress2_15_clock; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_15_io_in4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_15_io_in4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_15_io_in4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_15_io_in4_3; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_15_io_out4_0; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_15_io_out4_1; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_15_io_out4_2; // @[BuildingBlock.scala 122:51]
  wire [63:0] egress2_15_io_out4_3; // @[BuildingBlock.scala 122:51]
  wire [7:0] egress2_15_io_ctrl; // @[BuildingBlock.scala 122:51]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 123:25]
  CLOScell4 egress2_0 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_1 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_2 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_3 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_4 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_5 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_6 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_7 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_8 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_9 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_10 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_11 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_12 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_13 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_14 ( // @[BuildingBlock.scala 122:51]
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
  CLOScell4 egress2_15 ( // @[BuildingBlock.scala 122:51]
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
  assign io_out64_0 = egress2_0_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_1 = egress2_0_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_2 = egress2_0_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_3 = egress2_0_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_4 = egress2_1_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_5 = egress2_1_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_6 = egress2_1_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_7 = egress2_1_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_8 = egress2_2_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_9 = egress2_2_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_10 = egress2_2_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_11 = egress2_2_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_12 = egress2_3_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_13 = egress2_3_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_14 = egress2_3_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_15 = egress2_3_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_16 = egress2_4_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_17 = egress2_4_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_18 = egress2_4_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_19 = egress2_4_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_20 = egress2_5_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_21 = egress2_5_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_22 = egress2_5_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_23 = egress2_5_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_24 = egress2_6_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_25 = egress2_6_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_26 = egress2_6_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_27 = egress2_6_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_28 = egress2_7_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_29 = egress2_7_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_30 = egress2_7_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_31 = egress2_7_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_32 = egress2_8_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_33 = egress2_8_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_34 = egress2_8_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_35 = egress2_8_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_36 = egress2_9_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_37 = egress2_9_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_38 = egress2_9_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_39 = egress2_9_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_40 = egress2_10_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_41 = egress2_10_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_42 = egress2_10_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_43 = egress2_10_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_44 = egress2_11_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_45 = egress2_11_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_46 = egress2_11_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_47 = egress2_11_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_48 = egress2_12_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_49 = egress2_12_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_50 = egress2_12_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_51 = egress2_12_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_52 = egress2_13_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_53 = egress2_13_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_54 = egress2_13_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_55 = egress2_13_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_56 = egress2_14_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_57 = egress2_14_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_58 = egress2_14_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_59 = egress2_14_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign io_out64_60 = egress2_15_io_out4_0; // @[BuildingBlock.scala 130:23]
  assign io_out64_61 = egress2_15_io_out4_1; // @[BuildingBlock.scala 130:23]
  assign io_out64_62 = egress2_15_io_out4_2; // @[BuildingBlock.scala 130:23]
  assign io_out64_63 = egress2_15_io_out4_3; // @[BuildingBlock.scala 130:23]
  assign egress2_0_clock = clock;
  assign egress2_0_io_in4_0 = io_in64_0; // @[BuildingBlock.scala 129:28]
  assign egress2_0_io_in4_1 = io_in64_1; // @[BuildingBlock.scala 129:28]
  assign egress2_0_io_in4_2 = io_in64_2; // @[BuildingBlock.scala 129:28]
  assign egress2_0_io_in4_3 = io_in64_3; // @[BuildingBlock.scala 129:28]
  assign egress2_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 134:35]
  assign egress2_1_clock = clock;
  assign egress2_1_io_in4_0 = io_in64_4; // @[BuildingBlock.scala 129:28]
  assign egress2_1_io_in4_1 = io_in64_5; // @[BuildingBlock.scala 129:28]
  assign egress2_1_io_in4_2 = io_in64_6; // @[BuildingBlock.scala 129:28]
  assign egress2_1_io_in4_3 = io_in64_7; // @[BuildingBlock.scala 129:28]
  assign egress2_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 134:35]
  assign egress2_2_clock = clock;
  assign egress2_2_io_in4_0 = io_in64_8; // @[BuildingBlock.scala 129:28]
  assign egress2_2_io_in4_1 = io_in64_9; // @[BuildingBlock.scala 129:28]
  assign egress2_2_io_in4_2 = io_in64_10; // @[BuildingBlock.scala 129:28]
  assign egress2_2_io_in4_3 = io_in64_11; // @[BuildingBlock.scala 129:28]
  assign egress2_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 134:35]
  assign egress2_3_clock = clock;
  assign egress2_3_io_in4_0 = io_in64_12; // @[BuildingBlock.scala 129:28]
  assign egress2_3_io_in4_1 = io_in64_13; // @[BuildingBlock.scala 129:28]
  assign egress2_3_io_in4_2 = io_in64_14; // @[BuildingBlock.scala 129:28]
  assign egress2_3_io_in4_3 = io_in64_15; // @[BuildingBlock.scala 129:28]
  assign egress2_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 134:35]
  assign egress2_4_clock = clock;
  assign egress2_4_io_in4_0 = io_in64_16; // @[BuildingBlock.scala 129:28]
  assign egress2_4_io_in4_1 = io_in64_17; // @[BuildingBlock.scala 129:28]
  assign egress2_4_io_in4_2 = io_in64_18; // @[BuildingBlock.scala 129:28]
  assign egress2_4_io_in4_3 = io_in64_19; // @[BuildingBlock.scala 129:28]
  assign egress2_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 134:35]
  assign egress2_5_clock = clock;
  assign egress2_5_io_in4_0 = io_in64_20; // @[BuildingBlock.scala 129:28]
  assign egress2_5_io_in4_1 = io_in64_21; // @[BuildingBlock.scala 129:28]
  assign egress2_5_io_in4_2 = io_in64_22; // @[BuildingBlock.scala 129:28]
  assign egress2_5_io_in4_3 = io_in64_23; // @[BuildingBlock.scala 129:28]
  assign egress2_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 134:35]
  assign egress2_6_clock = clock;
  assign egress2_6_io_in4_0 = io_in64_24; // @[BuildingBlock.scala 129:28]
  assign egress2_6_io_in4_1 = io_in64_25; // @[BuildingBlock.scala 129:28]
  assign egress2_6_io_in4_2 = io_in64_26; // @[BuildingBlock.scala 129:28]
  assign egress2_6_io_in4_3 = io_in64_27; // @[BuildingBlock.scala 129:28]
  assign egress2_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 134:35]
  assign egress2_7_clock = clock;
  assign egress2_7_io_in4_0 = io_in64_28; // @[BuildingBlock.scala 129:28]
  assign egress2_7_io_in4_1 = io_in64_29; // @[BuildingBlock.scala 129:28]
  assign egress2_7_io_in4_2 = io_in64_30; // @[BuildingBlock.scala 129:28]
  assign egress2_7_io_in4_3 = io_in64_31; // @[BuildingBlock.scala 129:28]
  assign egress2_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 134:35]
  assign egress2_8_clock = clock;
  assign egress2_8_io_in4_0 = io_in64_32; // @[BuildingBlock.scala 129:28]
  assign egress2_8_io_in4_1 = io_in64_33; // @[BuildingBlock.scala 129:28]
  assign egress2_8_io_in4_2 = io_in64_34; // @[BuildingBlock.scala 129:28]
  assign egress2_8_io_in4_3 = io_in64_35; // @[BuildingBlock.scala 129:28]
  assign egress2_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 134:35]
  assign egress2_9_clock = clock;
  assign egress2_9_io_in4_0 = io_in64_36; // @[BuildingBlock.scala 129:28]
  assign egress2_9_io_in4_1 = io_in64_37; // @[BuildingBlock.scala 129:28]
  assign egress2_9_io_in4_2 = io_in64_38; // @[BuildingBlock.scala 129:28]
  assign egress2_9_io_in4_3 = io_in64_39; // @[BuildingBlock.scala 129:28]
  assign egress2_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 134:35]
  assign egress2_10_clock = clock;
  assign egress2_10_io_in4_0 = io_in64_40; // @[BuildingBlock.scala 129:28]
  assign egress2_10_io_in4_1 = io_in64_41; // @[BuildingBlock.scala 129:28]
  assign egress2_10_io_in4_2 = io_in64_42; // @[BuildingBlock.scala 129:28]
  assign egress2_10_io_in4_3 = io_in64_43; // @[BuildingBlock.scala 129:28]
  assign egress2_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 134:35]
  assign egress2_11_clock = clock;
  assign egress2_11_io_in4_0 = io_in64_44; // @[BuildingBlock.scala 129:28]
  assign egress2_11_io_in4_1 = io_in64_45; // @[BuildingBlock.scala 129:28]
  assign egress2_11_io_in4_2 = io_in64_46; // @[BuildingBlock.scala 129:28]
  assign egress2_11_io_in4_3 = io_in64_47; // @[BuildingBlock.scala 129:28]
  assign egress2_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 134:35]
  assign egress2_12_clock = clock;
  assign egress2_12_io_in4_0 = io_in64_48; // @[BuildingBlock.scala 129:28]
  assign egress2_12_io_in4_1 = io_in64_49; // @[BuildingBlock.scala 129:28]
  assign egress2_12_io_in4_2 = io_in64_50; // @[BuildingBlock.scala 129:28]
  assign egress2_12_io_in4_3 = io_in64_51; // @[BuildingBlock.scala 129:28]
  assign egress2_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 134:35]
  assign egress2_13_clock = clock;
  assign egress2_13_io_in4_0 = io_in64_52; // @[BuildingBlock.scala 129:28]
  assign egress2_13_io_in4_1 = io_in64_53; // @[BuildingBlock.scala 129:28]
  assign egress2_13_io_in4_2 = io_in64_54; // @[BuildingBlock.scala 129:28]
  assign egress2_13_io_in4_3 = io_in64_55; // @[BuildingBlock.scala 129:28]
  assign egress2_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 134:35]
  assign egress2_14_clock = clock;
  assign egress2_14_io_in4_0 = io_in64_56; // @[BuildingBlock.scala 129:28]
  assign egress2_14_io_in4_1 = io_in64_57; // @[BuildingBlock.scala 129:28]
  assign egress2_14_io_in4_2 = io_in64_58; // @[BuildingBlock.scala 129:28]
  assign egress2_14_io_in4_3 = io_in64_59; // @[BuildingBlock.scala 129:28]
  assign egress2_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 134:35]
  assign egress2_15_clock = clock;
  assign egress2_15_io_in4_0 = io_in64_60; // @[BuildingBlock.scala 129:28]
  assign egress2_15_io_in4_1 = io_in64_61; // @[BuildingBlock.scala 129:28]
  assign egress2_15_io_in4_2 = io_in64_62; // @[BuildingBlock.scala 129:28]
  assign egress2_15_io_in4_3 = io_in64_63; // @[BuildingBlock.scala 129:28]
  assign egress2_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 134:35]
  always @(posedge clock) begin
    if (reset) begin // @[BuildingBlock.scala 123:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 123:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 124:12]
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
module BuildingBlock(
  input          clock,
  input          reset,
  input  [63:0]  io_d_in_0_a,
  input  [63:0]  io_d_in_0_b,
  input  [63:0]  io_d_in_1_a,
  input  [63:0]  io_d_in_1_b,
  input  [63:0]  io_d_in_2_a,
  input  [63:0]  io_d_in_2_b,
  input  [63:0]  io_d_in_3_a,
  input  [63:0]  io_d_in_3_b,
  input  [63:0]  io_d_in_4_a,
  input  [63:0]  io_d_in_4_b,
  input  [63:0]  io_d_in_5_a,
  input  [63:0]  io_d_in_5_b,
  input  [63:0]  io_d_in_6_a,
  input  [63:0]  io_d_in_6_b,
  input  [63:0]  io_d_in_7_a,
  input  [63:0]  io_d_in_7_b,
  input  [63:0]  io_d_in_8_a,
  input  [63:0]  io_d_in_8_b,
  input  [63:0]  io_d_in_9_a,
  input  [63:0]  io_d_in_9_b,
  input  [63:0]  io_d_in_10_a,
  input  [63:0]  io_d_in_10_b,
  input  [63:0]  io_d_in_11_a,
  input  [63:0]  io_d_in_11_b,
  input  [63:0]  io_d_in_12_a,
  input  [63:0]  io_d_in_12_b,
  input  [63:0]  io_d_in_13_a,
  input  [63:0]  io_d_in_13_b,
  input  [63:0]  io_d_in_14_a,
  input  [63:0]  io_d_in_14_b,
  input  [63:0]  io_d_in_15_a,
  input  [63:0]  io_d_in_15_b,
  input  [63:0]  io_d_in_16_a,
  input  [63:0]  io_d_in_16_b,
  input  [63:0]  io_d_in_17_a,
  input  [63:0]  io_d_in_17_b,
  input  [63:0]  io_d_in_18_a,
  input  [63:0]  io_d_in_18_b,
  input  [63:0]  io_d_in_19_a,
  input  [63:0]  io_d_in_19_b,
  input  [63:0]  io_d_in_20_a,
  input  [63:0]  io_d_in_20_b,
  input  [63:0]  io_d_in_21_a,
  input  [63:0]  io_d_in_21_b,
  input  [63:0]  io_d_in_22_a,
  input  [63:0]  io_d_in_22_b,
  input  [63:0]  io_d_in_23_a,
  input  [63:0]  io_d_in_23_b,
  input  [63:0]  io_d_in_24_a,
  input  [63:0]  io_d_in_24_b,
  input  [63:0]  io_d_in_25_a,
  input  [63:0]  io_d_in_25_b,
  input  [63:0]  io_d_in_26_a,
  input  [63:0]  io_d_in_26_b,
  input  [63:0]  io_d_in_27_a,
  input  [63:0]  io_d_in_27_b,
  input  [63:0]  io_d_in_28_a,
  input  [63:0]  io_d_in_28_b,
  input  [63:0]  io_d_in_29_a,
  input  [63:0]  io_d_in_29_b,
  input  [63:0]  io_d_in_30_a,
  input  [63:0]  io_d_in_30_b,
  input  [63:0]  io_d_in_31_a,
  input  [63:0]  io_d_in_31_b,
  output [63:0]  io_d_out_0_a,
  output [63:0]  io_d_out_0_b,
  output [63:0]  io_d_out_1_a,
  output [63:0]  io_d_out_1_b,
  output [63:0]  io_d_out_2_a,
  output [63:0]  io_d_out_2_b,
  output [63:0]  io_d_out_3_a,
  output [63:0]  io_d_out_3_b,
  output [63:0]  io_d_out_4_a,
  output [63:0]  io_d_out_4_b,
  output [63:0]  io_d_out_5_a,
  output [63:0]  io_d_out_5_b,
  output [63:0]  io_d_out_6_a,
  output [63:0]  io_d_out_6_b,
  output [63:0]  io_d_out_7_a,
  output [63:0]  io_d_out_7_b,
  output [63:0]  io_d_out_8_a,
  output [63:0]  io_d_out_8_b,
  output [63:0]  io_d_out_9_a,
  output [63:0]  io_d_out_9_b,
  output [63:0]  io_d_out_10_a,
  output [63:0]  io_d_out_10_b,
  output [63:0]  io_d_out_11_a,
  output [63:0]  io_d_out_11_b,
  output [63:0]  io_d_out_12_a,
  output [63:0]  io_d_out_12_b,
  output [63:0]  io_d_out_13_a,
  output [63:0]  io_d_out_13_b,
  output [63:0]  io_d_out_14_a,
  output [63:0]  io_d_out_14_b,
  output [63:0]  io_d_out_15_a,
  output [63:0]  io_d_out_15_b,
  output [63:0]  io_d_out_16_a,
  output [63:0]  io_d_out_16_b,
  output [63:0]  io_d_out_17_a,
  output [63:0]  io_d_out_17_b,
  output [63:0]  io_d_out_18_a,
  output [63:0]  io_d_out_18_b,
  output [63:0]  io_d_out_19_a,
  output [63:0]  io_d_out_19_b,
  output [63:0]  io_d_out_20_a,
  output [63:0]  io_d_out_20_b,
  output [63:0]  io_d_out_21_a,
  output [63:0]  io_d_out_21_b,
  output [63:0]  io_d_out_22_a,
  output [63:0]  io_d_out_22_b,
  output [63:0]  io_d_out_23_a,
  output [63:0]  io_d_out_23_b,
  output [63:0]  io_d_out_24_a,
  output [63:0]  io_d_out_24_b,
  output [63:0]  io_d_out_25_a,
  output [63:0]  io_d_out_25_b,
  output [63:0]  io_d_out_26_a,
  output [63:0]  io_d_out_26_b,
  output [63:0]  io_d_out_27_a,
  output [63:0]  io_d_out_27_b,
  output [63:0]  io_d_out_28_a,
  output [63:0]  io_d_out_28_b,
  output [63:0]  io_d_out_29_a,
  output [63:0]  io_d_out_29_b,
  output [63:0]  io_d_out_30_a,
  output [63:0]  io_d_out_30_b,
  output [63:0]  io_d_out_31_a,
  output [63:0]  io_d_out_31_b,
  input          io_wr_en_mem1,
  input          io_wr_en_mem2,
  input  [127:0] io_wr_instr_mem1,
  input  [127:0] io_wr_instr_mem2,
  input          io_run
);
`ifdef RANDOMIZE_MEM_INIT
  reg [127:0] _RAND_0;
  reg [127:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [127:0] _RAND_6;
  reg [127:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
`endif // RANDOMIZE_REG_INIT
  reg [127:0] Mem1 [0:255]; // @[BuildingBlock.scala 174:17]
  wire [127:0] Mem1_instr1_MPORT_data; // @[BuildingBlock.scala 174:17]
  wire [7:0] Mem1_instr1_MPORT_addr; // @[BuildingBlock.scala 174:17]
  wire [127:0] Mem1_instr1_MPORT_1_data; // @[BuildingBlock.scala 174:17]
  wire [7:0] Mem1_instr1_MPORT_1_addr; // @[BuildingBlock.scala 174:17]
  wire [127:0] Mem1_instr1_MPORT_2_data; // @[BuildingBlock.scala 174:17]
  wire [7:0] Mem1_instr1_MPORT_2_addr; // @[BuildingBlock.scala 174:17]
  wire [127:0] Mem1_instr1_MPORT_3_data; // @[BuildingBlock.scala 174:17]
  wire [7:0] Mem1_instr1_MPORT_3_addr; // @[BuildingBlock.scala 174:17]
  wire [127:0] Mem1_MPORT_data; // @[BuildingBlock.scala 174:17]
  wire [7:0] Mem1_MPORT_addr; // @[BuildingBlock.scala 174:17]
  wire  Mem1_MPORT_mask; // @[BuildingBlock.scala 174:17]
  wire  Mem1_MPORT_en; // @[BuildingBlock.scala 174:17]
  reg [127:0] Mem2 [0:255]; // @[BuildingBlock.scala 175:17]
  wire [127:0] Mem2_instr2_MPORT_data; // @[BuildingBlock.scala 175:17]
  wire [7:0] Mem2_instr2_MPORT_addr; // @[BuildingBlock.scala 175:17]
  wire [127:0] Mem2_instr2_MPORT_1_data; // @[BuildingBlock.scala 175:17]
  wire [7:0] Mem2_instr2_MPORT_1_addr; // @[BuildingBlock.scala 175:17]
  wire [127:0] Mem2_instr2_MPORT_2_data; // @[BuildingBlock.scala 175:17]
  wire [7:0] Mem2_instr2_MPORT_2_addr; // @[BuildingBlock.scala 175:17]
  wire [127:0] Mem2_instr2_MPORT_3_data; // @[BuildingBlock.scala 175:17]
  wire [7:0] Mem2_instr2_MPORT_3_addr; // @[BuildingBlock.scala 175:17]
  wire [127:0] Mem2_MPORT_1_data; // @[BuildingBlock.scala 175:17]
  wire [7:0] Mem2_MPORT_1_addr; // @[BuildingBlock.scala 175:17]
  wire  Mem2_MPORT_1_mask; // @[BuildingBlock.scala 175:17]
  wire  Mem2_MPORT_1_en; // @[BuildingBlock.scala 175:17]
  wire  peCol_clock; // @[BuildingBlock.scala 185:21]
  wire  peCol_reset; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_0_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_0_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_1_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_1_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_2_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_2_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_3_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_3_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_4_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_4_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_5_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_5_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_6_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_6_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_7_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_7_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_8_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_8_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_9_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_9_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_10_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_10_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_11_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_11_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_12_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_12_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_13_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_13_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_14_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_14_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_15_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_15_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_16_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_16_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_17_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_17_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_18_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_18_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_19_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_19_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_20_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_20_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_21_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_21_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_22_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_22_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_23_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_23_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_24_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_24_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_25_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_25_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_26_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_26_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_27_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_27_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_28_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_28_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_29_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_29_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_30_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_30_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_31_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_in_31_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_0_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_0_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_1_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_1_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_2_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_2_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_3_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_3_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_4_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_4_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_5_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_5_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_6_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_6_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_7_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_7_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_8_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_8_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_9_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_9_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_10_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_10_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_11_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_11_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_12_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_12_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_13_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_13_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_14_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_14_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_15_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_15_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_16_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_16_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_17_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_17_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_18_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_18_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_19_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_19_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_20_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_20_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_21_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_21_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_22_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_22_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_23_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_23_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_24_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_24_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_25_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_25_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_26_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_26_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_27_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_27_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_28_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_28_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_29_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_29_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_30_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_30_b; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_31_a; // @[BuildingBlock.scala 185:21]
  wire [63:0] peCol_io_d_out_31_b; // @[BuildingBlock.scala 185:21]
  wire [127:0] peCol_io_instr; // @[BuildingBlock.scala 185:21]
  wire  ingress1_clock; // @[BuildingBlock.scala 186:24]
  wire  ingress1_reset; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_0; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_1; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_2; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_3; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_4; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_5; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_6; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_7; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_8; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_9; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_10; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_11; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_12; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_13; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_14; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_15; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_16; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_17; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_18; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_19; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_20; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_21; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_22; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_23; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_24; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_25; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_26; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_27; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_28; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_29; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_30; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_31; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_32; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_33; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_34; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_35; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_36; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_37; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_38; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_39; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_40; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_41; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_42; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_43; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_44; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_45; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_46; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_47; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_48; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_49; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_50; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_51; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_52; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_53; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_54; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_55; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_56; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_57; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_58; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_59; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_60; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_61; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_62; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_in64_63; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_0; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_1; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_2; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_3; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_4; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_5; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_6; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_7; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_8; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_9; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_10; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_11; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_12; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_13; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_14; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_15; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_16; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_17; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_18; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_19; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_20; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_21; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_22; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_23; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_24; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_25; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_26; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_27; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_28; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_29; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_30; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_31; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_32; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_33; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_34; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_35; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_36; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_37; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_38; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_39; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_40; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_41; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_42; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_43; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_44; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_45; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_46; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_47; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_48; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_49; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_50; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_51; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_52; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_53; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_54; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_55; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_56; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_57; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_58; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_59; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_60; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_61; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_62; // @[BuildingBlock.scala 186:24]
  wire [63:0] ingress1_io_out64_63; // @[BuildingBlock.scala 186:24]
  wire [127:0] ingress1_io_ctrl; // @[BuildingBlock.scala 186:24]
  wire  ingress2_clock; // @[BuildingBlock.scala 187:24]
  wire  ingress2_reset; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_0; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_1; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_2; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_3; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_4; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_5; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_6; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_7; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_8; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_9; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_10; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_11; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_12; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_13; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_14; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_15; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_16; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_17; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_18; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_19; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_20; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_21; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_22; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_23; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_24; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_25; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_26; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_27; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_28; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_29; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_30; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_31; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_32; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_33; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_34; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_35; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_36; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_37; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_38; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_39; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_40; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_41; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_42; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_43; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_44; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_45; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_46; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_47; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_48; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_49; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_50; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_51; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_52; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_53; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_54; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_55; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_56; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_57; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_58; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_59; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_60; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_61; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_62; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_in64_63; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_0; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_1; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_2; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_3; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_4; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_5; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_6; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_7; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_8; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_9; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_10; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_11; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_12; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_13; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_14; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_15; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_16; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_17; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_18; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_19; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_20; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_21; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_22; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_23; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_24; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_25; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_26; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_27; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_28; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_29; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_30; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_31; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_32; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_33; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_34; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_35; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_36; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_37; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_38; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_39; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_40; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_41; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_42; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_43; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_44; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_45; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_46; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_47; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_48; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_49; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_50; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_51; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_52; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_53; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_54; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_55; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_56; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_57; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_58; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_59; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_60; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_61; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_62; // @[BuildingBlock.scala 187:24]
  wire [63:0] ingress2_io_out64_63; // @[BuildingBlock.scala 187:24]
  wire [127:0] ingress2_io_ctrl; // @[BuildingBlock.scala 187:24]
  wire  middle_clock; // @[BuildingBlock.scala 188:22]
  wire  middle_reset; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_0; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_1; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_2; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_3; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_4; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_5; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_6; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_7; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_8; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_9; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_10; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_11; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_12; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_13; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_14; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_15; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_16; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_17; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_18; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_19; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_20; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_21; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_22; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_23; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_24; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_25; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_26; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_27; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_28; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_29; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_30; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_31; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_32; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_33; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_34; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_35; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_36; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_37; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_38; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_39; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_40; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_41; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_42; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_43; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_44; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_45; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_46; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_47; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_48; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_49; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_50; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_51; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_52; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_53; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_54; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_55; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_56; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_57; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_58; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_59; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_60; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_61; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_62; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_in64_63; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_0; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_1; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_2; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_3; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_4; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_5; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_6; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_7; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_8; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_9; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_10; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_11; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_12; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_13; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_14; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_15; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_16; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_17; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_18; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_19; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_20; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_21; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_22; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_23; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_24; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_25; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_26; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_27; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_28; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_29; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_30; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_31; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_32; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_33; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_34; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_35; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_36; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_37; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_38; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_39; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_40; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_41; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_42; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_43; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_44; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_45; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_46; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_47; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_48; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_49; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_50; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_51; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_52; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_53; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_54; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_55; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_56; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_57; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_58; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_59; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_60; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_61; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_62; // @[BuildingBlock.scala 188:22]
  wire [63:0] middle_io_out64_63; // @[BuildingBlock.scala 188:22]
  wire [127:0] middle_io_ctrl; // @[BuildingBlock.scala 188:22]
  wire  egress1_clock; // @[BuildingBlock.scala 189:23]
  wire  egress1_reset; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_0; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_1; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_2; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_3; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_4; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_5; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_6; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_7; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_8; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_9; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_10; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_11; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_12; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_13; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_14; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_15; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_16; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_17; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_18; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_19; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_20; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_21; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_22; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_23; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_24; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_25; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_26; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_27; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_28; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_29; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_30; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_31; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_32; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_33; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_34; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_35; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_36; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_37; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_38; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_39; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_40; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_41; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_42; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_43; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_44; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_45; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_46; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_47; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_48; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_49; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_50; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_51; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_52; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_53; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_54; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_55; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_56; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_57; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_58; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_59; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_60; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_61; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_62; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_in64_63; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_0; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_1; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_2; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_3; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_4; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_5; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_6; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_7; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_8; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_9; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_10; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_11; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_12; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_13; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_14; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_15; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_16; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_17; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_18; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_19; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_20; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_21; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_22; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_23; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_24; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_25; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_26; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_27; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_28; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_29; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_30; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_31; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_32; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_33; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_34; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_35; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_36; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_37; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_38; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_39; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_40; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_41; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_42; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_43; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_44; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_45; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_46; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_47; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_48; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_49; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_50; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_51; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_52; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_53; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_54; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_55; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_56; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_57; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_58; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_59; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_60; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_61; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_62; // @[BuildingBlock.scala 189:23]
  wire [63:0] egress1_io_out64_63; // @[BuildingBlock.scala 189:23]
  wire [127:0] egress1_io_ctrl; // @[BuildingBlock.scala 189:23]
  wire  egress2_clock; // @[BuildingBlock.scala 190:23]
  wire  egress2_reset; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_0; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_1; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_2; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_3; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_4; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_5; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_6; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_7; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_8; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_9; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_10; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_11; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_12; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_13; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_14; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_15; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_16; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_17; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_18; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_19; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_20; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_21; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_22; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_23; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_24; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_25; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_26; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_27; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_28; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_29; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_30; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_31; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_32; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_33; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_34; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_35; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_36; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_37; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_38; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_39; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_40; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_41; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_42; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_43; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_44; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_45; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_46; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_47; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_48; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_49; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_50; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_51; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_52; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_53; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_54; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_55; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_56; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_57; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_58; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_59; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_60; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_61; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_62; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_in64_63; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_0; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_1; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_2; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_3; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_4; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_5; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_6; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_7; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_8; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_9; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_10; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_11; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_12; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_13; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_14; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_15; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_16; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_17; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_18; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_19; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_20; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_21; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_22; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_23; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_24; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_25; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_26; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_27; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_28; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_29; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_30; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_31; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_32; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_33; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_34; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_35; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_36; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_37; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_38; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_39; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_40; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_41; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_42; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_43; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_44; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_45; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_46; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_47; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_48; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_49; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_50; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_51; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_52; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_53; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_54; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_55; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_56; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_57; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_58; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_59; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_60; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_61; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_62; // @[BuildingBlock.scala 190:23]
  wire [63:0] egress2_io_out64_63; // @[BuildingBlock.scala 190:23]
  wire [127:0] egress2_io_ctrl; // @[BuildingBlock.scala 190:23]
  reg [7:0] PC1; // @[BuildingBlock.scala 176:20]
  reg [7:0] PC2; // @[BuildingBlock.scala 177:20]
  reg [7:0] wrAddr1; // @[BuildingBlock.scala 178:24]
  reg [7:0] wrAddr2; // @[BuildingBlock.scala 179:24]
  reg [127:0] instr1; // @[BuildingBlock.scala 180:23]
  reg [127:0] instr2; // @[BuildingBlock.scala 181:23]
  reg  run_Reg_REG; // @[BuildingBlock.scala 183:40]
  reg  run_Reg_REG_1; // @[BuildingBlock.scala 183:32]
  reg  run_Reg; // @[BuildingBlock.scala 183:24]
  reg [1:0] stageReg1; // @[BuildingBlock.scala 194:26]
  reg [1:0] stageReg2; // @[BuildingBlock.scala 195:26]
  wire  _T = 2'h0 == stageReg1; // @[Conditional.scala 37:30]
  wire [7:0] _PC1_T_1 = PC1 + 8'h1; // @[BuildingBlock.scala 201:20]
  wire  _T_1 = 2'h1 == stageReg1; // @[Conditional.scala 37:30]
  wire  _T_2 = ~io_run; // @[BuildingBlock.scala 206:12]
  wire [7:0] _GEN_7 = ~io_run ? PC1 : _PC1_T_1; // @[BuildingBlock.scala 206:21 BuildingBlock.scala 176:20 BuildingBlock.scala 210:13]
  wire  _GEN_10 = ~io_run ? 1'h0 : 1'h1; // @[BuildingBlock.scala 206:21 BuildingBlock.scala 174:17 BuildingBlock.scala 211:23]
  wire  _T_3 = 2'h2 == stageReg1; // @[Conditional.scala 37:30]
  wire [1:0] _GEN_12 = _T_2 ? 2'h0 : 2'h3; // @[BuildingBlock.scala 215:21 BuildingBlock.scala 216:19 BuildingBlock.scala 218:19]
  wire [127:0] _GEN_17 = _T_2 ? instr1 : Mem1_instr1_MPORT_2_data; // @[BuildingBlock.scala 215:21 BuildingBlock.scala 180:23 BuildingBlock.scala 220:16]
  wire  _T_5 = 2'h3 == stageReg1; // @[Conditional.scala 37:30]
  wire [1:0] _GEN_18 = _T_2 ? 2'h0 : 2'h1; // @[BuildingBlock.scala 224:21 BuildingBlock.scala 225:19 BuildingBlock.scala 227:19]
  wire [127:0] _GEN_23 = _T_2 ? instr1 : Mem1_instr1_MPORT_3_data; // @[BuildingBlock.scala 224:21 BuildingBlock.scala 180:23 BuildingBlock.scala 229:16]
  wire [1:0] _GEN_24 = _T_5 ? _GEN_18 : stageReg1; // @[Conditional.scala 39:67 BuildingBlock.scala 194:26]
  wire [7:0] _GEN_25 = _T_5 ? _GEN_7 : PC1; // @[Conditional.scala 39:67 BuildingBlock.scala 176:20]
  wire [127:0] _GEN_29 = _T_5 ? _GEN_23 : instr1; // @[Conditional.scala 39:67 BuildingBlock.scala 180:23]
  wire  _GEN_38 = _T_3 ? 1'h0 : _T_5 & _GEN_10; // @[Conditional.scala 39:67 BuildingBlock.scala 174:17]
  wire  _GEN_43 = _T_1 & _GEN_10; // @[Conditional.scala 39:67 BuildingBlock.scala 174:17]
  wire  _GEN_47 = _T_1 ? 1'h0 : _T_3 & _GEN_10; // @[Conditional.scala 39:67 BuildingBlock.scala 174:17]
  wire  _GEN_50 = _T_1 ? 1'h0 : _GEN_38; // @[Conditional.scala 39:67 BuildingBlock.scala 174:17]
  wire  _T_7 = 2'h0 == stageReg2; // @[Conditional.scala 37:30]
  wire [7:0] _PC2_T_1 = PC2 + 8'h1; // @[BuildingBlock.scala 243:20]
  wire  _T_8 = 2'h1 == stageReg2; // @[Conditional.scala 37:30]
  wire  _T_9 = ~run_Reg; // @[BuildingBlock.scala 248:12]
  wire [7:0] _GEN_73 = ~run_Reg ? PC2 : _PC2_T_1; // @[BuildingBlock.scala 248:22 BuildingBlock.scala 177:20 BuildingBlock.scala 252:13]
  wire  _GEN_76 = ~run_Reg ? 1'h0 : 1'h1; // @[BuildingBlock.scala 248:22 BuildingBlock.scala 175:17 BuildingBlock.scala 253:23]
  wire  _T_10 = 2'h2 == stageReg2; // @[Conditional.scala 37:30]
  wire [1:0] _GEN_78 = _T_9 ? 2'h0 : 2'h3; // @[BuildingBlock.scala 257:22 BuildingBlock.scala 258:19 BuildingBlock.scala 260:19]
  wire [127:0] _GEN_83 = _T_9 ? instr2 : Mem2_instr2_MPORT_2_data; // @[BuildingBlock.scala 257:22 BuildingBlock.scala 181:23 BuildingBlock.scala 262:16]
  wire  _T_12 = 2'h3 == stageReg2; // @[Conditional.scala 37:30]
  wire [1:0] _GEN_84 = _T_9 ? 2'h0 : 2'h1; // @[BuildingBlock.scala 266:22 BuildingBlock.scala 267:19 BuildingBlock.scala 269:19]
  wire [127:0] _GEN_89 = _T_9 ? instr2 : Mem2_instr2_MPORT_3_data; // @[BuildingBlock.scala 266:22 BuildingBlock.scala 181:23 BuildingBlock.scala 271:16]
  wire [1:0] _GEN_90 = _T_12 ? _GEN_84 : stageReg2; // @[Conditional.scala 39:67 BuildingBlock.scala 195:26]
  wire [7:0] _GEN_91 = _T_12 ? _GEN_73 : PC2; // @[Conditional.scala 39:67 BuildingBlock.scala 177:20]
  wire [127:0] _GEN_95 = _T_12 ? _GEN_89 : instr2; // @[Conditional.scala 39:67 BuildingBlock.scala 181:23]
  wire  _GEN_104 = _T_10 ? 1'h0 : _T_12 & _GEN_76; // @[Conditional.scala 39:67 BuildingBlock.scala 175:17]
  wire  _GEN_109 = _T_8 & _GEN_76; // @[Conditional.scala 39:67 BuildingBlock.scala 175:17]
  wire  _GEN_113 = _T_8 ? 1'h0 : _T_10 & _GEN_76; // @[Conditional.scala 39:67 BuildingBlock.scala 175:17]
  wire  _GEN_116 = _T_8 ? 1'h0 : _GEN_104; // @[Conditional.scala 39:67 BuildingBlock.scala 175:17]
  wire [7:0] _wrAddr1_T_1 = wrAddr1 + 8'h1; // @[BuildingBlock.scala 287:24]
  wire [7:0] _wrAddr2_T_1 = wrAddr2 + 8'h1; // @[BuildingBlock.scala 291:24]
  PEcol peCol ( // @[BuildingBlock.scala 185:21]
    .clock(peCol_clock),
    .reset(peCol_reset),
    .io_d_in_0_a(peCol_io_d_in_0_a),
    .io_d_in_0_b(peCol_io_d_in_0_b),
    .io_d_in_1_a(peCol_io_d_in_1_a),
    .io_d_in_1_b(peCol_io_d_in_1_b),
    .io_d_in_2_a(peCol_io_d_in_2_a),
    .io_d_in_2_b(peCol_io_d_in_2_b),
    .io_d_in_3_a(peCol_io_d_in_3_a),
    .io_d_in_3_b(peCol_io_d_in_3_b),
    .io_d_in_4_a(peCol_io_d_in_4_a),
    .io_d_in_4_b(peCol_io_d_in_4_b),
    .io_d_in_5_a(peCol_io_d_in_5_a),
    .io_d_in_5_b(peCol_io_d_in_5_b),
    .io_d_in_6_a(peCol_io_d_in_6_a),
    .io_d_in_6_b(peCol_io_d_in_6_b),
    .io_d_in_7_a(peCol_io_d_in_7_a),
    .io_d_in_7_b(peCol_io_d_in_7_b),
    .io_d_in_8_a(peCol_io_d_in_8_a),
    .io_d_in_8_b(peCol_io_d_in_8_b),
    .io_d_in_9_a(peCol_io_d_in_9_a),
    .io_d_in_9_b(peCol_io_d_in_9_b),
    .io_d_in_10_a(peCol_io_d_in_10_a),
    .io_d_in_10_b(peCol_io_d_in_10_b),
    .io_d_in_11_a(peCol_io_d_in_11_a),
    .io_d_in_11_b(peCol_io_d_in_11_b),
    .io_d_in_12_a(peCol_io_d_in_12_a),
    .io_d_in_12_b(peCol_io_d_in_12_b),
    .io_d_in_13_a(peCol_io_d_in_13_a),
    .io_d_in_13_b(peCol_io_d_in_13_b),
    .io_d_in_14_a(peCol_io_d_in_14_a),
    .io_d_in_14_b(peCol_io_d_in_14_b),
    .io_d_in_15_a(peCol_io_d_in_15_a),
    .io_d_in_15_b(peCol_io_d_in_15_b),
    .io_d_in_16_a(peCol_io_d_in_16_a),
    .io_d_in_16_b(peCol_io_d_in_16_b),
    .io_d_in_17_a(peCol_io_d_in_17_a),
    .io_d_in_17_b(peCol_io_d_in_17_b),
    .io_d_in_18_a(peCol_io_d_in_18_a),
    .io_d_in_18_b(peCol_io_d_in_18_b),
    .io_d_in_19_a(peCol_io_d_in_19_a),
    .io_d_in_19_b(peCol_io_d_in_19_b),
    .io_d_in_20_a(peCol_io_d_in_20_a),
    .io_d_in_20_b(peCol_io_d_in_20_b),
    .io_d_in_21_a(peCol_io_d_in_21_a),
    .io_d_in_21_b(peCol_io_d_in_21_b),
    .io_d_in_22_a(peCol_io_d_in_22_a),
    .io_d_in_22_b(peCol_io_d_in_22_b),
    .io_d_in_23_a(peCol_io_d_in_23_a),
    .io_d_in_23_b(peCol_io_d_in_23_b),
    .io_d_in_24_a(peCol_io_d_in_24_a),
    .io_d_in_24_b(peCol_io_d_in_24_b),
    .io_d_in_25_a(peCol_io_d_in_25_a),
    .io_d_in_25_b(peCol_io_d_in_25_b),
    .io_d_in_26_a(peCol_io_d_in_26_a),
    .io_d_in_26_b(peCol_io_d_in_26_b),
    .io_d_in_27_a(peCol_io_d_in_27_a),
    .io_d_in_27_b(peCol_io_d_in_27_b),
    .io_d_in_28_a(peCol_io_d_in_28_a),
    .io_d_in_28_b(peCol_io_d_in_28_b),
    .io_d_in_29_a(peCol_io_d_in_29_a),
    .io_d_in_29_b(peCol_io_d_in_29_b),
    .io_d_in_30_a(peCol_io_d_in_30_a),
    .io_d_in_30_b(peCol_io_d_in_30_b),
    .io_d_in_31_a(peCol_io_d_in_31_a),
    .io_d_in_31_b(peCol_io_d_in_31_b),
    .io_d_out_0_a(peCol_io_d_out_0_a),
    .io_d_out_0_b(peCol_io_d_out_0_b),
    .io_d_out_1_a(peCol_io_d_out_1_a),
    .io_d_out_1_b(peCol_io_d_out_1_b),
    .io_d_out_2_a(peCol_io_d_out_2_a),
    .io_d_out_2_b(peCol_io_d_out_2_b),
    .io_d_out_3_a(peCol_io_d_out_3_a),
    .io_d_out_3_b(peCol_io_d_out_3_b),
    .io_d_out_4_a(peCol_io_d_out_4_a),
    .io_d_out_4_b(peCol_io_d_out_4_b),
    .io_d_out_5_a(peCol_io_d_out_5_a),
    .io_d_out_5_b(peCol_io_d_out_5_b),
    .io_d_out_6_a(peCol_io_d_out_6_a),
    .io_d_out_6_b(peCol_io_d_out_6_b),
    .io_d_out_7_a(peCol_io_d_out_7_a),
    .io_d_out_7_b(peCol_io_d_out_7_b),
    .io_d_out_8_a(peCol_io_d_out_8_a),
    .io_d_out_8_b(peCol_io_d_out_8_b),
    .io_d_out_9_a(peCol_io_d_out_9_a),
    .io_d_out_9_b(peCol_io_d_out_9_b),
    .io_d_out_10_a(peCol_io_d_out_10_a),
    .io_d_out_10_b(peCol_io_d_out_10_b),
    .io_d_out_11_a(peCol_io_d_out_11_a),
    .io_d_out_11_b(peCol_io_d_out_11_b),
    .io_d_out_12_a(peCol_io_d_out_12_a),
    .io_d_out_12_b(peCol_io_d_out_12_b),
    .io_d_out_13_a(peCol_io_d_out_13_a),
    .io_d_out_13_b(peCol_io_d_out_13_b),
    .io_d_out_14_a(peCol_io_d_out_14_a),
    .io_d_out_14_b(peCol_io_d_out_14_b),
    .io_d_out_15_a(peCol_io_d_out_15_a),
    .io_d_out_15_b(peCol_io_d_out_15_b),
    .io_d_out_16_a(peCol_io_d_out_16_a),
    .io_d_out_16_b(peCol_io_d_out_16_b),
    .io_d_out_17_a(peCol_io_d_out_17_a),
    .io_d_out_17_b(peCol_io_d_out_17_b),
    .io_d_out_18_a(peCol_io_d_out_18_a),
    .io_d_out_18_b(peCol_io_d_out_18_b),
    .io_d_out_19_a(peCol_io_d_out_19_a),
    .io_d_out_19_b(peCol_io_d_out_19_b),
    .io_d_out_20_a(peCol_io_d_out_20_a),
    .io_d_out_20_b(peCol_io_d_out_20_b),
    .io_d_out_21_a(peCol_io_d_out_21_a),
    .io_d_out_21_b(peCol_io_d_out_21_b),
    .io_d_out_22_a(peCol_io_d_out_22_a),
    .io_d_out_22_b(peCol_io_d_out_22_b),
    .io_d_out_23_a(peCol_io_d_out_23_a),
    .io_d_out_23_b(peCol_io_d_out_23_b),
    .io_d_out_24_a(peCol_io_d_out_24_a),
    .io_d_out_24_b(peCol_io_d_out_24_b),
    .io_d_out_25_a(peCol_io_d_out_25_a),
    .io_d_out_25_b(peCol_io_d_out_25_b),
    .io_d_out_26_a(peCol_io_d_out_26_a),
    .io_d_out_26_b(peCol_io_d_out_26_b),
    .io_d_out_27_a(peCol_io_d_out_27_a),
    .io_d_out_27_b(peCol_io_d_out_27_b),
    .io_d_out_28_a(peCol_io_d_out_28_a),
    .io_d_out_28_b(peCol_io_d_out_28_b),
    .io_d_out_29_a(peCol_io_d_out_29_a),
    .io_d_out_29_b(peCol_io_d_out_29_b),
    .io_d_out_30_a(peCol_io_d_out_30_a),
    .io_d_out_30_b(peCol_io_d_out_30_b),
    .io_d_out_31_a(peCol_io_d_out_31_a),
    .io_d_out_31_b(peCol_io_d_out_31_b),
    .io_instr(peCol_io_instr)
  );
  CLOSingress1 ingress1 ( // @[BuildingBlock.scala 186:24]
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
    .io_ctrl(ingress1_io_ctrl)
  );
  CLOSingress2 ingress2 ( // @[BuildingBlock.scala 187:24]
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
    .io_ctrl(ingress2_io_ctrl)
  );
  CLOSingress2 middle ( // @[BuildingBlock.scala 188:22]
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
    .io_ctrl(middle_io_ctrl)
  );
  CLOSingress1 egress1 ( // @[BuildingBlock.scala 189:23]
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
    .io_ctrl(egress1_io_ctrl)
  );
  CLOSegress2 egress2 ( // @[BuildingBlock.scala 190:23]
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
    .io_ctrl(egress2_io_ctrl)
  );
  assign Mem1_instr1_MPORT_addr = PC1;
  assign Mem1_instr1_MPORT_data = Mem1[Mem1_instr1_MPORT_addr]; // @[BuildingBlock.scala 174:17]
  assign Mem1_instr1_MPORT_1_addr = PC1;
  assign Mem1_instr1_MPORT_1_data = Mem1[Mem1_instr1_MPORT_1_addr]; // @[BuildingBlock.scala 174:17]
  assign Mem1_instr1_MPORT_2_addr = PC1;
  assign Mem1_instr1_MPORT_2_data = Mem1[Mem1_instr1_MPORT_2_addr]; // @[BuildingBlock.scala 174:17]
  assign Mem1_instr1_MPORT_3_addr = PC1;
  assign Mem1_instr1_MPORT_3_data = Mem1[Mem1_instr1_MPORT_3_addr]; // @[BuildingBlock.scala 174:17]
  assign Mem1_MPORT_data = io_wr_instr_mem1;
  assign Mem1_MPORT_addr = wrAddr1;
  assign Mem1_MPORT_mask = 1'h1;
  assign Mem1_MPORT_en = io_wr_en_mem1;
  assign Mem2_instr2_MPORT_addr = PC2;
  assign Mem2_instr2_MPORT_data = Mem2[Mem2_instr2_MPORT_addr]; // @[BuildingBlock.scala 175:17]
  assign Mem2_instr2_MPORT_1_addr = PC2;
  assign Mem2_instr2_MPORT_1_data = Mem2[Mem2_instr2_MPORT_1_addr]; // @[BuildingBlock.scala 175:17]
  assign Mem2_instr2_MPORT_2_addr = PC2;
  assign Mem2_instr2_MPORT_2_data = Mem2[Mem2_instr2_MPORT_2_addr]; // @[BuildingBlock.scala 175:17]
  assign Mem2_instr2_MPORT_3_addr = PC2;
  assign Mem2_instr2_MPORT_3_data = Mem2[Mem2_instr2_MPORT_3_addr]; // @[BuildingBlock.scala 175:17]
  assign Mem2_MPORT_1_data = io_wr_instr_mem2;
  assign Mem2_MPORT_1_addr = wrAddr2;
  assign Mem2_MPORT_1_mask = 1'h1;
  assign Mem2_MPORT_1_en = io_wr_en_mem2;
  assign io_d_out_0_a = egress2_io_out64_0; // @[BuildingBlock.scala 311:19]
  assign io_d_out_0_b = egress2_io_out64_1; // @[BuildingBlock.scala 312:19]
  assign io_d_out_1_a = egress2_io_out64_2; // @[BuildingBlock.scala 311:19]
  assign io_d_out_1_b = egress2_io_out64_3; // @[BuildingBlock.scala 312:19]
  assign io_d_out_2_a = egress2_io_out64_4; // @[BuildingBlock.scala 311:19]
  assign io_d_out_2_b = egress2_io_out64_5; // @[BuildingBlock.scala 312:19]
  assign io_d_out_3_a = egress2_io_out64_6; // @[BuildingBlock.scala 311:19]
  assign io_d_out_3_b = egress2_io_out64_7; // @[BuildingBlock.scala 312:19]
  assign io_d_out_4_a = egress2_io_out64_8; // @[BuildingBlock.scala 311:19]
  assign io_d_out_4_b = egress2_io_out64_9; // @[BuildingBlock.scala 312:19]
  assign io_d_out_5_a = egress2_io_out64_10; // @[BuildingBlock.scala 311:19]
  assign io_d_out_5_b = egress2_io_out64_11; // @[BuildingBlock.scala 312:19]
  assign io_d_out_6_a = egress2_io_out64_12; // @[BuildingBlock.scala 311:19]
  assign io_d_out_6_b = egress2_io_out64_13; // @[BuildingBlock.scala 312:19]
  assign io_d_out_7_a = egress2_io_out64_14; // @[BuildingBlock.scala 311:19]
  assign io_d_out_7_b = egress2_io_out64_15; // @[BuildingBlock.scala 312:19]
  assign io_d_out_8_a = egress2_io_out64_16; // @[BuildingBlock.scala 311:19]
  assign io_d_out_8_b = egress2_io_out64_17; // @[BuildingBlock.scala 312:19]
  assign io_d_out_9_a = egress2_io_out64_18; // @[BuildingBlock.scala 311:19]
  assign io_d_out_9_b = egress2_io_out64_19; // @[BuildingBlock.scala 312:19]
  assign io_d_out_10_a = egress2_io_out64_20; // @[BuildingBlock.scala 311:19]
  assign io_d_out_10_b = egress2_io_out64_21; // @[BuildingBlock.scala 312:19]
  assign io_d_out_11_a = egress2_io_out64_22; // @[BuildingBlock.scala 311:19]
  assign io_d_out_11_b = egress2_io_out64_23; // @[BuildingBlock.scala 312:19]
  assign io_d_out_12_a = egress2_io_out64_24; // @[BuildingBlock.scala 311:19]
  assign io_d_out_12_b = egress2_io_out64_25; // @[BuildingBlock.scala 312:19]
  assign io_d_out_13_a = egress2_io_out64_26; // @[BuildingBlock.scala 311:19]
  assign io_d_out_13_b = egress2_io_out64_27; // @[BuildingBlock.scala 312:19]
  assign io_d_out_14_a = egress2_io_out64_28; // @[BuildingBlock.scala 311:19]
  assign io_d_out_14_b = egress2_io_out64_29; // @[BuildingBlock.scala 312:19]
  assign io_d_out_15_a = egress2_io_out64_30; // @[BuildingBlock.scala 311:19]
  assign io_d_out_15_b = egress2_io_out64_31; // @[BuildingBlock.scala 312:19]
  assign io_d_out_16_a = egress2_io_out64_32; // @[BuildingBlock.scala 311:19]
  assign io_d_out_16_b = egress2_io_out64_33; // @[BuildingBlock.scala 312:19]
  assign io_d_out_17_a = egress2_io_out64_34; // @[BuildingBlock.scala 311:19]
  assign io_d_out_17_b = egress2_io_out64_35; // @[BuildingBlock.scala 312:19]
  assign io_d_out_18_a = egress2_io_out64_36; // @[BuildingBlock.scala 311:19]
  assign io_d_out_18_b = egress2_io_out64_37; // @[BuildingBlock.scala 312:19]
  assign io_d_out_19_a = egress2_io_out64_38; // @[BuildingBlock.scala 311:19]
  assign io_d_out_19_b = egress2_io_out64_39; // @[BuildingBlock.scala 312:19]
  assign io_d_out_20_a = egress2_io_out64_40; // @[BuildingBlock.scala 311:19]
  assign io_d_out_20_b = egress2_io_out64_41; // @[BuildingBlock.scala 312:19]
  assign io_d_out_21_a = egress2_io_out64_42; // @[BuildingBlock.scala 311:19]
  assign io_d_out_21_b = egress2_io_out64_43; // @[BuildingBlock.scala 312:19]
  assign io_d_out_22_a = egress2_io_out64_44; // @[BuildingBlock.scala 311:19]
  assign io_d_out_22_b = egress2_io_out64_45; // @[BuildingBlock.scala 312:19]
  assign io_d_out_23_a = egress2_io_out64_46; // @[BuildingBlock.scala 311:19]
  assign io_d_out_23_b = egress2_io_out64_47; // @[BuildingBlock.scala 312:19]
  assign io_d_out_24_a = egress2_io_out64_48; // @[BuildingBlock.scala 311:19]
  assign io_d_out_24_b = egress2_io_out64_49; // @[BuildingBlock.scala 312:19]
  assign io_d_out_25_a = egress2_io_out64_50; // @[BuildingBlock.scala 311:19]
  assign io_d_out_25_b = egress2_io_out64_51; // @[BuildingBlock.scala 312:19]
  assign io_d_out_26_a = egress2_io_out64_52; // @[BuildingBlock.scala 311:19]
  assign io_d_out_26_b = egress2_io_out64_53; // @[BuildingBlock.scala 312:19]
  assign io_d_out_27_a = egress2_io_out64_54; // @[BuildingBlock.scala 311:19]
  assign io_d_out_27_b = egress2_io_out64_55; // @[BuildingBlock.scala 312:19]
  assign io_d_out_28_a = egress2_io_out64_56; // @[BuildingBlock.scala 311:19]
  assign io_d_out_28_b = egress2_io_out64_57; // @[BuildingBlock.scala 312:19]
  assign io_d_out_29_a = egress2_io_out64_58; // @[BuildingBlock.scala 311:19]
  assign io_d_out_29_b = egress2_io_out64_59; // @[BuildingBlock.scala 312:19]
  assign io_d_out_30_a = egress2_io_out64_60; // @[BuildingBlock.scala 311:19]
  assign io_d_out_30_b = egress2_io_out64_61; // @[BuildingBlock.scala 312:19]
  assign io_d_out_31_a = egress2_io_out64_62; // @[BuildingBlock.scala 311:19]
  assign io_d_out_31_b = egress2_io_out64_63; // @[BuildingBlock.scala 312:19]
  assign peCol_clock = clock;
  assign peCol_reset = reset;
  assign peCol_io_d_in_0_a = io_d_in_0_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_0_b = io_d_in_0_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_1_a = io_d_in_1_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_1_b = io_d_in_1_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_2_a = io_d_in_2_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_2_b = io_d_in_2_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_3_a = io_d_in_3_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_3_b = io_d_in_3_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_4_a = io_d_in_4_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_4_b = io_d_in_4_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_5_a = io_d_in_5_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_5_b = io_d_in_5_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_6_a = io_d_in_6_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_6_b = io_d_in_6_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_7_a = io_d_in_7_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_7_b = io_d_in_7_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_8_a = io_d_in_8_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_8_b = io_d_in_8_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_9_a = io_d_in_9_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_9_b = io_d_in_9_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_10_a = io_d_in_10_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_10_b = io_d_in_10_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_11_a = io_d_in_11_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_11_b = io_d_in_11_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_12_a = io_d_in_12_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_12_b = io_d_in_12_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_13_a = io_d_in_13_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_13_b = io_d_in_13_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_14_a = io_d_in_14_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_14_b = io_d_in_14_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_15_a = io_d_in_15_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_15_b = io_d_in_15_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_16_a = io_d_in_16_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_16_b = io_d_in_16_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_17_a = io_d_in_17_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_17_b = io_d_in_17_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_18_a = io_d_in_18_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_18_b = io_d_in_18_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_19_a = io_d_in_19_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_19_b = io_d_in_19_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_20_a = io_d_in_20_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_20_b = io_d_in_20_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_21_a = io_d_in_21_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_21_b = io_d_in_21_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_22_a = io_d_in_22_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_22_b = io_d_in_22_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_23_a = io_d_in_23_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_23_b = io_d_in_23_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_24_a = io_d_in_24_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_24_b = io_d_in_24_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_25_a = io_d_in_25_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_25_b = io_d_in_25_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_26_a = io_d_in_26_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_26_b = io_d_in_26_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_27_a = io_d_in_27_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_27_b = io_d_in_27_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_28_a = io_d_in_28_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_28_b = io_d_in_28_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_29_a = io_d_in_29_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_29_b = io_d_in_29_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_30_a = io_d_in_30_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_30_b = io_d_in_30_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_31_a = io_d_in_31_a; // @[BuildingBlock.scala 297:17]
  assign peCol_io_d_in_31_b = io_d_in_31_b; // @[BuildingBlock.scala 297:17]
  assign peCol_io_instr = stageReg1 == 2'h1 ? instr1 : 128'h0; // @[BuildingBlock.scala 234:24]
  assign ingress1_clock = clock;
  assign ingress1_reset = reset;
  assign ingress1_io_in64_0 = peCol_io_d_out_0_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_1 = peCol_io_d_out_0_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_2 = peCol_io_d_out_1_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_3 = peCol_io_d_out_1_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_4 = peCol_io_d_out_2_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_5 = peCol_io_d_out_2_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_6 = peCol_io_d_out_3_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_7 = peCol_io_d_out_3_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_8 = peCol_io_d_out_4_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_9 = peCol_io_d_out_4_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_10 = peCol_io_d_out_5_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_11 = peCol_io_d_out_5_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_12 = peCol_io_d_out_6_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_13 = peCol_io_d_out_6_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_14 = peCol_io_d_out_7_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_15 = peCol_io_d_out_7_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_16 = peCol_io_d_out_8_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_17 = peCol_io_d_out_8_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_18 = peCol_io_d_out_9_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_19 = peCol_io_d_out_9_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_20 = peCol_io_d_out_10_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_21 = peCol_io_d_out_10_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_22 = peCol_io_d_out_11_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_23 = peCol_io_d_out_11_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_24 = peCol_io_d_out_12_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_25 = peCol_io_d_out_12_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_26 = peCol_io_d_out_13_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_27 = peCol_io_d_out_13_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_28 = peCol_io_d_out_14_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_29 = peCol_io_d_out_14_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_30 = peCol_io_d_out_15_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_31 = peCol_io_d_out_15_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_32 = peCol_io_d_out_16_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_33 = peCol_io_d_out_16_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_34 = peCol_io_d_out_17_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_35 = peCol_io_d_out_17_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_36 = peCol_io_d_out_18_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_37 = peCol_io_d_out_18_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_38 = peCol_io_d_out_19_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_39 = peCol_io_d_out_19_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_40 = peCol_io_d_out_20_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_41 = peCol_io_d_out_20_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_42 = peCol_io_d_out_21_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_43 = peCol_io_d_out_21_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_44 = peCol_io_d_out_22_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_45 = peCol_io_d_out_22_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_46 = peCol_io_d_out_23_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_47 = peCol_io_d_out_23_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_48 = peCol_io_d_out_24_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_49 = peCol_io_d_out_24_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_50 = peCol_io_d_out_25_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_51 = peCol_io_d_out_25_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_52 = peCol_io_d_out_26_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_53 = peCol_io_d_out_26_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_54 = peCol_io_d_out_27_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_55 = peCol_io_d_out_27_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_56 = peCol_io_d_out_28_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_57 = peCol_io_d_out_28_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_58 = peCol_io_d_out_29_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_59 = peCol_io_d_out_29_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_60 = peCol_io_d_out_30_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_61 = peCol_io_d_out_30_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_in64_62 = peCol_io_d_out_31_a; // @[BuildingBlock.scala 300:27]
  assign ingress1_io_in64_63 = peCol_io_d_out_31_b; // @[BuildingBlock.scala 301:29]
  assign ingress1_io_ctrl = stageReg1 == 2'h2 ? instr1 : 128'h0; // @[BuildingBlock.scala 235:26]
  assign ingress2_clock = clock;
  assign ingress2_reset = reset;
  assign ingress2_io_in64_0 = ingress1_io_out64_0; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_1 = ingress1_io_out64_1; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_2 = ingress1_io_out64_2; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_3 = ingress1_io_out64_3; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_4 = ingress1_io_out64_4; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_5 = ingress1_io_out64_5; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_6 = ingress1_io_out64_6; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_7 = ingress1_io_out64_7; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_8 = ingress1_io_out64_8; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_9 = ingress1_io_out64_9; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_10 = ingress1_io_out64_10; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_11 = ingress1_io_out64_11; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_12 = ingress1_io_out64_12; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_13 = ingress1_io_out64_13; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_14 = ingress1_io_out64_14; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_15 = ingress1_io_out64_15; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_16 = ingress1_io_out64_16; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_17 = ingress1_io_out64_17; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_18 = ingress1_io_out64_18; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_19 = ingress1_io_out64_19; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_20 = ingress1_io_out64_20; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_21 = ingress1_io_out64_21; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_22 = ingress1_io_out64_22; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_23 = ingress1_io_out64_23; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_24 = ingress1_io_out64_24; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_25 = ingress1_io_out64_25; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_26 = ingress1_io_out64_26; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_27 = ingress1_io_out64_27; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_28 = ingress1_io_out64_28; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_29 = ingress1_io_out64_29; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_30 = ingress1_io_out64_30; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_31 = ingress1_io_out64_31; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_32 = ingress1_io_out64_32; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_33 = ingress1_io_out64_33; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_34 = ingress1_io_out64_34; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_35 = ingress1_io_out64_35; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_36 = ingress1_io_out64_36; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_37 = ingress1_io_out64_37; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_38 = ingress1_io_out64_38; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_39 = ingress1_io_out64_39; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_40 = ingress1_io_out64_40; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_41 = ingress1_io_out64_41; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_42 = ingress1_io_out64_42; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_43 = ingress1_io_out64_43; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_44 = ingress1_io_out64_44; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_45 = ingress1_io_out64_45; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_46 = ingress1_io_out64_46; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_47 = ingress1_io_out64_47; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_48 = ingress1_io_out64_48; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_49 = ingress1_io_out64_49; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_50 = ingress1_io_out64_50; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_51 = ingress1_io_out64_51; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_52 = ingress1_io_out64_52; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_53 = ingress1_io_out64_53; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_54 = ingress1_io_out64_54; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_55 = ingress1_io_out64_55; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_56 = ingress1_io_out64_56; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_57 = ingress1_io_out64_57; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_58 = ingress1_io_out64_58; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_59 = ingress1_io_out64_59; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_60 = ingress1_io_out64_60; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_61 = ingress1_io_out64_61; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_62 = ingress1_io_out64_62; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_in64_63 = ingress1_io_out64_63; // @[BuildingBlock.scala 304:20]
  assign ingress2_io_ctrl = stageReg1 == 2'h3 ? instr1 : 128'h0; // @[BuildingBlock.scala 236:26]
  assign middle_clock = clock;
  assign middle_reset = reset;
  assign middle_io_in64_0 = ingress2_io_out64_0; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_1 = ingress2_io_out64_1; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_2 = ingress2_io_out64_2; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_3 = ingress2_io_out64_3; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_4 = ingress2_io_out64_4; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_5 = ingress2_io_out64_5; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_6 = ingress2_io_out64_6; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_7 = ingress2_io_out64_7; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_8 = ingress2_io_out64_8; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_9 = ingress2_io_out64_9; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_10 = ingress2_io_out64_10; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_11 = ingress2_io_out64_11; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_12 = ingress2_io_out64_12; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_13 = ingress2_io_out64_13; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_14 = ingress2_io_out64_14; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_15 = ingress2_io_out64_15; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_16 = ingress2_io_out64_16; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_17 = ingress2_io_out64_17; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_18 = ingress2_io_out64_18; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_19 = ingress2_io_out64_19; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_20 = ingress2_io_out64_20; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_21 = ingress2_io_out64_21; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_22 = ingress2_io_out64_22; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_23 = ingress2_io_out64_23; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_24 = ingress2_io_out64_24; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_25 = ingress2_io_out64_25; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_26 = ingress2_io_out64_26; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_27 = ingress2_io_out64_27; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_28 = ingress2_io_out64_28; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_29 = ingress2_io_out64_29; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_30 = ingress2_io_out64_30; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_31 = ingress2_io_out64_31; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_32 = ingress2_io_out64_32; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_33 = ingress2_io_out64_33; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_34 = ingress2_io_out64_34; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_35 = ingress2_io_out64_35; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_36 = ingress2_io_out64_36; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_37 = ingress2_io_out64_37; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_38 = ingress2_io_out64_38; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_39 = ingress2_io_out64_39; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_40 = ingress2_io_out64_40; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_41 = ingress2_io_out64_41; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_42 = ingress2_io_out64_42; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_43 = ingress2_io_out64_43; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_44 = ingress2_io_out64_44; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_45 = ingress2_io_out64_45; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_46 = ingress2_io_out64_46; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_47 = ingress2_io_out64_47; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_48 = ingress2_io_out64_48; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_49 = ingress2_io_out64_49; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_50 = ingress2_io_out64_50; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_51 = ingress2_io_out64_51; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_52 = ingress2_io_out64_52; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_53 = ingress2_io_out64_53; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_54 = ingress2_io_out64_54; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_55 = ingress2_io_out64_55; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_56 = ingress2_io_out64_56; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_57 = ingress2_io_out64_57; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_58 = ingress2_io_out64_58; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_59 = ingress2_io_out64_59; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_60 = ingress2_io_out64_60; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_61 = ingress2_io_out64_61; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_62 = ingress2_io_out64_62; // @[BuildingBlock.scala 305:18]
  assign middle_io_in64_63 = ingress2_io_out64_63; // @[BuildingBlock.scala 305:18]
  assign middle_io_ctrl = stageReg2 == 2'h1 ? instr2 : 128'h0; // @[BuildingBlock.scala 276:24]
  assign egress1_clock = clock;
  assign egress1_reset = reset;
  assign egress1_io_in64_0 = middle_io_out64_0; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_1 = middle_io_out64_1; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_2 = middle_io_out64_2; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_3 = middle_io_out64_3; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_4 = middle_io_out64_4; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_5 = middle_io_out64_5; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_6 = middle_io_out64_6; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_7 = middle_io_out64_7; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_8 = middle_io_out64_8; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_9 = middle_io_out64_9; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_10 = middle_io_out64_10; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_11 = middle_io_out64_11; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_12 = middle_io_out64_12; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_13 = middle_io_out64_13; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_14 = middle_io_out64_14; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_15 = middle_io_out64_15; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_16 = middle_io_out64_16; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_17 = middle_io_out64_17; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_18 = middle_io_out64_18; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_19 = middle_io_out64_19; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_20 = middle_io_out64_20; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_21 = middle_io_out64_21; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_22 = middle_io_out64_22; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_23 = middle_io_out64_23; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_24 = middle_io_out64_24; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_25 = middle_io_out64_25; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_26 = middle_io_out64_26; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_27 = middle_io_out64_27; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_28 = middle_io_out64_28; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_29 = middle_io_out64_29; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_30 = middle_io_out64_30; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_31 = middle_io_out64_31; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_32 = middle_io_out64_32; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_33 = middle_io_out64_33; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_34 = middle_io_out64_34; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_35 = middle_io_out64_35; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_36 = middle_io_out64_36; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_37 = middle_io_out64_37; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_38 = middle_io_out64_38; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_39 = middle_io_out64_39; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_40 = middle_io_out64_40; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_41 = middle_io_out64_41; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_42 = middle_io_out64_42; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_43 = middle_io_out64_43; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_44 = middle_io_out64_44; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_45 = middle_io_out64_45; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_46 = middle_io_out64_46; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_47 = middle_io_out64_47; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_48 = middle_io_out64_48; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_49 = middle_io_out64_49; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_50 = middle_io_out64_50; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_51 = middle_io_out64_51; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_52 = middle_io_out64_52; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_53 = middle_io_out64_53; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_54 = middle_io_out64_54; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_55 = middle_io_out64_55; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_56 = middle_io_out64_56; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_57 = middle_io_out64_57; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_58 = middle_io_out64_58; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_59 = middle_io_out64_59; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_60 = middle_io_out64_60; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_61 = middle_io_out64_61; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_62 = middle_io_out64_62; // @[BuildingBlock.scala 306:19]
  assign egress1_io_in64_63 = middle_io_out64_63; // @[BuildingBlock.scala 306:19]
  assign egress1_io_ctrl = stageReg2 == 2'h2 ? instr2 : 128'h0; // @[BuildingBlock.scala 277:25]
  assign egress2_clock = clock;
  assign egress2_reset = reset;
  assign egress2_io_in64_0 = egress1_io_out64_0; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_1 = egress1_io_out64_1; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_2 = egress1_io_out64_2; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_3 = egress1_io_out64_3; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_4 = egress1_io_out64_4; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_5 = egress1_io_out64_5; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_6 = egress1_io_out64_6; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_7 = egress1_io_out64_7; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_8 = egress1_io_out64_8; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_9 = egress1_io_out64_9; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_10 = egress1_io_out64_10; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_11 = egress1_io_out64_11; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_12 = egress1_io_out64_12; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_13 = egress1_io_out64_13; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_14 = egress1_io_out64_14; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_15 = egress1_io_out64_15; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_16 = egress1_io_out64_16; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_17 = egress1_io_out64_17; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_18 = egress1_io_out64_18; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_19 = egress1_io_out64_19; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_20 = egress1_io_out64_20; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_21 = egress1_io_out64_21; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_22 = egress1_io_out64_22; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_23 = egress1_io_out64_23; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_24 = egress1_io_out64_24; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_25 = egress1_io_out64_25; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_26 = egress1_io_out64_26; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_27 = egress1_io_out64_27; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_28 = egress1_io_out64_28; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_29 = egress1_io_out64_29; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_30 = egress1_io_out64_30; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_31 = egress1_io_out64_31; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_32 = egress1_io_out64_32; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_33 = egress1_io_out64_33; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_34 = egress1_io_out64_34; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_35 = egress1_io_out64_35; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_36 = egress1_io_out64_36; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_37 = egress1_io_out64_37; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_38 = egress1_io_out64_38; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_39 = egress1_io_out64_39; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_40 = egress1_io_out64_40; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_41 = egress1_io_out64_41; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_42 = egress1_io_out64_42; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_43 = egress1_io_out64_43; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_44 = egress1_io_out64_44; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_45 = egress1_io_out64_45; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_46 = egress1_io_out64_46; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_47 = egress1_io_out64_47; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_48 = egress1_io_out64_48; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_49 = egress1_io_out64_49; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_50 = egress1_io_out64_50; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_51 = egress1_io_out64_51; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_52 = egress1_io_out64_52; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_53 = egress1_io_out64_53; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_54 = egress1_io_out64_54; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_55 = egress1_io_out64_55; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_56 = egress1_io_out64_56; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_57 = egress1_io_out64_57; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_58 = egress1_io_out64_58; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_59 = egress1_io_out64_59; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_60 = egress1_io_out64_60; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_61 = egress1_io_out64_61; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_62 = egress1_io_out64_62; // @[BuildingBlock.scala 307:19]
  assign egress2_io_in64_63 = egress1_io_out64_63; // @[BuildingBlock.scala 307:19]
  assign egress2_io_ctrl = stageReg2 == 2'h3 ? instr2 : 128'h0; // @[BuildingBlock.scala 278:25]
  always @(posedge clock) begin
    if(Mem1_MPORT_en & Mem1_MPORT_mask) begin
      Mem1[Mem1_MPORT_addr] <= Mem1_MPORT_data; // @[BuildingBlock.scala 174:17]
    end
    if(Mem2_MPORT_1_en & Mem2_MPORT_1_mask) begin
      Mem2[Mem2_MPORT_1_addr] <= Mem2_MPORT_1_data; // @[BuildingBlock.scala 175:17]
    end
    if (reset) begin // @[BuildingBlock.scala 176:20]
      PC1 <= 8'h0; // @[BuildingBlock.scala 176:20]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_run) begin // @[BuildingBlock.scala 199:19]
        PC1 <= _PC1_T_1; // @[BuildingBlock.scala 201:13]
      end
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      PC1 <= _GEN_7;
    end else if (_T_3) begin // @[Conditional.scala 39:67]
      PC1 <= _GEN_7;
    end else begin
      PC1 <= _GEN_25;
    end
    if (reset) begin // @[BuildingBlock.scala 177:20]
      PC2 <= 8'h0; // @[BuildingBlock.scala 177:20]
    end else if (_T_7) begin // @[Conditional.scala 40:58]
      if (run_Reg) begin // @[BuildingBlock.scala 241:20]
        PC2 <= _PC2_T_1; // @[BuildingBlock.scala 243:13]
      end
    end else if (_T_8) begin // @[Conditional.scala 39:67]
      PC2 <= _GEN_73;
    end else if (_T_10) begin // @[Conditional.scala 39:67]
      PC2 <= _GEN_73;
    end else begin
      PC2 <= _GEN_91;
    end
    if (reset) begin // @[BuildingBlock.scala 178:24]
      wrAddr1 <= 8'h0; // @[BuildingBlock.scala 178:24]
    end else if (io_wr_en_mem1) begin // @[BuildingBlock.scala 285:22]
      wrAddr1 <= _wrAddr1_T_1; // @[BuildingBlock.scala 287:13]
    end
    if (reset) begin // @[BuildingBlock.scala 179:24]
      wrAddr2 <= 8'h0; // @[BuildingBlock.scala 179:24]
    end else if (io_wr_en_mem2) begin // @[BuildingBlock.scala 289:22]
      wrAddr2 <= _wrAddr2_T_1; // @[BuildingBlock.scala 291:13]
    end
    if (reset) begin // @[BuildingBlock.scala 180:23]
      instr1 <= 128'h0; // @[BuildingBlock.scala 180:23]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_run) begin // @[BuildingBlock.scala 199:19]
        instr1 <= Mem1_instr1_MPORT_data; // @[BuildingBlock.scala 202:16]
      end
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (!(~io_run)) begin // @[BuildingBlock.scala 206:21]
        instr1 <= Mem1_instr1_MPORT_1_data; // @[BuildingBlock.scala 211:16]
      end
    end else if (_T_3) begin // @[Conditional.scala 39:67]
      instr1 <= _GEN_17;
    end else begin
      instr1 <= _GEN_29;
    end
    if (reset) begin // @[BuildingBlock.scala 181:23]
      instr2 <= 128'h0; // @[BuildingBlock.scala 181:23]
    end else if (_T_7) begin // @[Conditional.scala 40:58]
      if (run_Reg) begin // @[BuildingBlock.scala 241:20]
        instr2 <= Mem2_instr2_MPORT_data; // @[BuildingBlock.scala 244:16]
      end
    end else if (_T_8) begin // @[Conditional.scala 39:67]
      if (!(~run_Reg)) begin // @[BuildingBlock.scala 248:22]
        instr2 <= Mem2_instr2_MPORT_1_data; // @[BuildingBlock.scala 253:16]
      end
    end else if (_T_10) begin // @[Conditional.scala 39:67]
      instr2 <= _GEN_83;
    end else begin
      instr2 <= _GEN_95;
    end
    run_Reg_REG <= io_run; // @[BuildingBlock.scala 183:40]
    run_Reg_REG_1 <= run_Reg_REG; // @[BuildingBlock.scala 183:32]
    run_Reg <= run_Reg_REG_1; // @[BuildingBlock.scala 183:24]
    if (reset) begin // @[BuildingBlock.scala 194:26]
      stageReg1 <= 2'h0; // @[BuildingBlock.scala 194:26]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_run) begin // @[BuildingBlock.scala 199:19]
        stageReg1 <= 2'h1; // @[BuildingBlock.scala 200:19]
      end
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (~io_run) begin // @[BuildingBlock.scala 206:21]
        stageReg1 <= 2'h0; // @[BuildingBlock.scala 207:19]
      end else begin
        stageReg1 <= 2'h2; // @[BuildingBlock.scala 209:19]
      end
    end else if (_T_3) begin // @[Conditional.scala 39:67]
      stageReg1 <= _GEN_12;
    end else begin
      stageReg1 <= _GEN_24;
    end
    if (reset) begin // @[BuildingBlock.scala 195:26]
      stageReg2 <= 2'h0; // @[BuildingBlock.scala 195:26]
    end else if (_T_7) begin // @[Conditional.scala 40:58]
      if (run_Reg) begin // @[BuildingBlock.scala 241:20]
        stageReg2 <= 2'h1; // @[BuildingBlock.scala 242:19]
      end
    end else if (_T_8) begin // @[Conditional.scala 39:67]
      if (~run_Reg) begin // @[BuildingBlock.scala 248:22]
        stageReg2 <= 2'h0; // @[BuildingBlock.scala 249:19]
      end else begin
        stageReg2 <= 2'h2; // @[BuildingBlock.scala 251:19]
      end
    end else if (_T_10) begin // @[Conditional.scala 39:67]
      stageReg2 <= _GEN_78;
    end else begin
      stageReg2 <= _GEN_90;
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem1[initvar] = _RAND_0[127:0];
  _RAND_1 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem2[initvar] = _RAND_1[127:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  PC1 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  PC2 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  wrAddr1 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  wrAddr2 = _RAND_5[7:0];
  _RAND_6 = {4{`RANDOM}};
  instr1 = _RAND_6[127:0];
  _RAND_7 = {4{`RANDOM}};
  instr2 = _RAND_7[127:0];
  _RAND_8 = {1{`RANDOM}};
  run_Reg_REG = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  run_Reg_REG_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  run_Reg = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  stageReg1 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  stageReg2 = _RAND_12[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Array(
  input          clock,
  input          reset,
  input  [63:0]  io_d_in_0_a,
  input  [63:0]  io_d_in_0_b,
  input  [63:0]  io_d_in_1_a,
  input  [63:0]  io_d_in_1_b,
  input  [63:0]  io_d_in_2_a,
  input  [63:0]  io_d_in_2_b,
  input  [63:0]  io_d_in_3_a,
  input  [63:0]  io_d_in_3_b,
  input  [63:0]  io_d_in_4_a,
  input  [63:0]  io_d_in_4_b,
  input  [63:0]  io_d_in_5_a,
  input  [63:0]  io_d_in_5_b,
  input  [63:0]  io_d_in_6_a,
  input  [63:0]  io_d_in_6_b,
  input  [63:0]  io_d_in_7_a,
  input  [63:0]  io_d_in_7_b,
  input  [63:0]  io_d_in_8_a,
  input  [63:0]  io_d_in_8_b,
  input  [63:0]  io_d_in_9_a,
  input  [63:0]  io_d_in_9_b,
  input  [63:0]  io_d_in_10_a,
  input  [63:0]  io_d_in_10_b,
  input  [63:0]  io_d_in_11_a,
  input  [63:0]  io_d_in_11_b,
  input  [63:0]  io_d_in_12_a,
  input  [63:0]  io_d_in_12_b,
  input  [63:0]  io_d_in_13_a,
  input  [63:0]  io_d_in_13_b,
  input  [63:0]  io_d_in_14_a,
  input  [63:0]  io_d_in_14_b,
  input  [63:0]  io_d_in_15_a,
  input  [63:0]  io_d_in_15_b,
  input  [63:0]  io_d_in_16_a,
  input  [63:0]  io_d_in_16_b,
  input  [63:0]  io_d_in_17_a,
  input  [63:0]  io_d_in_17_b,
  input  [63:0]  io_d_in_18_a,
  input  [63:0]  io_d_in_18_b,
  input  [63:0]  io_d_in_19_a,
  input  [63:0]  io_d_in_19_b,
  input  [63:0]  io_d_in_20_a,
  input  [63:0]  io_d_in_20_b,
  input  [63:0]  io_d_in_21_a,
  input  [63:0]  io_d_in_21_b,
  input  [63:0]  io_d_in_22_a,
  input  [63:0]  io_d_in_22_b,
  input  [63:0]  io_d_in_23_a,
  input  [63:0]  io_d_in_23_b,
  input  [63:0]  io_d_in_24_a,
  input  [63:0]  io_d_in_24_b,
  input  [63:0]  io_d_in_25_a,
  input  [63:0]  io_d_in_25_b,
  input  [63:0]  io_d_in_26_a,
  input  [63:0]  io_d_in_26_b,
  input  [63:0]  io_d_in_27_a,
  input  [63:0]  io_d_in_27_b,
  input  [63:0]  io_d_in_28_a,
  input  [63:0]  io_d_in_28_b,
  input  [63:0]  io_d_in_29_a,
  input  [63:0]  io_d_in_29_b,
  input  [63:0]  io_d_in_30_a,
  input  [63:0]  io_d_in_30_b,
  input  [63:0]  io_d_in_31_a,
  input  [63:0]  io_d_in_31_b,
  output [63:0]  io_d_out_0_a,
  output [63:0]  io_d_out_0_b,
  output [63:0]  io_d_out_1_a,
  output [63:0]  io_d_out_1_b,
  output [63:0]  io_d_out_2_a,
  output [63:0]  io_d_out_2_b,
  output [63:0]  io_d_out_3_a,
  output [63:0]  io_d_out_3_b,
  output [63:0]  io_d_out_4_a,
  output [63:0]  io_d_out_4_b,
  output [63:0]  io_d_out_5_a,
  output [63:0]  io_d_out_5_b,
  output [63:0]  io_d_out_6_a,
  output [63:0]  io_d_out_6_b,
  output [63:0]  io_d_out_7_a,
  output [63:0]  io_d_out_7_b,
  output [63:0]  io_d_out_8_a,
  output [63:0]  io_d_out_8_b,
  output [63:0]  io_d_out_9_a,
  output [63:0]  io_d_out_9_b,
  output [63:0]  io_d_out_10_a,
  output [63:0]  io_d_out_10_b,
  output [63:0]  io_d_out_11_a,
  output [63:0]  io_d_out_11_b,
  output [63:0]  io_d_out_12_a,
  output [63:0]  io_d_out_12_b,
  output [63:0]  io_d_out_13_a,
  output [63:0]  io_d_out_13_b,
  output [63:0]  io_d_out_14_a,
  output [63:0]  io_d_out_14_b,
  output [63:0]  io_d_out_15_a,
  output [63:0]  io_d_out_15_b,
  output [63:0]  io_d_out_16_a,
  output [63:0]  io_d_out_16_b,
  output [63:0]  io_d_out_17_a,
  output [63:0]  io_d_out_17_b,
  output [63:0]  io_d_out_18_a,
  output [63:0]  io_d_out_18_b,
  output [63:0]  io_d_out_19_a,
  output [63:0]  io_d_out_19_b,
  output [63:0]  io_d_out_20_a,
  output [63:0]  io_d_out_20_b,
  output [63:0]  io_d_out_21_a,
  output [63:0]  io_d_out_21_b,
  output [63:0]  io_d_out_22_a,
  output [63:0]  io_d_out_22_b,
  output [63:0]  io_d_out_23_a,
  output [63:0]  io_d_out_23_b,
  output [63:0]  io_d_out_24_a,
  output [63:0]  io_d_out_24_b,
  output [63:0]  io_d_out_25_a,
  output [63:0]  io_d_out_25_b,
  output [63:0]  io_d_out_26_a,
  output [63:0]  io_d_out_26_b,
  output [63:0]  io_d_out_27_a,
  output [63:0]  io_d_out_27_b,
  output [63:0]  io_d_out_28_a,
  output [63:0]  io_d_out_28_b,
  output [63:0]  io_d_out_29_a,
  output [63:0]  io_d_out_29_b,
  output [63:0]  io_d_out_30_a,
  output [63:0]  io_d_out_30_b,
  output [63:0]  io_d_out_31_a,
  output [63:0]  io_d_out_31_b,
  input          io_wr_en_mem1_0,
  input          io_wr_en_mem1_1,
  input          io_wr_en_mem1_2,
  input          io_wr_en_mem1_3,
  input          io_wr_en_mem1_4,
  input          io_wr_en_mem1_5,
  input          io_wr_en_mem1_6,
  input          io_wr_en_mem1_7,
  input          io_wr_en_mem1_8,
  input          io_wr_en_mem1_9,
  input          io_wr_en_mem1_10,
  input          io_wr_en_mem1_11,
  input          io_wr_en_mem1_12,
  input          io_wr_en_mem1_13,
  input          io_wr_en_mem1_14,
  input          io_wr_en_mem1_15,
  input          io_wr_en_mem2_0,
  input          io_wr_en_mem2_1,
  input          io_wr_en_mem2_2,
  input          io_wr_en_mem2_3,
  input          io_wr_en_mem2_4,
  input          io_wr_en_mem2_5,
  input          io_wr_en_mem2_6,
  input          io_wr_en_mem2_7,
  input          io_wr_en_mem2_8,
  input          io_wr_en_mem2_9,
  input          io_wr_en_mem2_10,
  input          io_wr_en_mem2_11,
  input          io_wr_en_mem2_12,
  input          io_wr_en_mem2_13,
  input          io_wr_en_mem2_14,
  input          io_wr_en_mem2_15,
  input  [127:0] io_wr_instr_mem1_0,
  input  [127:0] io_wr_instr_mem1_1,
  input  [127:0] io_wr_instr_mem1_2,
  input  [127:0] io_wr_instr_mem1_3,
  input  [127:0] io_wr_instr_mem1_4,
  input  [127:0] io_wr_instr_mem1_5,
  input  [127:0] io_wr_instr_mem1_6,
  input  [127:0] io_wr_instr_mem1_7,
  input  [127:0] io_wr_instr_mem1_8,
  input  [127:0] io_wr_instr_mem1_9,
  input  [127:0] io_wr_instr_mem1_10,
  input  [127:0] io_wr_instr_mem1_11,
  input  [127:0] io_wr_instr_mem1_12,
  input  [127:0] io_wr_instr_mem1_13,
  input  [127:0] io_wr_instr_mem1_14,
  input  [127:0] io_wr_instr_mem1_15,
  input  [127:0] io_wr_instr_mem2_0,
  input  [127:0] io_wr_instr_mem2_1,
  input  [127:0] io_wr_instr_mem2_2,
  input  [127:0] io_wr_instr_mem2_3,
  input  [127:0] io_wr_instr_mem2_4,
  input  [127:0] io_wr_instr_mem2_5,
  input  [127:0] io_wr_instr_mem2_6,
  input  [127:0] io_wr_instr_mem2_7,
  input  [127:0] io_wr_instr_mem2_8,
  input  [127:0] io_wr_instr_mem2_9,
  input  [127:0] io_wr_instr_mem2_10,
  input  [127:0] io_wr_instr_mem2_11,
  input  [127:0] io_wr_instr_mem2_12,
  input  [127:0] io_wr_instr_mem2_13,
  input  [127:0] io_wr_instr_mem2_14,
  input  [127:0] io_wr_instr_mem2_15,
  input          io_run_0,
  input          io_run_1,
  input          io_run_2,
  input          io_run_3,
  input          io_run_4,
  input          io_run_5,
  input          io_run_6,
  input          io_run_7,
  input          io_run_8,
  input          io_run_9,
  input          io_run_10,
  input          io_run_11,
  input          io_run_12,
  input          io_run_13,
  input          io_run_14,
  input          io_run_15
);
  wire  array_0_clock; // @[Array.scala 16:51]
  wire  array_0_reset; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_0_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_0_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_0_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_0_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_0_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_0_io_run; // @[Array.scala 16:51]
  wire  array_1_clock; // @[Array.scala 16:51]
  wire  array_1_reset; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_1_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_1_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_1_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_1_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_1_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_1_io_run; // @[Array.scala 16:51]
  wire  array_2_clock; // @[Array.scala 16:51]
  wire  array_2_reset; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_2_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_2_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_2_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_2_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_2_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_2_io_run; // @[Array.scala 16:51]
  wire  array_3_clock; // @[Array.scala 16:51]
  wire  array_3_reset; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_3_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_3_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_3_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_3_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_3_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_3_io_run; // @[Array.scala 16:51]
  wire  array_4_clock; // @[Array.scala 16:51]
  wire  array_4_reset; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_4_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_4_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_4_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_4_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_4_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_4_io_run; // @[Array.scala 16:51]
  wire  array_5_clock; // @[Array.scala 16:51]
  wire  array_5_reset; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_5_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_5_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_5_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_5_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_5_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_5_io_run; // @[Array.scala 16:51]
  wire  array_6_clock; // @[Array.scala 16:51]
  wire  array_6_reset; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_6_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_6_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_6_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_6_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_6_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_6_io_run; // @[Array.scala 16:51]
  wire  array_7_clock; // @[Array.scala 16:51]
  wire  array_7_reset; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_7_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_7_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_7_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_7_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_7_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_7_io_run; // @[Array.scala 16:51]
  wire  array_8_clock; // @[Array.scala 16:51]
  wire  array_8_reset; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_8_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_8_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_8_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_8_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_8_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_8_io_run; // @[Array.scala 16:51]
  wire  array_9_clock; // @[Array.scala 16:51]
  wire  array_9_reset; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_9_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_9_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_9_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_9_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_9_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_9_io_run; // @[Array.scala 16:51]
  wire  array_10_clock; // @[Array.scala 16:51]
  wire  array_10_reset; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_10_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_10_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_10_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_10_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_10_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_10_io_run; // @[Array.scala 16:51]
  wire  array_11_clock; // @[Array.scala 16:51]
  wire  array_11_reset; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_11_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_11_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_11_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_11_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_11_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_11_io_run; // @[Array.scala 16:51]
  wire  array_12_clock; // @[Array.scala 16:51]
  wire  array_12_reset; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_12_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_12_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_12_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_12_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_12_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_12_io_run; // @[Array.scala 16:51]
  wire  array_13_clock; // @[Array.scala 16:51]
  wire  array_13_reset; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_13_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_13_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_13_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_13_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_13_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_13_io_run; // @[Array.scala 16:51]
  wire  array_14_clock; // @[Array.scala 16:51]
  wire  array_14_reset; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_14_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_14_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_14_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_14_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_14_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_14_io_run; // @[Array.scala 16:51]
  wire  array_15_clock; // @[Array.scala 16:51]
  wire  array_15_reset; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_0_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_0_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_1_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_1_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_2_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_2_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_3_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_3_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_4_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_4_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_5_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_5_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_6_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_6_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_7_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_7_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_8_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_8_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_9_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_9_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_10_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_10_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_11_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_11_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_12_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_12_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_13_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_13_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_14_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_14_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_15_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_15_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_16_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_16_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_17_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_17_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_18_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_18_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_19_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_19_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_20_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_20_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_21_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_21_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_22_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_22_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_23_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_23_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_24_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_24_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_25_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_25_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_26_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_26_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_27_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_27_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_28_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_28_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_29_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_29_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_30_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_30_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_31_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_in_31_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_0_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_0_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_1_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_1_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_2_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_2_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_3_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_3_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_4_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_4_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_5_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_5_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_6_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_6_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_7_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_7_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_8_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_8_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_9_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_9_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_10_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_10_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_11_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_11_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_12_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_12_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_13_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_13_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_14_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_14_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_15_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_15_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_16_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_16_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_17_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_17_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_18_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_18_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_19_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_19_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_20_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_20_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_21_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_21_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_22_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_22_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_23_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_23_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_24_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_24_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_25_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_25_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_26_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_26_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_27_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_27_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_28_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_28_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_29_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_29_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_30_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_30_b; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_31_a; // @[Array.scala 16:51]
  wire [63:0] array_15_io_d_out_31_b; // @[Array.scala 16:51]
  wire  array_15_io_wr_en_mem1; // @[Array.scala 16:51]
  wire  array_15_io_wr_en_mem2; // @[Array.scala 16:51]
  wire [127:0] array_15_io_wr_instr_mem1; // @[Array.scala 16:51]
  wire [127:0] array_15_io_wr_instr_mem2; // @[Array.scala 16:51]
  wire  array_15_io_run; // @[Array.scala 16:51]
  BuildingBlock array_0 ( // @[Array.scala 16:51]
    .clock(array_0_clock),
    .reset(array_0_reset),
    .io_d_in_0_a(array_0_io_d_in_0_a),
    .io_d_in_0_b(array_0_io_d_in_0_b),
    .io_d_in_1_a(array_0_io_d_in_1_a),
    .io_d_in_1_b(array_0_io_d_in_1_b),
    .io_d_in_2_a(array_0_io_d_in_2_a),
    .io_d_in_2_b(array_0_io_d_in_2_b),
    .io_d_in_3_a(array_0_io_d_in_3_a),
    .io_d_in_3_b(array_0_io_d_in_3_b),
    .io_d_in_4_a(array_0_io_d_in_4_a),
    .io_d_in_4_b(array_0_io_d_in_4_b),
    .io_d_in_5_a(array_0_io_d_in_5_a),
    .io_d_in_5_b(array_0_io_d_in_5_b),
    .io_d_in_6_a(array_0_io_d_in_6_a),
    .io_d_in_6_b(array_0_io_d_in_6_b),
    .io_d_in_7_a(array_0_io_d_in_7_a),
    .io_d_in_7_b(array_0_io_d_in_7_b),
    .io_d_in_8_a(array_0_io_d_in_8_a),
    .io_d_in_8_b(array_0_io_d_in_8_b),
    .io_d_in_9_a(array_0_io_d_in_9_a),
    .io_d_in_9_b(array_0_io_d_in_9_b),
    .io_d_in_10_a(array_0_io_d_in_10_a),
    .io_d_in_10_b(array_0_io_d_in_10_b),
    .io_d_in_11_a(array_0_io_d_in_11_a),
    .io_d_in_11_b(array_0_io_d_in_11_b),
    .io_d_in_12_a(array_0_io_d_in_12_a),
    .io_d_in_12_b(array_0_io_d_in_12_b),
    .io_d_in_13_a(array_0_io_d_in_13_a),
    .io_d_in_13_b(array_0_io_d_in_13_b),
    .io_d_in_14_a(array_0_io_d_in_14_a),
    .io_d_in_14_b(array_0_io_d_in_14_b),
    .io_d_in_15_a(array_0_io_d_in_15_a),
    .io_d_in_15_b(array_0_io_d_in_15_b),
    .io_d_in_16_a(array_0_io_d_in_16_a),
    .io_d_in_16_b(array_0_io_d_in_16_b),
    .io_d_in_17_a(array_0_io_d_in_17_a),
    .io_d_in_17_b(array_0_io_d_in_17_b),
    .io_d_in_18_a(array_0_io_d_in_18_a),
    .io_d_in_18_b(array_0_io_d_in_18_b),
    .io_d_in_19_a(array_0_io_d_in_19_a),
    .io_d_in_19_b(array_0_io_d_in_19_b),
    .io_d_in_20_a(array_0_io_d_in_20_a),
    .io_d_in_20_b(array_0_io_d_in_20_b),
    .io_d_in_21_a(array_0_io_d_in_21_a),
    .io_d_in_21_b(array_0_io_d_in_21_b),
    .io_d_in_22_a(array_0_io_d_in_22_a),
    .io_d_in_22_b(array_0_io_d_in_22_b),
    .io_d_in_23_a(array_0_io_d_in_23_a),
    .io_d_in_23_b(array_0_io_d_in_23_b),
    .io_d_in_24_a(array_0_io_d_in_24_a),
    .io_d_in_24_b(array_0_io_d_in_24_b),
    .io_d_in_25_a(array_0_io_d_in_25_a),
    .io_d_in_25_b(array_0_io_d_in_25_b),
    .io_d_in_26_a(array_0_io_d_in_26_a),
    .io_d_in_26_b(array_0_io_d_in_26_b),
    .io_d_in_27_a(array_0_io_d_in_27_a),
    .io_d_in_27_b(array_0_io_d_in_27_b),
    .io_d_in_28_a(array_0_io_d_in_28_a),
    .io_d_in_28_b(array_0_io_d_in_28_b),
    .io_d_in_29_a(array_0_io_d_in_29_a),
    .io_d_in_29_b(array_0_io_d_in_29_b),
    .io_d_in_30_a(array_0_io_d_in_30_a),
    .io_d_in_30_b(array_0_io_d_in_30_b),
    .io_d_in_31_a(array_0_io_d_in_31_a),
    .io_d_in_31_b(array_0_io_d_in_31_b),
    .io_d_out_0_a(array_0_io_d_out_0_a),
    .io_d_out_0_b(array_0_io_d_out_0_b),
    .io_d_out_1_a(array_0_io_d_out_1_a),
    .io_d_out_1_b(array_0_io_d_out_1_b),
    .io_d_out_2_a(array_0_io_d_out_2_a),
    .io_d_out_2_b(array_0_io_d_out_2_b),
    .io_d_out_3_a(array_0_io_d_out_3_a),
    .io_d_out_3_b(array_0_io_d_out_3_b),
    .io_d_out_4_a(array_0_io_d_out_4_a),
    .io_d_out_4_b(array_0_io_d_out_4_b),
    .io_d_out_5_a(array_0_io_d_out_5_a),
    .io_d_out_5_b(array_0_io_d_out_5_b),
    .io_d_out_6_a(array_0_io_d_out_6_a),
    .io_d_out_6_b(array_0_io_d_out_6_b),
    .io_d_out_7_a(array_0_io_d_out_7_a),
    .io_d_out_7_b(array_0_io_d_out_7_b),
    .io_d_out_8_a(array_0_io_d_out_8_a),
    .io_d_out_8_b(array_0_io_d_out_8_b),
    .io_d_out_9_a(array_0_io_d_out_9_a),
    .io_d_out_9_b(array_0_io_d_out_9_b),
    .io_d_out_10_a(array_0_io_d_out_10_a),
    .io_d_out_10_b(array_0_io_d_out_10_b),
    .io_d_out_11_a(array_0_io_d_out_11_a),
    .io_d_out_11_b(array_0_io_d_out_11_b),
    .io_d_out_12_a(array_0_io_d_out_12_a),
    .io_d_out_12_b(array_0_io_d_out_12_b),
    .io_d_out_13_a(array_0_io_d_out_13_a),
    .io_d_out_13_b(array_0_io_d_out_13_b),
    .io_d_out_14_a(array_0_io_d_out_14_a),
    .io_d_out_14_b(array_0_io_d_out_14_b),
    .io_d_out_15_a(array_0_io_d_out_15_a),
    .io_d_out_15_b(array_0_io_d_out_15_b),
    .io_d_out_16_a(array_0_io_d_out_16_a),
    .io_d_out_16_b(array_0_io_d_out_16_b),
    .io_d_out_17_a(array_0_io_d_out_17_a),
    .io_d_out_17_b(array_0_io_d_out_17_b),
    .io_d_out_18_a(array_0_io_d_out_18_a),
    .io_d_out_18_b(array_0_io_d_out_18_b),
    .io_d_out_19_a(array_0_io_d_out_19_a),
    .io_d_out_19_b(array_0_io_d_out_19_b),
    .io_d_out_20_a(array_0_io_d_out_20_a),
    .io_d_out_20_b(array_0_io_d_out_20_b),
    .io_d_out_21_a(array_0_io_d_out_21_a),
    .io_d_out_21_b(array_0_io_d_out_21_b),
    .io_d_out_22_a(array_0_io_d_out_22_a),
    .io_d_out_22_b(array_0_io_d_out_22_b),
    .io_d_out_23_a(array_0_io_d_out_23_a),
    .io_d_out_23_b(array_0_io_d_out_23_b),
    .io_d_out_24_a(array_0_io_d_out_24_a),
    .io_d_out_24_b(array_0_io_d_out_24_b),
    .io_d_out_25_a(array_0_io_d_out_25_a),
    .io_d_out_25_b(array_0_io_d_out_25_b),
    .io_d_out_26_a(array_0_io_d_out_26_a),
    .io_d_out_26_b(array_0_io_d_out_26_b),
    .io_d_out_27_a(array_0_io_d_out_27_a),
    .io_d_out_27_b(array_0_io_d_out_27_b),
    .io_d_out_28_a(array_0_io_d_out_28_a),
    .io_d_out_28_b(array_0_io_d_out_28_b),
    .io_d_out_29_a(array_0_io_d_out_29_a),
    .io_d_out_29_b(array_0_io_d_out_29_b),
    .io_d_out_30_a(array_0_io_d_out_30_a),
    .io_d_out_30_b(array_0_io_d_out_30_b),
    .io_d_out_31_a(array_0_io_d_out_31_a),
    .io_d_out_31_b(array_0_io_d_out_31_b),
    .io_wr_en_mem1(array_0_io_wr_en_mem1),
    .io_wr_en_mem2(array_0_io_wr_en_mem2),
    .io_wr_instr_mem1(array_0_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_0_io_wr_instr_mem2),
    .io_run(array_0_io_run)
  );
  BuildingBlock array_1 ( // @[Array.scala 16:51]
    .clock(array_1_clock),
    .reset(array_1_reset),
    .io_d_in_0_a(array_1_io_d_in_0_a),
    .io_d_in_0_b(array_1_io_d_in_0_b),
    .io_d_in_1_a(array_1_io_d_in_1_a),
    .io_d_in_1_b(array_1_io_d_in_1_b),
    .io_d_in_2_a(array_1_io_d_in_2_a),
    .io_d_in_2_b(array_1_io_d_in_2_b),
    .io_d_in_3_a(array_1_io_d_in_3_a),
    .io_d_in_3_b(array_1_io_d_in_3_b),
    .io_d_in_4_a(array_1_io_d_in_4_a),
    .io_d_in_4_b(array_1_io_d_in_4_b),
    .io_d_in_5_a(array_1_io_d_in_5_a),
    .io_d_in_5_b(array_1_io_d_in_5_b),
    .io_d_in_6_a(array_1_io_d_in_6_a),
    .io_d_in_6_b(array_1_io_d_in_6_b),
    .io_d_in_7_a(array_1_io_d_in_7_a),
    .io_d_in_7_b(array_1_io_d_in_7_b),
    .io_d_in_8_a(array_1_io_d_in_8_a),
    .io_d_in_8_b(array_1_io_d_in_8_b),
    .io_d_in_9_a(array_1_io_d_in_9_a),
    .io_d_in_9_b(array_1_io_d_in_9_b),
    .io_d_in_10_a(array_1_io_d_in_10_a),
    .io_d_in_10_b(array_1_io_d_in_10_b),
    .io_d_in_11_a(array_1_io_d_in_11_a),
    .io_d_in_11_b(array_1_io_d_in_11_b),
    .io_d_in_12_a(array_1_io_d_in_12_a),
    .io_d_in_12_b(array_1_io_d_in_12_b),
    .io_d_in_13_a(array_1_io_d_in_13_a),
    .io_d_in_13_b(array_1_io_d_in_13_b),
    .io_d_in_14_a(array_1_io_d_in_14_a),
    .io_d_in_14_b(array_1_io_d_in_14_b),
    .io_d_in_15_a(array_1_io_d_in_15_a),
    .io_d_in_15_b(array_1_io_d_in_15_b),
    .io_d_in_16_a(array_1_io_d_in_16_a),
    .io_d_in_16_b(array_1_io_d_in_16_b),
    .io_d_in_17_a(array_1_io_d_in_17_a),
    .io_d_in_17_b(array_1_io_d_in_17_b),
    .io_d_in_18_a(array_1_io_d_in_18_a),
    .io_d_in_18_b(array_1_io_d_in_18_b),
    .io_d_in_19_a(array_1_io_d_in_19_a),
    .io_d_in_19_b(array_1_io_d_in_19_b),
    .io_d_in_20_a(array_1_io_d_in_20_a),
    .io_d_in_20_b(array_1_io_d_in_20_b),
    .io_d_in_21_a(array_1_io_d_in_21_a),
    .io_d_in_21_b(array_1_io_d_in_21_b),
    .io_d_in_22_a(array_1_io_d_in_22_a),
    .io_d_in_22_b(array_1_io_d_in_22_b),
    .io_d_in_23_a(array_1_io_d_in_23_a),
    .io_d_in_23_b(array_1_io_d_in_23_b),
    .io_d_in_24_a(array_1_io_d_in_24_a),
    .io_d_in_24_b(array_1_io_d_in_24_b),
    .io_d_in_25_a(array_1_io_d_in_25_a),
    .io_d_in_25_b(array_1_io_d_in_25_b),
    .io_d_in_26_a(array_1_io_d_in_26_a),
    .io_d_in_26_b(array_1_io_d_in_26_b),
    .io_d_in_27_a(array_1_io_d_in_27_a),
    .io_d_in_27_b(array_1_io_d_in_27_b),
    .io_d_in_28_a(array_1_io_d_in_28_a),
    .io_d_in_28_b(array_1_io_d_in_28_b),
    .io_d_in_29_a(array_1_io_d_in_29_a),
    .io_d_in_29_b(array_1_io_d_in_29_b),
    .io_d_in_30_a(array_1_io_d_in_30_a),
    .io_d_in_30_b(array_1_io_d_in_30_b),
    .io_d_in_31_a(array_1_io_d_in_31_a),
    .io_d_in_31_b(array_1_io_d_in_31_b),
    .io_d_out_0_a(array_1_io_d_out_0_a),
    .io_d_out_0_b(array_1_io_d_out_0_b),
    .io_d_out_1_a(array_1_io_d_out_1_a),
    .io_d_out_1_b(array_1_io_d_out_1_b),
    .io_d_out_2_a(array_1_io_d_out_2_a),
    .io_d_out_2_b(array_1_io_d_out_2_b),
    .io_d_out_3_a(array_1_io_d_out_3_a),
    .io_d_out_3_b(array_1_io_d_out_3_b),
    .io_d_out_4_a(array_1_io_d_out_4_a),
    .io_d_out_4_b(array_1_io_d_out_4_b),
    .io_d_out_5_a(array_1_io_d_out_5_a),
    .io_d_out_5_b(array_1_io_d_out_5_b),
    .io_d_out_6_a(array_1_io_d_out_6_a),
    .io_d_out_6_b(array_1_io_d_out_6_b),
    .io_d_out_7_a(array_1_io_d_out_7_a),
    .io_d_out_7_b(array_1_io_d_out_7_b),
    .io_d_out_8_a(array_1_io_d_out_8_a),
    .io_d_out_8_b(array_1_io_d_out_8_b),
    .io_d_out_9_a(array_1_io_d_out_9_a),
    .io_d_out_9_b(array_1_io_d_out_9_b),
    .io_d_out_10_a(array_1_io_d_out_10_a),
    .io_d_out_10_b(array_1_io_d_out_10_b),
    .io_d_out_11_a(array_1_io_d_out_11_a),
    .io_d_out_11_b(array_1_io_d_out_11_b),
    .io_d_out_12_a(array_1_io_d_out_12_a),
    .io_d_out_12_b(array_1_io_d_out_12_b),
    .io_d_out_13_a(array_1_io_d_out_13_a),
    .io_d_out_13_b(array_1_io_d_out_13_b),
    .io_d_out_14_a(array_1_io_d_out_14_a),
    .io_d_out_14_b(array_1_io_d_out_14_b),
    .io_d_out_15_a(array_1_io_d_out_15_a),
    .io_d_out_15_b(array_1_io_d_out_15_b),
    .io_d_out_16_a(array_1_io_d_out_16_a),
    .io_d_out_16_b(array_1_io_d_out_16_b),
    .io_d_out_17_a(array_1_io_d_out_17_a),
    .io_d_out_17_b(array_1_io_d_out_17_b),
    .io_d_out_18_a(array_1_io_d_out_18_a),
    .io_d_out_18_b(array_1_io_d_out_18_b),
    .io_d_out_19_a(array_1_io_d_out_19_a),
    .io_d_out_19_b(array_1_io_d_out_19_b),
    .io_d_out_20_a(array_1_io_d_out_20_a),
    .io_d_out_20_b(array_1_io_d_out_20_b),
    .io_d_out_21_a(array_1_io_d_out_21_a),
    .io_d_out_21_b(array_1_io_d_out_21_b),
    .io_d_out_22_a(array_1_io_d_out_22_a),
    .io_d_out_22_b(array_1_io_d_out_22_b),
    .io_d_out_23_a(array_1_io_d_out_23_a),
    .io_d_out_23_b(array_1_io_d_out_23_b),
    .io_d_out_24_a(array_1_io_d_out_24_a),
    .io_d_out_24_b(array_1_io_d_out_24_b),
    .io_d_out_25_a(array_1_io_d_out_25_a),
    .io_d_out_25_b(array_1_io_d_out_25_b),
    .io_d_out_26_a(array_1_io_d_out_26_a),
    .io_d_out_26_b(array_1_io_d_out_26_b),
    .io_d_out_27_a(array_1_io_d_out_27_a),
    .io_d_out_27_b(array_1_io_d_out_27_b),
    .io_d_out_28_a(array_1_io_d_out_28_a),
    .io_d_out_28_b(array_1_io_d_out_28_b),
    .io_d_out_29_a(array_1_io_d_out_29_a),
    .io_d_out_29_b(array_1_io_d_out_29_b),
    .io_d_out_30_a(array_1_io_d_out_30_a),
    .io_d_out_30_b(array_1_io_d_out_30_b),
    .io_d_out_31_a(array_1_io_d_out_31_a),
    .io_d_out_31_b(array_1_io_d_out_31_b),
    .io_wr_en_mem1(array_1_io_wr_en_mem1),
    .io_wr_en_mem2(array_1_io_wr_en_mem2),
    .io_wr_instr_mem1(array_1_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_1_io_wr_instr_mem2),
    .io_run(array_1_io_run)
  );
  BuildingBlock array_2 ( // @[Array.scala 16:51]
    .clock(array_2_clock),
    .reset(array_2_reset),
    .io_d_in_0_a(array_2_io_d_in_0_a),
    .io_d_in_0_b(array_2_io_d_in_0_b),
    .io_d_in_1_a(array_2_io_d_in_1_a),
    .io_d_in_1_b(array_2_io_d_in_1_b),
    .io_d_in_2_a(array_2_io_d_in_2_a),
    .io_d_in_2_b(array_2_io_d_in_2_b),
    .io_d_in_3_a(array_2_io_d_in_3_a),
    .io_d_in_3_b(array_2_io_d_in_3_b),
    .io_d_in_4_a(array_2_io_d_in_4_a),
    .io_d_in_4_b(array_2_io_d_in_4_b),
    .io_d_in_5_a(array_2_io_d_in_5_a),
    .io_d_in_5_b(array_2_io_d_in_5_b),
    .io_d_in_6_a(array_2_io_d_in_6_a),
    .io_d_in_6_b(array_2_io_d_in_6_b),
    .io_d_in_7_a(array_2_io_d_in_7_a),
    .io_d_in_7_b(array_2_io_d_in_7_b),
    .io_d_in_8_a(array_2_io_d_in_8_a),
    .io_d_in_8_b(array_2_io_d_in_8_b),
    .io_d_in_9_a(array_2_io_d_in_9_a),
    .io_d_in_9_b(array_2_io_d_in_9_b),
    .io_d_in_10_a(array_2_io_d_in_10_a),
    .io_d_in_10_b(array_2_io_d_in_10_b),
    .io_d_in_11_a(array_2_io_d_in_11_a),
    .io_d_in_11_b(array_2_io_d_in_11_b),
    .io_d_in_12_a(array_2_io_d_in_12_a),
    .io_d_in_12_b(array_2_io_d_in_12_b),
    .io_d_in_13_a(array_2_io_d_in_13_a),
    .io_d_in_13_b(array_2_io_d_in_13_b),
    .io_d_in_14_a(array_2_io_d_in_14_a),
    .io_d_in_14_b(array_2_io_d_in_14_b),
    .io_d_in_15_a(array_2_io_d_in_15_a),
    .io_d_in_15_b(array_2_io_d_in_15_b),
    .io_d_in_16_a(array_2_io_d_in_16_a),
    .io_d_in_16_b(array_2_io_d_in_16_b),
    .io_d_in_17_a(array_2_io_d_in_17_a),
    .io_d_in_17_b(array_2_io_d_in_17_b),
    .io_d_in_18_a(array_2_io_d_in_18_a),
    .io_d_in_18_b(array_2_io_d_in_18_b),
    .io_d_in_19_a(array_2_io_d_in_19_a),
    .io_d_in_19_b(array_2_io_d_in_19_b),
    .io_d_in_20_a(array_2_io_d_in_20_a),
    .io_d_in_20_b(array_2_io_d_in_20_b),
    .io_d_in_21_a(array_2_io_d_in_21_a),
    .io_d_in_21_b(array_2_io_d_in_21_b),
    .io_d_in_22_a(array_2_io_d_in_22_a),
    .io_d_in_22_b(array_2_io_d_in_22_b),
    .io_d_in_23_a(array_2_io_d_in_23_a),
    .io_d_in_23_b(array_2_io_d_in_23_b),
    .io_d_in_24_a(array_2_io_d_in_24_a),
    .io_d_in_24_b(array_2_io_d_in_24_b),
    .io_d_in_25_a(array_2_io_d_in_25_a),
    .io_d_in_25_b(array_2_io_d_in_25_b),
    .io_d_in_26_a(array_2_io_d_in_26_a),
    .io_d_in_26_b(array_2_io_d_in_26_b),
    .io_d_in_27_a(array_2_io_d_in_27_a),
    .io_d_in_27_b(array_2_io_d_in_27_b),
    .io_d_in_28_a(array_2_io_d_in_28_a),
    .io_d_in_28_b(array_2_io_d_in_28_b),
    .io_d_in_29_a(array_2_io_d_in_29_a),
    .io_d_in_29_b(array_2_io_d_in_29_b),
    .io_d_in_30_a(array_2_io_d_in_30_a),
    .io_d_in_30_b(array_2_io_d_in_30_b),
    .io_d_in_31_a(array_2_io_d_in_31_a),
    .io_d_in_31_b(array_2_io_d_in_31_b),
    .io_d_out_0_a(array_2_io_d_out_0_a),
    .io_d_out_0_b(array_2_io_d_out_0_b),
    .io_d_out_1_a(array_2_io_d_out_1_a),
    .io_d_out_1_b(array_2_io_d_out_1_b),
    .io_d_out_2_a(array_2_io_d_out_2_a),
    .io_d_out_2_b(array_2_io_d_out_2_b),
    .io_d_out_3_a(array_2_io_d_out_3_a),
    .io_d_out_3_b(array_2_io_d_out_3_b),
    .io_d_out_4_a(array_2_io_d_out_4_a),
    .io_d_out_4_b(array_2_io_d_out_4_b),
    .io_d_out_5_a(array_2_io_d_out_5_a),
    .io_d_out_5_b(array_2_io_d_out_5_b),
    .io_d_out_6_a(array_2_io_d_out_6_a),
    .io_d_out_6_b(array_2_io_d_out_6_b),
    .io_d_out_7_a(array_2_io_d_out_7_a),
    .io_d_out_7_b(array_2_io_d_out_7_b),
    .io_d_out_8_a(array_2_io_d_out_8_a),
    .io_d_out_8_b(array_2_io_d_out_8_b),
    .io_d_out_9_a(array_2_io_d_out_9_a),
    .io_d_out_9_b(array_2_io_d_out_9_b),
    .io_d_out_10_a(array_2_io_d_out_10_a),
    .io_d_out_10_b(array_2_io_d_out_10_b),
    .io_d_out_11_a(array_2_io_d_out_11_a),
    .io_d_out_11_b(array_2_io_d_out_11_b),
    .io_d_out_12_a(array_2_io_d_out_12_a),
    .io_d_out_12_b(array_2_io_d_out_12_b),
    .io_d_out_13_a(array_2_io_d_out_13_a),
    .io_d_out_13_b(array_2_io_d_out_13_b),
    .io_d_out_14_a(array_2_io_d_out_14_a),
    .io_d_out_14_b(array_2_io_d_out_14_b),
    .io_d_out_15_a(array_2_io_d_out_15_a),
    .io_d_out_15_b(array_2_io_d_out_15_b),
    .io_d_out_16_a(array_2_io_d_out_16_a),
    .io_d_out_16_b(array_2_io_d_out_16_b),
    .io_d_out_17_a(array_2_io_d_out_17_a),
    .io_d_out_17_b(array_2_io_d_out_17_b),
    .io_d_out_18_a(array_2_io_d_out_18_a),
    .io_d_out_18_b(array_2_io_d_out_18_b),
    .io_d_out_19_a(array_2_io_d_out_19_a),
    .io_d_out_19_b(array_2_io_d_out_19_b),
    .io_d_out_20_a(array_2_io_d_out_20_a),
    .io_d_out_20_b(array_2_io_d_out_20_b),
    .io_d_out_21_a(array_2_io_d_out_21_a),
    .io_d_out_21_b(array_2_io_d_out_21_b),
    .io_d_out_22_a(array_2_io_d_out_22_a),
    .io_d_out_22_b(array_2_io_d_out_22_b),
    .io_d_out_23_a(array_2_io_d_out_23_a),
    .io_d_out_23_b(array_2_io_d_out_23_b),
    .io_d_out_24_a(array_2_io_d_out_24_a),
    .io_d_out_24_b(array_2_io_d_out_24_b),
    .io_d_out_25_a(array_2_io_d_out_25_a),
    .io_d_out_25_b(array_2_io_d_out_25_b),
    .io_d_out_26_a(array_2_io_d_out_26_a),
    .io_d_out_26_b(array_2_io_d_out_26_b),
    .io_d_out_27_a(array_2_io_d_out_27_a),
    .io_d_out_27_b(array_2_io_d_out_27_b),
    .io_d_out_28_a(array_2_io_d_out_28_a),
    .io_d_out_28_b(array_2_io_d_out_28_b),
    .io_d_out_29_a(array_2_io_d_out_29_a),
    .io_d_out_29_b(array_2_io_d_out_29_b),
    .io_d_out_30_a(array_2_io_d_out_30_a),
    .io_d_out_30_b(array_2_io_d_out_30_b),
    .io_d_out_31_a(array_2_io_d_out_31_a),
    .io_d_out_31_b(array_2_io_d_out_31_b),
    .io_wr_en_mem1(array_2_io_wr_en_mem1),
    .io_wr_en_mem2(array_2_io_wr_en_mem2),
    .io_wr_instr_mem1(array_2_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_2_io_wr_instr_mem2),
    .io_run(array_2_io_run)
  );
  BuildingBlock array_3 ( // @[Array.scala 16:51]
    .clock(array_3_clock),
    .reset(array_3_reset),
    .io_d_in_0_a(array_3_io_d_in_0_a),
    .io_d_in_0_b(array_3_io_d_in_0_b),
    .io_d_in_1_a(array_3_io_d_in_1_a),
    .io_d_in_1_b(array_3_io_d_in_1_b),
    .io_d_in_2_a(array_3_io_d_in_2_a),
    .io_d_in_2_b(array_3_io_d_in_2_b),
    .io_d_in_3_a(array_3_io_d_in_3_a),
    .io_d_in_3_b(array_3_io_d_in_3_b),
    .io_d_in_4_a(array_3_io_d_in_4_a),
    .io_d_in_4_b(array_3_io_d_in_4_b),
    .io_d_in_5_a(array_3_io_d_in_5_a),
    .io_d_in_5_b(array_3_io_d_in_5_b),
    .io_d_in_6_a(array_3_io_d_in_6_a),
    .io_d_in_6_b(array_3_io_d_in_6_b),
    .io_d_in_7_a(array_3_io_d_in_7_a),
    .io_d_in_7_b(array_3_io_d_in_7_b),
    .io_d_in_8_a(array_3_io_d_in_8_a),
    .io_d_in_8_b(array_3_io_d_in_8_b),
    .io_d_in_9_a(array_3_io_d_in_9_a),
    .io_d_in_9_b(array_3_io_d_in_9_b),
    .io_d_in_10_a(array_3_io_d_in_10_a),
    .io_d_in_10_b(array_3_io_d_in_10_b),
    .io_d_in_11_a(array_3_io_d_in_11_a),
    .io_d_in_11_b(array_3_io_d_in_11_b),
    .io_d_in_12_a(array_3_io_d_in_12_a),
    .io_d_in_12_b(array_3_io_d_in_12_b),
    .io_d_in_13_a(array_3_io_d_in_13_a),
    .io_d_in_13_b(array_3_io_d_in_13_b),
    .io_d_in_14_a(array_3_io_d_in_14_a),
    .io_d_in_14_b(array_3_io_d_in_14_b),
    .io_d_in_15_a(array_3_io_d_in_15_a),
    .io_d_in_15_b(array_3_io_d_in_15_b),
    .io_d_in_16_a(array_3_io_d_in_16_a),
    .io_d_in_16_b(array_3_io_d_in_16_b),
    .io_d_in_17_a(array_3_io_d_in_17_a),
    .io_d_in_17_b(array_3_io_d_in_17_b),
    .io_d_in_18_a(array_3_io_d_in_18_a),
    .io_d_in_18_b(array_3_io_d_in_18_b),
    .io_d_in_19_a(array_3_io_d_in_19_a),
    .io_d_in_19_b(array_3_io_d_in_19_b),
    .io_d_in_20_a(array_3_io_d_in_20_a),
    .io_d_in_20_b(array_3_io_d_in_20_b),
    .io_d_in_21_a(array_3_io_d_in_21_a),
    .io_d_in_21_b(array_3_io_d_in_21_b),
    .io_d_in_22_a(array_3_io_d_in_22_a),
    .io_d_in_22_b(array_3_io_d_in_22_b),
    .io_d_in_23_a(array_3_io_d_in_23_a),
    .io_d_in_23_b(array_3_io_d_in_23_b),
    .io_d_in_24_a(array_3_io_d_in_24_a),
    .io_d_in_24_b(array_3_io_d_in_24_b),
    .io_d_in_25_a(array_3_io_d_in_25_a),
    .io_d_in_25_b(array_3_io_d_in_25_b),
    .io_d_in_26_a(array_3_io_d_in_26_a),
    .io_d_in_26_b(array_3_io_d_in_26_b),
    .io_d_in_27_a(array_3_io_d_in_27_a),
    .io_d_in_27_b(array_3_io_d_in_27_b),
    .io_d_in_28_a(array_3_io_d_in_28_a),
    .io_d_in_28_b(array_3_io_d_in_28_b),
    .io_d_in_29_a(array_3_io_d_in_29_a),
    .io_d_in_29_b(array_3_io_d_in_29_b),
    .io_d_in_30_a(array_3_io_d_in_30_a),
    .io_d_in_30_b(array_3_io_d_in_30_b),
    .io_d_in_31_a(array_3_io_d_in_31_a),
    .io_d_in_31_b(array_3_io_d_in_31_b),
    .io_d_out_0_a(array_3_io_d_out_0_a),
    .io_d_out_0_b(array_3_io_d_out_0_b),
    .io_d_out_1_a(array_3_io_d_out_1_a),
    .io_d_out_1_b(array_3_io_d_out_1_b),
    .io_d_out_2_a(array_3_io_d_out_2_a),
    .io_d_out_2_b(array_3_io_d_out_2_b),
    .io_d_out_3_a(array_3_io_d_out_3_a),
    .io_d_out_3_b(array_3_io_d_out_3_b),
    .io_d_out_4_a(array_3_io_d_out_4_a),
    .io_d_out_4_b(array_3_io_d_out_4_b),
    .io_d_out_5_a(array_3_io_d_out_5_a),
    .io_d_out_5_b(array_3_io_d_out_5_b),
    .io_d_out_6_a(array_3_io_d_out_6_a),
    .io_d_out_6_b(array_3_io_d_out_6_b),
    .io_d_out_7_a(array_3_io_d_out_7_a),
    .io_d_out_7_b(array_3_io_d_out_7_b),
    .io_d_out_8_a(array_3_io_d_out_8_a),
    .io_d_out_8_b(array_3_io_d_out_8_b),
    .io_d_out_9_a(array_3_io_d_out_9_a),
    .io_d_out_9_b(array_3_io_d_out_9_b),
    .io_d_out_10_a(array_3_io_d_out_10_a),
    .io_d_out_10_b(array_3_io_d_out_10_b),
    .io_d_out_11_a(array_3_io_d_out_11_a),
    .io_d_out_11_b(array_3_io_d_out_11_b),
    .io_d_out_12_a(array_3_io_d_out_12_a),
    .io_d_out_12_b(array_3_io_d_out_12_b),
    .io_d_out_13_a(array_3_io_d_out_13_a),
    .io_d_out_13_b(array_3_io_d_out_13_b),
    .io_d_out_14_a(array_3_io_d_out_14_a),
    .io_d_out_14_b(array_3_io_d_out_14_b),
    .io_d_out_15_a(array_3_io_d_out_15_a),
    .io_d_out_15_b(array_3_io_d_out_15_b),
    .io_d_out_16_a(array_3_io_d_out_16_a),
    .io_d_out_16_b(array_3_io_d_out_16_b),
    .io_d_out_17_a(array_3_io_d_out_17_a),
    .io_d_out_17_b(array_3_io_d_out_17_b),
    .io_d_out_18_a(array_3_io_d_out_18_a),
    .io_d_out_18_b(array_3_io_d_out_18_b),
    .io_d_out_19_a(array_3_io_d_out_19_a),
    .io_d_out_19_b(array_3_io_d_out_19_b),
    .io_d_out_20_a(array_3_io_d_out_20_a),
    .io_d_out_20_b(array_3_io_d_out_20_b),
    .io_d_out_21_a(array_3_io_d_out_21_a),
    .io_d_out_21_b(array_3_io_d_out_21_b),
    .io_d_out_22_a(array_3_io_d_out_22_a),
    .io_d_out_22_b(array_3_io_d_out_22_b),
    .io_d_out_23_a(array_3_io_d_out_23_a),
    .io_d_out_23_b(array_3_io_d_out_23_b),
    .io_d_out_24_a(array_3_io_d_out_24_a),
    .io_d_out_24_b(array_3_io_d_out_24_b),
    .io_d_out_25_a(array_3_io_d_out_25_a),
    .io_d_out_25_b(array_3_io_d_out_25_b),
    .io_d_out_26_a(array_3_io_d_out_26_a),
    .io_d_out_26_b(array_3_io_d_out_26_b),
    .io_d_out_27_a(array_3_io_d_out_27_a),
    .io_d_out_27_b(array_3_io_d_out_27_b),
    .io_d_out_28_a(array_3_io_d_out_28_a),
    .io_d_out_28_b(array_3_io_d_out_28_b),
    .io_d_out_29_a(array_3_io_d_out_29_a),
    .io_d_out_29_b(array_3_io_d_out_29_b),
    .io_d_out_30_a(array_3_io_d_out_30_a),
    .io_d_out_30_b(array_3_io_d_out_30_b),
    .io_d_out_31_a(array_3_io_d_out_31_a),
    .io_d_out_31_b(array_3_io_d_out_31_b),
    .io_wr_en_mem1(array_3_io_wr_en_mem1),
    .io_wr_en_mem2(array_3_io_wr_en_mem2),
    .io_wr_instr_mem1(array_3_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_3_io_wr_instr_mem2),
    .io_run(array_3_io_run)
  );
  BuildingBlock array_4 ( // @[Array.scala 16:51]
    .clock(array_4_clock),
    .reset(array_4_reset),
    .io_d_in_0_a(array_4_io_d_in_0_a),
    .io_d_in_0_b(array_4_io_d_in_0_b),
    .io_d_in_1_a(array_4_io_d_in_1_a),
    .io_d_in_1_b(array_4_io_d_in_1_b),
    .io_d_in_2_a(array_4_io_d_in_2_a),
    .io_d_in_2_b(array_4_io_d_in_2_b),
    .io_d_in_3_a(array_4_io_d_in_3_a),
    .io_d_in_3_b(array_4_io_d_in_3_b),
    .io_d_in_4_a(array_4_io_d_in_4_a),
    .io_d_in_4_b(array_4_io_d_in_4_b),
    .io_d_in_5_a(array_4_io_d_in_5_a),
    .io_d_in_5_b(array_4_io_d_in_5_b),
    .io_d_in_6_a(array_4_io_d_in_6_a),
    .io_d_in_6_b(array_4_io_d_in_6_b),
    .io_d_in_7_a(array_4_io_d_in_7_a),
    .io_d_in_7_b(array_4_io_d_in_7_b),
    .io_d_in_8_a(array_4_io_d_in_8_a),
    .io_d_in_8_b(array_4_io_d_in_8_b),
    .io_d_in_9_a(array_4_io_d_in_9_a),
    .io_d_in_9_b(array_4_io_d_in_9_b),
    .io_d_in_10_a(array_4_io_d_in_10_a),
    .io_d_in_10_b(array_4_io_d_in_10_b),
    .io_d_in_11_a(array_4_io_d_in_11_a),
    .io_d_in_11_b(array_4_io_d_in_11_b),
    .io_d_in_12_a(array_4_io_d_in_12_a),
    .io_d_in_12_b(array_4_io_d_in_12_b),
    .io_d_in_13_a(array_4_io_d_in_13_a),
    .io_d_in_13_b(array_4_io_d_in_13_b),
    .io_d_in_14_a(array_4_io_d_in_14_a),
    .io_d_in_14_b(array_4_io_d_in_14_b),
    .io_d_in_15_a(array_4_io_d_in_15_a),
    .io_d_in_15_b(array_4_io_d_in_15_b),
    .io_d_in_16_a(array_4_io_d_in_16_a),
    .io_d_in_16_b(array_4_io_d_in_16_b),
    .io_d_in_17_a(array_4_io_d_in_17_a),
    .io_d_in_17_b(array_4_io_d_in_17_b),
    .io_d_in_18_a(array_4_io_d_in_18_a),
    .io_d_in_18_b(array_4_io_d_in_18_b),
    .io_d_in_19_a(array_4_io_d_in_19_a),
    .io_d_in_19_b(array_4_io_d_in_19_b),
    .io_d_in_20_a(array_4_io_d_in_20_a),
    .io_d_in_20_b(array_4_io_d_in_20_b),
    .io_d_in_21_a(array_4_io_d_in_21_a),
    .io_d_in_21_b(array_4_io_d_in_21_b),
    .io_d_in_22_a(array_4_io_d_in_22_a),
    .io_d_in_22_b(array_4_io_d_in_22_b),
    .io_d_in_23_a(array_4_io_d_in_23_a),
    .io_d_in_23_b(array_4_io_d_in_23_b),
    .io_d_in_24_a(array_4_io_d_in_24_a),
    .io_d_in_24_b(array_4_io_d_in_24_b),
    .io_d_in_25_a(array_4_io_d_in_25_a),
    .io_d_in_25_b(array_4_io_d_in_25_b),
    .io_d_in_26_a(array_4_io_d_in_26_a),
    .io_d_in_26_b(array_4_io_d_in_26_b),
    .io_d_in_27_a(array_4_io_d_in_27_a),
    .io_d_in_27_b(array_4_io_d_in_27_b),
    .io_d_in_28_a(array_4_io_d_in_28_a),
    .io_d_in_28_b(array_4_io_d_in_28_b),
    .io_d_in_29_a(array_4_io_d_in_29_a),
    .io_d_in_29_b(array_4_io_d_in_29_b),
    .io_d_in_30_a(array_4_io_d_in_30_a),
    .io_d_in_30_b(array_4_io_d_in_30_b),
    .io_d_in_31_a(array_4_io_d_in_31_a),
    .io_d_in_31_b(array_4_io_d_in_31_b),
    .io_d_out_0_a(array_4_io_d_out_0_a),
    .io_d_out_0_b(array_4_io_d_out_0_b),
    .io_d_out_1_a(array_4_io_d_out_1_a),
    .io_d_out_1_b(array_4_io_d_out_1_b),
    .io_d_out_2_a(array_4_io_d_out_2_a),
    .io_d_out_2_b(array_4_io_d_out_2_b),
    .io_d_out_3_a(array_4_io_d_out_3_a),
    .io_d_out_3_b(array_4_io_d_out_3_b),
    .io_d_out_4_a(array_4_io_d_out_4_a),
    .io_d_out_4_b(array_4_io_d_out_4_b),
    .io_d_out_5_a(array_4_io_d_out_5_a),
    .io_d_out_5_b(array_4_io_d_out_5_b),
    .io_d_out_6_a(array_4_io_d_out_6_a),
    .io_d_out_6_b(array_4_io_d_out_6_b),
    .io_d_out_7_a(array_4_io_d_out_7_a),
    .io_d_out_7_b(array_4_io_d_out_7_b),
    .io_d_out_8_a(array_4_io_d_out_8_a),
    .io_d_out_8_b(array_4_io_d_out_8_b),
    .io_d_out_9_a(array_4_io_d_out_9_a),
    .io_d_out_9_b(array_4_io_d_out_9_b),
    .io_d_out_10_a(array_4_io_d_out_10_a),
    .io_d_out_10_b(array_4_io_d_out_10_b),
    .io_d_out_11_a(array_4_io_d_out_11_a),
    .io_d_out_11_b(array_4_io_d_out_11_b),
    .io_d_out_12_a(array_4_io_d_out_12_a),
    .io_d_out_12_b(array_4_io_d_out_12_b),
    .io_d_out_13_a(array_4_io_d_out_13_a),
    .io_d_out_13_b(array_4_io_d_out_13_b),
    .io_d_out_14_a(array_4_io_d_out_14_a),
    .io_d_out_14_b(array_4_io_d_out_14_b),
    .io_d_out_15_a(array_4_io_d_out_15_a),
    .io_d_out_15_b(array_4_io_d_out_15_b),
    .io_d_out_16_a(array_4_io_d_out_16_a),
    .io_d_out_16_b(array_4_io_d_out_16_b),
    .io_d_out_17_a(array_4_io_d_out_17_a),
    .io_d_out_17_b(array_4_io_d_out_17_b),
    .io_d_out_18_a(array_4_io_d_out_18_a),
    .io_d_out_18_b(array_4_io_d_out_18_b),
    .io_d_out_19_a(array_4_io_d_out_19_a),
    .io_d_out_19_b(array_4_io_d_out_19_b),
    .io_d_out_20_a(array_4_io_d_out_20_a),
    .io_d_out_20_b(array_4_io_d_out_20_b),
    .io_d_out_21_a(array_4_io_d_out_21_a),
    .io_d_out_21_b(array_4_io_d_out_21_b),
    .io_d_out_22_a(array_4_io_d_out_22_a),
    .io_d_out_22_b(array_4_io_d_out_22_b),
    .io_d_out_23_a(array_4_io_d_out_23_a),
    .io_d_out_23_b(array_4_io_d_out_23_b),
    .io_d_out_24_a(array_4_io_d_out_24_a),
    .io_d_out_24_b(array_4_io_d_out_24_b),
    .io_d_out_25_a(array_4_io_d_out_25_a),
    .io_d_out_25_b(array_4_io_d_out_25_b),
    .io_d_out_26_a(array_4_io_d_out_26_a),
    .io_d_out_26_b(array_4_io_d_out_26_b),
    .io_d_out_27_a(array_4_io_d_out_27_a),
    .io_d_out_27_b(array_4_io_d_out_27_b),
    .io_d_out_28_a(array_4_io_d_out_28_a),
    .io_d_out_28_b(array_4_io_d_out_28_b),
    .io_d_out_29_a(array_4_io_d_out_29_a),
    .io_d_out_29_b(array_4_io_d_out_29_b),
    .io_d_out_30_a(array_4_io_d_out_30_a),
    .io_d_out_30_b(array_4_io_d_out_30_b),
    .io_d_out_31_a(array_4_io_d_out_31_a),
    .io_d_out_31_b(array_4_io_d_out_31_b),
    .io_wr_en_mem1(array_4_io_wr_en_mem1),
    .io_wr_en_mem2(array_4_io_wr_en_mem2),
    .io_wr_instr_mem1(array_4_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_4_io_wr_instr_mem2),
    .io_run(array_4_io_run)
  );
  BuildingBlock array_5 ( // @[Array.scala 16:51]
    .clock(array_5_clock),
    .reset(array_5_reset),
    .io_d_in_0_a(array_5_io_d_in_0_a),
    .io_d_in_0_b(array_5_io_d_in_0_b),
    .io_d_in_1_a(array_5_io_d_in_1_a),
    .io_d_in_1_b(array_5_io_d_in_1_b),
    .io_d_in_2_a(array_5_io_d_in_2_a),
    .io_d_in_2_b(array_5_io_d_in_2_b),
    .io_d_in_3_a(array_5_io_d_in_3_a),
    .io_d_in_3_b(array_5_io_d_in_3_b),
    .io_d_in_4_a(array_5_io_d_in_4_a),
    .io_d_in_4_b(array_5_io_d_in_4_b),
    .io_d_in_5_a(array_5_io_d_in_5_a),
    .io_d_in_5_b(array_5_io_d_in_5_b),
    .io_d_in_6_a(array_5_io_d_in_6_a),
    .io_d_in_6_b(array_5_io_d_in_6_b),
    .io_d_in_7_a(array_5_io_d_in_7_a),
    .io_d_in_7_b(array_5_io_d_in_7_b),
    .io_d_in_8_a(array_5_io_d_in_8_a),
    .io_d_in_8_b(array_5_io_d_in_8_b),
    .io_d_in_9_a(array_5_io_d_in_9_a),
    .io_d_in_9_b(array_5_io_d_in_9_b),
    .io_d_in_10_a(array_5_io_d_in_10_a),
    .io_d_in_10_b(array_5_io_d_in_10_b),
    .io_d_in_11_a(array_5_io_d_in_11_a),
    .io_d_in_11_b(array_5_io_d_in_11_b),
    .io_d_in_12_a(array_5_io_d_in_12_a),
    .io_d_in_12_b(array_5_io_d_in_12_b),
    .io_d_in_13_a(array_5_io_d_in_13_a),
    .io_d_in_13_b(array_5_io_d_in_13_b),
    .io_d_in_14_a(array_5_io_d_in_14_a),
    .io_d_in_14_b(array_5_io_d_in_14_b),
    .io_d_in_15_a(array_5_io_d_in_15_a),
    .io_d_in_15_b(array_5_io_d_in_15_b),
    .io_d_in_16_a(array_5_io_d_in_16_a),
    .io_d_in_16_b(array_5_io_d_in_16_b),
    .io_d_in_17_a(array_5_io_d_in_17_a),
    .io_d_in_17_b(array_5_io_d_in_17_b),
    .io_d_in_18_a(array_5_io_d_in_18_a),
    .io_d_in_18_b(array_5_io_d_in_18_b),
    .io_d_in_19_a(array_5_io_d_in_19_a),
    .io_d_in_19_b(array_5_io_d_in_19_b),
    .io_d_in_20_a(array_5_io_d_in_20_a),
    .io_d_in_20_b(array_5_io_d_in_20_b),
    .io_d_in_21_a(array_5_io_d_in_21_a),
    .io_d_in_21_b(array_5_io_d_in_21_b),
    .io_d_in_22_a(array_5_io_d_in_22_a),
    .io_d_in_22_b(array_5_io_d_in_22_b),
    .io_d_in_23_a(array_5_io_d_in_23_a),
    .io_d_in_23_b(array_5_io_d_in_23_b),
    .io_d_in_24_a(array_5_io_d_in_24_a),
    .io_d_in_24_b(array_5_io_d_in_24_b),
    .io_d_in_25_a(array_5_io_d_in_25_a),
    .io_d_in_25_b(array_5_io_d_in_25_b),
    .io_d_in_26_a(array_5_io_d_in_26_a),
    .io_d_in_26_b(array_5_io_d_in_26_b),
    .io_d_in_27_a(array_5_io_d_in_27_a),
    .io_d_in_27_b(array_5_io_d_in_27_b),
    .io_d_in_28_a(array_5_io_d_in_28_a),
    .io_d_in_28_b(array_5_io_d_in_28_b),
    .io_d_in_29_a(array_5_io_d_in_29_a),
    .io_d_in_29_b(array_5_io_d_in_29_b),
    .io_d_in_30_a(array_5_io_d_in_30_a),
    .io_d_in_30_b(array_5_io_d_in_30_b),
    .io_d_in_31_a(array_5_io_d_in_31_a),
    .io_d_in_31_b(array_5_io_d_in_31_b),
    .io_d_out_0_a(array_5_io_d_out_0_a),
    .io_d_out_0_b(array_5_io_d_out_0_b),
    .io_d_out_1_a(array_5_io_d_out_1_a),
    .io_d_out_1_b(array_5_io_d_out_1_b),
    .io_d_out_2_a(array_5_io_d_out_2_a),
    .io_d_out_2_b(array_5_io_d_out_2_b),
    .io_d_out_3_a(array_5_io_d_out_3_a),
    .io_d_out_3_b(array_5_io_d_out_3_b),
    .io_d_out_4_a(array_5_io_d_out_4_a),
    .io_d_out_4_b(array_5_io_d_out_4_b),
    .io_d_out_5_a(array_5_io_d_out_5_a),
    .io_d_out_5_b(array_5_io_d_out_5_b),
    .io_d_out_6_a(array_5_io_d_out_6_a),
    .io_d_out_6_b(array_5_io_d_out_6_b),
    .io_d_out_7_a(array_5_io_d_out_7_a),
    .io_d_out_7_b(array_5_io_d_out_7_b),
    .io_d_out_8_a(array_5_io_d_out_8_a),
    .io_d_out_8_b(array_5_io_d_out_8_b),
    .io_d_out_9_a(array_5_io_d_out_9_a),
    .io_d_out_9_b(array_5_io_d_out_9_b),
    .io_d_out_10_a(array_5_io_d_out_10_a),
    .io_d_out_10_b(array_5_io_d_out_10_b),
    .io_d_out_11_a(array_5_io_d_out_11_a),
    .io_d_out_11_b(array_5_io_d_out_11_b),
    .io_d_out_12_a(array_5_io_d_out_12_a),
    .io_d_out_12_b(array_5_io_d_out_12_b),
    .io_d_out_13_a(array_5_io_d_out_13_a),
    .io_d_out_13_b(array_5_io_d_out_13_b),
    .io_d_out_14_a(array_5_io_d_out_14_a),
    .io_d_out_14_b(array_5_io_d_out_14_b),
    .io_d_out_15_a(array_5_io_d_out_15_a),
    .io_d_out_15_b(array_5_io_d_out_15_b),
    .io_d_out_16_a(array_5_io_d_out_16_a),
    .io_d_out_16_b(array_5_io_d_out_16_b),
    .io_d_out_17_a(array_5_io_d_out_17_a),
    .io_d_out_17_b(array_5_io_d_out_17_b),
    .io_d_out_18_a(array_5_io_d_out_18_a),
    .io_d_out_18_b(array_5_io_d_out_18_b),
    .io_d_out_19_a(array_5_io_d_out_19_a),
    .io_d_out_19_b(array_5_io_d_out_19_b),
    .io_d_out_20_a(array_5_io_d_out_20_a),
    .io_d_out_20_b(array_5_io_d_out_20_b),
    .io_d_out_21_a(array_5_io_d_out_21_a),
    .io_d_out_21_b(array_5_io_d_out_21_b),
    .io_d_out_22_a(array_5_io_d_out_22_a),
    .io_d_out_22_b(array_5_io_d_out_22_b),
    .io_d_out_23_a(array_5_io_d_out_23_a),
    .io_d_out_23_b(array_5_io_d_out_23_b),
    .io_d_out_24_a(array_5_io_d_out_24_a),
    .io_d_out_24_b(array_5_io_d_out_24_b),
    .io_d_out_25_a(array_5_io_d_out_25_a),
    .io_d_out_25_b(array_5_io_d_out_25_b),
    .io_d_out_26_a(array_5_io_d_out_26_a),
    .io_d_out_26_b(array_5_io_d_out_26_b),
    .io_d_out_27_a(array_5_io_d_out_27_a),
    .io_d_out_27_b(array_5_io_d_out_27_b),
    .io_d_out_28_a(array_5_io_d_out_28_a),
    .io_d_out_28_b(array_5_io_d_out_28_b),
    .io_d_out_29_a(array_5_io_d_out_29_a),
    .io_d_out_29_b(array_5_io_d_out_29_b),
    .io_d_out_30_a(array_5_io_d_out_30_a),
    .io_d_out_30_b(array_5_io_d_out_30_b),
    .io_d_out_31_a(array_5_io_d_out_31_a),
    .io_d_out_31_b(array_5_io_d_out_31_b),
    .io_wr_en_mem1(array_5_io_wr_en_mem1),
    .io_wr_en_mem2(array_5_io_wr_en_mem2),
    .io_wr_instr_mem1(array_5_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_5_io_wr_instr_mem2),
    .io_run(array_5_io_run)
  );
  BuildingBlock array_6 ( // @[Array.scala 16:51]
    .clock(array_6_clock),
    .reset(array_6_reset),
    .io_d_in_0_a(array_6_io_d_in_0_a),
    .io_d_in_0_b(array_6_io_d_in_0_b),
    .io_d_in_1_a(array_6_io_d_in_1_a),
    .io_d_in_1_b(array_6_io_d_in_1_b),
    .io_d_in_2_a(array_6_io_d_in_2_a),
    .io_d_in_2_b(array_6_io_d_in_2_b),
    .io_d_in_3_a(array_6_io_d_in_3_a),
    .io_d_in_3_b(array_6_io_d_in_3_b),
    .io_d_in_4_a(array_6_io_d_in_4_a),
    .io_d_in_4_b(array_6_io_d_in_4_b),
    .io_d_in_5_a(array_6_io_d_in_5_a),
    .io_d_in_5_b(array_6_io_d_in_5_b),
    .io_d_in_6_a(array_6_io_d_in_6_a),
    .io_d_in_6_b(array_6_io_d_in_6_b),
    .io_d_in_7_a(array_6_io_d_in_7_a),
    .io_d_in_7_b(array_6_io_d_in_7_b),
    .io_d_in_8_a(array_6_io_d_in_8_a),
    .io_d_in_8_b(array_6_io_d_in_8_b),
    .io_d_in_9_a(array_6_io_d_in_9_a),
    .io_d_in_9_b(array_6_io_d_in_9_b),
    .io_d_in_10_a(array_6_io_d_in_10_a),
    .io_d_in_10_b(array_6_io_d_in_10_b),
    .io_d_in_11_a(array_6_io_d_in_11_a),
    .io_d_in_11_b(array_6_io_d_in_11_b),
    .io_d_in_12_a(array_6_io_d_in_12_a),
    .io_d_in_12_b(array_6_io_d_in_12_b),
    .io_d_in_13_a(array_6_io_d_in_13_a),
    .io_d_in_13_b(array_6_io_d_in_13_b),
    .io_d_in_14_a(array_6_io_d_in_14_a),
    .io_d_in_14_b(array_6_io_d_in_14_b),
    .io_d_in_15_a(array_6_io_d_in_15_a),
    .io_d_in_15_b(array_6_io_d_in_15_b),
    .io_d_in_16_a(array_6_io_d_in_16_a),
    .io_d_in_16_b(array_6_io_d_in_16_b),
    .io_d_in_17_a(array_6_io_d_in_17_a),
    .io_d_in_17_b(array_6_io_d_in_17_b),
    .io_d_in_18_a(array_6_io_d_in_18_a),
    .io_d_in_18_b(array_6_io_d_in_18_b),
    .io_d_in_19_a(array_6_io_d_in_19_a),
    .io_d_in_19_b(array_6_io_d_in_19_b),
    .io_d_in_20_a(array_6_io_d_in_20_a),
    .io_d_in_20_b(array_6_io_d_in_20_b),
    .io_d_in_21_a(array_6_io_d_in_21_a),
    .io_d_in_21_b(array_6_io_d_in_21_b),
    .io_d_in_22_a(array_6_io_d_in_22_a),
    .io_d_in_22_b(array_6_io_d_in_22_b),
    .io_d_in_23_a(array_6_io_d_in_23_a),
    .io_d_in_23_b(array_6_io_d_in_23_b),
    .io_d_in_24_a(array_6_io_d_in_24_a),
    .io_d_in_24_b(array_6_io_d_in_24_b),
    .io_d_in_25_a(array_6_io_d_in_25_a),
    .io_d_in_25_b(array_6_io_d_in_25_b),
    .io_d_in_26_a(array_6_io_d_in_26_a),
    .io_d_in_26_b(array_6_io_d_in_26_b),
    .io_d_in_27_a(array_6_io_d_in_27_a),
    .io_d_in_27_b(array_6_io_d_in_27_b),
    .io_d_in_28_a(array_6_io_d_in_28_a),
    .io_d_in_28_b(array_6_io_d_in_28_b),
    .io_d_in_29_a(array_6_io_d_in_29_a),
    .io_d_in_29_b(array_6_io_d_in_29_b),
    .io_d_in_30_a(array_6_io_d_in_30_a),
    .io_d_in_30_b(array_6_io_d_in_30_b),
    .io_d_in_31_a(array_6_io_d_in_31_a),
    .io_d_in_31_b(array_6_io_d_in_31_b),
    .io_d_out_0_a(array_6_io_d_out_0_a),
    .io_d_out_0_b(array_6_io_d_out_0_b),
    .io_d_out_1_a(array_6_io_d_out_1_a),
    .io_d_out_1_b(array_6_io_d_out_1_b),
    .io_d_out_2_a(array_6_io_d_out_2_a),
    .io_d_out_2_b(array_6_io_d_out_2_b),
    .io_d_out_3_a(array_6_io_d_out_3_a),
    .io_d_out_3_b(array_6_io_d_out_3_b),
    .io_d_out_4_a(array_6_io_d_out_4_a),
    .io_d_out_4_b(array_6_io_d_out_4_b),
    .io_d_out_5_a(array_6_io_d_out_5_a),
    .io_d_out_5_b(array_6_io_d_out_5_b),
    .io_d_out_6_a(array_6_io_d_out_6_a),
    .io_d_out_6_b(array_6_io_d_out_6_b),
    .io_d_out_7_a(array_6_io_d_out_7_a),
    .io_d_out_7_b(array_6_io_d_out_7_b),
    .io_d_out_8_a(array_6_io_d_out_8_a),
    .io_d_out_8_b(array_6_io_d_out_8_b),
    .io_d_out_9_a(array_6_io_d_out_9_a),
    .io_d_out_9_b(array_6_io_d_out_9_b),
    .io_d_out_10_a(array_6_io_d_out_10_a),
    .io_d_out_10_b(array_6_io_d_out_10_b),
    .io_d_out_11_a(array_6_io_d_out_11_a),
    .io_d_out_11_b(array_6_io_d_out_11_b),
    .io_d_out_12_a(array_6_io_d_out_12_a),
    .io_d_out_12_b(array_6_io_d_out_12_b),
    .io_d_out_13_a(array_6_io_d_out_13_a),
    .io_d_out_13_b(array_6_io_d_out_13_b),
    .io_d_out_14_a(array_6_io_d_out_14_a),
    .io_d_out_14_b(array_6_io_d_out_14_b),
    .io_d_out_15_a(array_6_io_d_out_15_a),
    .io_d_out_15_b(array_6_io_d_out_15_b),
    .io_d_out_16_a(array_6_io_d_out_16_a),
    .io_d_out_16_b(array_6_io_d_out_16_b),
    .io_d_out_17_a(array_6_io_d_out_17_a),
    .io_d_out_17_b(array_6_io_d_out_17_b),
    .io_d_out_18_a(array_6_io_d_out_18_a),
    .io_d_out_18_b(array_6_io_d_out_18_b),
    .io_d_out_19_a(array_6_io_d_out_19_a),
    .io_d_out_19_b(array_6_io_d_out_19_b),
    .io_d_out_20_a(array_6_io_d_out_20_a),
    .io_d_out_20_b(array_6_io_d_out_20_b),
    .io_d_out_21_a(array_6_io_d_out_21_a),
    .io_d_out_21_b(array_6_io_d_out_21_b),
    .io_d_out_22_a(array_6_io_d_out_22_a),
    .io_d_out_22_b(array_6_io_d_out_22_b),
    .io_d_out_23_a(array_6_io_d_out_23_a),
    .io_d_out_23_b(array_6_io_d_out_23_b),
    .io_d_out_24_a(array_6_io_d_out_24_a),
    .io_d_out_24_b(array_6_io_d_out_24_b),
    .io_d_out_25_a(array_6_io_d_out_25_a),
    .io_d_out_25_b(array_6_io_d_out_25_b),
    .io_d_out_26_a(array_6_io_d_out_26_a),
    .io_d_out_26_b(array_6_io_d_out_26_b),
    .io_d_out_27_a(array_6_io_d_out_27_a),
    .io_d_out_27_b(array_6_io_d_out_27_b),
    .io_d_out_28_a(array_6_io_d_out_28_a),
    .io_d_out_28_b(array_6_io_d_out_28_b),
    .io_d_out_29_a(array_6_io_d_out_29_a),
    .io_d_out_29_b(array_6_io_d_out_29_b),
    .io_d_out_30_a(array_6_io_d_out_30_a),
    .io_d_out_30_b(array_6_io_d_out_30_b),
    .io_d_out_31_a(array_6_io_d_out_31_a),
    .io_d_out_31_b(array_6_io_d_out_31_b),
    .io_wr_en_mem1(array_6_io_wr_en_mem1),
    .io_wr_en_mem2(array_6_io_wr_en_mem2),
    .io_wr_instr_mem1(array_6_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_6_io_wr_instr_mem2),
    .io_run(array_6_io_run)
  );
  BuildingBlock array_7 ( // @[Array.scala 16:51]
    .clock(array_7_clock),
    .reset(array_7_reset),
    .io_d_in_0_a(array_7_io_d_in_0_a),
    .io_d_in_0_b(array_7_io_d_in_0_b),
    .io_d_in_1_a(array_7_io_d_in_1_a),
    .io_d_in_1_b(array_7_io_d_in_1_b),
    .io_d_in_2_a(array_7_io_d_in_2_a),
    .io_d_in_2_b(array_7_io_d_in_2_b),
    .io_d_in_3_a(array_7_io_d_in_3_a),
    .io_d_in_3_b(array_7_io_d_in_3_b),
    .io_d_in_4_a(array_7_io_d_in_4_a),
    .io_d_in_4_b(array_7_io_d_in_4_b),
    .io_d_in_5_a(array_7_io_d_in_5_a),
    .io_d_in_5_b(array_7_io_d_in_5_b),
    .io_d_in_6_a(array_7_io_d_in_6_a),
    .io_d_in_6_b(array_7_io_d_in_6_b),
    .io_d_in_7_a(array_7_io_d_in_7_a),
    .io_d_in_7_b(array_7_io_d_in_7_b),
    .io_d_in_8_a(array_7_io_d_in_8_a),
    .io_d_in_8_b(array_7_io_d_in_8_b),
    .io_d_in_9_a(array_7_io_d_in_9_a),
    .io_d_in_9_b(array_7_io_d_in_9_b),
    .io_d_in_10_a(array_7_io_d_in_10_a),
    .io_d_in_10_b(array_7_io_d_in_10_b),
    .io_d_in_11_a(array_7_io_d_in_11_a),
    .io_d_in_11_b(array_7_io_d_in_11_b),
    .io_d_in_12_a(array_7_io_d_in_12_a),
    .io_d_in_12_b(array_7_io_d_in_12_b),
    .io_d_in_13_a(array_7_io_d_in_13_a),
    .io_d_in_13_b(array_7_io_d_in_13_b),
    .io_d_in_14_a(array_7_io_d_in_14_a),
    .io_d_in_14_b(array_7_io_d_in_14_b),
    .io_d_in_15_a(array_7_io_d_in_15_a),
    .io_d_in_15_b(array_7_io_d_in_15_b),
    .io_d_in_16_a(array_7_io_d_in_16_a),
    .io_d_in_16_b(array_7_io_d_in_16_b),
    .io_d_in_17_a(array_7_io_d_in_17_a),
    .io_d_in_17_b(array_7_io_d_in_17_b),
    .io_d_in_18_a(array_7_io_d_in_18_a),
    .io_d_in_18_b(array_7_io_d_in_18_b),
    .io_d_in_19_a(array_7_io_d_in_19_a),
    .io_d_in_19_b(array_7_io_d_in_19_b),
    .io_d_in_20_a(array_7_io_d_in_20_a),
    .io_d_in_20_b(array_7_io_d_in_20_b),
    .io_d_in_21_a(array_7_io_d_in_21_a),
    .io_d_in_21_b(array_7_io_d_in_21_b),
    .io_d_in_22_a(array_7_io_d_in_22_a),
    .io_d_in_22_b(array_7_io_d_in_22_b),
    .io_d_in_23_a(array_7_io_d_in_23_a),
    .io_d_in_23_b(array_7_io_d_in_23_b),
    .io_d_in_24_a(array_7_io_d_in_24_a),
    .io_d_in_24_b(array_7_io_d_in_24_b),
    .io_d_in_25_a(array_7_io_d_in_25_a),
    .io_d_in_25_b(array_7_io_d_in_25_b),
    .io_d_in_26_a(array_7_io_d_in_26_a),
    .io_d_in_26_b(array_7_io_d_in_26_b),
    .io_d_in_27_a(array_7_io_d_in_27_a),
    .io_d_in_27_b(array_7_io_d_in_27_b),
    .io_d_in_28_a(array_7_io_d_in_28_a),
    .io_d_in_28_b(array_7_io_d_in_28_b),
    .io_d_in_29_a(array_7_io_d_in_29_a),
    .io_d_in_29_b(array_7_io_d_in_29_b),
    .io_d_in_30_a(array_7_io_d_in_30_a),
    .io_d_in_30_b(array_7_io_d_in_30_b),
    .io_d_in_31_a(array_7_io_d_in_31_a),
    .io_d_in_31_b(array_7_io_d_in_31_b),
    .io_d_out_0_a(array_7_io_d_out_0_a),
    .io_d_out_0_b(array_7_io_d_out_0_b),
    .io_d_out_1_a(array_7_io_d_out_1_a),
    .io_d_out_1_b(array_7_io_d_out_1_b),
    .io_d_out_2_a(array_7_io_d_out_2_a),
    .io_d_out_2_b(array_7_io_d_out_2_b),
    .io_d_out_3_a(array_7_io_d_out_3_a),
    .io_d_out_3_b(array_7_io_d_out_3_b),
    .io_d_out_4_a(array_7_io_d_out_4_a),
    .io_d_out_4_b(array_7_io_d_out_4_b),
    .io_d_out_5_a(array_7_io_d_out_5_a),
    .io_d_out_5_b(array_7_io_d_out_5_b),
    .io_d_out_6_a(array_7_io_d_out_6_a),
    .io_d_out_6_b(array_7_io_d_out_6_b),
    .io_d_out_7_a(array_7_io_d_out_7_a),
    .io_d_out_7_b(array_7_io_d_out_7_b),
    .io_d_out_8_a(array_7_io_d_out_8_a),
    .io_d_out_8_b(array_7_io_d_out_8_b),
    .io_d_out_9_a(array_7_io_d_out_9_a),
    .io_d_out_9_b(array_7_io_d_out_9_b),
    .io_d_out_10_a(array_7_io_d_out_10_a),
    .io_d_out_10_b(array_7_io_d_out_10_b),
    .io_d_out_11_a(array_7_io_d_out_11_a),
    .io_d_out_11_b(array_7_io_d_out_11_b),
    .io_d_out_12_a(array_7_io_d_out_12_a),
    .io_d_out_12_b(array_7_io_d_out_12_b),
    .io_d_out_13_a(array_7_io_d_out_13_a),
    .io_d_out_13_b(array_7_io_d_out_13_b),
    .io_d_out_14_a(array_7_io_d_out_14_a),
    .io_d_out_14_b(array_7_io_d_out_14_b),
    .io_d_out_15_a(array_7_io_d_out_15_a),
    .io_d_out_15_b(array_7_io_d_out_15_b),
    .io_d_out_16_a(array_7_io_d_out_16_a),
    .io_d_out_16_b(array_7_io_d_out_16_b),
    .io_d_out_17_a(array_7_io_d_out_17_a),
    .io_d_out_17_b(array_7_io_d_out_17_b),
    .io_d_out_18_a(array_7_io_d_out_18_a),
    .io_d_out_18_b(array_7_io_d_out_18_b),
    .io_d_out_19_a(array_7_io_d_out_19_a),
    .io_d_out_19_b(array_7_io_d_out_19_b),
    .io_d_out_20_a(array_7_io_d_out_20_a),
    .io_d_out_20_b(array_7_io_d_out_20_b),
    .io_d_out_21_a(array_7_io_d_out_21_a),
    .io_d_out_21_b(array_7_io_d_out_21_b),
    .io_d_out_22_a(array_7_io_d_out_22_a),
    .io_d_out_22_b(array_7_io_d_out_22_b),
    .io_d_out_23_a(array_7_io_d_out_23_a),
    .io_d_out_23_b(array_7_io_d_out_23_b),
    .io_d_out_24_a(array_7_io_d_out_24_a),
    .io_d_out_24_b(array_7_io_d_out_24_b),
    .io_d_out_25_a(array_7_io_d_out_25_a),
    .io_d_out_25_b(array_7_io_d_out_25_b),
    .io_d_out_26_a(array_7_io_d_out_26_a),
    .io_d_out_26_b(array_7_io_d_out_26_b),
    .io_d_out_27_a(array_7_io_d_out_27_a),
    .io_d_out_27_b(array_7_io_d_out_27_b),
    .io_d_out_28_a(array_7_io_d_out_28_a),
    .io_d_out_28_b(array_7_io_d_out_28_b),
    .io_d_out_29_a(array_7_io_d_out_29_a),
    .io_d_out_29_b(array_7_io_d_out_29_b),
    .io_d_out_30_a(array_7_io_d_out_30_a),
    .io_d_out_30_b(array_7_io_d_out_30_b),
    .io_d_out_31_a(array_7_io_d_out_31_a),
    .io_d_out_31_b(array_7_io_d_out_31_b),
    .io_wr_en_mem1(array_7_io_wr_en_mem1),
    .io_wr_en_mem2(array_7_io_wr_en_mem2),
    .io_wr_instr_mem1(array_7_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_7_io_wr_instr_mem2),
    .io_run(array_7_io_run)
  );
  BuildingBlock array_8 ( // @[Array.scala 16:51]
    .clock(array_8_clock),
    .reset(array_8_reset),
    .io_d_in_0_a(array_8_io_d_in_0_a),
    .io_d_in_0_b(array_8_io_d_in_0_b),
    .io_d_in_1_a(array_8_io_d_in_1_a),
    .io_d_in_1_b(array_8_io_d_in_1_b),
    .io_d_in_2_a(array_8_io_d_in_2_a),
    .io_d_in_2_b(array_8_io_d_in_2_b),
    .io_d_in_3_a(array_8_io_d_in_3_a),
    .io_d_in_3_b(array_8_io_d_in_3_b),
    .io_d_in_4_a(array_8_io_d_in_4_a),
    .io_d_in_4_b(array_8_io_d_in_4_b),
    .io_d_in_5_a(array_8_io_d_in_5_a),
    .io_d_in_5_b(array_8_io_d_in_5_b),
    .io_d_in_6_a(array_8_io_d_in_6_a),
    .io_d_in_6_b(array_8_io_d_in_6_b),
    .io_d_in_7_a(array_8_io_d_in_7_a),
    .io_d_in_7_b(array_8_io_d_in_7_b),
    .io_d_in_8_a(array_8_io_d_in_8_a),
    .io_d_in_8_b(array_8_io_d_in_8_b),
    .io_d_in_9_a(array_8_io_d_in_9_a),
    .io_d_in_9_b(array_8_io_d_in_9_b),
    .io_d_in_10_a(array_8_io_d_in_10_a),
    .io_d_in_10_b(array_8_io_d_in_10_b),
    .io_d_in_11_a(array_8_io_d_in_11_a),
    .io_d_in_11_b(array_8_io_d_in_11_b),
    .io_d_in_12_a(array_8_io_d_in_12_a),
    .io_d_in_12_b(array_8_io_d_in_12_b),
    .io_d_in_13_a(array_8_io_d_in_13_a),
    .io_d_in_13_b(array_8_io_d_in_13_b),
    .io_d_in_14_a(array_8_io_d_in_14_a),
    .io_d_in_14_b(array_8_io_d_in_14_b),
    .io_d_in_15_a(array_8_io_d_in_15_a),
    .io_d_in_15_b(array_8_io_d_in_15_b),
    .io_d_in_16_a(array_8_io_d_in_16_a),
    .io_d_in_16_b(array_8_io_d_in_16_b),
    .io_d_in_17_a(array_8_io_d_in_17_a),
    .io_d_in_17_b(array_8_io_d_in_17_b),
    .io_d_in_18_a(array_8_io_d_in_18_a),
    .io_d_in_18_b(array_8_io_d_in_18_b),
    .io_d_in_19_a(array_8_io_d_in_19_a),
    .io_d_in_19_b(array_8_io_d_in_19_b),
    .io_d_in_20_a(array_8_io_d_in_20_a),
    .io_d_in_20_b(array_8_io_d_in_20_b),
    .io_d_in_21_a(array_8_io_d_in_21_a),
    .io_d_in_21_b(array_8_io_d_in_21_b),
    .io_d_in_22_a(array_8_io_d_in_22_a),
    .io_d_in_22_b(array_8_io_d_in_22_b),
    .io_d_in_23_a(array_8_io_d_in_23_a),
    .io_d_in_23_b(array_8_io_d_in_23_b),
    .io_d_in_24_a(array_8_io_d_in_24_a),
    .io_d_in_24_b(array_8_io_d_in_24_b),
    .io_d_in_25_a(array_8_io_d_in_25_a),
    .io_d_in_25_b(array_8_io_d_in_25_b),
    .io_d_in_26_a(array_8_io_d_in_26_a),
    .io_d_in_26_b(array_8_io_d_in_26_b),
    .io_d_in_27_a(array_8_io_d_in_27_a),
    .io_d_in_27_b(array_8_io_d_in_27_b),
    .io_d_in_28_a(array_8_io_d_in_28_a),
    .io_d_in_28_b(array_8_io_d_in_28_b),
    .io_d_in_29_a(array_8_io_d_in_29_a),
    .io_d_in_29_b(array_8_io_d_in_29_b),
    .io_d_in_30_a(array_8_io_d_in_30_a),
    .io_d_in_30_b(array_8_io_d_in_30_b),
    .io_d_in_31_a(array_8_io_d_in_31_a),
    .io_d_in_31_b(array_8_io_d_in_31_b),
    .io_d_out_0_a(array_8_io_d_out_0_a),
    .io_d_out_0_b(array_8_io_d_out_0_b),
    .io_d_out_1_a(array_8_io_d_out_1_a),
    .io_d_out_1_b(array_8_io_d_out_1_b),
    .io_d_out_2_a(array_8_io_d_out_2_a),
    .io_d_out_2_b(array_8_io_d_out_2_b),
    .io_d_out_3_a(array_8_io_d_out_3_a),
    .io_d_out_3_b(array_8_io_d_out_3_b),
    .io_d_out_4_a(array_8_io_d_out_4_a),
    .io_d_out_4_b(array_8_io_d_out_4_b),
    .io_d_out_5_a(array_8_io_d_out_5_a),
    .io_d_out_5_b(array_8_io_d_out_5_b),
    .io_d_out_6_a(array_8_io_d_out_6_a),
    .io_d_out_6_b(array_8_io_d_out_6_b),
    .io_d_out_7_a(array_8_io_d_out_7_a),
    .io_d_out_7_b(array_8_io_d_out_7_b),
    .io_d_out_8_a(array_8_io_d_out_8_a),
    .io_d_out_8_b(array_8_io_d_out_8_b),
    .io_d_out_9_a(array_8_io_d_out_9_a),
    .io_d_out_9_b(array_8_io_d_out_9_b),
    .io_d_out_10_a(array_8_io_d_out_10_a),
    .io_d_out_10_b(array_8_io_d_out_10_b),
    .io_d_out_11_a(array_8_io_d_out_11_a),
    .io_d_out_11_b(array_8_io_d_out_11_b),
    .io_d_out_12_a(array_8_io_d_out_12_a),
    .io_d_out_12_b(array_8_io_d_out_12_b),
    .io_d_out_13_a(array_8_io_d_out_13_a),
    .io_d_out_13_b(array_8_io_d_out_13_b),
    .io_d_out_14_a(array_8_io_d_out_14_a),
    .io_d_out_14_b(array_8_io_d_out_14_b),
    .io_d_out_15_a(array_8_io_d_out_15_a),
    .io_d_out_15_b(array_8_io_d_out_15_b),
    .io_d_out_16_a(array_8_io_d_out_16_a),
    .io_d_out_16_b(array_8_io_d_out_16_b),
    .io_d_out_17_a(array_8_io_d_out_17_a),
    .io_d_out_17_b(array_8_io_d_out_17_b),
    .io_d_out_18_a(array_8_io_d_out_18_a),
    .io_d_out_18_b(array_8_io_d_out_18_b),
    .io_d_out_19_a(array_8_io_d_out_19_a),
    .io_d_out_19_b(array_8_io_d_out_19_b),
    .io_d_out_20_a(array_8_io_d_out_20_a),
    .io_d_out_20_b(array_8_io_d_out_20_b),
    .io_d_out_21_a(array_8_io_d_out_21_a),
    .io_d_out_21_b(array_8_io_d_out_21_b),
    .io_d_out_22_a(array_8_io_d_out_22_a),
    .io_d_out_22_b(array_8_io_d_out_22_b),
    .io_d_out_23_a(array_8_io_d_out_23_a),
    .io_d_out_23_b(array_8_io_d_out_23_b),
    .io_d_out_24_a(array_8_io_d_out_24_a),
    .io_d_out_24_b(array_8_io_d_out_24_b),
    .io_d_out_25_a(array_8_io_d_out_25_a),
    .io_d_out_25_b(array_8_io_d_out_25_b),
    .io_d_out_26_a(array_8_io_d_out_26_a),
    .io_d_out_26_b(array_8_io_d_out_26_b),
    .io_d_out_27_a(array_8_io_d_out_27_a),
    .io_d_out_27_b(array_8_io_d_out_27_b),
    .io_d_out_28_a(array_8_io_d_out_28_a),
    .io_d_out_28_b(array_8_io_d_out_28_b),
    .io_d_out_29_a(array_8_io_d_out_29_a),
    .io_d_out_29_b(array_8_io_d_out_29_b),
    .io_d_out_30_a(array_8_io_d_out_30_a),
    .io_d_out_30_b(array_8_io_d_out_30_b),
    .io_d_out_31_a(array_8_io_d_out_31_a),
    .io_d_out_31_b(array_8_io_d_out_31_b),
    .io_wr_en_mem1(array_8_io_wr_en_mem1),
    .io_wr_en_mem2(array_8_io_wr_en_mem2),
    .io_wr_instr_mem1(array_8_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_8_io_wr_instr_mem2),
    .io_run(array_8_io_run)
  );
  BuildingBlock array_9 ( // @[Array.scala 16:51]
    .clock(array_9_clock),
    .reset(array_9_reset),
    .io_d_in_0_a(array_9_io_d_in_0_a),
    .io_d_in_0_b(array_9_io_d_in_0_b),
    .io_d_in_1_a(array_9_io_d_in_1_a),
    .io_d_in_1_b(array_9_io_d_in_1_b),
    .io_d_in_2_a(array_9_io_d_in_2_a),
    .io_d_in_2_b(array_9_io_d_in_2_b),
    .io_d_in_3_a(array_9_io_d_in_3_a),
    .io_d_in_3_b(array_9_io_d_in_3_b),
    .io_d_in_4_a(array_9_io_d_in_4_a),
    .io_d_in_4_b(array_9_io_d_in_4_b),
    .io_d_in_5_a(array_9_io_d_in_5_a),
    .io_d_in_5_b(array_9_io_d_in_5_b),
    .io_d_in_6_a(array_9_io_d_in_6_a),
    .io_d_in_6_b(array_9_io_d_in_6_b),
    .io_d_in_7_a(array_9_io_d_in_7_a),
    .io_d_in_7_b(array_9_io_d_in_7_b),
    .io_d_in_8_a(array_9_io_d_in_8_a),
    .io_d_in_8_b(array_9_io_d_in_8_b),
    .io_d_in_9_a(array_9_io_d_in_9_a),
    .io_d_in_9_b(array_9_io_d_in_9_b),
    .io_d_in_10_a(array_9_io_d_in_10_a),
    .io_d_in_10_b(array_9_io_d_in_10_b),
    .io_d_in_11_a(array_9_io_d_in_11_a),
    .io_d_in_11_b(array_9_io_d_in_11_b),
    .io_d_in_12_a(array_9_io_d_in_12_a),
    .io_d_in_12_b(array_9_io_d_in_12_b),
    .io_d_in_13_a(array_9_io_d_in_13_a),
    .io_d_in_13_b(array_9_io_d_in_13_b),
    .io_d_in_14_a(array_9_io_d_in_14_a),
    .io_d_in_14_b(array_9_io_d_in_14_b),
    .io_d_in_15_a(array_9_io_d_in_15_a),
    .io_d_in_15_b(array_9_io_d_in_15_b),
    .io_d_in_16_a(array_9_io_d_in_16_a),
    .io_d_in_16_b(array_9_io_d_in_16_b),
    .io_d_in_17_a(array_9_io_d_in_17_a),
    .io_d_in_17_b(array_9_io_d_in_17_b),
    .io_d_in_18_a(array_9_io_d_in_18_a),
    .io_d_in_18_b(array_9_io_d_in_18_b),
    .io_d_in_19_a(array_9_io_d_in_19_a),
    .io_d_in_19_b(array_9_io_d_in_19_b),
    .io_d_in_20_a(array_9_io_d_in_20_a),
    .io_d_in_20_b(array_9_io_d_in_20_b),
    .io_d_in_21_a(array_9_io_d_in_21_a),
    .io_d_in_21_b(array_9_io_d_in_21_b),
    .io_d_in_22_a(array_9_io_d_in_22_a),
    .io_d_in_22_b(array_9_io_d_in_22_b),
    .io_d_in_23_a(array_9_io_d_in_23_a),
    .io_d_in_23_b(array_9_io_d_in_23_b),
    .io_d_in_24_a(array_9_io_d_in_24_a),
    .io_d_in_24_b(array_9_io_d_in_24_b),
    .io_d_in_25_a(array_9_io_d_in_25_a),
    .io_d_in_25_b(array_9_io_d_in_25_b),
    .io_d_in_26_a(array_9_io_d_in_26_a),
    .io_d_in_26_b(array_9_io_d_in_26_b),
    .io_d_in_27_a(array_9_io_d_in_27_a),
    .io_d_in_27_b(array_9_io_d_in_27_b),
    .io_d_in_28_a(array_9_io_d_in_28_a),
    .io_d_in_28_b(array_9_io_d_in_28_b),
    .io_d_in_29_a(array_9_io_d_in_29_a),
    .io_d_in_29_b(array_9_io_d_in_29_b),
    .io_d_in_30_a(array_9_io_d_in_30_a),
    .io_d_in_30_b(array_9_io_d_in_30_b),
    .io_d_in_31_a(array_9_io_d_in_31_a),
    .io_d_in_31_b(array_9_io_d_in_31_b),
    .io_d_out_0_a(array_9_io_d_out_0_a),
    .io_d_out_0_b(array_9_io_d_out_0_b),
    .io_d_out_1_a(array_9_io_d_out_1_a),
    .io_d_out_1_b(array_9_io_d_out_1_b),
    .io_d_out_2_a(array_9_io_d_out_2_a),
    .io_d_out_2_b(array_9_io_d_out_2_b),
    .io_d_out_3_a(array_9_io_d_out_3_a),
    .io_d_out_3_b(array_9_io_d_out_3_b),
    .io_d_out_4_a(array_9_io_d_out_4_a),
    .io_d_out_4_b(array_9_io_d_out_4_b),
    .io_d_out_5_a(array_9_io_d_out_5_a),
    .io_d_out_5_b(array_9_io_d_out_5_b),
    .io_d_out_6_a(array_9_io_d_out_6_a),
    .io_d_out_6_b(array_9_io_d_out_6_b),
    .io_d_out_7_a(array_9_io_d_out_7_a),
    .io_d_out_7_b(array_9_io_d_out_7_b),
    .io_d_out_8_a(array_9_io_d_out_8_a),
    .io_d_out_8_b(array_9_io_d_out_8_b),
    .io_d_out_9_a(array_9_io_d_out_9_a),
    .io_d_out_9_b(array_9_io_d_out_9_b),
    .io_d_out_10_a(array_9_io_d_out_10_a),
    .io_d_out_10_b(array_9_io_d_out_10_b),
    .io_d_out_11_a(array_9_io_d_out_11_a),
    .io_d_out_11_b(array_9_io_d_out_11_b),
    .io_d_out_12_a(array_9_io_d_out_12_a),
    .io_d_out_12_b(array_9_io_d_out_12_b),
    .io_d_out_13_a(array_9_io_d_out_13_a),
    .io_d_out_13_b(array_9_io_d_out_13_b),
    .io_d_out_14_a(array_9_io_d_out_14_a),
    .io_d_out_14_b(array_9_io_d_out_14_b),
    .io_d_out_15_a(array_9_io_d_out_15_a),
    .io_d_out_15_b(array_9_io_d_out_15_b),
    .io_d_out_16_a(array_9_io_d_out_16_a),
    .io_d_out_16_b(array_9_io_d_out_16_b),
    .io_d_out_17_a(array_9_io_d_out_17_a),
    .io_d_out_17_b(array_9_io_d_out_17_b),
    .io_d_out_18_a(array_9_io_d_out_18_a),
    .io_d_out_18_b(array_9_io_d_out_18_b),
    .io_d_out_19_a(array_9_io_d_out_19_a),
    .io_d_out_19_b(array_9_io_d_out_19_b),
    .io_d_out_20_a(array_9_io_d_out_20_a),
    .io_d_out_20_b(array_9_io_d_out_20_b),
    .io_d_out_21_a(array_9_io_d_out_21_a),
    .io_d_out_21_b(array_9_io_d_out_21_b),
    .io_d_out_22_a(array_9_io_d_out_22_a),
    .io_d_out_22_b(array_9_io_d_out_22_b),
    .io_d_out_23_a(array_9_io_d_out_23_a),
    .io_d_out_23_b(array_9_io_d_out_23_b),
    .io_d_out_24_a(array_9_io_d_out_24_a),
    .io_d_out_24_b(array_9_io_d_out_24_b),
    .io_d_out_25_a(array_9_io_d_out_25_a),
    .io_d_out_25_b(array_9_io_d_out_25_b),
    .io_d_out_26_a(array_9_io_d_out_26_a),
    .io_d_out_26_b(array_9_io_d_out_26_b),
    .io_d_out_27_a(array_9_io_d_out_27_a),
    .io_d_out_27_b(array_9_io_d_out_27_b),
    .io_d_out_28_a(array_9_io_d_out_28_a),
    .io_d_out_28_b(array_9_io_d_out_28_b),
    .io_d_out_29_a(array_9_io_d_out_29_a),
    .io_d_out_29_b(array_9_io_d_out_29_b),
    .io_d_out_30_a(array_9_io_d_out_30_a),
    .io_d_out_30_b(array_9_io_d_out_30_b),
    .io_d_out_31_a(array_9_io_d_out_31_a),
    .io_d_out_31_b(array_9_io_d_out_31_b),
    .io_wr_en_mem1(array_9_io_wr_en_mem1),
    .io_wr_en_mem2(array_9_io_wr_en_mem2),
    .io_wr_instr_mem1(array_9_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_9_io_wr_instr_mem2),
    .io_run(array_9_io_run)
  );
  BuildingBlock array_10 ( // @[Array.scala 16:51]
    .clock(array_10_clock),
    .reset(array_10_reset),
    .io_d_in_0_a(array_10_io_d_in_0_a),
    .io_d_in_0_b(array_10_io_d_in_0_b),
    .io_d_in_1_a(array_10_io_d_in_1_a),
    .io_d_in_1_b(array_10_io_d_in_1_b),
    .io_d_in_2_a(array_10_io_d_in_2_a),
    .io_d_in_2_b(array_10_io_d_in_2_b),
    .io_d_in_3_a(array_10_io_d_in_3_a),
    .io_d_in_3_b(array_10_io_d_in_3_b),
    .io_d_in_4_a(array_10_io_d_in_4_a),
    .io_d_in_4_b(array_10_io_d_in_4_b),
    .io_d_in_5_a(array_10_io_d_in_5_a),
    .io_d_in_5_b(array_10_io_d_in_5_b),
    .io_d_in_6_a(array_10_io_d_in_6_a),
    .io_d_in_6_b(array_10_io_d_in_6_b),
    .io_d_in_7_a(array_10_io_d_in_7_a),
    .io_d_in_7_b(array_10_io_d_in_7_b),
    .io_d_in_8_a(array_10_io_d_in_8_a),
    .io_d_in_8_b(array_10_io_d_in_8_b),
    .io_d_in_9_a(array_10_io_d_in_9_a),
    .io_d_in_9_b(array_10_io_d_in_9_b),
    .io_d_in_10_a(array_10_io_d_in_10_a),
    .io_d_in_10_b(array_10_io_d_in_10_b),
    .io_d_in_11_a(array_10_io_d_in_11_a),
    .io_d_in_11_b(array_10_io_d_in_11_b),
    .io_d_in_12_a(array_10_io_d_in_12_a),
    .io_d_in_12_b(array_10_io_d_in_12_b),
    .io_d_in_13_a(array_10_io_d_in_13_a),
    .io_d_in_13_b(array_10_io_d_in_13_b),
    .io_d_in_14_a(array_10_io_d_in_14_a),
    .io_d_in_14_b(array_10_io_d_in_14_b),
    .io_d_in_15_a(array_10_io_d_in_15_a),
    .io_d_in_15_b(array_10_io_d_in_15_b),
    .io_d_in_16_a(array_10_io_d_in_16_a),
    .io_d_in_16_b(array_10_io_d_in_16_b),
    .io_d_in_17_a(array_10_io_d_in_17_a),
    .io_d_in_17_b(array_10_io_d_in_17_b),
    .io_d_in_18_a(array_10_io_d_in_18_a),
    .io_d_in_18_b(array_10_io_d_in_18_b),
    .io_d_in_19_a(array_10_io_d_in_19_a),
    .io_d_in_19_b(array_10_io_d_in_19_b),
    .io_d_in_20_a(array_10_io_d_in_20_a),
    .io_d_in_20_b(array_10_io_d_in_20_b),
    .io_d_in_21_a(array_10_io_d_in_21_a),
    .io_d_in_21_b(array_10_io_d_in_21_b),
    .io_d_in_22_a(array_10_io_d_in_22_a),
    .io_d_in_22_b(array_10_io_d_in_22_b),
    .io_d_in_23_a(array_10_io_d_in_23_a),
    .io_d_in_23_b(array_10_io_d_in_23_b),
    .io_d_in_24_a(array_10_io_d_in_24_a),
    .io_d_in_24_b(array_10_io_d_in_24_b),
    .io_d_in_25_a(array_10_io_d_in_25_a),
    .io_d_in_25_b(array_10_io_d_in_25_b),
    .io_d_in_26_a(array_10_io_d_in_26_a),
    .io_d_in_26_b(array_10_io_d_in_26_b),
    .io_d_in_27_a(array_10_io_d_in_27_a),
    .io_d_in_27_b(array_10_io_d_in_27_b),
    .io_d_in_28_a(array_10_io_d_in_28_a),
    .io_d_in_28_b(array_10_io_d_in_28_b),
    .io_d_in_29_a(array_10_io_d_in_29_a),
    .io_d_in_29_b(array_10_io_d_in_29_b),
    .io_d_in_30_a(array_10_io_d_in_30_a),
    .io_d_in_30_b(array_10_io_d_in_30_b),
    .io_d_in_31_a(array_10_io_d_in_31_a),
    .io_d_in_31_b(array_10_io_d_in_31_b),
    .io_d_out_0_a(array_10_io_d_out_0_a),
    .io_d_out_0_b(array_10_io_d_out_0_b),
    .io_d_out_1_a(array_10_io_d_out_1_a),
    .io_d_out_1_b(array_10_io_d_out_1_b),
    .io_d_out_2_a(array_10_io_d_out_2_a),
    .io_d_out_2_b(array_10_io_d_out_2_b),
    .io_d_out_3_a(array_10_io_d_out_3_a),
    .io_d_out_3_b(array_10_io_d_out_3_b),
    .io_d_out_4_a(array_10_io_d_out_4_a),
    .io_d_out_4_b(array_10_io_d_out_4_b),
    .io_d_out_5_a(array_10_io_d_out_5_a),
    .io_d_out_5_b(array_10_io_d_out_5_b),
    .io_d_out_6_a(array_10_io_d_out_6_a),
    .io_d_out_6_b(array_10_io_d_out_6_b),
    .io_d_out_7_a(array_10_io_d_out_7_a),
    .io_d_out_7_b(array_10_io_d_out_7_b),
    .io_d_out_8_a(array_10_io_d_out_8_a),
    .io_d_out_8_b(array_10_io_d_out_8_b),
    .io_d_out_9_a(array_10_io_d_out_9_a),
    .io_d_out_9_b(array_10_io_d_out_9_b),
    .io_d_out_10_a(array_10_io_d_out_10_a),
    .io_d_out_10_b(array_10_io_d_out_10_b),
    .io_d_out_11_a(array_10_io_d_out_11_a),
    .io_d_out_11_b(array_10_io_d_out_11_b),
    .io_d_out_12_a(array_10_io_d_out_12_a),
    .io_d_out_12_b(array_10_io_d_out_12_b),
    .io_d_out_13_a(array_10_io_d_out_13_a),
    .io_d_out_13_b(array_10_io_d_out_13_b),
    .io_d_out_14_a(array_10_io_d_out_14_a),
    .io_d_out_14_b(array_10_io_d_out_14_b),
    .io_d_out_15_a(array_10_io_d_out_15_a),
    .io_d_out_15_b(array_10_io_d_out_15_b),
    .io_d_out_16_a(array_10_io_d_out_16_a),
    .io_d_out_16_b(array_10_io_d_out_16_b),
    .io_d_out_17_a(array_10_io_d_out_17_a),
    .io_d_out_17_b(array_10_io_d_out_17_b),
    .io_d_out_18_a(array_10_io_d_out_18_a),
    .io_d_out_18_b(array_10_io_d_out_18_b),
    .io_d_out_19_a(array_10_io_d_out_19_a),
    .io_d_out_19_b(array_10_io_d_out_19_b),
    .io_d_out_20_a(array_10_io_d_out_20_a),
    .io_d_out_20_b(array_10_io_d_out_20_b),
    .io_d_out_21_a(array_10_io_d_out_21_a),
    .io_d_out_21_b(array_10_io_d_out_21_b),
    .io_d_out_22_a(array_10_io_d_out_22_a),
    .io_d_out_22_b(array_10_io_d_out_22_b),
    .io_d_out_23_a(array_10_io_d_out_23_a),
    .io_d_out_23_b(array_10_io_d_out_23_b),
    .io_d_out_24_a(array_10_io_d_out_24_a),
    .io_d_out_24_b(array_10_io_d_out_24_b),
    .io_d_out_25_a(array_10_io_d_out_25_a),
    .io_d_out_25_b(array_10_io_d_out_25_b),
    .io_d_out_26_a(array_10_io_d_out_26_a),
    .io_d_out_26_b(array_10_io_d_out_26_b),
    .io_d_out_27_a(array_10_io_d_out_27_a),
    .io_d_out_27_b(array_10_io_d_out_27_b),
    .io_d_out_28_a(array_10_io_d_out_28_a),
    .io_d_out_28_b(array_10_io_d_out_28_b),
    .io_d_out_29_a(array_10_io_d_out_29_a),
    .io_d_out_29_b(array_10_io_d_out_29_b),
    .io_d_out_30_a(array_10_io_d_out_30_a),
    .io_d_out_30_b(array_10_io_d_out_30_b),
    .io_d_out_31_a(array_10_io_d_out_31_a),
    .io_d_out_31_b(array_10_io_d_out_31_b),
    .io_wr_en_mem1(array_10_io_wr_en_mem1),
    .io_wr_en_mem2(array_10_io_wr_en_mem2),
    .io_wr_instr_mem1(array_10_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_10_io_wr_instr_mem2),
    .io_run(array_10_io_run)
  );
  BuildingBlock array_11 ( // @[Array.scala 16:51]
    .clock(array_11_clock),
    .reset(array_11_reset),
    .io_d_in_0_a(array_11_io_d_in_0_a),
    .io_d_in_0_b(array_11_io_d_in_0_b),
    .io_d_in_1_a(array_11_io_d_in_1_a),
    .io_d_in_1_b(array_11_io_d_in_1_b),
    .io_d_in_2_a(array_11_io_d_in_2_a),
    .io_d_in_2_b(array_11_io_d_in_2_b),
    .io_d_in_3_a(array_11_io_d_in_3_a),
    .io_d_in_3_b(array_11_io_d_in_3_b),
    .io_d_in_4_a(array_11_io_d_in_4_a),
    .io_d_in_4_b(array_11_io_d_in_4_b),
    .io_d_in_5_a(array_11_io_d_in_5_a),
    .io_d_in_5_b(array_11_io_d_in_5_b),
    .io_d_in_6_a(array_11_io_d_in_6_a),
    .io_d_in_6_b(array_11_io_d_in_6_b),
    .io_d_in_7_a(array_11_io_d_in_7_a),
    .io_d_in_7_b(array_11_io_d_in_7_b),
    .io_d_in_8_a(array_11_io_d_in_8_a),
    .io_d_in_8_b(array_11_io_d_in_8_b),
    .io_d_in_9_a(array_11_io_d_in_9_a),
    .io_d_in_9_b(array_11_io_d_in_9_b),
    .io_d_in_10_a(array_11_io_d_in_10_a),
    .io_d_in_10_b(array_11_io_d_in_10_b),
    .io_d_in_11_a(array_11_io_d_in_11_a),
    .io_d_in_11_b(array_11_io_d_in_11_b),
    .io_d_in_12_a(array_11_io_d_in_12_a),
    .io_d_in_12_b(array_11_io_d_in_12_b),
    .io_d_in_13_a(array_11_io_d_in_13_a),
    .io_d_in_13_b(array_11_io_d_in_13_b),
    .io_d_in_14_a(array_11_io_d_in_14_a),
    .io_d_in_14_b(array_11_io_d_in_14_b),
    .io_d_in_15_a(array_11_io_d_in_15_a),
    .io_d_in_15_b(array_11_io_d_in_15_b),
    .io_d_in_16_a(array_11_io_d_in_16_a),
    .io_d_in_16_b(array_11_io_d_in_16_b),
    .io_d_in_17_a(array_11_io_d_in_17_a),
    .io_d_in_17_b(array_11_io_d_in_17_b),
    .io_d_in_18_a(array_11_io_d_in_18_a),
    .io_d_in_18_b(array_11_io_d_in_18_b),
    .io_d_in_19_a(array_11_io_d_in_19_a),
    .io_d_in_19_b(array_11_io_d_in_19_b),
    .io_d_in_20_a(array_11_io_d_in_20_a),
    .io_d_in_20_b(array_11_io_d_in_20_b),
    .io_d_in_21_a(array_11_io_d_in_21_a),
    .io_d_in_21_b(array_11_io_d_in_21_b),
    .io_d_in_22_a(array_11_io_d_in_22_a),
    .io_d_in_22_b(array_11_io_d_in_22_b),
    .io_d_in_23_a(array_11_io_d_in_23_a),
    .io_d_in_23_b(array_11_io_d_in_23_b),
    .io_d_in_24_a(array_11_io_d_in_24_a),
    .io_d_in_24_b(array_11_io_d_in_24_b),
    .io_d_in_25_a(array_11_io_d_in_25_a),
    .io_d_in_25_b(array_11_io_d_in_25_b),
    .io_d_in_26_a(array_11_io_d_in_26_a),
    .io_d_in_26_b(array_11_io_d_in_26_b),
    .io_d_in_27_a(array_11_io_d_in_27_a),
    .io_d_in_27_b(array_11_io_d_in_27_b),
    .io_d_in_28_a(array_11_io_d_in_28_a),
    .io_d_in_28_b(array_11_io_d_in_28_b),
    .io_d_in_29_a(array_11_io_d_in_29_a),
    .io_d_in_29_b(array_11_io_d_in_29_b),
    .io_d_in_30_a(array_11_io_d_in_30_a),
    .io_d_in_30_b(array_11_io_d_in_30_b),
    .io_d_in_31_a(array_11_io_d_in_31_a),
    .io_d_in_31_b(array_11_io_d_in_31_b),
    .io_d_out_0_a(array_11_io_d_out_0_a),
    .io_d_out_0_b(array_11_io_d_out_0_b),
    .io_d_out_1_a(array_11_io_d_out_1_a),
    .io_d_out_1_b(array_11_io_d_out_1_b),
    .io_d_out_2_a(array_11_io_d_out_2_a),
    .io_d_out_2_b(array_11_io_d_out_2_b),
    .io_d_out_3_a(array_11_io_d_out_3_a),
    .io_d_out_3_b(array_11_io_d_out_3_b),
    .io_d_out_4_a(array_11_io_d_out_4_a),
    .io_d_out_4_b(array_11_io_d_out_4_b),
    .io_d_out_5_a(array_11_io_d_out_5_a),
    .io_d_out_5_b(array_11_io_d_out_5_b),
    .io_d_out_6_a(array_11_io_d_out_6_a),
    .io_d_out_6_b(array_11_io_d_out_6_b),
    .io_d_out_7_a(array_11_io_d_out_7_a),
    .io_d_out_7_b(array_11_io_d_out_7_b),
    .io_d_out_8_a(array_11_io_d_out_8_a),
    .io_d_out_8_b(array_11_io_d_out_8_b),
    .io_d_out_9_a(array_11_io_d_out_9_a),
    .io_d_out_9_b(array_11_io_d_out_9_b),
    .io_d_out_10_a(array_11_io_d_out_10_a),
    .io_d_out_10_b(array_11_io_d_out_10_b),
    .io_d_out_11_a(array_11_io_d_out_11_a),
    .io_d_out_11_b(array_11_io_d_out_11_b),
    .io_d_out_12_a(array_11_io_d_out_12_a),
    .io_d_out_12_b(array_11_io_d_out_12_b),
    .io_d_out_13_a(array_11_io_d_out_13_a),
    .io_d_out_13_b(array_11_io_d_out_13_b),
    .io_d_out_14_a(array_11_io_d_out_14_a),
    .io_d_out_14_b(array_11_io_d_out_14_b),
    .io_d_out_15_a(array_11_io_d_out_15_a),
    .io_d_out_15_b(array_11_io_d_out_15_b),
    .io_d_out_16_a(array_11_io_d_out_16_a),
    .io_d_out_16_b(array_11_io_d_out_16_b),
    .io_d_out_17_a(array_11_io_d_out_17_a),
    .io_d_out_17_b(array_11_io_d_out_17_b),
    .io_d_out_18_a(array_11_io_d_out_18_a),
    .io_d_out_18_b(array_11_io_d_out_18_b),
    .io_d_out_19_a(array_11_io_d_out_19_a),
    .io_d_out_19_b(array_11_io_d_out_19_b),
    .io_d_out_20_a(array_11_io_d_out_20_a),
    .io_d_out_20_b(array_11_io_d_out_20_b),
    .io_d_out_21_a(array_11_io_d_out_21_a),
    .io_d_out_21_b(array_11_io_d_out_21_b),
    .io_d_out_22_a(array_11_io_d_out_22_a),
    .io_d_out_22_b(array_11_io_d_out_22_b),
    .io_d_out_23_a(array_11_io_d_out_23_a),
    .io_d_out_23_b(array_11_io_d_out_23_b),
    .io_d_out_24_a(array_11_io_d_out_24_a),
    .io_d_out_24_b(array_11_io_d_out_24_b),
    .io_d_out_25_a(array_11_io_d_out_25_a),
    .io_d_out_25_b(array_11_io_d_out_25_b),
    .io_d_out_26_a(array_11_io_d_out_26_a),
    .io_d_out_26_b(array_11_io_d_out_26_b),
    .io_d_out_27_a(array_11_io_d_out_27_a),
    .io_d_out_27_b(array_11_io_d_out_27_b),
    .io_d_out_28_a(array_11_io_d_out_28_a),
    .io_d_out_28_b(array_11_io_d_out_28_b),
    .io_d_out_29_a(array_11_io_d_out_29_a),
    .io_d_out_29_b(array_11_io_d_out_29_b),
    .io_d_out_30_a(array_11_io_d_out_30_a),
    .io_d_out_30_b(array_11_io_d_out_30_b),
    .io_d_out_31_a(array_11_io_d_out_31_a),
    .io_d_out_31_b(array_11_io_d_out_31_b),
    .io_wr_en_mem1(array_11_io_wr_en_mem1),
    .io_wr_en_mem2(array_11_io_wr_en_mem2),
    .io_wr_instr_mem1(array_11_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_11_io_wr_instr_mem2),
    .io_run(array_11_io_run)
  );
  BuildingBlock array_12 ( // @[Array.scala 16:51]
    .clock(array_12_clock),
    .reset(array_12_reset),
    .io_d_in_0_a(array_12_io_d_in_0_a),
    .io_d_in_0_b(array_12_io_d_in_0_b),
    .io_d_in_1_a(array_12_io_d_in_1_a),
    .io_d_in_1_b(array_12_io_d_in_1_b),
    .io_d_in_2_a(array_12_io_d_in_2_a),
    .io_d_in_2_b(array_12_io_d_in_2_b),
    .io_d_in_3_a(array_12_io_d_in_3_a),
    .io_d_in_3_b(array_12_io_d_in_3_b),
    .io_d_in_4_a(array_12_io_d_in_4_a),
    .io_d_in_4_b(array_12_io_d_in_4_b),
    .io_d_in_5_a(array_12_io_d_in_5_a),
    .io_d_in_5_b(array_12_io_d_in_5_b),
    .io_d_in_6_a(array_12_io_d_in_6_a),
    .io_d_in_6_b(array_12_io_d_in_6_b),
    .io_d_in_7_a(array_12_io_d_in_7_a),
    .io_d_in_7_b(array_12_io_d_in_7_b),
    .io_d_in_8_a(array_12_io_d_in_8_a),
    .io_d_in_8_b(array_12_io_d_in_8_b),
    .io_d_in_9_a(array_12_io_d_in_9_a),
    .io_d_in_9_b(array_12_io_d_in_9_b),
    .io_d_in_10_a(array_12_io_d_in_10_a),
    .io_d_in_10_b(array_12_io_d_in_10_b),
    .io_d_in_11_a(array_12_io_d_in_11_a),
    .io_d_in_11_b(array_12_io_d_in_11_b),
    .io_d_in_12_a(array_12_io_d_in_12_a),
    .io_d_in_12_b(array_12_io_d_in_12_b),
    .io_d_in_13_a(array_12_io_d_in_13_a),
    .io_d_in_13_b(array_12_io_d_in_13_b),
    .io_d_in_14_a(array_12_io_d_in_14_a),
    .io_d_in_14_b(array_12_io_d_in_14_b),
    .io_d_in_15_a(array_12_io_d_in_15_a),
    .io_d_in_15_b(array_12_io_d_in_15_b),
    .io_d_in_16_a(array_12_io_d_in_16_a),
    .io_d_in_16_b(array_12_io_d_in_16_b),
    .io_d_in_17_a(array_12_io_d_in_17_a),
    .io_d_in_17_b(array_12_io_d_in_17_b),
    .io_d_in_18_a(array_12_io_d_in_18_a),
    .io_d_in_18_b(array_12_io_d_in_18_b),
    .io_d_in_19_a(array_12_io_d_in_19_a),
    .io_d_in_19_b(array_12_io_d_in_19_b),
    .io_d_in_20_a(array_12_io_d_in_20_a),
    .io_d_in_20_b(array_12_io_d_in_20_b),
    .io_d_in_21_a(array_12_io_d_in_21_a),
    .io_d_in_21_b(array_12_io_d_in_21_b),
    .io_d_in_22_a(array_12_io_d_in_22_a),
    .io_d_in_22_b(array_12_io_d_in_22_b),
    .io_d_in_23_a(array_12_io_d_in_23_a),
    .io_d_in_23_b(array_12_io_d_in_23_b),
    .io_d_in_24_a(array_12_io_d_in_24_a),
    .io_d_in_24_b(array_12_io_d_in_24_b),
    .io_d_in_25_a(array_12_io_d_in_25_a),
    .io_d_in_25_b(array_12_io_d_in_25_b),
    .io_d_in_26_a(array_12_io_d_in_26_a),
    .io_d_in_26_b(array_12_io_d_in_26_b),
    .io_d_in_27_a(array_12_io_d_in_27_a),
    .io_d_in_27_b(array_12_io_d_in_27_b),
    .io_d_in_28_a(array_12_io_d_in_28_a),
    .io_d_in_28_b(array_12_io_d_in_28_b),
    .io_d_in_29_a(array_12_io_d_in_29_a),
    .io_d_in_29_b(array_12_io_d_in_29_b),
    .io_d_in_30_a(array_12_io_d_in_30_a),
    .io_d_in_30_b(array_12_io_d_in_30_b),
    .io_d_in_31_a(array_12_io_d_in_31_a),
    .io_d_in_31_b(array_12_io_d_in_31_b),
    .io_d_out_0_a(array_12_io_d_out_0_a),
    .io_d_out_0_b(array_12_io_d_out_0_b),
    .io_d_out_1_a(array_12_io_d_out_1_a),
    .io_d_out_1_b(array_12_io_d_out_1_b),
    .io_d_out_2_a(array_12_io_d_out_2_a),
    .io_d_out_2_b(array_12_io_d_out_2_b),
    .io_d_out_3_a(array_12_io_d_out_3_a),
    .io_d_out_3_b(array_12_io_d_out_3_b),
    .io_d_out_4_a(array_12_io_d_out_4_a),
    .io_d_out_4_b(array_12_io_d_out_4_b),
    .io_d_out_5_a(array_12_io_d_out_5_a),
    .io_d_out_5_b(array_12_io_d_out_5_b),
    .io_d_out_6_a(array_12_io_d_out_6_a),
    .io_d_out_6_b(array_12_io_d_out_6_b),
    .io_d_out_7_a(array_12_io_d_out_7_a),
    .io_d_out_7_b(array_12_io_d_out_7_b),
    .io_d_out_8_a(array_12_io_d_out_8_a),
    .io_d_out_8_b(array_12_io_d_out_8_b),
    .io_d_out_9_a(array_12_io_d_out_9_a),
    .io_d_out_9_b(array_12_io_d_out_9_b),
    .io_d_out_10_a(array_12_io_d_out_10_a),
    .io_d_out_10_b(array_12_io_d_out_10_b),
    .io_d_out_11_a(array_12_io_d_out_11_a),
    .io_d_out_11_b(array_12_io_d_out_11_b),
    .io_d_out_12_a(array_12_io_d_out_12_a),
    .io_d_out_12_b(array_12_io_d_out_12_b),
    .io_d_out_13_a(array_12_io_d_out_13_a),
    .io_d_out_13_b(array_12_io_d_out_13_b),
    .io_d_out_14_a(array_12_io_d_out_14_a),
    .io_d_out_14_b(array_12_io_d_out_14_b),
    .io_d_out_15_a(array_12_io_d_out_15_a),
    .io_d_out_15_b(array_12_io_d_out_15_b),
    .io_d_out_16_a(array_12_io_d_out_16_a),
    .io_d_out_16_b(array_12_io_d_out_16_b),
    .io_d_out_17_a(array_12_io_d_out_17_a),
    .io_d_out_17_b(array_12_io_d_out_17_b),
    .io_d_out_18_a(array_12_io_d_out_18_a),
    .io_d_out_18_b(array_12_io_d_out_18_b),
    .io_d_out_19_a(array_12_io_d_out_19_a),
    .io_d_out_19_b(array_12_io_d_out_19_b),
    .io_d_out_20_a(array_12_io_d_out_20_a),
    .io_d_out_20_b(array_12_io_d_out_20_b),
    .io_d_out_21_a(array_12_io_d_out_21_a),
    .io_d_out_21_b(array_12_io_d_out_21_b),
    .io_d_out_22_a(array_12_io_d_out_22_a),
    .io_d_out_22_b(array_12_io_d_out_22_b),
    .io_d_out_23_a(array_12_io_d_out_23_a),
    .io_d_out_23_b(array_12_io_d_out_23_b),
    .io_d_out_24_a(array_12_io_d_out_24_a),
    .io_d_out_24_b(array_12_io_d_out_24_b),
    .io_d_out_25_a(array_12_io_d_out_25_a),
    .io_d_out_25_b(array_12_io_d_out_25_b),
    .io_d_out_26_a(array_12_io_d_out_26_a),
    .io_d_out_26_b(array_12_io_d_out_26_b),
    .io_d_out_27_a(array_12_io_d_out_27_a),
    .io_d_out_27_b(array_12_io_d_out_27_b),
    .io_d_out_28_a(array_12_io_d_out_28_a),
    .io_d_out_28_b(array_12_io_d_out_28_b),
    .io_d_out_29_a(array_12_io_d_out_29_a),
    .io_d_out_29_b(array_12_io_d_out_29_b),
    .io_d_out_30_a(array_12_io_d_out_30_a),
    .io_d_out_30_b(array_12_io_d_out_30_b),
    .io_d_out_31_a(array_12_io_d_out_31_a),
    .io_d_out_31_b(array_12_io_d_out_31_b),
    .io_wr_en_mem1(array_12_io_wr_en_mem1),
    .io_wr_en_mem2(array_12_io_wr_en_mem2),
    .io_wr_instr_mem1(array_12_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_12_io_wr_instr_mem2),
    .io_run(array_12_io_run)
  );
  BuildingBlock array_13 ( // @[Array.scala 16:51]
    .clock(array_13_clock),
    .reset(array_13_reset),
    .io_d_in_0_a(array_13_io_d_in_0_a),
    .io_d_in_0_b(array_13_io_d_in_0_b),
    .io_d_in_1_a(array_13_io_d_in_1_a),
    .io_d_in_1_b(array_13_io_d_in_1_b),
    .io_d_in_2_a(array_13_io_d_in_2_a),
    .io_d_in_2_b(array_13_io_d_in_2_b),
    .io_d_in_3_a(array_13_io_d_in_3_a),
    .io_d_in_3_b(array_13_io_d_in_3_b),
    .io_d_in_4_a(array_13_io_d_in_4_a),
    .io_d_in_4_b(array_13_io_d_in_4_b),
    .io_d_in_5_a(array_13_io_d_in_5_a),
    .io_d_in_5_b(array_13_io_d_in_5_b),
    .io_d_in_6_a(array_13_io_d_in_6_a),
    .io_d_in_6_b(array_13_io_d_in_6_b),
    .io_d_in_7_a(array_13_io_d_in_7_a),
    .io_d_in_7_b(array_13_io_d_in_7_b),
    .io_d_in_8_a(array_13_io_d_in_8_a),
    .io_d_in_8_b(array_13_io_d_in_8_b),
    .io_d_in_9_a(array_13_io_d_in_9_a),
    .io_d_in_9_b(array_13_io_d_in_9_b),
    .io_d_in_10_a(array_13_io_d_in_10_a),
    .io_d_in_10_b(array_13_io_d_in_10_b),
    .io_d_in_11_a(array_13_io_d_in_11_a),
    .io_d_in_11_b(array_13_io_d_in_11_b),
    .io_d_in_12_a(array_13_io_d_in_12_a),
    .io_d_in_12_b(array_13_io_d_in_12_b),
    .io_d_in_13_a(array_13_io_d_in_13_a),
    .io_d_in_13_b(array_13_io_d_in_13_b),
    .io_d_in_14_a(array_13_io_d_in_14_a),
    .io_d_in_14_b(array_13_io_d_in_14_b),
    .io_d_in_15_a(array_13_io_d_in_15_a),
    .io_d_in_15_b(array_13_io_d_in_15_b),
    .io_d_in_16_a(array_13_io_d_in_16_a),
    .io_d_in_16_b(array_13_io_d_in_16_b),
    .io_d_in_17_a(array_13_io_d_in_17_a),
    .io_d_in_17_b(array_13_io_d_in_17_b),
    .io_d_in_18_a(array_13_io_d_in_18_a),
    .io_d_in_18_b(array_13_io_d_in_18_b),
    .io_d_in_19_a(array_13_io_d_in_19_a),
    .io_d_in_19_b(array_13_io_d_in_19_b),
    .io_d_in_20_a(array_13_io_d_in_20_a),
    .io_d_in_20_b(array_13_io_d_in_20_b),
    .io_d_in_21_a(array_13_io_d_in_21_a),
    .io_d_in_21_b(array_13_io_d_in_21_b),
    .io_d_in_22_a(array_13_io_d_in_22_a),
    .io_d_in_22_b(array_13_io_d_in_22_b),
    .io_d_in_23_a(array_13_io_d_in_23_a),
    .io_d_in_23_b(array_13_io_d_in_23_b),
    .io_d_in_24_a(array_13_io_d_in_24_a),
    .io_d_in_24_b(array_13_io_d_in_24_b),
    .io_d_in_25_a(array_13_io_d_in_25_a),
    .io_d_in_25_b(array_13_io_d_in_25_b),
    .io_d_in_26_a(array_13_io_d_in_26_a),
    .io_d_in_26_b(array_13_io_d_in_26_b),
    .io_d_in_27_a(array_13_io_d_in_27_a),
    .io_d_in_27_b(array_13_io_d_in_27_b),
    .io_d_in_28_a(array_13_io_d_in_28_a),
    .io_d_in_28_b(array_13_io_d_in_28_b),
    .io_d_in_29_a(array_13_io_d_in_29_a),
    .io_d_in_29_b(array_13_io_d_in_29_b),
    .io_d_in_30_a(array_13_io_d_in_30_a),
    .io_d_in_30_b(array_13_io_d_in_30_b),
    .io_d_in_31_a(array_13_io_d_in_31_a),
    .io_d_in_31_b(array_13_io_d_in_31_b),
    .io_d_out_0_a(array_13_io_d_out_0_a),
    .io_d_out_0_b(array_13_io_d_out_0_b),
    .io_d_out_1_a(array_13_io_d_out_1_a),
    .io_d_out_1_b(array_13_io_d_out_1_b),
    .io_d_out_2_a(array_13_io_d_out_2_a),
    .io_d_out_2_b(array_13_io_d_out_2_b),
    .io_d_out_3_a(array_13_io_d_out_3_a),
    .io_d_out_3_b(array_13_io_d_out_3_b),
    .io_d_out_4_a(array_13_io_d_out_4_a),
    .io_d_out_4_b(array_13_io_d_out_4_b),
    .io_d_out_5_a(array_13_io_d_out_5_a),
    .io_d_out_5_b(array_13_io_d_out_5_b),
    .io_d_out_6_a(array_13_io_d_out_6_a),
    .io_d_out_6_b(array_13_io_d_out_6_b),
    .io_d_out_7_a(array_13_io_d_out_7_a),
    .io_d_out_7_b(array_13_io_d_out_7_b),
    .io_d_out_8_a(array_13_io_d_out_8_a),
    .io_d_out_8_b(array_13_io_d_out_8_b),
    .io_d_out_9_a(array_13_io_d_out_9_a),
    .io_d_out_9_b(array_13_io_d_out_9_b),
    .io_d_out_10_a(array_13_io_d_out_10_a),
    .io_d_out_10_b(array_13_io_d_out_10_b),
    .io_d_out_11_a(array_13_io_d_out_11_a),
    .io_d_out_11_b(array_13_io_d_out_11_b),
    .io_d_out_12_a(array_13_io_d_out_12_a),
    .io_d_out_12_b(array_13_io_d_out_12_b),
    .io_d_out_13_a(array_13_io_d_out_13_a),
    .io_d_out_13_b(array_13_io_d_out_13_b),
    .io_d_out_14_a(array_13_io_d_out_14_a),
    .io_d_out_14_b(array_13_io_d_out_14_b),
    .io_d_out_15_a(array_13_io_d_out_15_a),
    .io_d_out_15_b(array_13_io_d_out_15_b),
    .io_d_out_16_a(array_13_io_d_out_16_a),
    .io_d_out_16_b(array_13_io_d_out_16_b),
    .io_d_out_17_a(array_13_io_d_out_17_a),
    .io_d_out_17_b(array_13_io_d_out_17_b),
    .io_d_out_18_a(array_13_io_d_out_18_a),
    .io_d_out_18_b(array_13_io_d_out_18_b),
    .io_d_out_19_a(array_13_io_d_out_19_a),
    .io_d_out_19_b(array_13_io_d_out_19_b),
    .io_d_out_20_a(array_13_io_d_out_20_a),
    .io_d_out_20_b(array_13_io_d_out_20_b),
    .io_d_out_21_a(array_13_io_d_out_21_a),
    .io_d_out_21_b(array_13_io_d_out_21_b),
    .io_d_out_22_a(array_13_io_d_out_22_a),
    .io_d_out_22_b(array_13_io_d_out_22_b),
    .io_d_out_23_a(array_13_io_d_out_23_a),
    .io_d_out_23_b(array_13_io_d_out_23_b),
    .io_d_out_24_a(array_13_io_d_out_24_a),
    .io_d_out_24_b(array_13_io_d_out_24_b),
    .io_d_out_25_a(array_13_io_d_out_25_a),
    .io_d_out_25_b(array_13_io_d_out_25_b),
    .io_d_out_26_a(array_13_io_d_out_26_a),
    .io_d_out_26_b(array_13_io_d_out_26_b),
    .io_d_out_27_a(array_13_io_d_out_27_a),
    .io_d_out_27_b(array_13_io_d_out_27_b),
    .io_d_out_28_a(array_13_io_d_out_28_a),
    .io_d_out_28_b(array_13_io_d_out_28_b),
    .io_d_out_29_a(array_13_io_d_out_29_a),
    .io_d_out_29_b(array_13_io_d_out_29_b),
    .io_d_out_30_a(array_13_io_d_out_30_a),
    .io_d_out_30_b(array_13_io_d_out_30_b),
    .io_d_out_31_a(array_13_io_d_out_31_a),
    .io_d_out_31_b(array_13_io_d_out_31_b),
    .io_wr_en_mem1(array_13_io_wr_en_mem1),
    .io_wr_en_mem2(array_13_io_wr_en_mem2),
    .io_wr_instr_mem1(array_13_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_13_io_wr_instr_mem2),
    .io_run(array_13_io_run)
  );
  BuildingBlock array_14 ( // @[Array.scala 16:51]
    .clock(array_14_clock),
    .reset(array_14_reset),
    .io_d_in_0_a(array_14_io_d_in_0_a),
    .io_d_in_0_b(array_14_io_d_in_0_b),
    .io_d_in_1_a(array_14_io_d_in_1_a),
    .io_d_in_1_b(array_14_io_d_in_1_b),
    .io_d_in_2_a(array_14_io_d_in_2_a),
    .io_d_in_2_b(array_14_io_d_in_2_b),
    .io_d_in_3_a(array_14_io_d_in_3_a),
    .io_d_in_3_b(array_14_io_d_in_3_b),
    .io_d_in_4_a(array_14_io_d_in_4_a),
    .io_d_in_4_b(array_14_io_d_in_4_b),
    .io_d_in_5_a(array_14_io_d_in_5_a),
    .io_d_in_5_b(array_14_io_d_in_5_b),
    .io_d_in_6_a(array_14_io_d_in_6_a),
    .io_d_in_6_b(array_14_io_d_in_6_b),
    .io_d_in_7_a(array_14_io_d_in_7_a),
    .io_d_in_7_b(array_14_io_d_in_7_b),
    .io_d_in_8_a(array_14_io_d_in_8_a),
    .io_d_in_8_b(array_14_io_d_in_8_b),
    .io_d_in_9_a(array_14_io_d_in_9_a),
    .io_d_in_9_b(array_14_io_d_in_9_b),
    .io_d_in_10_a(array_14_io_d_in_10_a),
    .io_d_in_10_b(array_14_io_d_in_10_b),
    .io_d_in_11_a(array_14_io_d_in_11_a),
    .io_d_in_11_b(array_14_io_d_in_11_b),
    .io_d_in_12_a(array_14_io_d_in_12_a),
    .io_d_in_12_b(array_14_io_d_in_12_b),
    .io_d_in_13_a(array_14_io_d_in_13_a),
    .io_d_in_13_b(array_14_io_d_in_13_b),
    .io_d_in_14_a(array_14_io_d_in_14_a),
    .io_d_in_14_b(array_14_io_d_in_14_b),
    .io_d_in_15_a(array_14_io_d_in_15_a),
    .io_d_in_15_b(array_14_io_d_in_15_b),
    .io_d_in_16_a(array_14_io_d_in_16_a),
    .io_d_in_16_b(array_14_io_d_in_16_b),
    .io_d_in_17_a(array_14_io_d_in_17_a),
    .io_d_in_17_b(array_14_io_d_in_17_b),
    .io_d_in_18_a(array_14_io_d_in_18_a),
    .io_d_in_18_b(array_14_io_d_in_18_b),
    .io_d_in_19_a(array_14_io_d_in_19_a),
    .io_d_in_19_b(array_14_io_d_in_19_b),
    .io_d_in_20_a(array_14_io_d_in_20_a),
    .io_d_in_20_b(array_14_io_d_in_20_b),
    .io_d_in_21_a(array_14_io_d_in_21_a),
    .io_d_in_21_b(array_14_io_d_in_21_b),
    .io_d_in_22_a(array_14_io_d_in_22_a),
    .io_d_in_22_b(array_14_io_d_in_22_b),
    .io_d_in_23_a(array_14_io_d_in_23_a),
    .io_d_in_23_b(array_14_io_d_in_23_b),
    .io_d_in_24_a(array_14_io_d_in_24_a),
    .io_d_in_24_b(array_14_io_d_in_24_b),
    .io_d_in_25_a(array_14_io_d_in_25_a),
    .io_d_in_25_b(array_14_io_d_in_25_b),
    .io_d_in_26_a(array_14_io_d_in_26_a),
    .io_d_in_26_b(array_14_io_d_in_26_b),
    .io_d_in_27_a(array_14_io_d_in_27_a),
    .io_d_in_27_b(array_14_io_d_in_27_b),
    .io_d_in_28_a(array_14_io_d_in_28_a),
    .io_d_in_28_b(array_14_io_d_in_28_b),
    .io_d_in_29_a(array_14_io_d_in_29_a),
    .io_d_in_29_b(array_14_io_d_in_29_b),
    .io_d_in_30_a(array_14_io_d_in_30_a),
    .io_d_in_30_b(array_14_io_d_in_30_b),
    .io_d_in_31_a(array_14_io_d_in_31_a),
    .io_d_in_31_b(array_14_io_d_in_31_b),
    .io_d_out_0_a(array_14_io_d_out_0_a),
    .io_d_out_0_b(array_14_io_d_out_0_b),
    .io_d_out_1_a(array_14_io_d_out_1_a),
    .io_d_out_1_b(array_14_io_d_out_1_b),
    .io_d_out_2_a(array_14_io_d_out_2_a),
    .io_d_out_2_b(array_14_io_d_out_2_b),
    .io_d_out_3_a(array_14_io_d_out_3_a),
    .io_d_out_3_b(array_14_io_d_out_3_b),
    .io_d_out_4_a(array_14_io_d_out_4_a),
    .io_d_out_4_b(array_14_io_d_out_4_b),
    .io_d_out_5_a(array_14_io_d_out_5_a),
    .io_d_out_5_b(array_14_io_d_out_5_b),
    .io_d_out_6_a(array_14_io_d_out_6_a),
    .io_d_out_6_b(array_14_io_d_out_6_b),
    .io_d_out_7_a(array_14_io_d_out_7_a),
    .io_d_out_7_b(array_14_io_d_out_7_b),
    .io_d_out_8_a(array_14_io_d_out_8_a),
    .io_d_out_8_b(array_14_io_d_out_8_b),
    .io_d_out_9_a(array_14_io_d_out_9_a),
    .io_d_out_9_b(array_14_io_d_out_9_b),
    .io_d_out_10_a(array_14_io_d_out_10_a),
    .io_d_out_10_b(array_14_io_d_out_10_b),
    .io_d_out_11_a(array_14_io_d_out_11_a),
    .io_d_out_11_b(array_14_io_d_out_11_b),
    .io_d_out_12_a(array_14_io_d_out_12_a),
    .io_d_out_12_b(array_14_io_d_out_12_b),
    .io_d_out_13_a(array_14_io_d_out_13_a),
    .io_d_out_13_b(array_14_io_d_out_13_b),
    .io_d_out_14_a(array_14_io_d_out_14_a),
    .io_d_out_14_b(array_14_io_d_out_14_b),
    .io_d_out_15_a(array_14_io_d_out_15_a),
    .io_d_out_15_b(array_14_io_d_out_15_b),
    .io_d_out_16_a(array_14_io_d_out_16_a),
    .io_d_out_16_b(array_14_io_d_out_16_b),
    .io_d_out_17_a(array_14_io_d_out_17_a),
    .io_d_out_17_b(array_14_io_d_out_17_b),
    .io_d_out_18_a(array_14_io_d_out_18_a),
    .io_d_out_18_b(array_14_io_d_out_18_b),
    .io_d_out_19_a(array_14_io_d_out_19_a),
    .io_d_out_19_b(array_14_io_d_out_19_b),
    .io_d_out_20_a(array_14_io_d_out_20_a),
    .io_d_out_20_b(array_14_io_d_out_20_b),
    .io_d_out_21_a(array_14_io_d_out_21_a),
    .io_d_out_21_b(array_14_io_d_out_21_b),
    .io_d_out_22_a(array_14_io_d_out_22_a),
    .io_d_out_22_b(array_14_io_d_out_22_b),
    .io_d_out_23_a(array_14_io_d_out_23_a),
    .io_d_out_23_b(array_14_io_d_out_23_b),
    .io_d_out_24_a(array_14_io_d_out_24_a),
    .io_d_out_24_b(array_14_io_d_out_24_b),
    .io_d_out_25_a(array_14_io_d_out_25_a),
    .io_d_out_25_b(array_14_io_d_out_25_b),
    .io_d_out_26_a(array_14_io_d_out_26_a),
    .io_d_out_26_b(array_14_io_d_out_26_b),
    .io_d_out_27_a(array_14_io_d_out_27_a),
    .io_d_out_27_b(array_14_io_d_out_27_b),
    .io_d_out_28_a(array_14_io_d_out_28_a),
    .io_d_out_28_b(array_14_io_d_out_28_b),
    .io_d_out_29_a(array_14_io_d_out_29_a),
    .io_d_out_29_b(array_14_io_d_out_29_b),
    .io_d_out_30_a(array_14_io_d_out_30_a),
    .io_d_out_30_b(array_14_io_d_out_30_b),
    .io_d_out_31_a(array_14_io_d_out_31_a),
    .io_d_out_31_b(array_14_io_d_out_31_b),
    .io_wr_en_mem1(array_14_io_wr_en_mem1),
    .io_wr_en_mem2(array_14_io_wr_en_mem2),
    .io_wr_instr_mem1(array_14_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_14_io_wr_instr_mem2),
    .io_run(array_14_io_run)
  );
  BuildingBlock array_15 ( // @[Array.scala 16:51]
    .clock(array_15_clock),
    .reset(array_15_reset),
    .io_d_in_0_a(array_15_io_d_in_0_a),
    .io_d_in_0_b(array_15_io_d_in_0_b),
    .io_d_in_1_a(array_15_io_d_in_1_a),
    .io_d_in_1_b(array_15_io_d_in_1_b),
    .io_d_in_2_a(array_15_io_d_in_2_a),
    .io_d_in_2_b(array_15_io_d_in_2_b),
    .io_d_in_3_a(array_15_io_d_in_3_a),
    .io_d_in_3_b(array_15_io_d_in_3_b),
    .io_d_in_4_a(array_15_io_d_in_4_a),
    .io_d_in_4_b(array_15_io_d_in_4_b),
    .io_d_in_5_a(array_15_io_d_in_5_a),
    .io_d_in_5_b(array_15_io_d_in_5_b),
    .io_d_in_6_a(array_15_io_d_in_6_a),
    .io_d_in_6_b(array_15_io_d_in_6_b),
    .io_d_in_7_a(array_15_io_d_in_7_a),
    .io_d_in_7_b(array_15_io_d_in_7_b),
    .io_d_in_8_a(array_15_io_d_in_8_a),
    .io_d_in_8_b(array_15_io_d_in_8_b),
    .io_d_in_9_a(array_15_io_d_in_9_a),
    .io_d_in_9_b(array_15_io_d_in_9_b),
    .io_d_in_10_a(array_15_io_d_in_10_a),
    .io_d_in_10_b(array_15_io_d_in_10_b),
    .io_d_in_11_a(array_15_io_d_in_11_a),
    .io_d_in_11_b(array_15_io_d_in_11_b),
    .io_d_in_12_a(array_15_io_d_in_12_a),
    .io_d_in_12_b(array_15_io_d_in_12_b),
    .io_d_in_13_a(array_15_io_d_in_13_a),
    .io_d_in_13_b(array_15_io_d_in_13_b),
    .io_d_in_14_a(array_15_io_d_in_14_a),
    .io_d_in_14_b(array_15_io_d_in_14_b),
    .io_d_in_15_a(array_15_io_d_in_15_a),
    .io_d_in_15_b(array_15_io_d_in_15_b),
    .io_d_in_16_a(array_15_io_d_in_16_a),
    .io_d_in_16_b(array_15_io_d_in_16_b),
    .io_d_in_17_a(array_15_io_d_in_17_a),
    .io_d_in_17_b(array_15_io_d_in_17_b),
    .io_d_in_18_a(array_15_io_d_in_18_a),
    .io_d_in_18_b(array_15_io_d_in_18_b),
    .io_d_in_19_a(array_15_io_d_in_19_a),
    .io_d_in_19_b(array_15_io_d_in_19_b),
    .io_d_in_20_a(array_15_io_d_in_20_a),
    .io_d_in_20_b(array_15_io_d_in_20_b),
    .io_d_in_21_a(array_15_io_d_in_21_a),
    .io_d_in_21_b(array_15_io_d_in_21_b),
    .io_d_in_22_a(array_15_io_d_in_22_a),
    .io_d_in_22_b(array_15_io_d_in_22_b),
    .io_d_in_23_a(array_15_io_d_in_23_a),
    .io_d_in_23_b(array_15_io_d_in_23_b),
    .io_d_in_24_a(array_15_io_d_in_24_a),
    .io_d_in_24_b(array_15_io_d_in_24_b),
    .io_d_in_25_a(array_15_io_d_in_25_a),
    .io_d_in_25_b(array_15_io_d_in_25_b),
    .io_d_in_26_a(array_15_io_d_in_26_a),
    .io_d_in_26_b(array_15_io_d_in_26_b),
    .io_d_in_27_a(array_15_io_d_in_27_a),
    .io_d_in_27_b(array_15_io_d_in_27_b),
    .io_d_in_28_a(array_15_io_d_in_28_a),
    .io_d_in_28_b(array_15_io_d_in_28_b),
    .io_d_in_29_a(array_15_io_d_in_29_a),
    .io_d_in_29_b(array_15_io_d_in_29_b),
    .io_d_in_30_a(array_15_io_d_in_30_a),
    .io_d_in_30_b(array_15_io_d_in_30_b),
    .io_d_in_31_a(array_15_io_d_in_31_a),
    .io_d_in_31_b(array_15_io_d_in_31_b),
    .io_d_out_0_a(array_15_io_d_out_0_a),
    .io_d_out_0_b(array_15_io_d_out_0_b),
    .io_d_out_1_a(array_15_io_d_out_1_a),
    .io_d_out_1_b(array_15_io_d_out_1_b),
    .io_d_out_2_a(array_15_io_d_out_2_a),
    .io_d_out_2_b(array_15_io_d_out_2_b),
    .io_d_out_3_a(array_15_io_d_out_3_a),
    .io_d_out_3_b(array_15_io_d_out_3_b),
    .io_d_out_4_a(array_15_io_d_out_4_a),
    .io_d_out_4_b(array_15_io_d_out_4_b),
    .io_d_out_5_a(array_15_io_d_out_5_a),
    .io_d_out_5_b(array_15_io_d_out_5_b),
    .io_d_out_6_a(array_15_io_d_out_6_a),
    .io_d_out_6_b(array_15_io_d_out_6_b),
    .io_d_out_7_a(array_15_io_d_out_7_a),
    .io_d_out_7_b(array_15_io_d_out_7_b),
    .io_d_out_8_a(array_15_io_d_out_8_a),
    .io_d_out_8_b(array_15_io_d_out_8_b),
    .io_d_out_9_a(array_15_io_d_out_9_a),
    .io_d_out_9_b(array_15_io_d_out_9_b),
    .io_d_out_10_a(array_15_io_d_out_10_a),
    .io_d_out_10_b(array_15_io_d_out_10_b),
    .io_d_out_11_a(array_15_io_d_out_11_a),
    .io_d_out_11_b(array_15_io_d_out_11_b),
    .io_d_out_12_a(array_15_io_d_out_12_a),
    .io_d_out_12_b(array_15_io_d_out_12_b),
    .io_d_out_13_a(array_15_io_d_out_13_a),
    .io_d_out_13_b(array_15_io_d_out_13_b),
    .io_d_out_14_a(array_15_io_d_out_14_a),
    .io_d_out_14_b(array_15_io_d_out_14_b),
    .io_d_out_15_a(array_15_io_d_out_15_a),
    .io_d_out_15_b(array_15_io_d_out_15_b),
    .io_d_out_16_a(array_15_io_d_out_16_a),
    .io_d_out_16_b(array_15_io_d_out_16_b),
    .io_d_out_17_a(array_15_io_d_out_17_a),
    .io_d_out_17_b(array_15_io_d_out_17_b),
    .io_d_out_18_a(array_15_io_d_out_18_a),
    .io_d_out_18_b(array_15_io_d_out_18_b),
    .io_d_out_19_a(array_15_io_d_out_19_a),
    .io_d_out_19_b(array_15_io_d_out_19_b),
    .io_d_out_20_a(array_15_io_d_out_20_a),
    .io_d_out_20_b(array_15_io_d_out_20_b),
    .io_d_out_21_a(array_15_io_d_out_21_a),
    .io_d_out_21_b(array_15_io_d_out_21_b),
    .io_d_out_22_a(array_15_io_d_out_22_a),
    .io_d_out_22_b(array_15_io_d_out_22_b),
    .io_d_out_23_a(array_15_io_d_out_23_a),
    .io_d_out_23_b(array_15_io_d_out_23_b),
    .io_d_out_24_a(array_15_io_d_out_24_a),
    .io_d_out_24_b(array_15_io_d_out_24_b),
    .io_d_out_25_a(array_15_io_d_out_25_a),
    .io_d_out_25_b(array_15_io_d_out_25_b),
    .io_d_out_26_a(array_15_io_d_out_26_a),
    .io_d_out_26_b(array_15_io_d_out_26_b),
    .io_d_out_27_a(array_15_io_d_out_27_a),
    .io_d_out_27_b(array_15_io_d_out_27_b),
    .io_d_out_28_a(array_15_io_d_out_28_a),
    .io_d_out_28_b(array_15_io_d_out_28_b),
    .io_d_out_29_a(array_15_io_d_out_29_a),
    .io_d_out_29_b(array_15_io_d_out_29_b),
    .io_d_out_30_a(array_15_io_d_out_30_a),
    .io_d_out_30_b(array_15_io_d_out_30_b),
    .io_d_out_31_a(array_15_io_d_out_31_a),
    .io_d_out_31_b(array_15_io_d_out_31_b),
    .io_wr_en_mem1(array_15_io_wr_en_mem1),
    .io_wr_en_mem2(array_15_io_wr_en_mem2),
    .io_wr_instr_mem1(array_15_io_wr_instr_mem1),
    .io_wr_instr_mem2(array_15_io_wr_instr_mem2),
    .io_run(array_15_io_run)
  );
  assign io_d_out_0_a = array_15_io_d_out_0_a; // @[Array.scala 33:12]
  assign io_d_out_0_b = array_15_io_d_out_0_b; // @[Array.scala 33:12]
  assign io_d_out_1_a = array_15_io_d_out_1_a; // @[Array.scala 33:12]
  assign io_d_out_1_b = array_15_io_d_out_1_b; // @[Array.scala 33:12]
  assign io_d_out_2_a = array_15_io_d_out_2_a; // @[Array.scala 33:12]
  assign io_d_out_2_b = array_15_io_d_out_2_b; // @[Array.scala 33:12]
  assign io_d_out_3_a = array_15_io_d_out_3_a; // @[Array.scala 33:12]
  assign io_d_out_3_b = array_15_io_d_out_3_b; // @[Array.scala 33:12]
  assign io_d_out_4_a = array_15_io_d_out_4_a; // @[Array.scala 33:12]
  assign io_d_out_4_b = array_15_io_d_out_4_b; // @[Array.scala 33:12]
  assign io_d_out_5_a = array_15_io_d_out_5_a; // @[Array.scala 33:12]
  assign io_d_out_5_b = array_15_io_d_out_5_b; // @[Array.scala 33:12]
  assign io_d_out_6_a = array_15_io_d_out_6_a; // @[Array.scala 33:12]
  assign io_d_out_6_b = array_15_io_d_out_6_b; // @[Array.scala 33:12]
  assign io_d_out_7_a = array_15_io_d_out_7_a; // @[Array.scala 33:12]
  assign io_d_out_7_b = array_15_io_d_out_7_b; // @[Array.scala 33:12]
  assign io_d_out_8_a = array_15_io_d_out_8_a; // @[Array.scala 33:12]
  assign io_d_out_8_b = array_15_io_d_out_8_b; // @[Array.scala 33:12]
  assign io_d_out_9_a = array_15_io_d_out_9_a; // @[Array.scala 33:12]
  assign io_d_out_9_b = array_15_io_d_out_9_b; // @[Array.scala 33:12]
  assign io_d_out_10_a = array_15_io_d_out_10_a; // @[Array.scala 33:12]
  assign io_d_out_10_b = array_15_io_d_out_10_b; // @[Array.scala 33:12]
  assign io_d_out_11_a = array_15_io_d_out_11_a; // @[Array.scala 33:12]
  assign io_d_out_11_b = array_15_io_d_out_11_b; // @[Array.scala 33:12]
  assign io_d_out_12_a = array_15_io_d_out_12_a; // @[Array.scala 33:12]
  assign io_d_out_12_b = array_15_io_d_out_12_b; // @[Array.scala 33:12]
  assign io_d_out_13_a = array_15_io_d_out_13_a; // @[Array.scala 33:12]
  assign io_d_out_13_b = array_15_io_d_out_13_b; // @[Array.scala 33:12]
  assign io_d_out_14_a = array_15_io_d_out_14_a; // @[Array.scala 33:12]
  assign io_d_out_14_b = array_15_io_d_out_14_b; // @[Array.scala 33:12]
  assign io_d_out_15_a = array_15_io_d_out_15_a; // @[Array.scala 33:12]
  assign io_d_out_15_b = array_15_io_d_out_15_b; // @[Array.scala 33:12]
  assign io_d_out_16_a = array_15_io_d_out_16_a; // @[Array.scala 33:12]
  assign io_d_out_16_b = array_15_io_d_out_16_b; // @[Array.scala 33:12]
  assign io_d_out_17_a = array_15_io_d_out_17_a; // @[Array.scala 33:12]
  assign io_d_out_17_b = array_15_io_d_out_17_b; // @[Array.scala 33:12]
  assign io_d_out_18_a = array_15_io_d_out_18_a; // @[Array.scala 33:12]
  assign io_d_out_18_b = array_15_io_d_out_18_b; // @[Array.scala 33:12]
  assign io_d_out_19_a = array_15_io_d_out_19_a; // @[Array.scala 33:12]
  assign io_d_out_19_b = array_15_io_d_out_19_b; // @[Array.scala 33:12]
  assign io_d_out_20_a = array_15_io_d_out_20_a; // @[Array.scala 33:12]
  assign io_d_out_20_b = array_15_io_d_out_20_b; // @[Array.scala 33:12]
  assign io_d_out_21_a = array_15_io_d_out_21_a; // @[Array.scala 33:12]
  assign io_d_out_21_b = array_15_io_d_out_21_b; // @[Array.scala 33:12]
  assign io_d_out_22_a = array_15_io_d_out_22_a; // @[Array.scala 33:12]
  assign io_d_out_22_b = array_15_io_d_out_22_b; // @[Array.scala 33:12]
  assign io_d_out_23_a = array_15_io_d_out_23_a; // @[Array.scala 33:12]
  assign io_d_out_23_b = array_15_io_d_out_23_b; // @[Array.scala 33:12]
  assign io_d_out_24_a = array_15_io_d_out_24_a; // @[Array.scala 33:12]
  assign io_d_out_24_b = array_15_io_d_out_24_b; // @[Array.scala 33:12]
  assign io_d_out_25_a = array_15_io_d_out_25_a; // @[Array.scala 33:12]
  assign io_d_out_25_b = array_15_io_d_out_25_b; // @[Array.scala 33:12]
  assign io_d_out_26_a = array_15_io_d_out_26_a; // @[Array.scala 33:12]
  assign io_d_out_26_b = array_15_io_d_out_26_b; // @[Array.scala 33:12]
  assign io_d_out_27_a = array_15_io_d_out_27_a; // @[Array.scala 33:12]
  assign io_d_out_27_b = array_15_io_d_out_27_b; // @[Array.scala 33:12]
  assign io_d_out_28_a = array_15_io_d_out_28_a; // @[Array.scala 33:12]
  assign io_d_out_28_b = array_15_io_d_out_28_b; // @[Array.scala 33:12]
  assign io_d_out_29_a = array_15_io_d_out_29_a; // @[Array.scala 33:12]
  assign io_d_out_29_b = array_15_io_d_out_29_b; // @[Array.scala 33:12]
  assign io_d_out_30_a = array_15_io_d_out_30_a; // @[Array.scala 33:12]
  assign io_d_out_30_b = array_15_io_d_out_30_b; // @[Array.scala 33:12]
  assign io_d_out_31_a = array_15_io_d_out_31_a; // @[Array.scala 33:12]
  assign io_d_out_31_b = array_15_io_d_out_31_b; // @[Array.scala 33:12]
  assign array_0_clock = clock;
  assign array_0_reset = reset;
  assign array_0_io_d_in_0_a = io_d_in_0_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_0_b = io_d_in_0_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_1_a = io_d_in_1_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_1_b = io_d_in_1_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_2_a = io_d_in_2_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_2_b = io_d_in_2_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_3_a = io_d_in_3_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_3_b = io_d_in_3_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_4_a = io_d_in_4_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_4_b = io_d_in_4_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_5_a = io_d_in_5_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_5_b = io_d_in_5_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_6_a = io_d_in_6_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_6_b = io_d_in_6_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_7_a = io_d_in_7_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_7_b = io_d_in_7_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_8_a = io_d_in_8_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_8_b = io_d_in_8_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_9_a = io_d_in_9_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_9_b = io_d_in_9_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_10_a = io_d_in_10_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_10_b = io_d_in_10_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_11_a = io_d_in_11_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_11_b = io_d_in_11_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_12_a = io_d_in_12_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_12_b = io_d_in_12_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_13_a = io_d_in_13_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_13_b = io_d_in_13_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_14_a = io_d_in_14_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_14_b = io_d_in_14_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_15_a = io_d_in_15_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_15_b = io_d_in_15_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_16_a = io_d_in_16_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_16_b = io_d_in_16_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_17_a = io_d_in_17_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_17_b = io_d_in_17_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_18_a = io_d_in_18_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_18_b = io_d_in_18_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_19_a = io_d_in_19_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_19_b = io_d_in_19_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_20_a = io_d_in_20_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_20_b = io_d_in_20_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_21_a = io_d_in_21_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_21_b = io_d_in_21_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_22_a = io_d_in_22_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_22_b = io_d_in_22_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_23_a = io_d_in_23_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_23_b = io_d_in_23_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_24_a = io_d_in_24_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_24_b = io_d_in_24_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_25_a = io_d_in_25_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_25_b = io_d_in_25_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_26_a = io_d_in_26_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_26_b = io_d_in_26_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_27_a = io_d_in_27_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_27_b = io_d_in_27_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_28_a = io_d_in_28_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_28_b = io_d_in_28_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_29_a = io_d_in_29_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_29_b = io_d_in_29_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_30_a = io_d_in_30_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_30_b = io_d_in_30_b; // @[Array.scala 19:20]
  assign array_0_io_d_in_31_a = io_d_in_31_a; // @[Array.scala 19:20]
  assign array_0_io_d_in_31_b = io_d_in_31_b; // @[Array.scala 19:20]
  assign array_0_io_wr_en_mem1 = io_wr_en_mem1_0; // @[Array.scala 20:26]
  assign array_0_io_wr_en_mem2 = io_wr_en_mem2_0; // @[Array.scala 21:26]
  assign array_0_io_wr_instr_mem1 = io_wr_instr_mem1_0; // @[Array.scala 22:29]
  assign array_0_io_wr_instr_mem2 = io_wr_instr_mem2_0; // @[Array.scala 23:29]
  assign array_0_io_run = io_run_0; // @[Array.scala 24:19]
  assign array_1_clock = clock;
  assign array_1_reset = reset;
  assign array_1_io_d_in_0_a = array_0_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_0_b = array_0_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_1_a = array_0_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_1_b = array_0_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_2_a = array_0_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_2_b = array_0_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_3_a = array_0_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_3_b = array_0_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_4_a = array_0_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_4_b = array_0_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_5_a = array_0_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_5_b = array_0_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_6_a = array_0_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_6_b = array_0_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_7_a = array_0_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_7_b = array_0_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_8_a = array_0_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_8_b = array_0_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_9_a = array_0_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_9_b = array_0_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_10_a = array_0_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_10_b = array_0_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_11_a = array_0_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_11_b = array_0_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_12_a = array_0_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_12_b = array_0_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_13_a = array_0_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_13_b = array_0_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_14_a = array_0_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_14_b = array_0_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_15_a = array_0_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_15_b = array_0_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_16_a = array_0_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_16_b = array_0_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_17_a = array_0_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_17_b = array_0_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_18_a = array_0_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_18_b = array_0_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_19_a = array_0_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_19_b = array_0_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_20_a = array_0_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_20_b = array_0_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_21_a = array_0_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_21_b = array_0_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_22_a = array_0_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_22_b = array_0_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_23_a = array_0_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_23_b = array_0_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_24_a = array_0_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_24_b = array_0_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_25_a = array_0_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_25_b = array_0_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_26_a = array_0_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_26_b = array_0_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_27_a = array_0_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_27_b = array_0_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_28_a = array_0_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_28_b = array_0_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_29_a = array_0_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_29_b = array_0_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_30_a = array_0_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_30_b = array_0_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_1_io_d_in_31_a = array_0_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_1_io_d_in_31_b = array_0_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_1_io_wr_en_mem1 = io_wr_en_mem1_1; // @[Array.scala 27:28]
  assign array_1_io_wr_en_mem2 = io_wr_en_mem2_1; // @[Array.scala 28:28]
  assign array_1_io_wr_instr_mem1 = io_wr_instr_mem1_1; // @[Array.scala 29:31]
  assign array_1_io_wr_instr_mem2 = io_wr_instr_mem2_1; // @[Array.scala 30:31]
  assign array_1_io_run = io_run_1; // @[Array.scala 31:21]
  assign array_2_clock = clock;
  assign array_2_reset = reset;
  assign array_2_io_d_in_0_a = array_1_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_0_b = array_1_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_1_a = array_1_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_1_b = array_1_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_2_a = array_1_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_2_b = array_1_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_3_a = array_1_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_3_b = array_1_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_4_a = array_1_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_4_b = array_1_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_5_a = array_1_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_5_b = array_1_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_6_a = array_1_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_6_b = array_1_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_7_a = array_1_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_7_b = array_1_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_8_a = array_1_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_8_b = array_1_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_9_a = array_1_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_9_b = array_1_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_10_a = array_1_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_10_b = array_1_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_11_a = array_1_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_11_b = array_1_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_12_a = array_1_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_12_b = array_1_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_13_a = array_1_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_13_b = array_1_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_14_a = array_1_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_14_b = array_1_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_15_a = array_1_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_15_b = array_1_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_16_a = array_1_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_16_b = array_1_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_17_a = array_1_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_17_b = array_1_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_18_a = array_1_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_18_b = array_1_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_19_a = array_1_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_19_b = array_1_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_20_a = array_1_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_20_b = array_1_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_21_a = array_1_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_21_b = array_1_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_22_a = array_1_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_22_b = array_1_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_23_a = array_1_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_23_b = array_1_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_24_a = array_1_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_24_b = array_1_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_25_a = array_1_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_25_b = array_1_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_26_a = array_1_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_26_b = array_1_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_27_a = array_1_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_27_b = array_1_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_28_a = array_1_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_28_b = array_1_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_29_a = array_1_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_29_b = array_1_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_30_a = array_1_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_30_b = array_1_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_2_io_d_in_31_a = array_1_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_2_io_d_in_31_b = array_1_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_2_io_wr_en_mem1 = io_wr_en_mem1_2; // @[Array.scala 27:28]
  assign array_2_io_wr_en_mem2 = io_wr_en_mem2_2; // @[Array.scala 28:28]
  assign array_2_io_wr_instr_mem1 = io_wr_instr_mem1_2; // @[Array.scala 29:31]
  assign array_2_io_wr_instr_mem2 = io_wr_instr_mem2_2; // @[Array.scala 30:31]
  assign array_2_io_run = io_run_2; // @[Array.scala 31:21]
  assign array_3_clock = clock;
  assign array_3_reset = reset;
  assign array_3_io_d_in_0_a = array_2_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_0_b = array_2_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_1_a = array_2_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_1_b = array_2_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_2_a = array_2_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_2_b = array_2_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_3_a = array_2_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_3_b = array_2_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_4_a = array_2_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_4_b = array_2_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_5_a = array_2_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_5_b = array_2_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_6_a = array_2_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_6_b = array_2_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_7_a = array_2_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_7_b = array_2_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_8_a = array_2_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_8_b = array_2_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_9_a = array_2_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_9_b = array_2_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_10_a = array_2_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_10_b = array_2_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_11_a = array_2_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_11_b = array_2_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_12_a = array_2_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_12_b = array_2_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_13_a = array_2_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_13_b = array_2_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_14_a = array_2_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_14_b = array_2_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_15_a = array_2_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_15_b = array_2_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_16_a = array_2_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_16_b = array_2_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_17_a = array_2_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_17_b = array_2_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_18_a = array_2_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_18_b = array_2_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_19_a = array_2_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_19_b = array_2_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_20_a = array_2_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_20_b = array_2_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_21_a = array_2_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_21_b = array_2_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_22_a = array_2_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_22_b = array_2_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_23_a = array_2_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_23_b = array_2_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_24_a = array_2_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_24_b = array_2_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_25_a = array_2_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_25_b = array_2_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_26_a = array_2_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_26_b = array_2_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_27_a = array_2_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_27_b = array_2_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_28_a = array_2_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_28_b = array_2_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_29_a = array_2_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_29_b = array_2_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_30_a = array_2_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_30_b = array_2_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_3_io_d_in_31_a = array_2_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_3_io_d_in_31_b = array_2_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_3_io_wr_en_mem1 = io_wr_en_mem1_3; // @[Array.scala 27:28]
  assign array_3_io_wr_en_mem2 = io_wr_en_mem2_3; // @[Array.scala 28:28]
  assign array_3_io_wr_instr_mem1 = io_wr_instr_mem1_3; // @[Array.scala 29:31]
  assign array_3_io_wr_instr_mem2 = io_wr_instr_mem2_3; // @[Array.scala 30:31]
  assign array_3_io_run = io_run_3; // @[Array.scala 31:21]
  assign array_4_clock = clock;
  assign array_4_reset = reset;
  assign array_4_io_d_in_0_a = array_3_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_0_b = array_3_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_1_a = array_3_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_1_b = array_3_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_2_a = array_3_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_2_b = array_3_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_3_a = array_3_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_3_b = array_3_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_4_a = array_3_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_4_b = array_3_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_5_a = array_3_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_5_b = array_3_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_6_a = array_3_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_6_b = array_3_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_7_a = array_3_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_7_b = array_3_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_8_a = array_3_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_8_b = array_3_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_9_a = array_3_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_9_b = array_3_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_10_a = array_3_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_10_b = array_3_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_11_a = array_3_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_11_b = array_3_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_12_a = array_3_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_12_b = array_3_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_13_a = array_3_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_13_b = array_3_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_14_a = array_3_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_14_b = array_3_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_15_a = array_3_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_15_b = array_3_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_16_a = array_3_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_16_b = array_3_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_17_a = array_3_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_17_b = array_3_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_18_a = array_3_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_18_b = array_3_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_19_a = array_3_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_19_b = array_3_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_20_a = array_3_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_20_b = array_3_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_21_a = array_3_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_21_b = array_3_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_22_a = array_3_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_22_b = array_3_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_23_a = array_3_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_23_b = array_3_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_24_a = array_3_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_24_b = array_3_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_25_a = array_3_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_25_b = array_3_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_26_a = array_3_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_26_b = array_3_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_27_a = array_3_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_27_b = array_3_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_28_a = array_3_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_28_b = array_3_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_29_a = array_3_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_29_b = array_3_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_30_a = array_3_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_30_b = array_3_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_4_io_d_in_31_a = array_3_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_4_io_d_in_31_b = array_3_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_4_io_wr_en_mem1 = io_wr_en_mem1_4; // @[Array.scala 27:28]
  assign array_4_io_wr_en_mem2 = io_wr_en_mem2_4; // @[Array.scala 28:28]
  assign array_4_io_wr_instr_mem1 = io_wr_instr_mem1_4; // @[Array.scala 29:31]
  assign array_4_io_wr_instr_mem2 = io_wr_instr_mem2_4; // @[Array.scala 30:31]
  assign array_4_io_run = io_run_4; // @[Array.scala 31:21]
  assign array_5_clock = clock;
  assign array_5_reset = reset;
  assign array_5_io_d_in_0_a = array_4_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_0_b = array_4_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_1_a = array_4_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_1_b = array_4_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_2_a = array_4_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_2_b = array_4_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_3_a = array_4_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_3_b = array_4_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_4_a = array_4_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_4_b = array_4_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_5_a = array_4_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_5_b = array_4_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_6_a = array_4_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_6_b = array_4_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_7_a = array_4_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_7_b = array_4_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_8_a = array_4_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_8_b = array_4_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_9_a = array_4_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_9_b = array_4_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_10_a = array_4_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_10_b = array_4_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_11_a = array_4_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_11_b = array_4_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_12_a = array_4_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_12_b = array_4_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_13_a = array_4_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_13_b = array_4_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_14_a = array_4_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_14_b = array_4_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_15_a = array_4_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_15_b = array_4_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_16_a = array_4_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_16_b = array_4_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_17_a = array_4_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_17_b = array_4_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_18_a = array_4_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_18_b = array_4_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_19_a = array_4_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_19_b = array_4_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_20_a = array_4_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_20_b = array_4_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_21_a = array_4_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_21_b = array_4_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_22_a = array_4_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_22_b = array_4_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_23_a = array_4_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_23_b = array_4_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_24_a = array_4_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_24_b = array_4_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_25_a = array_4_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_25_b = array_4_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_26_a = array_4_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_26_b = array_4_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_27_a = array_4_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_27_b = array_4_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_28_a = array_4_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_28_b = array_4_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_29_a = array_4_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_29_b = array_4_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_30_a = array_4_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_30_b = array_4_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_5_io_d_in_31_a = array_4_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_5_io_d_in_31_b = array_4_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_5_io_wr_en_mem1 = io_wr_en_mem1_5; // @[Array.scala 27:28]
  assign array_5_io_wr_en_mem2 = io_wr_en_mem2_5; // @[Array.scala 28:28]
  assign array_5_io_wr_instr_mem1 = io_wr_instr_mem1_5; // @[Array.scala 29:31]
  assign array_5_io_wr_instr_mem2 = io_wr_instr_mem2_5; // @[Array.scala 30:31]
  assign array_5_io_run = io_run_5; // @[Array.scala 31:21]
  assign array_6_clock = clock;
  assign array_6_reset = reset;
  assign array_6_io_d_in_0_a = array_5_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_0_b = array_5_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_1_a = array_5_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_1_b = array_5_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_2_a = array_5_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_2_b = array_5_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_3_a = array_5_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_3_b = array_5_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_4_a = array_5_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_4_b = array_5_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_5_a = array_5_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_5_b = array_5_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_6_a = array_5_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_6_b = array_5_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_7_a = array_5_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_7_b = array_5_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_8_a = array_5_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_8_b = array_5_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_9_a = array_5_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_9_b = array_5_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_10_a = array_5_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_10_b = array_5_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_11_a = array_5_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_11_b = array_5_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_12_a = array_5_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_12_b = array_5_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_13_a = array_5_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_13_b = array_5_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_14_a = array_5_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_14_b = array_5_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_15_a = array_5_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_15_b = array_5_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_16_a = array_5_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_16_b = array_5_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_17_a = array_5_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_17_b = array_5_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_18_a = array_5_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_18_b = array_5_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_19_a = array_5_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_19_b = array_5_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_20_a = array_5_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_20_b = array_5_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_21_a = array_5_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_21_b = array_5_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_22_a = array_5_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_22_b = array_5_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_23_a = array_5_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_23_b = array_5_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_24_a = array_5_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_24_b = array_5_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_25_a = array_5_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_25_b = array_5_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_26_a = array_5_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_26_b = array_5_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_27_a = array_5_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_27_b = array_5_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_28_a = array_5_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_28_b = array_5_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_29_a = array_5_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_29_b = array_5_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_30_a = array_5_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_30_b = array_5_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_6_io_d_in_31_a = array_5_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_6_io_d_in_31_b = array_5_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_6_io_wr_en_mem1 = io_wr_en_mem1_6; // @[Array.scala 27:28]
  assign array_6_io_wr_en_mem2 = io_wr_en_mem2_6; // @[Array.scala 28:28]
  assign array_6_io_wr_instr_mem1 = io_wr_instr_mem1_6; // @[Array.scala 29:31]
  assign array_6_io_wr_instr_mem2 = io_wr_instr_mem2_6; // @[Array.scala 30:31]
  assign array_6_io_run = io_run_6; // @[Array.scala 31:21]
  assign array_7_clock = clock;
  assign array_7_reset = reset;
  assign array_7_io_d_in_0_a = array_6_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_0_b = array_6_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_1_a = array_6_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_1_b = array_6_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_2_a = array_6_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_2_b = array_6_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_3_a = array_6_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_3_b = array_6_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_4_a = array_6_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_4_b = array_6_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_5_a = array_6_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_5_b = array_6_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_6_a = array_6_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_6_b = array_6_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_7_a = array_6_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_7_b = array_6_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_8_a = array_6_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_8_b = array_6_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_9_a = array_6_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_9_b = array_6_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_10_a = array_6_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_10_b = array_6_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_11_a = array_6_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_11_b = array_6_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_12_a = array_6_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_12_b = array_6_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_13_a = array_6_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_13_b = array_6_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_14_a = array_6_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_14_b = array_6_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_15_a = array_6_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_15_b = array_6_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_16_a = array_6_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_16_b = array_6_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_17_a = array_6_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_17_b = array_6_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_18_a = array_6_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_18_b = array_6_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_19_a = array_6_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_19_b = array_6_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_20_a = array_6_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_20_b = array_6_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_21_a = array_6_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_21_b = array_6_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_22_a = array_6_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_22_b = array_6_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_23_a = array_6_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_23_b = array_6_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_24_a = array_6_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_24_b = array_6_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_25_a = array_6_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_25_b = array_6_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_26_a = array_6_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_26_b = array_6_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_27_a = array_6_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_27_b = array_6_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_28_a = array_6_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_28_b = array_6_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_29_a = array_6_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_29_b = array_6_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_30_a = array_6_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_30_b = array_6_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_7_io_d_in_31_a = array_6_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_7_io_d_in_31_b = array_6_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_7_io_wr_en_mem1 = io_wr_en_mem1_7; // @[Array.scala 27:28]
  assign array_7_io_wr_en_mem2 = io_wr_en_mem2_7; // @[Array.scala 28:28]
  assign array_7_io_wr_instr_mem1 = io_wr_instr_mem1_7; // @[Array.scala 29:31]
  assign array_7_io_wr_instr_mem2 = io_wr_instr_mem2_7; // @[Array.scala 30:31]
  assign array_7_io_run = io_run_7; // @[Array.scala 31:21]
  assign array_8_clock = clock;
  assign array_8_reset = reset;
  assign array_8_io_d_in_0_a = array_7_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_0_b = array_7_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_1_a = array_7_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_1_b = array_7_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_2_a = array_7_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_2_b = array_7_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_3_a = array_7_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_3_b = array_7_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_4_a = array_7_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_4_b = array_7_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_5_a = array_7_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_5_b = array_7_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_6_a = array_7_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_6_b = array_7_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_7_a = array_7_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_7_b = array_7_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_8_a = array_7_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_8_b = array_7_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_9_a = array_7_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_9_b = array_7_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_10_a = array_7_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_10_b = array_7_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_11_a = array_7_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_11_b = array_7_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_12_a = array_7_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_12_b = array_7_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_13_a = array_7_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_13_b = array_7_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_14_a = array_7_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_14_b = array_7_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_15_a = array_7_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_15_b = array_7_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_16_a = array_7_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_16_b = array_7_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_17_a = array_7_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_17_b = array_7_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_18_a = array_7_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_18_b = array_7_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_19_a = array_7_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_19_b = array_7_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_20_a = array_7_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_20_b = array_7_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_21_a = array_7_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_21_b = array_7_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_22_a = array_7_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_22_b = array_7_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_23_a = array_7_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_23_b = array_7_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_24_a = array_7_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_24_b = array_7_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_25_a = array_7_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_25_b = array_7_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_26_a = array_7_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_26_b = array_7_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_27_a = array_7_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_27_b = array_7_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_28_a = array_7_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_28_b = array_7_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_29_a = array_7_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_29_b = array_7_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_30_a = array_7_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_30_b = array_7_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_8_io_d_in_31_a = array_7_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_8_io_d_in_31_b = array_7_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_8_io_wr_en_mem1 = io_wr_en_mem1_8; // @[Array.scala 27:28]
  assign array_8_io_wr_en_mem2 = io_wr_en_mem2_8; // @[Array.scala 28:28]
  assign array_8_io_wr_instr_mem1 = io_wr_instr_mem1_8; // @[Array.scala 29:31]
  assign array_8_io_wr_instr_mem2 = io_wr_instr_mem2_8; // @[Array.scala 30:31]
  assign array_8_io_run = io_run_8; // @[Array.scala 31:21]
  assign array_9_clock = clock;
  assign array_9_reset = reset;
  assign array_9_io_d_in_0_a = array_8_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_0_b = array_8_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_1_a = array_8_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_1_b = array_8_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_2_a = array_8_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_2_b = array_8_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_3_a = array_8_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_3_b = array_8_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_4_a = array_8_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_4_b = array_8_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_5_a = array_8_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_5_b = array_8_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_6_a = array_8_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_6_b = array_8_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_7_a = array_8_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_7_b = array_8_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_8_a = array_8_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_8_b = array_8_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_9_a = array_8_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_9_b = array_8_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_10_a = array_8_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_10_b = array_8_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_11_a = array_8_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_11_b = array_8_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_12_a = array_8_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_12_b = array_8_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_13_a = array_8_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_13_b = array_8_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_14_a = array_8_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_14_b = array_8_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_15_a = array_8_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_15_b = array_8_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_16_a = array_8_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_16_b = array_8_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_17_a = array_8_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_17_b = array_8_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_18_a = array_8_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_18_b = array_8_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_19_a = array_8_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_19_b = array_8_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_20_a = array_8_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_20_b = array_8_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_21_a = array_8_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_21_b = array_8_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_22_a = array_8_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_22_b = array_8_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_23_a = array_8_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_23_b = array_8_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_24_a = array_8_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_24_b = array_8_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_25_a = array_8_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_25_b = array_8_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_26_a = array_8_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_26_b = array_8_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_27_a = array_8_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_27_b = array_8_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_28_a = array_8_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_28_b = array_8_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_29_a = array_8_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_29_b = array_8_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_30_a = array_8_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_30_b = array_8_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_9_io_d_in_31_a = array_8_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_9_io_d_in_31_b = array_8_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_9_io_wr_en_mem1 = io_wr_en_mem1_9; // @[Array.scala 27:28]
  assign array_9_io_wr_en_mem2 = io_wr_en_mem2_9; // @[Array.scala 28:28]
  assign array_9_io_wr_instr_mem1 = io_wr_instr_mem1_9; // @[Array.scala 29:31]
  assign array_9_io_wr_instr_mem2 = io_wr_instr_mem2_9; // @[Array.scala 30:31]
  assign array_9_io_run = io_run_9; // @[Array.scala 31:21]
  assign array_10_clock = clock;
  assign array_10_reset = reset;
  assign array_10_io_d_in_0_a = array_9_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_0_b = array_9_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_1_a = array_9_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_1_b = array_9_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_2_a = array_9_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_2_b = array_9_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_3_a = array_9_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_3_b = array_9_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_4_a = array_9_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_4_b = array_9_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_5_a = array_9_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_5_b = array_9_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_6_a = array_9_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_6_b = array_9_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_7_a = array_9_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_7_b = array_9_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_8_a = array_9_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_8_b = array_9_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_9_a = array_9_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_9_b = array_9_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_10_a = array_9_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_10_b = array_9_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_11_a = array_9_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_11_b = array_9_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_12_a = array_9_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_12_b = array_9_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_13_a = array_9_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_13_b = array_9_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_14_a = array_9_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_14_b = array_9_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_15_a = array_9_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_15_b = array_9_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_16_a = array_9_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_16_b = array_9_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_17_a = array_9_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_17_b = array_9_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_18_a = array_9_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_18_b = array_9_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_19_a = array_9_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_19_b = array_9_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_20_a = array_9_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_20_b = array_9_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_21_a = array_9_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_21_b = array_9_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_22_a = array_9_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_22_b = array_9_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_23_a = array_9_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_23_b = array_9_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_24_a = array_9_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_24_b = array_9_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_25_a = array_9_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_25_b = array_9_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_26_a = array_9_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_26_b = array_9_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_27_a = array_9_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_27_b = array_9_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_28_a = array_9_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_28_b = array_9_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_29_a = array_9_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_29_b = array_9_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_30_a = array_9_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_30_b = array_9_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_10_io_d_in_31_a = array_9_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_10_io_d_in_31_b = array_9_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_10_io_wr_en_mem1 = io_wr_en_mem1_10; // @[Array.scala 27:28]
  assign array_10_io_wr_en_mem2 = io_wr_en_mem2_10; // @[Array.scala 28:28]
  assign array_10_io_wr_instr_mem1 = io_wr_instr_mem1_10; // @[Array.scala 29:31]
  assign array_10_io_wr_instr_mem2 = io_wr_instr_mem2_10; // @[Array.scala 30:31]
  assign array_10_io_run = io_run_10; // @[Array.scala 31:21]
  assign array_11_clock = clock;
  assign array_11_reset = reset;
  assign array_11_io_d_in_0_a = array_10_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_0_b = array_10_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_1_a = array_10_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_1_b = array_10_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_2_a = array_10_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_2_b = array_10_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_3_a = array_10_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_3_b = array_10_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_4_a = array_10_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_4_b = array_10_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_5_a = array_10_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_5_b = array_10_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_6_a = array_10_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_6_b = array_10_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_7_a = array_10_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_7_b = array_10_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_8_a = array_10_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_8_b = array_10_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_9_a = array_10_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_9_b = array_10_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_10_a = array_10_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_10_b = array_10_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_11_a = array_10_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_11_b = array_10_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_12_a = array_10_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_12_b = array_10_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_13_a = array_10_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_13_b = array_10_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_14_a = array_10_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_14_b = array_10_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_15_a = array_10_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_15_b = array_10_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_16_a = array_10_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_16_b = array_10_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_17_a = array_10_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_17_b = array_10_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_18_a = array_10_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_18_b = array_10_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_19_a = array_10_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_19_b = array_10_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_20_a = array_10_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_20_b = array_10_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_21_a = array_10_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_21_b = array_10_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_22_a = array_10_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_22_b = array_10_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_23_a = array_10_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_23_b = array_10_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_24_a = array_10_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_24_b = array_10_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_25_a = array_10_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_25_b = array_10_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_26_a = array_10_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_26_b = array_10_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_27_a = array_10_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_27_b = array_10_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_28_a = array_10_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_28_b = array_10_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_29_a = array_10_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_29_b = array_10_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_30_a = array_10_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_30_b = array_10_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_11_io_d_in_31_a = array_10_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_11_io_d_in_31_b = array_10_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_11_io_wr_en_mem1 = io_wr_en_mem1_11; // @[Array.scala 27:28]
  assign array_11_io_wr_en_mem2 = io_wr_en_mem2_11; // @[Array.scala 28:28]
  assign array_11_io_wr_instr_mem1 = io_wr_instr_mem1_11; // @[Array.scala 29:31]
  assign array_11_io_wr_instr_mem2 = io_wr_instr_mem2_11; // @[Array.scala 30:31]
  assign array_11_io_run = io_run_11; // @[Array.scala 31:21]
  assign array_12_clock = clock;
  assign array_12_reset = reset;
  assign array_12_io_d_in_0_a = array_11_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_0_b = array_11_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_1_a = array_11_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_1_b = array_11_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_2_a = array_11_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_2_b = array_11_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_3_a = array_11_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_3_b = array_11_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_4_a = array_11_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_4_b = array_11_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_5_a = array_11_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_5_b = array_11_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_6_a = array_11_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_6_b = array_11_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_7_a = array_11_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_7_b = array_11_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_8_a = array_11_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_8_b = array_11_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_9_a = array_11_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_9_b = array_11_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_10_a = array_11_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_10_b = array_11_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_11_a = array_11_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_11_b = array_11_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_12_a = array_11_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_12_b = array_11_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_13_a = array_11_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_13_b = array_11_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_14_a = array_11_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_14_b = array_11_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_15_a = array_11_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_15_b = array_11_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_16_a = array_11_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_16_b = array_11_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_17_a = array_11_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_17_b = array_11_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_18_a = array_11_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_18_b = array_11_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_19_a = array_11_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_19_b = array_11_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_20_a = array_11_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_20_b = array_11_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_21_a = array_11_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_21_b = array_11_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_22_a = array_11_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_22_b = array_11_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_23_a = array_11_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_23_b = array_11_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_24_a = array_11_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_24_b = array_11_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_25_a = array_11_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_25_b = array_11_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_26_a = array_11_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_26_b = array_11_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_27_a = array_11_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_27_b = array_11_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_28_a = array_11_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_28_b = array_11_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_29_a = array_11_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_29_b = array_11_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_30_a = array_11_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_30_b = array_11_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_12_io_d_in_31_a = array_11_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_12_io_d_in_31_b = array_11_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_12_io_wr_en_mem1 = io_wr_en_mem1_12; // @[Array.scala 27:28]
  assign array_12_io_wr_en_mem2 = io_wr_en_mem2_12; // @[Array.scala 28:28]
  assign array_12_io_wr_instr_mem1 = io_wr_instr_mem1_12; // @[Array.scala 29:31]
  assign array_12_io_wr_instr_mem2 = io_wr_instr_mem2_12; // @[Array.scala 30:31]
  assign array_12_io_run = io_run_12; // @[Array.scala 31:21]
  assign array_13_clock = clock;
  assign array_13_reset = reset;
  assign array_13_io_d_in_0_a = array_12_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_0_b = array_12_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_1_a = array_12_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_1_b = array_12_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_2_a = array_12_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_2_b = array_12_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_3_a = array_12_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_3_b = array_12_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_4_a = array_12_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_4_b = array_12_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_5_a = array_12_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_5_b = array_12_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_6_a = array_12_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_6_b = array_12_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_7_a = array_12_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_7_b = array_12_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_8_a = array_12_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_8_b = array_12_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_9_a = array_12_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_9_b = array_12_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_10_a = array_12_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_10_b = array_12_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_11_a = array_12_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_11_b = array_12_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_12_a = array_12_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_12_b = array_12_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_13_a = array_12_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_13_b = array_12_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_14_a = array_12_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_14_b = array_12_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_15_a = array_12_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_15_b = array_12_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_16_a = array_12_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_16_b = array_12_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_17_a = array_12_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_17_b = array_12_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_18_a = array_12_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_18_b = array_12_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_19_a = array_12_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_19_b = array_12_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_20_a = array_12_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_20_b = array_12_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_21_a = array_12_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_21_b = array_12_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_22_a = array_12_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_22_b = array_12_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_23_a = array_12_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_23_b = array_12_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_24_a = array_12_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_24_b = array_12_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_25_a = array_12_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_25_b = array_12_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_26_a = array_12_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_26_b = array_12_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_27_a = array_12_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_27_b = array_12_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_28_a = array_12_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_28_b = array_12_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_29_a = array_12_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_29_b = array_12_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_30_a = array_12_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_30_b = array_12_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_13_io_d_in_31_a = array_12_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_13_io_d_in_31_b = array_12_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_13_io_wr_en_mem1 = io_wr_en_mem1_13; // @[Array.scala 27:28]
  assign array_13_io_wr_en_mem2 = io_wr_en_mem2_13; // @[Array.scala 28:28]
  assign array_13_io_wr_instr_mem1 = io_wr_instr_mem1_13; // @[Array.scala 29:31]
  assign array_13_io_wr_instr_mem2 = io_wr_instr_mem2_13; // @[Array.scala 30:31]
  assign array_13_io_run = io_run_13; // @[Array.scala 31:21]
  assign array_14_clock = clock;
  assign array_14_reset = reset;
  assign array_14_io_d_in_0_a = array_13_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_0_b = array_13_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_1_a = array_13_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_1_b = array_13_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_2_a = array_13_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_2_b = array_13_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_3_a = array_13_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_3_b = array_13_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_4_a = array_13_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_4_b = array_13_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_5_a = array_13_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_5_b = array_13_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_6_a = array_13_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_6_b = array_13_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_7_a = array_13_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_7_b = array_13_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_8_a = array_13_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_8_b = array_13_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_9_a = array_13_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_9_b = array_13_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_10_a = array_13_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_10_b = array_13_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_11_a = array_13_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_11_b = array_13_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_12_a = array_13_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_12_b = array_13_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_13_a = array_13_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_13_b = array_13_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_14_a = array_13_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_14_b = array_13_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_15_a = array_13_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_15_b = array_13_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_16_a = array_13_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_16_b = array_13_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_17_a = array_13_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_17_b = array_13_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_18_a = array_13_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_18_b = array_13_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_19_a = array_13_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_19_b = array_13_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_20_a = array_13_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_20_b = array_13_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_21_a = array_13_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_21_b = array_13_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_22_a = array_13_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_22_b = array_13_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_23_a = array_13_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_23_b = array_13_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_24_a = array_13_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_24_b = array_13_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_25_a = array_13_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_25_b = array_13_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_26_a = array_13_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_26_b = array_13_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_27_a = array_13_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_27_b = array_13_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_28_a = array_13_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_28_b = array_13_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_29_a = array_13_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_29_b = array_13_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_30_a = array_13_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_30_b = array_13_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_14_io_d_in_31_a = array_13_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_14_io_d_in_31_b = array_13_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_14_io_wr_en_mem1 = io_wr_en_mem1_14; // @[Array.scala 27:28]
  assign array_14_io_wr_en_mem2 = io_wr_en_mem2_14; // @[Array.scala 28:28]
  assign array_14_io_wr_instr_mem1 = io_wr_instr_mem1_14; // @[Array.scala 29:31]
  assign array_14_io_wr_instr_mem2 = io_wr_instr_mem2_14; // @[Array.scala 30:31]
  assign array_14_io_run = io_run_14; // @[Array.scala 31:21]
  assign array_15_clock = clock;
  assign array_15_reset = reset;
  assign array_15_io_d_in_0_a = array_14_io_d_out_0_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_0_b = array_14_io_d_out_0_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_1_a = array_14_io_d_out_1_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_1_b = array_14_io_d_out_1_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_2_a = array_14_io_d_out_2_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_2_b = array_14_io_d_out_2_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_3_a = array_14_io_d_out_3_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_3_b = array_14_io_d_out_3_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_4_a = array_14_io_d_out_4_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_4_b = array_14_io_d_out_4_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_5_a = array_14_io_d_out_5_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_5_b = array_14_io_d_out_5_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_6_a = array_14_io_d_out_6_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_6_b = array_14_io_d_out_6_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_7_a = array_14_io_d_out_7_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_7_b = array_14_io_d_out_7_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_8_a = array_14_io_d_out_8_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_8_b = array_14_io_d_out_8_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_9_a = array_14_io_d_out_9_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_9_b = array_14_io_d_out_9_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_10_a = array_14_io_d_out_10_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_10_b = array_14_io_d_out_10_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_11_a = array_14_io_d_out_11_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_11_b = array_14_io_d_out_11_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_12_a = array_14_io_d_out_12_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_12_b = array_14_io_d_out_12_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_13_a = array_14_io_d_out_13_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_13_b = array_14_io_d_out_13_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_14_a = array_14_io_d_out_14_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_14_b = array_14_io_d_out_14_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_15_a = array_14_io_d_out_15_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_15_b = array_14_io_d_out_15_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_16_a = array_14_io_d_out_16_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_16_b = array_14_io_d_out_16_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_17_a = array_14_io_d_out_17_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_17_b = array_14_io_d_out_17_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_18_a = array_14_io_d_out_18_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_18_b = array_14_io_d_out_18_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_19_a = array_14_io_d_out_19_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_19_b = array_14_io_d_out_19_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_20_a = array_14_io_d_out_20_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_20_b = array_14_io_d_out_20_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_21_a = array_14_io_d_out_21_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_21_b = array_14_io_d_out_21_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_22_a = array_14_io_d_out_22_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_22_b = array_14_io_d_out_22_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_23_a = array_14_io_d_out_23_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_23_b = array_14_io_d_out_23_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_24_a = array_14_io_d_out_24_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_24_b = array_14_io_d_out_24_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_25_a = array_14_io_d_out_25_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_25_b = array_14_io_d_out_25_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_26_a = array_14_io_d_out_26_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_26_b = array_14_io_d_out_26_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_27_a = array_14_io_d_out_27_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_27_b = array_14_io_d_out_27_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_28_a = array_14_io_d_out_28_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_28_b = array_14_io_d_out_28_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_29_a = array_14_io_d_out_29_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_29_b = array_14_io_d_out_29_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_30_a = array_14_io_d_out_30_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_30_b = array_14_io_d_out_30_b; // @[Array.scala 26:22]
  assign array_15_io_d_in_31_a = array_14_io_d_out_31_a; // @[Array.scala 26:22]
  assign array_15_io_d_in_31_b = array_14_io_d_out_31_b; // @[Array.scala 26:22]
  assign array_15_io_wr_en_mem1 = io_wr_en_mem1_15; // @[Array.scala 27:28]
  assign array_15_io_wr_en_mem2 = io_wr_en_mem2_15; // @[Array.scala 28:28]
  assign array_15_io_wr_instr_mem1 = io_wr_instr_mem1_15; // @[Array.scala 29:31]
  assign array_15_io_wr_instr_mem2 = io_wr_instr_mem2_15; // @[Array.scala 30:31]
  assign array_15_io_run = io_run_15; // @[Array.scala 31:21]
endmodule
