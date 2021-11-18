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
`endif // RANDOMIZE_REG_INIT
  reg [63:0] temp_result; // @[ALU.scala 27:28]
  wire  _T = 4'h0 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_1 = 4'h1 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_2 = 4'h2 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T = io_in_a & io_in_b; // @[ALU.scala 32:31]
  wire  _T_3 = 4'h3 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_2 = ~_temp_result_T; // @[ALU.scala 33:29]
  wire  _T_4 = 4'h4 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_3 = io_in_a | io_in_b; // @[ALU.scala 34:31]
  wire  _T_5 = 4'h5 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_5 = ~_temp_result_T_3; // @[ALU.scala 35:29]
  wire  _T_6 = 4'h6 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_6 = io_in_a ^ io_in_b; // @[ALU.scala 36:31]
  wire  _T_7 = 4'h7 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_8 = ~_temp_result_T_6; // @[ALU.scala 37:29]
  wire  _T_8 = 4'h8 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_9 = 4'h9 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_10 = 4'ha == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_11 = 4'hb == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_12 = 4'hc == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_13 = 4'hd == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_14 = 4'he == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_15 = 4'hf == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _GEN_0 = _T_15 ? _temp_result_T_8 : temp_result; // @[Conditional.scala 39:67 ALU.scala 45:27 ALU.scala 27:28]
  wire [63:0] _GEN_1 = _T_14 ? _temp_result_T_6 : _GEN_0; // @[Conditional.scala 39:67 ALU.scala 44:27]
  wire [63:0] _GEN_2 = _T_13 ? _temp_result_T_5 : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 43:27]
  wire [63:0] _GEN_3 = _T_12 ? _temp_result_T_3 : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 42:27]
  wire [63:0] _GEN_4 = _T_11 ? _temp_result_T_2 : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 41:27]
  wire [63:0] _GEN_5 = _T_10 ? _temp_result_T : _GEN_4; // @[Conditional.scala 39:67 ALU.scala 40:27]
  wire [63:0] _GEN_6 = _T_9 ? io_in_b : _GEN_5; // @[Conditional.scala 39:67 ALU.scala 39:26]
  wire [63:0] _GEN_7 = _T_8 ? io_in_a : _GEN_6; // @[Conditional.scala 39:67 ALU.scala 38:26]
  wire [63:0] _GEN_8 = _T_7 ? _temp_result_T_8 : _GEN_7; // @[Conditional.scala 39:67 ALU.scala 37:26]
  wire [63:0] _GEN_9 = _T_6 ? _temp_result_T_6 : _GEN_8; // @[Conditional.scala 39:67 ALU.scala 36:26]
  wire [63:0] _GEN_10 = _T_5 ? _temp_result_T_5 : _GEN_9; // @[Conditional.scala 39:67 ALU.scala 35:26]
  wire [63:0] _GEN_11 = _T_4 ? _temp_result_T_3 : _GEN_10; // @[Conditional.scala 39:67 ALU.scala 34:26]
  wire [63:0] _GEN_12 = _T_3 ? _temp_result_T_2 : _GEN_11; // @[Conditional.scala 39:67 ALU.scala 33:26]
  assign io_out_a = temp_result; // @[ALU.scala 47:12]
  assign io_out_b = temp_result; // @[ALU.scala 48:12]
  always @(posedge clock) begin
    if (reset) begin // @[ALU.scala 27:28]
      temp_result <= 64'h0; // @[ALU.scala 27:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result <= io_in_a; // @[ALU.scala 30:26]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result <= io_in_b; // @[ALU.scala 31:26]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result <= _temp_result_T; // @[ALU.scala 32:26]
    end else begin
      temp_result <= _GEN_12;
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
  temp_result = _RAND_0[63:0];
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
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  ALU64_32_0_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_0_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_0_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_0_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_0_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_0_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_0_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_1_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_1_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_1_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_1_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_1_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_1_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_1_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_2_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_2_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_2_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_2_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_2_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_2_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_2_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_3_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_3_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_3_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_3_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_3_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_3_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_3_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_4_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_4_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_4_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_4_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_4_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_4_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_4_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_5_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_5_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_5_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_5_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_5_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_5_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_5_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_6_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_6_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_6_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_6_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_6_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_6_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_6_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_7_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_7_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_7_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_7_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_7_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_7_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_7_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_8_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_8_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_8_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_8_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_8_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_8_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_8_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_9_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_9_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_9_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_9_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_9_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_9_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_9_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_10_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_10_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_10_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_10_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_10_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_10_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_10_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_11_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_11_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_11_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_11_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_11_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_11_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_11_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_12_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_12_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_12_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_12_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_12_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_12_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_12_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_13_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_13_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_13_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_13_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_13_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_13_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_13_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_14_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_14_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_14_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_14_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_14_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_14_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_14_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_15_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_15_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_15_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_15_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_15_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_15_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_15_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_16_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_16_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_16_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_16_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_16_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_16_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_16_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_17_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_17_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_17_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_17_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_17_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_17_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_17_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_18_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_18_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_18_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_18_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_18_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_18_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_18_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_19_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_19_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_19_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_19_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_19_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_19_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_19_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_20_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_20_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_20_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_20_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_20_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_20_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_20_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_21_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_21_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_21_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_21_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_21_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_21_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_21_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_22_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_22_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_22_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_22_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_22_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_22_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_22_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_23_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_23_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_23_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_23_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_23_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_23_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_23_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_24_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_24_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_24_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_24_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_24_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_24_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_24_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_25_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_25_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_25_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_25_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_25_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_25_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_25_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_26_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_26_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_26_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_26_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_26_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_26_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_26_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_27_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_27_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_27_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_27_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_27_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_27_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_27_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_28_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_28_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_28_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_28_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_28_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_28_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_28_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_29_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_29_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_29_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_29_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_29_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_29_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_29_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_30_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_30_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_30_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_30_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_30_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_30_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_30_io_out_b; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_31_clock; // @[BuildingBlock.scala 153:52]
  wire  ALU64_32_31_reset; // @[BuildingBlock.scala 153:52]
  wire [3:0] ALU64_32_31_io_opcode; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_31_io_in_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_31_io_in_b; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_31_io_out_a; // @[BuildingBlock.scala 153:52]
  wire [63:0] ALU64_32_31_io_out_b; // @[BuildingBlock.scala 153:52]
  reg [127:0] instr; // @[BuildingBlock.scala 148:22]
  ALU ALU64_32_0 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_0_clock),
    .reset(ALU64_32_0_reset),
    .io_opcode(ALU64_32_0_io_opcode),
    .io_in_a(ALU64_32_0_io_in_a),
    .io_in_b(ALU64_32_0_io_in_b),
    .io_out_a(ALU64_32_0_io_out_a),
    .io_out_b(ALU64_32_0_io_out_b)
  );
  ALU ALU64_32_1 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_1_clock),
    .reset(ALU64_32_1_reset),
    .io_opcode(ALU64_32_1_io_opcode),
    .io_in_a(ALU64_32_1_io_in_a),
    .io_in_b(ALU64_32_1_io_in_b),
    .io_out_a(ALU64_32_1_io_out_a),
    .io_out_b(ALU64_32_1_io_out_b)
  );
  ALU ALU64_32_2 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_2_clock),
    .reset(ALU64_32_2_reset),
    .io_opcode(ALU64_32_2_io_opcode),
    .io_in_a(ALU64_32_2_io_in_a),
    .io_in_b(ALU64_32_2_io_in_b),
    .io_out_a(ALU64_32_2_io_out_a),
    .io_out_b(ALU64_32_2_io_out_b)
  );
  ALU ALU64_32_3 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_3_clock),
    .reset(ALU64_32_3_reset),
    .io_opcode(ALU64_32_3_io_opcode),
    .io_in_a(ALU64_32_3_io_in_a),
    .io_in_b(ALU64_32_3_io_in_b),
    .io_out_a(ALU64_32_3_io_out_a),
    .io_out_b(ALU64_32_3_io_out_b)
  );
  ALU ALU64_32_4 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_4_clock),
    .reset(ALU64_32_4_reset),
    .io_opcode(ALU64_32_4_io_opcode),
    .io_in_a(ALU64_32_4_io_in_a),
    .io_in_b(ALU64_32_4_io_in_b),
    .io_out_a(ALU64_32_4_io_out_a),
    .io_out_b(ALU64_32_4_io_out_b)
  );
  ALU ALU64_32_5 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_5_clock),
    .reset(ALU64_32_5_reset),
    .io_opcode(ALU64_32_5_io_opcode),
    .io_in_a(ALU64_32_5_io_in_a),
    .io_in_b(ALU64_32_5_io_in_b),
    .io_out_a(ALU64_32_5_io_out_a),
    .io_out_b(ALU64_32_5_io_out_b)
  );
  ALU ALU64_32_6 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_6_clock),
    .reset(ALU64_32_6_reset),
    .io_opcode(ALU64_32_6_io_opcode),
    .io_in_a(ALU64_32_6_io_in_a),
    .io_in_b(ALU64_32_6_io_in_b),
    .io_out_a(ALU64_32_6_io_out_a),
    .io_out_b(ALU64_32_6_io_out_b)
  );
  ALU ALU64_32_7 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_7_clock),
    .reset(ALU64_32_7_reset),
    .io_opcode(ALU64_32_7_io_opcode),
    .io_in_a(ALU64_32_7_io_in_a),
    .io_in_b(ALU64_32_7_io_in_b),
    .io_out_a(ALU64_32_7_io_out_a),
    .io_out_b(ALU64_32_7_io_out_b)
  );
  ALU ALU64_32_8 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_8_clock),
    .reset(ALU64_32_8_reset),
    .io_opcode(ALU64_32_8_io_opcode),
    .io_in_a(ALU64_32_8_io_in_a),
    .io_in_b(ALU64_32_8_io_in_b),
    .io_out_a(ALU64_32_8_io_out_a),
    .io_out_b(ALU64_32_8_io_out_b)
  );
  ALU ALU64_32_9 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_9_clock),
    .reset(ALU64_32_9_reset),
    .io_opcode(ALU64_32_9_io_opcode),
    .io_in_a(ALU64_32_9_io_in_a),
    .io_in_b(ALU64_32_9_io_in_b),
    .io_out_a(ALU64_32_9_io_out_a),
    .io_out_b(ALU64_32_9_io_out_b)
  );
  ALU ALU64_32_10 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_10_clock),
    .reset(ALU64_32_10_reset),
    .io_opcode(ALU64_32_10_io_opcode),
    .io_in_a(ALU64_32_10_io_in_a),
    .io_in_b(ALU64_32_10_io_in_b),
    .io_out_a(ALU64_32_10_io_out_a),
    .io_out_b(ALU64_32_10_io_out_b)
  );
  ALU ALU64_32_11 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_11_clock),
    .reset(ALU64_32_11_reset),
    .io_opcode(ALU64_32_11_io_opcode),
    .io_in_a(ALU64_32_11_io_in_a),
    .io_in_b(ALU64_32_11_io_in_b),
    .io_out_a(ALU64_32_11_io_out_a),
    .io_out_b(ALU64_32_11_io_out_b)
  );
  ALU ALU64_32_12 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_12_clock),
    .reset(ALU64_32_12_reset),
    .io_opcode(ALU64_32_12_io_opcode),
    .io_in_a(ALU64_32_12_io_in_a),
    .io_in_b(ALU64_32_12_io_in_b),
    .io_out_a(ALU64_32_12_io_out_a),
    .io_out_b(ALU64_32_12_io_out_b)
  );
  ALU ALU64_32_13 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_13_clock),
    .reset(ALU64_32_13_reset),
    .io_opcode(ALU64_32_13_io_opcode),
    .io_in_a(ALU64_32_13_io_in_a),
    .io_in_b(ALU64_32_13_io_in_b),
    .io_out_a(ALU64_32_13_io_out_a),
    .io_out_b(ALU64_32_13_io_out_b)
  );
  ALU ALU64_32_14 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_14_clock),
    .reset(ALU64_32_14_reset),
    .io_opcode(ALU64_32_14_io_opcode),
    .io_in_a(ALU64_32_14_io_in_a),
    .io_in_b(ALU64_32_14_io_in_b),
    .io_out_a(ALU64_32_14_io_out_a),
    .io_out_b(ALU64_32_14_io_out_b)
  );
  ALU ALU64_32_15 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_15_clock),
    .reset(ALU64_32_15_reset),
    .io_opcode(ALU64_32_15_io_opcode),
    .io_in_a(ALU64_32_15_io_in_a),
    .io_in_b(ALU64_32_15_io_in_b),
    .io_out_a(ALU64_32_15_io_out_a),
    .io_out_b(ALU64_32_15_io_out_b)
  );
  ALU ALU64_32_16 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_16_clock),
    .reset(ALU64_32_16_reset),
    .io_opcode(ALU64_32_16_io_opcode),
    .io_in_a(ALU64_32_16_io_in_a),
    .io_in_b(ALU64_32_16_io_in_b),
    .io_out_a(ALU64_32_16_io_out_a),
    .io_out_b(ALU64_32_16_io_out_b)
  );
  ALU ALU64_32_17 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_17_clock),
    .reset(ALU64_32_17_reset),
    .io_opcode(ALU64_32_17_io_opcode),
    .io_in_a(ALU64_32_17_io_in_a),
    .io_in_b(ALU64_32_17_io_in_b),
    .io_out_a(ALU64_32_17_io_out_a),
    .io_out_b(ALU64_32_17_io_out_b)
  );
  ALU ALU64_32_18 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_18_clock),
    .reset(ALU64_32_18_reset),
    .io_opcode(ALU64_32_18_io_opcode),
    .io_in_a(ALU64_32_18_io_in_a),
    .io_in_b(ALU64_32_18_io_in_b),
    .io_out_a(ALU64_32_18_io_out_a),
    .io_out_b(ALU64_32_18_io_out_b)
  );
  ALU ALU64_32_19 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_19_clock),
    .reset(ALU64_32_19_reset),
    .io_opcode(ALU64_32_19_io_opcode),
    .io_in_a(ALU64_32_19_io_in_a),
    .io_in_b(ALU64_32_19_io_in_b),
    .io_out_a(ALU64_32_19_io_out_a),
    .io_out_b(ALU64_32_19_io_out_b)
  );
  ALU ALU64_32_20 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_20_clock),
    .reset(ALU64_32_20_reset),
    .io_opcode(ALU64_32_20_io_opcode),
    .io_in_a(ALU64_32_20_io_in_a),
    .io_in_b(ALU64_32_20_io_in_b),
    .io_out_a(ALU64_32_20_io_out_a),
    .io_out_b(ALU64_32_20_io_out_b)
  );
  ALU ALU64_32_21 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_21_clock),
    .reset(ALU64_32_21_reset),
    .io_opcode(ALU64_32_21_io_opcode),
    .io_in_a(ALU64_32_21_io_in_a),
    .io_in_b(ALU64_32_21_io_in_b),
    .io_out_a(ALU64_32_21_io_out_a),
    .io_out_b(ALU64_32_21_io_out_b)
  );
  ALU ALU64_32_22 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_22_clock),
    .reset(ALU64_32_22_reset),
    .io_opcode(ALU64_32_22_io_opcode),
    .io_in_a(ALU64_32_22_io_in_a),
    .io_in_b(ALU64_32_22_io_in_b),
    .io_out_a(ALU64_32_22_io_out_a),
    .io_out_b(ALU64_32_22_io_out_b)
  );
  ALU ALU64_32_23 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_23_clock),
    .reset(ALU64_32_23_reset),
    .io_opcode(ALU64_32_23_io_opcode),
    .io_in_a(ALU64_32_23_io_in_a),
    .io_in_b(ALU64_32_23_io_in_b),
    .io_out_a(ALU64_32_23_io_out_a),
    .io_out_b(ALU64_32_23_io_out_b)
  );
  ALU ALU64_32_24 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_24_clock),
    .reset(ALU64_32_24_reset),
    .io_opcode(ALU64_32_24_io_opcode),
    .io_in_a(ALU64_32_24_io_in_a),
    .io_in_b(ALU64_32_24_io_in_b),
    .io_out_a(ALU64_32_24_io_out_a),
    .io_out_b(ALU64_32_24_io_out_b)
  );
  ALU ALU64_32_25 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_25_clock),
    .reset(ALU64_32_25_reset),
    .io_opcode(ALU64_32_25_io_opcode),
    .io_in_a(ALU64_32_25_io_in_a),
    .io_in_b(ALU64_32_25_io_in_b),
    .io_out_a(ALU64_32_25_io_out_a),
    .io_out_b(ALU64_32_25_io_out_b)
  );
  ALU ALU64_32_26 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_26_clock),
    .reset(ALU64_32_26_reset),
    .io_opcode(ALU64_32_26_io_opcode),
    .io_in_a(ALU64_32_26_io_in_a),
    .io_in_b(ALU64_32_26_io_in_b),
    .io_out_a(ALU64_32_26_io_out_a),
    .io_out_b(ALU64_32_26_io_out_b)
  );
  ALU ALU64_32_27 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_27_clock),
    .reset(ALU64_32_27_reset),
    .io_opcode(ALU64_32_27_io_opcode),
    .io_in_a(ALU64_32_27_io_in_a),
    .io_in_b(ALU64_32_27_io_in_b),
    .io_out_a(ALU64_32_27_io_out_a),
    .io_out_b(ALU64_32_27_io_out_b)
  );
  ALU ALU64_32_28 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_28_clock),
    .reset(ALU64_32_28_reset),
    .io_opcode(ALU64_32_28_io_opcode),
    .io_in_a(ALU64_32_28_io_in_a),
    .io_in_b(ALU64_32_28_io_in_b),
    .io_out_a(ALU64_32_28_io_out_a),
    .io_out_b(ALU64_32_28_io_out_b)
  );
  ALU ALU64_32_29 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_29_clock),
    .reset(ALU64_32_29_reset),
    .io_opcode(ALU64_32_29_io_opcode),
    .io_in_a(ALU64_32_29_io_in_a),
    .io_in_b(ALU64_32_29_io_in_b),
    .io_out_a(ALU64_32_29_io_out_a),
    .io_out_b(ALU64_32_29_io_out_b)
  );
  ALU ALU64_32_30 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_30_clock),
    .reset(ALU64_32_30_reset),
    .io_opcode(ALU64_32_30_io_opcode),
    .io_in_a(ALU64_32_30_io_in_a),
    .io_in_b(ALU64_32_30_io_in_b),
    .io_out_a(ALU64_32_30_io_out_a),
    .io_out_b(ALU64_32_30_io_out_b)
  );
  ALU ALU64_32_31 ( // @[BuildingBlock.scala 153:52]
    .clock(ALU64_32_31_clock),
    .reset(ALU64_32_31_reset),
    .io_opcode(ALU64_32_31_io_opcode),
    .io_in_a(ALU64_32_31_io_in_a),
    .io_in_b(ALU64_32_31_io_in_b),
    .io_out_a(ALU64_32_31_io_out_a),
    .io_out_b(ALU64_32_31_io_out_b)
  );
  assign io_d_out_0_a = ALU64_32_0_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_0_b = ALU64_32_0_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_1_a = ALU64_32_1_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_1_b = ALU64_32_1_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_2_a = ALU64_32_2_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_2_b = ALU64_32_2_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_3_a = ALU64_32_3_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_3_b = ALU64_32_3_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_4_a = ALU64_32_4_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_4_b = ALU64_32_4_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_5_a = ALU64_32_5_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_5_b = ALU64_32_5_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_6_a = ALU64_32_6_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_6_b = ALU64_32_6_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_7_a = ALU64_32_7_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_7_b = ALU64_32_7_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_8_a = ALU64_32_8_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_8_b = ALU64_32_8_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_9_a = ALU64_32_9_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_9_b = ALU64_32_9_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_10_a = ALU64_32_10_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_10_b = ALU64_32_10_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_11_a = ALU64_32_11_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_11_b = ALU64_32_11_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_12_a = ALU64_32_12_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_12_b = ALU64_32_12_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_13_a = ALU64_32_13_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_13_b = ALU64_32_13_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_14_a = ALU64_32_14_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_14_b = ALU64_32_14_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_15_a = ALU64_32_15_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_15_b = ALU64_32_15_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_16_a = ALU64_32_16_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_16_b = ALU64_32_16_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_17_a = ALU64_32_17_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_17_b = ALU64_32_17_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_18_a = ALU64_32_18_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_18_b = ALU64_32_18_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_19_a = ALU64_32_19_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_19_b = ALU64_32_19_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_20_a = ALU64_32_20_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_20_b = ALU64_32_20_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_21_a = ALU64_32_21_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_21_b = ALU64_32_21_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_22_a = ALU64_32_22_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_22_b = ALU64_32_22_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_23_a = ALU64_32_23_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_23_b = ALU64_32_23_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_24_a = ALU64_32_24_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_24_b = ALU64_32_24_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_25_a = ALU64_32_25_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_25_b = ALU64_32_25_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_26_a = ALU64_32_26_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_26_b = ALU64_32_26_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_27_a = ALU64_32_27_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_27_b = ALU64_32_27_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_28_a = ALU64_32_28_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_28_b = ALU64_32_28_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_29_a = ALU64_32_29_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_29_b = ALU64_32_29_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_30_a = ALU64_32_30_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_30_b = ALU64_32_30_io_out_b; // @[BuildingBlock.scala 162:19]
  assign io_d_out_31_a = ALU64_32_31_io_out_a; // @[BuildingBlock.scala 161:19]
  assign io_d_out_31_b = ALU64_32_31_io_out_b; // @[BuildingBlock.scala 162:19]
  assign ALU64_32_0_clock = clock;
  assign ALU64_32_0_reset = reset;
  assign ALU64_32_0_io_opcode = instr[127:124]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_0_io_in_a = io_d_in_0_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_0_io_in_b = io_d_in_0_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_1_clock = clock;
  assign ALU64_32_1_reset = reset;
  assign ALU64_32_1_io_opcode = instr[123:120]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_1_io_in_a = io_d_in_1_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_1_io_in_b = io_d_in_1_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_2_clock = clock;
  assign ALU64_32_2_reset = reset;
  assign ALU64_32_2_io_opcode = instr[119:116]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_2_io_in_a = io_d_in_2_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_2_io_in_b = io_d_in_2_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_3_clock = clock;
  assign ALU64_32_3_reset = reset;
  assign ALU64_32_3_io_opcode = instr[115:112]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_3_io_in_a = io_d_in_3_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_3_io_in_b = io_d_in_3_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_4_clock = clock;
  assign ALU64_32_4_reset = reset;
  assign ALU64_32_4_io_opcode = instr[111:108]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_4_io_in_a = io_d_in_4_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_4_io_in_b = io_d_in_4_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_5_clock = clock;
  assign ALU64_32_5_reset = reset;
  assign ALU64_32_5_io_opcode = instr[107:104]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_5_io_in_a = io_d_in_5_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_5_io_in_b = io_d_in_5_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_6_clock = clock;
  assign ALU64_32_6_reset = reset;
  assign ALU64_32_6_io_opcode = instr[103:100]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_6_io_in_a = io_d_in_6_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_6_io_in_b = io_d_in_6_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_7_clock = clock;
  assign ALU64_32_7_reset = reset;
  assign ALU64_32_7_io_opcode = instr[99:96]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_7_io_in_a = io_d_in_7_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_7_io_in_b = io_d_in_7_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_8_clock = clock;
  assign ALU64_32_8_reset = reset;
  assign ALU64_32_8_io_opcode = instr[95:92]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_8_io_in_a = io_d_in_8_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_8_io_in_b = io_d_in_8_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_9_clock = clock;
  assign ALU64_32_9_reset = reset;
  assign ALU64_32_9_io_opcode = instr[91:88]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_9_io_in_a = io_d_in_9_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_9_io_in_b = io_d_in_9_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_10_clock = clock;
  assign ALU64_32_10_reset = reset;
  assign ALU64_32_10_io_opcode = instr[87:84]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_10_io_in_a = io_d_in_10_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_10_io_in_b = io_d_in_10_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_11_clock = clock;
  assign ALU64_32_11_reset = reset;
  assign ALU64_32_11_io_opcode = instr[83:80]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_11_io_in_a = io_d_in_11_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_11_io_in_b = io_d_in_11_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_12_clock = clock;
  assign ALU64_32_12_reset = reset;
  assign ALU64_32_12_io_opcode = instr[79:76]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_12_io_in_a = io_d_in_12_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_12_io_in_b = io_d_in_12_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_13_clock = clock;
  assign ALU64_32_13_reset = reset;
  assign ALU64_32_13_io_opcode = instr[75:72]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_13_io_in_a = io_d_in_13_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_13_io_in_b = io_d_in_13_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_14_clock = clock;
  assign ALU64_32_14_reset = reset;
  assign ALU64_32_14_io_opcode = instr[71:68]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_14_io_in_a = io_d_in_14_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_14_io_in_b = io_d_in_14_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_15_clock = clock;
  assign ALU64_32_15_reset = reset;
  assign ALU64_32_15_io_opcode = instr[67:64]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_15_io_in_a = io_d_in_15_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_15_io_in_b = io_d_in_15_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_16_clock = clock;
  assign ALU64_32_16_reset = reset;
  assign ALU64_32_16_io_opcode = instr[63:60]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_16_io_in_a = io_d_in_16_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_16_io_in_b = io_d_in_16_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_17_clock = clock;
  assign ALU64_32_17_reset = reset;
  assign ALU64_32_17_io_opcode = instr[59:56]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_17_io_in_a = io_d_in_17_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_17_io_in_b = io_d_in_17_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_18_clock = clock;
  assign ALU64_32_18_reset = reset;
  assign ALU64_32_18_io_opcode = instr[55:52]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_18_io_in_a = io_d_in_18_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_18_io_in_b = io_d_in_18_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_19_clock = clock;
  assign ALU64_32_19_reset = reset;
  assign ALU64_32_19_io_opcode = instr[51:48]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_19_io_in_a = io_d_in_19_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_19_io_in_b = io_d_in_19_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_20_clock = clock;
  assign ALU64_32_20_reset = reset;
  assign ALU64_32_20_io_opcode = instr[47:44]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_20_io_in_a = io_d_in_20_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_20_io_in_b = io_d_in_20_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_21_clock = clock;
  assign ALU64_32_21_reset = reset;
  assign ALU64_32_21_io_opcode = instr[43:40]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_21_io_in_a = io_d_in_21_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_21_io_in_b = io_d_in_21_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_22_clock = clock;
  assign ALU64_32_22_reset = reset;
  assign ALU64_32_22_io_opcode = instr[39:36]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_22_io_in_a = io_d_in_22_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_22_io_in_b = io_d_in_22_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_23_clock = clock;
  assign ALU64_32_23_reset = reset;
  assign ALU64_32_23_io_opcode = instr[35:32]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_23_io_in_a = io_d_in_23_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_23_io_in_b = io_d_in_23_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_24_clock = clock;
  assign ALU64_32_24_reset = reset;
  assign ALU64_32_24_io_opcode = instr[31:28]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_24_io_in_a = io_d_in_24_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_24_io_in_b = io_d_in_24_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_25_clock = clock;
  assign ALU64_32_25_reset = reset;
  assign ALU64_32_25_io_opcode = instr[27:24]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_25_io_in_a = io_d_in_25_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_25_io_in_b = io_d_in_25_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_26_clock = clock;
  assign ALU64_32_26_reset = reset;
  assign ALU64_32_26_io_opcode = instr[23:20]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_26_io_in_a = io_d_in_26_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_26_io_in_b = io_d_in_26_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_27_clock = clock;
  assign ALU64_32_27_reset = reset;
  assign ALU64_32_27_io_opcode = instr[19:16]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_27_io_in_a = io_d_in_27_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_27_io_in_b = io_d_in_27_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_28_clock = clock;
  assign ALU64_32_28_reset = reset;
  assign ALU64_32_28_io_opcode = instr[15:12]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_28_io_in_a = io_d_in_28_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_28_io_in_b = io_d_in_28_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_29_clock = clock;
  assign ALU64_32_29_reset = reset;
  assign ALU64_32_29_io_opcode = instr[11:8]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_29_io_in_a = io_d_in_29_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_29_io_in_b = io_d_in_29_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_30_clock = clock;
  assign ALU64_32_30_reset = reset;
  assign ALU64_32_30_io_opcode = instr[7:4]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_30_io_in_a = io_d_in_30_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_30_io_in_b = io_d_in_30_b; // @[BuildingBlock.scala 159:25]
  assign ALU64_32_31_clock = clock;
  assign ALU64_32_31_reset = reset;
  assign ALU64_32_31_io_opcode = instr[3:0]; // @[BuildingBlock.scala 160:35]
  assign ALU64_32_31_io_in_a = io_d_in_31_a; // @[BuildingBlock.scala 158:25]
  assign ALU64_32_31_io_in_b = io_d_in_31_b; // @[BuildingBlock.scala 159:25]
  always @(posedge clock) begin
    if (reset) begin // @[BuildingBlock.scala 148:22]
      instr <= 128'h0; // @[BuildingBlock.scala 148:22]
    end else begin
      instr <= io_instr; // @[BuildingBlock.scala 149:9]
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
  instr = _RAND_0[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
