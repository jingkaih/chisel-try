module BUFFER(
  input         clock,
  input         reset,
  input         io_wr_D_0_validBit,
  input  [63:0] io_wr_D_0_data,
  input         io_wr_D_1_validBit,
  input  [63:0] io_wr_D_1_data,
  input         io_wr_D_2_validBit,
  input  [63:0] io_wr_D_2_data,
  input  [7:0]  io_wr_Addr,
  input         io_wr_en,
  input  [7:0]  io_rd_Addr,
  output        io_rd_D_0_validBit,
  output [63:0] io_rd_D_0_data,
  output        io_rd_D_1_validBit,
  output [63:0] io_rd_D_1_data,
  output        io_rd_D_2_validBit,
  output [63:0] io_rd_D_2_data
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
`endif // RANDOMIZE_MEM_INIT
  reg  Buffer_0_validBit [0:255]; // @[BUFFER.scala 17:19]
  wire  Buffer_0_validBit_MPORT_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_0_validBit_MPORT_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_0_validBit_MPORT_2_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_0_validBit_MPORT_2_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_0_validBit_MPORT_1_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_0_validBit_MPORT_1_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_0_validBit_MPORT_1_mask; // @[BUFFER.scala 17:19]
  wire  Buffer_0_validBit_MPORT_1_en; // @[BUFFER.scala 17:19]
  reg [63:0] Buffer_0_data [0:255]; // @[BUFFER.scala 17:19]
  wire [63:0] Buffer_0_data_MPORT_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_0_data_MPORT_addr; // @[BUFFER.scala 17:19]
  wire [63:0] Buffer_0_data_MPORT_2_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_0_data_MPORT_2_addr; // @[BUFFER.scala 17:19]
  wire [63:0] Buffer_0_data_MPORT_1_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_0_data_MPORT_1_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_0_data_MPORT_1_mask; // @[BUFFER.scala 17:19]
  wire  Buffer_0_data_MPORT_1_en; // @[BUFFER.scala 17:19]
  reg  Buffer_1_validBit [0:255]; // @[BUFFER.scala 17:19]
  wire  Buffer_1_validBit_MPORT_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_1_validBit_MPORT_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_1_validBit_MPORT_2_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_1_validBit_MPORT_2_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_1_validBit_MPORT_1_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_1_validBit_MPORT_1_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_1_validBit_MPORT_1_mask; // @[BUFFER.scala 17:19]
  wire  Buffer_1_validBit_MPORT_1_en; // @[BUFFER.scala 17:19]
  reg [63:0] Buffer_1_data [0:255]; // @[BUFFER.scala 17:19]
  wire [63:0] Buffer_1_data_MPORT_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_1_data_MPORT_addr; // @[BUFFER.scala 17:19]
  wire [63:0] Buffer_1_data_MPORT_2_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_1_data_MPORT_2_addr; // @[BUFFER.scala 17:19]
  wire [63:0] Buffer_1_data_MPORT_1_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_1_data_MPORT_1_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_1_data_MPORT_1_mask; // @[BUFFER.scala 17:19]
  wire  Buffer_1_data_MPORT_1_en; // @[BUFFER.scala 17:19]
  reg  Buffer_2_validBit [0:255]; // @[BUFFER.scala 17:19]
  wire  Buffer_2_validBit_MPORT_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_2_validBit_MPORT_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_2_validBit_MPORT_2_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_2_validBit_MPORT_2_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_2_validBit_MPORT_1_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_2_validBit_MPORT_1_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_2_validBit_MPORT_1_mask; // @[BUFFER.scala 17:19]
  wire  Buffer_2_validBit_MPORT_1_en; // @[BUFFER.scala 17:19]
  reg [63:0] Buffer_2_data [0:255]; // @[BUFFER.scala 17:19]
  wire [63:0] Buffer_2_data_MPORT_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_2_data_MPORT_addr; // @[BUFFER.scala 17:19]
  wire [63:0] Buffer_2_data_MPORT_2_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_2_data_MPORT_2_addr; // @[BUFFER.scala 17:19]
  wire [63:0] Buffer_2_data_MPORT_1_data; // @[BUFFER.scala 17:19]
  wire [7:0] Buffer_2_data_MPORT_1_addr; // @[BUFFER.scala 17:19]
  wire  Buffer_2_data_MPORT_1_mask; // @[BUFFER.scala 17:19]
  wire  Buffer_2_data_MPORT_1_en; // @[BUFFER.scala 17:19]
  assign Buffer_0_validBit_MPORT_addr = io_wr_Addr;
  assign Buffer_0_validBit_MPORT_data = Buffer_0_validBit[Buffer_0_validBit_MPORT_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_0_validBit_MPORT_2_addr = io_rd_Addr;
  assign Buffer_0_validBit_MPORT_2_data = Buffer_0_validBit[Buffer_0_validBit_MPORT_2_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_0_validBit_MPORT_1_data = io_wr_D_0_validBit;
  assign Buffer_0_validBit_MPORT_1_addr = io_wr_Addr;
  assign Buffer_0_validBit_MPORT_1_mask = 1'h1;
  assign Buffer_0_validBit_MPORT_1_en = io_wr_en;
  assign Buffer_0_data_MPORT_addr = io_wr_Addr;
  assign Buffer_0_data_MPORT_data = Buffer_0_data[Buffer_0_data_MPORT_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_0_data_MPORT_2_addr = io_rd_Addr;
  assign Buffer_0_data_MPORT_2_data = Buffer_0_data[Buffer_0_data_MPORT_2_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_0_data_MPORT_1_data = io_wr_D_0_data;
  assign Buffer_0_data_MPORT_1_addr = io_wr_Addr;
  assign Buffer_0_data_MPORT_1_mask = 1'h1;
  assign Buffer_0_data_MPORT_1_en = io_wr_en;
  assign Buffer_1_validBit_MPORT_addr = io_wr_Addr;
  assign Buffer_1_validBit_MPORT_data = Buffer_1_validBit[Buffer_1_validBit_MPORT_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_1_validBit_MPORT_2_addr = io_rd_Addr;
  assign Buffer_1_validBit_MPORT_2_data = Buffer_1_validBit[Buffer_1_validBit_MPORT_2_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_1_validBit_MPORT_1_data = io_wr_D_1_validBit;
  assign Buffer_1_validBit_MPORT_1_addr = io_wr_Addr;
  assign Buffer_1_validBit_MPORT_1_mask = 1'h1;
  assign Buffer_1_validBit_MPORT_1_en = io_wr_en;
  assign Buffer_1_data_MPORT_addr = io_wr_Addr;
  assign Buffer_1_data_MPORT_data = Buffer_1_data[Buffer_1_data_MPORT_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_1_data_MPORT_2_addr = io_rd_Addr;
  assign Buffer_1_data_MPORT_2_data = Buffer_1_data[Buffer_1_data_MPORT_2_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_1_data_MPORT_1_data = io_wr_D_1_data;
  assign Buffer_1_data_MPORT_1_addr = io_wr_Addr;
  assign Buffer_1_data_MPORT_1_mask = 1'h1;
  assign Buffer_1_data_MPORT_1_en = io_wr_en;
  assign Buffer_2_validBit_MPORT_addr = io_wr_Addr;
  assign Buffer_2_validBit_MPORT_data = Buffer_2_validBit[Buffer_2_validBit_MPORT_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_2_validBit_MPORT_2_addr = io_rd_Addr;
  assign Buffer_2_validBit_MPORT_2_data = Buffer_2_validBit[Buffer_2_validBit_MPORT_2_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_2_validBit_MPORT_1_data = io_wr_D_2_validBit;
  assign Buffer_2_validBit_MPORT_1_addr = io_wr_Addr;
  assign Buffer_2_validBit_MPORT_1_mask = 1'h1;
  assign Buffer_2_validBit_MPORT_1_en = io_wr_en;
  assign Buffer_2_data_MPORT_addr = io_wr_Addr;
  assign Buffer_2_data_MPORT_data = Buffer_2_data[Buffer_2_data_MPORT_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_2_data_MPORT_2_addr = io_rd_Addr;
  assign Buffer_2_data_MPORT_2_data = Buffer_2_data[Buffer_2_data_MPORT_2_addr]; // @[BUFFER.scala 17:19]
  assign Buffer_2_data_MPORT_1_data = io_wr_D_2_data;
  assign Buffer_2_data_MPORT_1_addr = io_wr_Addr;
  assign Buffer_2_data_MPORT_1_mask = 1'h1;
  assign Buffer_2_data_MPORT_1_en = io_wr_en;
  assign io_rd_D_0_validBit = Buffer_0_validBit_MPORT_2_data; // @[BUFFER.scala 32:11]
  assign io_rd_D_0_data = Buffer_0_data_MPORT_2_data; // @[BUFFER.scala 32:11]
  assign io_rd_D_1_validBit = Buffer_1_validBit_MPORT_2_data; // @[BUFFER.scala 32:11]
  assign io_rd_D_1_data = Buffer_1_data_MPORT_2_data; // @[BUFFER.scala 32:11]
  assign io_rd_D_2_validBit = Buffer_2_validBit_MPORT_2_data; // @[BUFFER.scala 32:11]
  assign io_rd_D_2_data = Buffer_2_data_MPORT_2_data; // @[BUFFER.scala 32:11]
  always @(posedge clock) begin
    if(Buffer_0_validBit_MPORT_1_en & Buffer_0_validBit_MPORT_1_mask) begin
      Buffer_0_validBit[Buffer_0_validBit_MPORT_1_addr] <= Buffer_0_validBit_MPORT_1_data; // @[BUFFER.scala 17:19]
    end
    if(Buffer_0_data_MPORT_1_en & Buffer_0_data_MPORT_1_mask) begin
      Buffer_0_data[Buffer_0_data_MPORT_1_addr] <= Buffer_0_data_MPORT_1_data; // @[BUFFER.scala 17:19]
    end
    if(Buffer_1_validBit_MPORT_1_en & Buffer_1_validBit_MPORT_1_mask) begin
      Buffer_1_validBit[Buffer_1_validBit_MPORT_1_addr] <= Buffer_1_validBit_MPORT_1_data; // @[BUFFER.scala 17:19]
    end
    if(Buffer_1_data_MPORT_1_en & Buffer_1_data_MPORT_1_mask) begin
      Buffer_1_data[Buffer_1_data_MPORT_1_addr] <= Buffer_1_data_MPORT_1_data; // @[BUFFER.scala 17:19]
    end
    if(Buffer_2_validBit_MPORT_1_en & Buffer_2_validBit_MPORT_1_mask) begin
      Buffer_2_validBit[Buffer_2_validBit_MPORT_1_addr] <= Buffer_2_validBit_MPORT_1_data; // @[BUFFER.scala 17:19]
    end
    if(Buffer_2_data_MPORT_1_en & Buffer_2_data_MPORT_1_mask) begin
      Buffer_2_data[Buffer_2_data_MPORT_1_addr] <= Buffer_2_data_MPORT_1_data; // @[BUFFER.scala 17:19]
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
    Buffer_0_validBit[initvar] = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Buffer_0_data[initvar] = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Buffer_1_validBit[initvar] = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Buffer_1_data[initvar] = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Buffer_2_validBit[initvar] = _RAND_4[0:0];
  _RAND_5 = {2{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Buffer_2_data[initvar] = _RAND_5[63:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
