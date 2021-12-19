module ALU(
  input        clock,
  input        reset,
  input  [3:0] io_opcode,
  input  [7:0] io_in_a,
  input  [7:0] io_in_b,
  output [7:0] io_out_a,
  output [7:0] io_out_b
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] regClk3_a_REG; // @[ALU.scala 18:42]
  reg [7:0] regClk3_a_REG_1; // @[ALU.scala 18:34]
  reg [7:0] regClk3_a; // @[ALU.scala 18:26]
  reg [7:0] temp_result_a; // @[ALU.scala 20:30]
  reg [7:0] temp_result_b; // @[ALU.scala 21:30]
  wire  _T = 4'h0 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T = io_in_a & io_in_b; // @[ALU.scala 26:26]
  wire  _T_1 = 4'h1 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_2 = ~_temp_result_a_T; // @[ALU.scala 30:24]
  wire  _T_2 = 4'h2 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_3 = ~io_in_b; // @[ALU.scala 34:28]
  wire [7:0] _temp_result_a_T_4 = io_in_a & _temp_result_a_T_3; // @[ALU.scala 34:26]
  wire  _T_3 = 4'h3 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_5 = io_in_a | io_in_b; // @[ALU.scala 38:26]
  wire  _T_4 = 4'h4 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_7 = ~_temp_result_a_T_5; // @[ALU.scala 42:24]
  wire  _T_5 = 4'h5 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_9 = io_in_a | _temp_result_a_T_3; // @[ALU.scala 46:26]
  wire  _T_6 = 4'h6 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_10 = io_in_a ^ io_in_b; // @[ALU.scala 50:26]
  wire  _T_7 = 4'h7 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_12 = io_in_a ^ _temp_result_a_T_3; // @[ALU.scala 54:26]
  wire  _T_8 = 4'h8 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_13 = regClk3_a & io_in_b; // @[ALU.scala 58:34]
  wire  _T_9 = 4'h9 == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_15 = ~_temp_result_a_T_13; // @[ALU.scala 62:24]
  wire  _T_10 = 4'ha == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_17 = regClk3_a & _temp_result_a_T_3; // @[ALU.scala 66:34]
  wire  _T_11 = 4'hb == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_18 = regClk3_a | io_in_b; // @[ALU.scala 70:34]
  wire  _T_12 = 4'hc == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_20 = ~_temp_result_a_T_18; // @[ALU.scala 74:24]
  wire  _T_13 = 4'hd == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_22 = regClk3_a | _temp_result_a_T_3; // @[ALU.scala 78:34]
  wire  _T_14 = 4'he == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_23 = regClk3_a ^ io_in_b; // @[ALU.scala 82:34]
  wire  _T_15 = 4'hf == io_opcode; // @[Conditional.scala 37:30]
  wire [7:0] _temp_result_a_T_25 = regClk3_a ^ _temp_result_a_T_3; // @[ALU.scala 86:34]
  wire [7:0] _GEN_0 = _T_15 ? _temp_result_a_T_25 : temp_result_a; // @[Conditional.scala 39:67 ALU.scala 86:21 ALU.scala 20:30]
  wire [7:0] _GEN_1 = _T_15 ? _temp_result_a_T_3 : temp_result_b; // @[Conditional.scala 39:67 ALU.scala 87:21 ALU.scala 21:30]
  wire [7:0] _GEN_2 = _T_14 ? _temp_result_a_T_23 : _GEN_0; // @[Conditional.scala 39:67 ALU.scala 82:21]
  wire [7:0] _GEN_3 = _T_14 ? io_in_b : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 83:21]
  wire [7:0] _GEN_4 = _T_13 ? _temp_result_a_T_22 : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 78:21]
  wire [7:0] _GEN_5 = _T_13 ? _temp_result_a_T_3 : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 79:21]
  wire [7:0] _GEN_6 = _T_12 ? _temp_result_a_T_20 : _GEN_4; // @[Conditional.scala 39:67 ALU.scala 74:21]
  wire [7:0] _GEN_7 = _T_12 ? io_in_b : _GEN_5; // @[Conditional.scala 39:67 ALU.scala 75:21]
  wire [7:0] _GEN_8 = _T_11 ? _temp_result_a_T_18 : _GEN_6; // @[Conditional.scala 39:67 ALU.scala 70:21]
  wire [7:0] _GEN_9 = _T_11 ? io_in_b : _GEN_7; // @[Conditional.scala 39:67 ALU.scala 71:21]
  wire [7:0] _GEN_10 = _T_10 ? _temp_result_a_T_17 : _GEN_8; // @[Conditional.scala 39:67 ALU.scala 66:21]
  wire [7:0] _GEN_11 = _T_10 ? _temp_result_a_T_3 : _GEN_9; // @[Conditional.scala 39:67 ALU.scala 67:21]
  wire [7:0] _GEN_12 = _T_9 ? _temp_result_a_T_15 : _GEN_10; // @[Conditional.scala 39:67 ALU.scala 62:21]
  wire [7:0] _GEN_13 = _T_9 ? io_in_b : _GEN_11; // @[Conditional.scala 39:67 ALU.scala 63:21]
  wire [7:0] _GEN_14 = _T_8 ? _temp_result_a_T_13 : _GEN_12; // @[Conditional.scala 39:67 ALU.scala 58:21]
  wire [7:0] _GEN_15 = _T_8 ? io_in_b : _GEN_13; // @[Conditional.scala 39:67 ALU.scala 59:21]
  wire [7:0] _GEN_16 = _T_7 ? _temp_result_a_T_12 : _GEN_14; // @[Conditional.scala 39:67 ALU.scala 54:21]
  wire [7:0] _GEN_17 = _T_7 ? _temp_result_a_T_3 : _GEN_15; // @[Conditional.scala 39:67 ALU.scala 55:21]
  wire [7:0] _GEN_18 = _T_6 ? _temp_result_a_T_10 : _GEN_16; // @[Conditional.scala 39:67 ALU.scala 50:21]
  wire [7:0] _GEN_19 = _T_6 ? io_in_b : _GEN_17; // @[Conditional.scala 39:67 ALU.scala 51:21]
  wire [7:0] _GEN_20 = _T_5 ? _temp_result_a_T_9 : _GEN_18; // @[Conditional.scala 39:67 ALU.scala 46:21]
  wire [7:0] _GEN_21 = _T_5 ? _temp_result_a_T_3 : _GEN_19; // @[Conditional.scala 39:67 ALU.scala 47:21]
  wire [7:0] _GEN_22 = _T_4 ? _temp_result_a_T_7 : _GEN_20; // @[Conditional.scala 39:67 ALU.scala 42:21]
  wire [7:0] _GEN_23 = _T_4 ? io_in_b : _GEN_21; // @[Conditional.scala 39:67 ALU.scala 43:21]
  wire [7:0] _GEN_24 = _T_3 ? _temp_result_a_T_5 : _GEN_22; // @[Conditional.scala 39:67 ALU.scala 38:21]
  wire [7:0] _GEN_25 = _T_3 ? io_in_b : _GEN_23; // @[Conditional.scala 39:67 ALU.scala 39:21]
  assign io_out_a = temp_result_a; // @[ALU.scala 90:12]
  assign io_out_b = temp_result_b; // @[ALU.scala 91:12]
  always @(posedge clock) begin
    regClk3_a_REG <= io_in_a; // @[ALU.scala 18:42]
    regClk3_a_REG_1 <= regClk3_a_REG; // @[ALU.scala 18:34]
    regClk3_a <= regClk3_a_REG_1; // @[ALU.scala 18:26]
    if (reset) begin // @[ALU.scala 20:30]
      temp_result_a <= 8'h0; // @[ALU.scala 20:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result_a <= _temp_result_a_T; // @[ALU.scala 26:21]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result_a <= _temp_result_a_T_2; // @[ALU.scala 30:21]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result_a <= _temp_result_a_T_4; // @[ALU.scala 34:21]
    end else begin
      temp_result_a <= _GEN_24;
    end
    if (reset) begin // @[ALU.scala 21:30]
      temp_result_b <= 8'h0; // @[ALU.scala 21:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result_b <= io_in_b; // @[ALU.scala 27:21]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result_b <= io_in_b; // @[ALU.scala 31:21]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result_b <= _temp_result_a_T_3; // @[ALU.scala 35:21]
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
  _RAND_0 = {1{`RANDOM}};
  regClk3_a_REG = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  regClk3_a_REG_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  regClk3_a = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  temp_result_a = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  temp_result_b = _RAND_4[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
