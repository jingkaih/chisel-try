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
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] inputDataBuffer_0 [0:255]; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_0_MPORT_1_data; // @[SyncMemTest.scala 15:36]
  wire [7:0] inputDataBuffer_0_MPORT_1_addr; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_0_MPORT_data; // @[SyncMemTest.scala 15:36]
  wire [7:0] inputDataBuffer_0_MPORT_addr; // @[SyncMemTest.scala 15:36]
  wire  inputDataBuffer_0_MPORT_mask; // @[SyncMemTest.scala 15:36]
  wire  inputDataBuffer_0_MPORT_en; // @[SyncMemTest.scala 15:36]
  reg [7:0] inputDataBuffer_0_MPORT_1_addr_pipe_0;
  reg [3:0] inputDataBuffer_1 [0:255]; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_1_MPORT_1_data; // @[SyncMemTest.scala 15:36]
  wire [7:0] inputDataBuffer_1_MPORT_1_addr; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_1_MPORT_data; // @[SyncMemTest.scala 15:36]
  wire [7:0] inputDataBuffer_1_MPORT_addr; // @[SyncMemTest.scala 15:36]
  wire  inputDataBuffer_1_MPORT_mask; // @[SyncMemTest.scala 15:36]
  wire  inputDataBuffer_1_MPORT_en; // @[SyncMemTest.scala 15:36]
  reg [7:0] inputDataBuffer_1_MPORT_1_addr_pipe_0;
  reg [3:0] inputDataBuffer_2 [0:255]; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_2_MPORT_1_data; // @[SyncMemTest.scala 15:36]
  wire [7:0] inputDataBuffer_2_MPORT_1_addr; // @[SyncMemTest.scala 15:36]
  wire [3:0] inputDataBuffer_2_MPORT_data; // @[SyncMemTest.scala 15:36]
  wire [7:0] inputDataBuffer_2_MPORT_addr; // @[SyncMemTest.scala 15:36]
  wire  inputDataBuffer_2_MPORT_mask; // @[SyncMemTest.scala 15:36]
  wire  inputDataBuffer_2_MPORT_en; // @[SyncMemTest.scala 15:36]
  reg [7:0] inputDataBuffer_2_MPORT_1_addr_pipe_0;
  reg [7:0] wr_Addr_inBuf; // @[SyncMemTest.scala 16:30]
  wire [7:0] _wr_Addr_inBuf_T_1 = wr_Addr_inBuf + 8'h1; // @[SyncMemTest.scala 21:36]
  assign inputDataBuffer_0_MPORT_1_addr = inputDataBuffer_0_MPORT_1_addr_pipe_0;
  assign inputDataBuffer_0_MPORT_1_data = inputDataBuffer_0[inputDataBuffer_0_MPORT_1_addr]; // @[SyncMemTest.scala 15:36]
  assign inputDataBuffer_0_MPORT_data = io_wr_D_inBuf_0;
  assign inputDataBuffer_0_MPORT_addr = wr_Addr_inBuf;
  assign inputDataBuffer_0_MPORT_mask = 1'h1;
  assign inputDataBuffer_0_MPORT_en = io_wr_Addr_inBuf_en;
  assign inputDataBuffer_1_MPORT_1_addr = inputDataBuffer_1_MPORT_1_addr_pipe_0;
  assign inputDataBuffer_1_MPORT_1_data = inputDataBuffer_1[inputDataBuffer_1_MPORT_1_addr]; // @[SyncMemTest.scala 15:36]
  assign inputDataBuffer_1_MPORT_data = io_wr_D_inBuf_1;
  assign inputDataBuffer_1_MPORT_addr = wr_Addr_inBuf;
  assign inputDataBuffer_1_MPORT_mask = 1'h1;
  assign inputDataBuffer_1_MPORT_en = io_wr_Addr_inBuf_en;
  assign inputDataBuffer_2_MPORT_1_addr = inputDataBuffer_2_MPORT_1_addr_pipe_0;
  assign inputDataBuffer_2_MPORT_1_data = inputDataBuffer_2[inputDataBuffer_2_MPORT_1_addr]; // @[SyncMemTest.scala 15:36]
  assign inputDataBuffer_2_MPORT_data = io_wr_D_inBuf_2;
  assign inputDataBuffer_2_MPORT_addr = wr_Addr_inBuf;
  assign inputDataBuffer_2_MPORT_mask = 1'h1;
  assign inputDataBuffer_2_MPORT_en = io_wr_Addr_inBuf_en;
  assign io_rd_D_inBuf_0 = inputDataBuffer_0_MPORT_1_data; // @[SyncMemTest.scala 23:17]
  assign io_rd_D_inBuf_1 = inputDataBuffer_1_MPORT_1_data; // @[SyncMemTest.scala 23:17]
  assign io_rd_D_inBuf_2 = inputDataBuffer_2_MPORT_1_data; // @[SyncMemTest.scala 23:17]
  always @(posedge clock) begin
    if(inputDataBuffer_0_MPORT_en & inputDataBuffer_0_MPORT_mask) begin
      inputDataBuffer_0[inputDataBuffer_0_MPORT_addr] <= inputDataBuffer_0_MPORT_data; // @[SyncMemTest.scala 15:36]
    end
    inputDataBuffer_0_MPORT_1_addr_pipe_0 <= io_rd_Addr_inBuf;
    if(inputDataBuffer_1_MPORT_en & inputDataBuffer_1_MPORT_mask) begin
      inputDataBuffer_1[inputDataBuffer_1_MPORT_addr] <= inputDataBuffer_1_MPORT_data; // @[SyncMemTest.scala 15:36]
    end
    inputDataBuffer_1_MPORT_1_addr_pipe_0 <= io_rd_Addr_inBuf;
    if(inputDataBuffer_2_MPORT_en & inputDataBuffer_2_MPORT_mask) begin
      inputDataBuffer_2[inputDataBuffer_2_MPORT_addr] <= inputDataBuffer_2_MPORT_data; // @[SyncMemTest.scala 15:36]
    end
    inputDataBuffer_2_MPORT_1_addr_pipe_0 <= io_rd_Addr_inBuf;
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    inputDataBuffer_0[initvar] = _RAND_0[3:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    inputDataBuffer_1[initvar] = _RAND_2[3:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    inputDataBuffer_2[initvar] = _RAND_4[3:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  inputDataBuffer_0_MPORT_1_addr_pipe_0 = _RAND_1[7:0];
  _RAND_3 = {1{`RANDOM}};
  inputDataBuffer_1_MPORT_1_addr_pipe_0 = _RAND_3[7:0];
  _RAND_5 = {1{`RANDOM}};
  inputDataBuffer_2_MPORT_1_addr_pipe_0 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  wr_Addr_inBuf = _RAND_6[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
