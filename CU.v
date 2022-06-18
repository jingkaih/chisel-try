module CU(
  input        clock,
  input        reset,
  input        io_run,
  input  [7:0] io_wr_PC1,
  input        io_wr_PC1_en,
  output [7:0] io_rd_PC6
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
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
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] PC1; // @[CU.scala 12:20]
  reg [7:0] PC2; // @[CU.scala 13:20]
  reg [7:0] PC3; // @[CU.scala 14:20]
  reg [7:0] PC4; // @[CU.scala 15:20]
  reg [7:0] PC5; // @[CU.scala 16:20]
  reg [7:0] PC6; // @[CU.scala 17:20]
  reg  run2; // @[CU.scala 20:21]
  reg  run3_REG; // @[CU.scala 21:29]
  reg  run3; // @[CU.scala 21:21]
  reg  run4_REG; // @[CU.scala 22:37]
  reg  run4_REG_1; // @[CU.scala 22:29]
  reg  run4; // @[CU.scala 22:21]
  reg  run5_REG; // @[CU.scala 23:45]
  reg  run5_REG_1; // @[CU.scala 23:37]
  reg  run5_REG_2; // @[CU.scala 23:29]
  reg  run5; // @[CU.scala 23:21]
  reg  run6_REG; // @[CU.scala 24:53]
  reg  run6_REG_1; // @[CU.scala 24:45]
  reg  run6_REG_2; // @[CU.scala 24:37]
  reg  run6_REG_3; // @[CU.scala 24:29]
  reg  run6; // @[CU.scala 24:21]
  wire [7:0] _PC1_T_1 = PC1 + 8'h1; // @[CU.scala 30:18]
  assign io_rd_PC6 = PC6; // @[CU.scala 71:13]
  always @(posedge clock) begin
    if (reset) begin // @[CU.scala 12:20]
      PC1 <= 8'h0; // @[CU.scala 12:20]
    end else if (io_run) begin // @[CU.scala 26:13]
      if (io_wr_PC1_en) begin // @[CU.scala 27:23]
        PC1 <= io_wr_PC1; // @[CU.scala 28:11]
      end else begin
        PC1 <= _PC1_T_1; // @[CU.scala 30:11]
      end
    end
    if (reset) begin // @[CU.scala 13:20]
      PC2 <= 8'h0; // @[CU.scala 13:20]
    end else if (run2) begin // @[CU.scala 36:13]
      PC2 <= PC1; // @[CU.scala 38:9]
    end
    if (reset) begin // @[CU.scala 14:20]
      PC3 <= 8'h0; // @[CU.scala 14:20]
    end else if (run3) begin // @[CU.scala 43:13]
      PC3 <= PC2; // @[CU.scala 45:9]
    end
    if (reset) begin // @[CU.scala 15:20]
      PC4 <= 8'h0; // @[CU.scala 15:20]
    end else if (run4) begin // @[CU.scala 50:13]
      PC4 <= PC3; // @[CU.scala 52:9]
    end
    if (reset) begin // @[CU.scala 16:20]
      PC5 <= 8'h0; // @[CU.scala 16:20]
    end else if (run5) begin // @[CU.scala 57:13]
      PC5 <= PC4; // @[CU.scala 59:9]
    end
    if (reset) begin // @[CU.scala 17:20]
      PC6 <= 8'h0; // @[CU.scala 17:20]
    end else if (run6) begin // @[CU.scala 64:13]
      PC6 <= PC5; // @[CU.scala 66:9]
    end
    run2 <= io_run; // @[CU.scala 20:21]
    run3_REG <= io_run; // @[CU.scala 21:29]
    run3 <= run3_REG; // @[CU.scala 21:21]
    run4_REG <= io_run; // @[CU.scala 22:37]
    run4_REG_1 <= run4_REG; // @[CU.scala 22:29]
    run4 <= run4_REG_1; // @[CU.scala 22:21]
    run5_REG <= io_run; // @[CU.scala 23:45]
    run5_REG_1 <= run5_REG; // @[CU.scala 23:37]
    run5_REG_2 <= run5_REG_1; // @[CU.scala 23:29]
    run5 <= run5_REG_2; // @[CU.scala 23:21]
    run6_REG <= io_run; // @[CU.scala 24:53]
    run6_REG_1 <= run6_REG; // @[CU.scala 24:45]
    run6_REG_2 <= run6_REG_1; // @[CU.scala 24:37]
    run6_REG_3 <= run6_REG_2; // @[CU.scala 24:29]
    run6 <= run6_REG_3; // @[CU.scala 24:21]
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
  PC1 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  PC2 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  PC3 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  PC4 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  PC5 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  PC6 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  run2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  run3_REG = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  run3 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  run4_REG = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  run4_REG_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  run4 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  run5_REG = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  run5_REG_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  run5_REG_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  run5 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  run6_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  run6_REG_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  run6_REG_2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  run6_REG_3 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  run6 = _RAND_20[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
