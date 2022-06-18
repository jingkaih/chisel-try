module ALU(
  input         clock,
  input         reset,
  input  [6:0]  io_opcode,
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
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] snapshot_a; // @[ALU.scala 23:27]
  reg  snapshot_valid_a; // @[ALU.scala 25:33]
  reg [63:0] temp_result_a; // @[ALU.scala 28:30]
  reg [63:0] temp_result_b; // @[ALU.scala 29:30]
  reg  temp_valid_a; // @[ALU.scala 32:29]
  reg  temp_valid_b; // @[ALU.scala 33:29]
  wire  opcode_0 = io_opcode[0]; // @[ALU.scala 36:34]
  wire  opcode_1 = io_opcode[1]; // @[ALU.scala 36:34]
  wire  opcode_2 = io_opcode[2]; // @[ALU.scala 36:34]
  wire  opcode_3 = io_opcode[3]; // @[ALU.scala 36:34]
  wire  opcode_4 = io_opcode[4]; // @[ALU.scala 36:34]
  wire  opcode_5 = io_opcode[5]; // @[ALU.scala 36:34]
  wire  opcode_6 = io_opcode[6]; // @[ALU.scala 36:34]
  wire  _T_3 = opcode_5 & opcode_4; // @[ALU.scala 44:28]
  wire  _T_8 = ~opcode_5; // @[ALU.scala 57:18]
  wire  _T_9 = ~opcode_4; // @[ALU.scala 57:39]
  wire  _T_11 = ~opcode_3; // @[ALU.scala 58:20]
  wire [63:0] _GEN_4 = opcode_3 ? snapshot_a : 64'h0; // @[ALU.scala 63:35 ALU.scala 64:14]
  wire [63:0] _GEN_8 = ~opcode_3 ? io_in_a : _GEN_4; // @[ALU.scala 58:28 ALU.scala 59:14]
  wire [63:0] _gate_a_T = ~io_in_a; // @[ALU.scala 71:17]
  wire [63:0] _gate_a_T_1 = ~snapshot_a; // @[ALU.scala 76:17]
  wire [63:0] _GEN_12 = opcode_3 ? _gate_a_T_1 : 64'h0; // @[ALU.scala 75:35 ALU.scala 76:14]
  wire [63:0] _GEN_16 = _T_11 ? _gate_a_T : _GEN_12; // @[ALU.scala 70:28 ALU.scala 71:14]
  wire [63:0] _GEN_36 = _T_3 ? _GEN_8 : 64'h0; // @[ALU.scala 93:54]
  wire [63:0] _GEN_40 = opcode_5 & _T_9 ? _GEN_8 : _GEN_36; // @[ALU.scala 81:54]
  wire [63:0] _GEN_44 = _T_8 & opcode_4 ? _GEN_16 : _GEN_40; // @[ALU.scala 69:54]
  wire [63:0] gate_a = ~opcode_5 & ~opcode_4 ? _GEN_8 : _GEN_44; // @[ALU.scala 57:47]
  wire [63:0] _GEN_5 = opcode_3 ? io_in_b : 64'h0; // @[ALU.scala 63:35 ALU.scala 65:14]
  wire [63:0] _GEN_9 = ~opcode_3 ? io_in_b : _GEN_5; // @[ALU.scala 58:28 ALU.scala 60:14]
  wire [63:0] _gate_b_T = ~io_in_b; // @[ALU.scala 84:17]
  wire [63:0] _GEN_21 = opcode_3 ? _gate_b_T : 64'h0; // @[ALU.scala 87:35 ALU.scala 89:14]
  wire [63:0] _GEN_25 = _T_11 ? _gate_b_T : _GEN_21; // @[ALU.scala 82:28 ALU.scala 84:14]
  wire [63:0] _GEN_37 = _T_3 ? _GEN_9 : 64'h0; // @[ALU.scala 93:54]
  wire [63:0] _GEN_41 = opcode_5 & _T_9 ? _GEN_25 : _GEN_37; // @[ALU.scala 81:54]
  wire [63:0] _GEN_45 = _T_8 & opcode_4 ? _GEN_9 : _GEN_41; // @[ALU.scala 69:54]
  wire [63:0] gate_b = ~opcode_5 & ~opcode_4 ? _GEN_9 : _GEN_45; // @[ALU.scala 57:47]
  wire [63:0] _temp_result_a_T = gate_a & gate_b; // @[ALU.scala 45:33]
  wire [63:0] _temp_result_a_T_1 = ~_temp_result_a_T; // @[ALU.scala 45:24]
  wire [63:0] _temp_result_a_T_3 = gate_a | gate_b; // @[ALU.scala 51:33]
  wire [63:0] _temp_result_a_T_4 = ~_temp_result_a_T_3; // @[ALU.scala 51:24]
  wire  _GEN_6 = opcode_3 & snapshot_valid_a; // @[ALU.scala 63:35 ALU.scala 66:20]
  wire  _GEN_7 = opcode_3 & io_validin_b; // @[ALU.scala 63:35 ALU.scala 67:20]
  wire  _GEN_10 = ~opcode_3 ? io_validin_a : _GEN_6; // @[ALU.scala 58:28 ALU.scala 61:20]
  wire  _GEN_11 = ~opcode_3 ? io_validin_b : _GEN_7; // @[ALU.scala 58:28 ALU.scala 62:20]
  wire  _GEN_38 = _T_3 & _GEN_10; // @[ALU.scala 93:54]
  wire  _GEN_39 = _T_3 & _GEN_11; // @[ALU.scala 93:54]
  wire  _GEN_42 = opcode_5 & _T_9 ? _GEN_10 : _GEN_38; // @[ALU.scala 81:54]
  wire  _GEN_43 = opcode_5 & _T_9 ? _GEN_11 : _GEN_39; // @[ALU.scala 81:54]
  wire  _GEN_46 = _T_8 & opcode_4 ? _GEN_10 : _GEN_42; // @[ALU.scala 69:54]
  wire  _GEN_47 = _T_8 & opcode_4 ? _GEN_11 : _GEN_43; // @[ALU.scala 69:54]
  wire  gate_valid_a = ~opcode_5 & ~opcode_4 ? _GEN_10 : _GEN_46; // @[ALU.scala 57:47]
  wire  gate_valid_b = ~opcode_5 & ~opcode_4 ? _GEN_11 : _GEN_47; // @[ALU.scala 57:47]
  wire  _T_30 = ~opcode_1; // @[ALU.scala 115:18]
  wire  _T_31 = ~opcode_0; // @[ALU.scala 115:39]
  wire  _temp_valid_a_T = gate_valid_a & gate_valid_b; // @[ALU.scala 120:34]
  wire  _GEN_56 = opcode_1 & opcode_0 ? _temp_valid_a_T : temp_valid_a; // @[ALU.scala 127:54 ALU.scala 128:18 ALU.scala 32:29]
  wire  _GEN_57 = opcode_1 & opcode_0 ? io_validin_b : temp_valid_b; // @[ALU.scala 127:54 ALU.scala 129:18 ALU.scala 33:29]
  wire [63:0] _GEN_58 = opcode_1 & opcode_0 ? io_in_b : temp_result_b; // @[ALU.scala 127:54 ALU.scala 130:19 ALU.scala 29:30]
  assign io_out_a = temp_result_a; // @[ALU.scala 1314:12]
  assign io_out_b = temp_result_b; // @[ALU.scala 1315:12]
  assign io_validout_a = temp_valid_a; // @[ALU.scala 1316:17]
  assign io_validout_b = temp_valid_b; // @[ALU.scala 1317:17]
  always @(posedge clock) begin
    if (reset) begin // @[ALU.scala 23:27]
      snapshot_a <= 64'h0; // @[ALU.scala 23:27]
    end else if (!(~opcode_2)) begin // @[ALU.scala 107:26]
      if (opcode_2) begin // @[ALU.scala 110:33]
        snapshot_a <= io_in_a; // @[ALU.scala 111:16]
      end
    end
    if (reset) begin // @[ALU.scala 25:33]
      snapshot_valid_a <= 1'h0; // @[ALU.scala 25:33]
    end else if (!(~opcode_2)) begin // @[ALU.scala 107:26]
      if (opcode_2) begin // @[ALU.scala 110:33]
        snapshot_valid_a <= io_validin_a; // @[ALU.scala 112:22]
      end
    end
    if (reset) begin // @[ALU.scala 28:30]
      temp_result_a <= 64'h0; // @[ALU.scala 28:30]
    end else if (~opcode_6) begin // @[ALU.scala 43:26]
      if (opcode_5 & opcode_4) begin // @[ALU.scala 44:49]
        temp_result_a <= _temp_result_a_T_1; // @[ALU.scala 45:21]
      end else begin
        temp_result_a <= _temp_result_a_T; // @[ALU.scala 47:21]
      end
    end else if (opcode_6) begin // @[ALU.scala 49:33]
      if (_T_3) begin // @[ALU.scala 50:49]
        temp_result_a <= _temp_result_a_T_4; // @[ALU.scala 51:21]
      end else begin
        temp_result_a <= _temp_result_a_T_3; // @[ALU.scala 53:21]
      end
    end
    if (reset) begin // @[ALU.scala 29:30]
      temp_result_b <= 64'h0; // @[ALU.scala 29:30]
    end else if (~opcode_1 & ~opcode_0) begin // @[ALU.scala 115:47]
      temp_result_b <= io_in_b; // @[ALU.scala 118:19]
    end else if (_T_30 & opcode_0) begin // @[ALU.scala 119:54]
      temp_result_b <= io_in_b; // @[ALU.scala 122:19]
    end else if (opcode_1 & _T_31) begin // @[ALU.scala 123:54]
      temp_result_b <= io_in_a; // @[ALU.scala 126:19]
    end else begin
      temp_result_b <= _GEN_58;
    end
    if (reset) begin // @[ALU.scala 32:29]
      temp_valid_a <= 1'h0; // @[ALU.scala 32:29]
    end else if (~opcode_1 & ~opcode_0) begin // @[ALU.scala 115:47]
      temp_valid_a <= 1'h0; // @[ALU.scala 116:18]
    end else if (_T_30 & opcode_0) begin // @[ALU.scala 119:54]
      temp_valid_a <= gate_valid_a & gate_valid_b; // @[ALU.scala 120:18]
    end else if (opcode_1 & _T_31) begin // @[ALU.scala 123:54]
      temp_valid_a <= _temp_valid_a_T; // @[ALU.scala 124:18]
    end else begin
      temp_valid_a <= _GEN_56;
    end
    if (reset) begin // @[ALU.scala 33:29]
      temp_valid_b <= 1'h0; // @[ALU.scala 33:29]
    end else if (~opcode_1 & ~opcode_0) begin // @[ALU.scala 115:47]
      temp_valid_b <= 1'h0; // @[ALU.scala 117:18]
    end else if (_T_30 & opcode_0) begin // @[ALU.scala 119:54]
      temp_valid_b <= 1'h0; // @[ALU.scala 121:18]
    end else if (opcode_1 & _T_31) begin // @[ALU.scala 123:54]
      temp_valid_b <= io_validin_a; // @[ALU.scala 125:18]
    end else begin
      temp_valid_b <= _GEN_57;
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
  snapshot_a = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  snapshot_valid_a = _RAND_1[0:0];
  _RAND_2 = {2{`RANDOM}};
  temp_result_a = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  temp_result_b = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  temp_valid_a = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  temp_valid_b = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
