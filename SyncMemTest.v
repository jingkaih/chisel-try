module SyncMemTest(
  input        clock,
  input        reset,
  input  [3:0] io_wr_D_inBuf_0,
  input  [3:0] io_wr_D_inBuf_1,
  input  [3:0] io_wr_D_inBuf_2,
  input        io_wr_Addr_inBuf_en,
  output [3:0] io_rd_D_inBuf_0,
  output [3:0] io_rd_D_inBuf_1,
  output [3:0] io_rd_D_inBuf_2,
  input  [7:0] io_rd_Addr_inBuf
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] inputDataBuffer_R0_addr; // @[SyncMemTest.scala 15:36]
  wire  inputDataBuffer_R0_clk; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_R0_data_0; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_R0_data_1; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_R0_data_2; // @[SyncMemTest.scala 15:36]
  wire [7:0] inputDataBuffer_W0_addr; // @[SyncMemTest.scala 15:36]
  wire  inputDataBuffer_W0_en; // @[SyncMemTest.scala 15:36]
  wire  inputDataBuffer_W0_clk; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_W0_data_0; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_W0_data_1; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_W0_data_2; // @[SyncMemTest.scala 15:36]
  reg [7:0] wr_Addr_inBuf; // @[SyncMemTest.scala 16:30]
  wire [7:0] _wr_Addr_inBuf_T_1 = wr_Addr_inBuf + 8'h1; // @[SyncMemTest.scala 21:36]
  inputDataBuffer inputDataBuffer ( // @[SyncMemTest.scala 15:36]
    .R0_addr(inputDataBuffer_R0_addr),
    .R0_clk(inputDataBuffer_R0_clk),
    .R0_data_0(inputDataBuffer_R0_data_0),
    .R0_data_1(inputDataBuffer_R0_data_1),
    .R0_data_2(inputDataBuffer_R0_data_2),
    .W0_addr(inputDataBuffer_W0_addr),
    .W0_en(inputDataBuffer_W0_en),
    .W0_clk(inputDataBuffer_W0_clk),
    .W0_data_0(inputDataBuffer_W0_data_0),
    .W0_data_1(inputDataBuffer_W0_data_1),
    .W0_data_2(inputDataBuffer_W0_data_2)
  );
  assign io_rd_D_inBuf_0 = inputDataBuffer_R0_data_0; // @[SyncMemTest.scala 23:17]
  assign io_rd_D_inBuf_1 = inputDataBuffer_R0_data_1; // @[SyncMemTest.scala 23:17]
  assign io_rd_D_inBuf_2 = inputDataBuffer_R0_data_2; // @[SyncMemTest.scala 23:17]
  assign inputDataBuffer_R0_addr = io_rd_Addr_inBuf; // @[SyncMemTest.scala 23:40]
  assign inputDataBuffer_R0_clk = clock; // @[SyncMemTest.scala 23:40]
  assign inputDataBuffer_W0_addr = wr_Addr_inBuf; // @[SyncMemTest.scala 19:28]
  assign inputDataBuffer_W0_en = io_wr_Addr_inBuf_en; // @[SyncMemTest.scala 19:28 SyncMemTest.scala 15:36]
  assign inputDataBuffer_W0_clk = clock; // @[SyncMemTest.scala 19:28]
  assign inputDataBuffer_W0_data_0 = io_wr_D_inBuf_0; // @[SyncMemTest.scala 19:28]
  assign inputDataBuffer_W0_data_1 = io_wr_D_inBuf_1; // @[SyncMemTest.scala 19:28]
  assign inputDataBuffer_W0_data_2 = io_wr_D_inBuf_2; // @[SyncMemTest.scala 19:28]
  always @(posedge clock) begin
    if (reset) begin // @[SyncMemTest.scala 16:30]
      wr_Addr_inBuf <= 8'h0; // @[SyncMemTest.scala 16:30]
    end else if (io_wr_Addr_inBuf_en) begin // @[SyncMemTest.scala 19:28]
      wr_Addr_inBuf <= _wr_Addr_inBuf_T_1; // @[SyncMemTest.scala 21:19]
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
  wr_Addr_inBuf = _RAND_0[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module inputDataBuffer(
  input  [7:0] R0_addr,
  input        R0_clk,
  output [3:0] R0_data_0,
  output [3:0] R0_data_1,
  output [3:0] R0_data_2,
  input  [7:0] W0_addr,
  input        W0_en,
  input        W0_clk,
  input  [3:0] W0_data_0,
  input  [3:0] W0_data_1,
  input  [3:0] W0_data_2
);
  wire [7:0] inputDataBuffer_ext_R0_addr;
  wire  inputDataBuffer_ext_R0_en;
  wire  inputDataBuffer_ext_R0_clk;
  wire [11:0] inputDataBuffer_ext_R0_data;
  wire [7:0] inputDataBuffer_ext_W0_addr;
  wire  inputDataBuffer_ext_W0_en;
  wire  inputDataBuffer_ext_W0_clk;
  wire [11:0] inputDataBuffer_ext_W0_data;
  wire [7:0] _GEN_0 = {W0_data_1,W0_data_0};
  inputDataBuffer_ext inputDataBuffer_ext (
    .R0_addr(inputDataBuffer_ext_R0_addr),
    .R0_en(inputDataBuffer_ext_R0_en),
    .R0_clk(inputDataBuffer_ext_R0_clk),
    .R0_data(inputDataBuffer_ext_R0_data),
    .W0_addr(inputDataBuffer_ext_W0_addr),
    .W0_en(inputDataBuffer_ext_W0_en),
    .W0_clk(inputDataBuffer_ext_W0_clk),
    .W0_data(inputDataBuffer_ext_W0_data)
  );
  assign inputDataBuffer_ext_R0_clk = R0_clk;
  assign inputDataBuffer_ext_R0_en = 1'h1;
  assign inputDataBuffer_ext_R0_addr = R0_addr;
  assign R0_data_0 = inputDataBuffer_ext_R0_data[3:0];
  assign R0_data_1 = inputDataBuffer_ext_R0_data[7:4];
  assign R0_data_2 = inputDataBuffer_ext_R0_data[11:8];
  assign inputDataBuffer_ext_W0_clk = W0_clk;
  assign inputDataBuffer_ext_W0_en = W0_en;
  assign inputDataBuffer_ext_W0_addr = W0_addr;
  assign inputDataBuffer_ext_W0_data = {W0_data_2,_GEN_0};
endmodule
