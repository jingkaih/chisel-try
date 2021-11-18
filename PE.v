module ALU(
  input         clock,
  input         reset,
  input  [2:0]  io_opcode,
  input  [63:0] io_in_a,
  input  [63:0] io_in_b,
  output [63:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] temp_result; // @[ALU.scala 25:28]
  wire  _T = 3'h0 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_1 = 3'h1 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_2 = 3'h2 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T = io_in_a & io_in_b; // @[ALU.scala 30:31]
  wire  _T_3 = 3'h3 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_2 = ~_temp_result_T; // @[ALU.scala 31:29]
  wire  _T_4 = 3'h4 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_3 = io_in_a | io_in_b; // @[ALU.scala 32:31]
  wire  _T_5 = 3'h5 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_5 = ~_temp_result_T_3; // @[ALU.scala 33:29]
  wire  _T_6 = 3'h6 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_6 = io_in_a ^ io_in_b; // @[ALU.scala 34:31]
  wire  _T_7 = 3'h7 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_T_8 = ~_temp_result_T_6; // @[ALU.scala 35:29]
  wire [63:0] _GEN_0 = _T_7 ? _temp_result_T_8 : temp_result; // @[Conditional.scala 39:67 ALU.scala 35:26 ALU.scala 25:28]
  wire [63:0] _GEN_1 = _T_6 ? _temp_result_T_6 : _GEN_0; // @[Conditional.scala 39:67 ALU.scala 34:26]
  wire [63:0] _GEN_2 = _T_5 ? _temp_result_T_5 : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 33:26]
  wire [63:0] _GEN_3 = _T_4 ? _temp_result_T_3 : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 32:26]
  wire [63:0] _GEN_4 = _T_3 ? _temp_result_T_2 : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 31:26]
  assign io_out = temp_result; // @[ALU.scala 37:10]
  always @(posedge clock) begin
    if (reset) begin // @[ALU.scala 25:28]
      temp_result <= 64'h0; // @[ALU.scala 25:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result <= io_in_a; // @[ALU.scala 28:26]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result <= io_in_b; // @[ALU.scala 29:26]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result <= _temp_result_T; // @[ALU.scala 30:26]
    end else begin
      temp_result <= _GEN_4;
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
module PE(
  input         clock,
  input         reset,
  input  [63:0] io_in_a,
  input  [63:0] io_in_b,
  input         io_wr_en,
  input  [2:0]  io_wr_instr,
  input         io_run,
  output [63:0] io_out
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire  ALU64_clock; // @[PE.scala 17:21]
  wire  ALU64_reset; // @[PE.scala 17:21]
  wire [2:0] ALU64_io_opcode; // @[PE.scala 17:21]
  wire [63:0] ALU64_io_in_a; // @[PE.scala 17:21]
  wire [63:0] ALU64_io_in_b; // @[PE.scala 17:21]
  wire [63:0] ALU64_io_out; // @[PE.scala 17:21]
  reg [2:0] IQ [0:99]; // @[PE.scala 19:15]
  wire [2:0] IQ_instr_MPORT_data; // @[PE.scala 19:15]
  wire [6:0] IQ_instr_MPORT_addr; // @[PE.scala 19:15]
  wire [2:0] IQ_MPORT_data; // @[PE.scala 19:15]
  wire [6:0] IQ_MPORT_addr; // @[PE.scala 19:15]
  wire  IQ_MPORT_mask; // @[PE.scala 19:15]
  wire  IQ_MPORT_en; // @[PE.scala 19:15]
  reg [63:0] in_a_reg; // @[PE.scala 13:25]
  reg [63:0] in_b_reg; // @[PE.scala 14:25]
  reg [63:0] out_reg; // @[PE.scala 15:24]
  reg [6:0] PC; // @[PE.scala 20:19]
  reg [6:0] wr_addr; // @[PE.scala 21:24]
  reg [2:0] instr; // @[PE.scala 22:22]
  wire [6:0] _PC_T_1 = PC + 7'h1; // @[PE.scala 31:14]
  wire [6:0] _wr_addr_T_1 = wr_addr + 7'h1; // @[PE.scala 37:24]
  ALU ALU64 ( // @[PE.scala 17:21]
    .clock(ALU64_clock),
    .reset(ALU64_reset),
    .io_opcode(ALU64_io_opcode),
    .io_in_a(ALU64_io_in_a),
    .io_in_b(ALU64_io_in_b),
    .io_out(ALU64_io_out)
  );
  assign IQ_instr_MPORT_addr = PC;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign IQ_instr_MPORT_data = IQ[IQ_instr_MPORT_addr]; // @[PE.scala 19:15]
  `else
  assign IQ_instr_MPORT_data = IQ_instr_MPORT_addr >= 7'h64 ? _RAND_1[2:0] : IQ[IQ_instr_MPORT_addr]; // @[PE.scala 19:15]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign IQ_MPORT_data = io_wr_instr;
  assign IQ_MPORT_addr = wr_addr;
  assign IQ_MPORT_mask = 1'h1;
  assign IQ_MPORT_en = io_run ? 1'h0 : io_wr_en;
  assign io_out = out_reg; // @[PE.scala 28:10]
  assign ALU64_clock = clock;
  assign ALU64_reset = reset;
  assign ALU64_io_opcode = instr; // @[PE.scala 27:19]
  assign ALU64_io_in_a = in_a_reg; // @[PE.scala 24:17]
  assign ALU64_io_in_b = in_b_reg; // @[PE.scala 25:17]
  always @(posedge clock) begin
    if(IQ_MPORT_en & IQ_MPORT_mask) begin
      IQ[IQ_MPORT_addr] <= IQ_MPORT_data; // @[PE.scala 19:15]
    end
    if (reset) begin // @[PE.scala 13:25]
      in_a_reg <= 64'h0; // @[PE.scala 13:25]
    end else if (io_run) begin // @[PE.scala 30:15]
      in_a_reg <= io_in_a; // @[PE.scala 33:14]
    end
    if (reset) begin // @[PE.scala 14:25]
      in_b_reg <= 64'h0; // @[PE.scala 14:25]
    end else if (io_run) begin // @[PE.scala 30:15]
      in_b_reg <= io_in_b; // @[PE.scala 34:14]
    end
    if (reset) begin // @[PE.scala 15:24]
      out_reg <= 64'h0; // @[PE.scala 15:24]
    end else if (io_run) begin // @[PE.scala 30:15]
      out_reg <= ALU64_io_out; // @[PE.scala 35:13]
    end
    if (reset) begin // @[PE.scala 20:19]
      PC <= 7'h0; // @[PE.scala 20:19]
    end else if (io_run) begin // @[PE.scala 30:15]
      PC <= _PC_T_1; // @[PE.scala 31:8]
    end
    if (reset) begin // @[PE.scala 21:24]
      wr_addr <= 7'h0; // @[PE.scala 21:24]
    end else if (!(io_run)) begin // @[PE.scala 30:15]
      if (io_wr_en) begin // @[PE.scala 36:23]
        wr_addr <= _wr_addr_T_1; // @[PE.scala 37:13]
      end
    end
    if (reset) begin // @[PE.scala 22:22]
      instr <= 3'h0; // @[PE.scala 22:22]
    end else if (io_run) begin // @[PE.scala 30:15]
      instr <= IQ_instr_MPORT_data; // @[PE.scala 32:11]
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 100; initvar = initvar+1)
    IQ[initvar] = _RAND_0[2:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  in_a_reg = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  in_b_reg = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  out_reg = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  PC = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  wr_addr = _RAND_6[6:0];
  _RAND_7 = {1{`RANDOM}};
  instr = _RAND_7[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
