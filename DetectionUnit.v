module DetectionUnit(
  input        clock,
  input        reset,
  input        io_beginRun,
  input        io_wr_D_inBuf_0_validBit,
  input  [3:0] io_wr_D_inBuf_0_data,
  input        io_wr_D_inBuf_1_validBit,
  input  [3:0] io_wr_D_inBuf_1_data,
  input        io_wr_D_inBuf_2_validBit,
  input  [3:0] io_wr_D_inBuf_2_data,
  input  [1:0] io_wr_Tag_inBuf,
  input        io_wr_Addr_inBuf_en,
  input  [7:0] io_rd_Addr_outBuf,
  output       io_rd_D_outBuf_0_validBit,
  output [3:0] io_rd_D_outBuf_0_data,
  output       io_rd_D_outBuf_1_validBit,
  output [3:0] io_rd_D_outBuf_1_data,
  output       io_rd_D_outBuf_2_validBit,
  output [3:0] io_rd_D_outBuf_2_data,
  output       io_context_switch,
  output [7:0] io_wr_AddrFlwUp_outBuf,
  output [1:0] io_validcnt,
  output       io_DSTWB
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
`endif // RANDOMIZE_REG_INIT
  reg  inputDataBuffer_0_validBit [0:255]; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_0_validBit_MPORT_3_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_0_validBit_MPORT_3_addr; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_0_validBit_MPORT_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_0_validBit_MPORT_addr; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_0_validBit_MPORT_mask; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_0_validBit_MPORT_en; // @[DetectionUnit.scala 167:36]
  reg  inputDataBuffer_0_validBit_MPORT_3_en_pipe_0;
  reg [7:0] inputDataBuffer_0_validBit_MPORT_3_addr_pipe_0;
  reg [3:0] inputDataBuffer_0_data [0:255]; // @[DetectionUnit.scala 167:36]
  wire [3:0] inputDataBuffer_0_data_MPORT_3_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_0_data_MPORT_3_addr; // @[DetectionUnit.scala 167:36]
  wire [3:0] inputDataBuffer_0_data_MPORT_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_0_data_MPORT_addr; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_0_data_MPORT_mask; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_0_data_MPORT_en; // @[DetectionUnit.scala 167:36]
  reg  inputDataBuffer_0_data_MPORT_3_en_pipe_0;
  reg [7:0] inputDataBuffer_0_data_MPORT_3_addr_pipe_0;
  reg  inputDataBuffer_1_validBit [0:255]; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_1_validBit_MPORT_3_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_1_validBit_MPORT_3_addr; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_1_validBit_MPORT_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_1_validBit_MPORT_addr; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_1_validBit_MPORT_mask; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_1_validBit_MPORT_en; // @[DetectionUnit.scala 167:36]
  reg  inputDataBuffer_1_validBit_MPORT_3_en_pipe_0;
  reg [7:0] inputDataBuffer_1_validBit_MPORT_3_addr_pipe_0;
  reg [3:0] inputDataBuffer_1_data [0:255]; // @[DetectionUnit.scala 167:36]
  wire [3:0] inputDataBuffer_1_data_MPORT_3_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_1_data_MPORT_3_addr; // @[DetectionUnit.scala 167:36]
  wire [3:0] inputDataBuffer_1_data_MPORT_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_1_data_MPORT_addr; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_1_data_MPORT_mask; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_1_data_MPORT_en; // @[DetectionUnit.scala 167:36]
  reg  inputDataBuffer_1_data_MPORT_3_en_pipe_0;
  reg [7:0] inputDataBuffer_1_data_MPORT_3_addr_pipe_0;
  reg  inputDataBuffer_2_validBit [0:255]; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_2_validBit_MPORT_3_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_2_validBit_MPORT_3_addr; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_2_validBit_MPORT_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_2_validBit_MPORT_addr; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_2_validBit_MPORT_mask; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_2_validBit_MPORT_en; // @[DetectionUnit.scala 167:36]
  reg  inputDataBuffer_2_validBit_MPORT_3_en_pipe_0;
  reg [7:0] inputDataBuffer_2_validBit_MPORT_3_addr_pipe_0;
  reg [3:0] inputDataBuffer_2_data [0:255]; // @[DetectionUnit.scala 167:36]
  wire [3:0] inputDataBuffer_2_data_MPORT_3_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_2_data_MPORT_3_addr; // @[DetectionUnit.scala 167:36]
  wire [3:0] inputDataBuffer_2_data_MPORT_data; // @[DetectionUnit.scala 167:36]
  wire [7:0] inputDataBuffer_2_data_MPORT_addr; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_2_data_MPORT_mask; // @[DetectionUnit.scala 167:36]
  wire  inputDataBuffer_2_data_MPORT_en; // @[DetectionUnit.scala 167:36]
  reg  inputDataBuffer_2_data_MPORT_3_en_pipe_0;
  reg [7:0] inputDataBuffer_2_data_MPORT_3_addr_pipe_0;
  reg [1:0] inputTagBuffer [0:255]; // @[DetectionUnit.scala 168:35]
  wire [1:0] inputTagBuffer_rd_Tag_inBuf_MPORT_data; // @[DetectionUnit.scala 168:35]
  wire [7:0] inputTagBuffer_rd_Tag_inBuf_MPORT_addr; // @[DetectionUnit.scala 168:35]
  wire [1:0] inputTagBuffer_MPORT_1_data; // @[DetectionUnit.scala 168:35]
  wire [7:0] inputTagBuffer_MPORT_1_addr; // @[DetectionUnit.scala 168:35]
  wire  inputTagBuffer_MPORT_1_mask; // @[DetectionUnit.scala 168:35]
  wire  inputTagBuffer_MPORT_1_en; // @[DetectionUnit.scala 168:35]
  reg  inputTagBuffer_rd_Tag_inBuf_MPORT_en_pipe_0;
  reg [7:0] inputTagBuffer_rd_Tag_inBuf_MPORT_addr_pipe_0;
  reg  outputDataBuffer_0_validBit [0:255]; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_0_validBit_MPORT_2_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_0_validBit_MPORT_2_addr; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_0_validBit_MPORT_4_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_0_validBit_MPORT_4_addr; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_0_validBit_MPORT_4_mask; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_0_validBit_MPORT_4_en; // @[DetectionUnit.scala 170:37]
  reg [7:0] outputDataBuffer_0_validBit_MPORT_2_addr_pipe_0;
  reg [3:0] outputDataBuffer_0_data [0:255]; // @[DetectionUnit.scala 170:37]
  wire [3:0] outputDataBuffer_0_data_MPORT_2_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_0_data_MPORT_2_addr; // @[DetectionUnit.scala 170:37]
  wire [3:0] outputDataBuffer_0_data_MPORT_4_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_0_data_MPORT_4_addr; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_0_data_MPORT_4_mask; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_0_data_MPORT_4_en; // @[DetectionUnit.scala 170:37]
  reg [7:0] outputDataBuffer_0_data_MPORT_2_addr_pipe_0;
  reg  outputDataBuffer_1_validBit [0:255]; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_1_validBit_MPORT_2_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_1_validBit_MPORT_2_addr; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_1_validBit_MPORT_4_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_1_validBit_MPORT_4_addr; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_1_validBit_MPORT_4_mask; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_1_validBit_MPORT_4_en; // @[DetectionUnit.scala 170:37]
  reg [7:0] outputDataBuffer_1_validBit_MPORT_2_addr_pipe_0;
  reg [3:0] outputDataBuffer_1_data [0:255]; // @[DetectionUnit.scala 170:37]
  wire [3:0] outputDataBuffer_1_data_MPORT_2_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_1_data_MPORT_2_addr; // @[DetectionUnit.scala 170:37]
  wire [3:0] outputDataBuffer_1_data_MPORT_4_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_1_data_MPORT_4_addr; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_1_data_MPORT_4_mask; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_1_data_MPORT_4_en; // @[DetectionUnit.scala 170:37]
  reg [7:0] outputDataBuffer_1_data_MPORT_2_addr_pipe_0;
  reg  outputDataBuffer_2_validBit [0:255]; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_2_validBit_MPORT_2_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_2_validBit_MPORT_2_addr; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_2_validBit_MPORT_4_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_2_validBit_MPORT_4_addr; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_2_validBit_MPORT_4_mask; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_2_validBit_MPORT_4_en; // @[DetectionUnit.scala 170:37]
  reg [7:0] outputDataBuffer_2_validBit_MPORT_2_addr_pipe_0;
  reg [3:0] outputDataBuffer_2_data [0:255]; // @[DetectionUnit.scala 170:37]
  wire [3:0] outputDataBuffer_2_data_MPORT_2_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_2_data_MPORT_2_addr; // @[DetectionUnit.scala 170:37]
  wire [3:0] outputDataBuffer_2_data_MPORT_4_data; // @[DetectionUnit.scala 170:37]
  wire [7:0] outputDataBuffer_2_data_MPORT_4_addr; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_2_data_MPORT_4_mask; // @[DetectionUnit.scala 170:37]
  wire  outputDataBuffer_2_data_MPORT_4_en; // @[DetectionUnit.scala 170:37]
  reg [7:0] outputDataBuffer_2_data_MPORT_2_addr_pipe_0;
  reg [7:0] wr_Addr_inBuf; // @[DetectionUnit.scala 173:30]
  reg [7:0] wr_Addr_inBuf_1; // @[DetectionUnit.scala 174:32]
  wire [7:0] _wr_Addr_inBuf_T_1 = wr_Addr_inBuf + 8'h1; // @[DetectionUnit.scala 189:36]
  wire [7:0] _wr_Addr_inBuf_1_T_1 = wr_Addr_inBuf_1 + 8'h1; // @[DetectionUnit.scala 190:40]
  reg [7:0] addr1; // @[DetectionUnit.scala 198:30]
  reg [7:0] rd_Addr_inBuf_1; // @[DetectionUnit.scala 199:32]
  reg  D1_0_validBit; // @[DetectionUnit.scala 201:23]
  reg [3:0] D1_0_data; // @[DetectionUnit.scala 201:23]
  reg  D1_1_validBit; // @[DetectionUnit.scala 201:23]
  reg [3:0] D1_1_data; // @[DetectionUnit.scala 201:23]
  reg  D1_2_validBit; // @[DetectionUnit.scala 201:23]
  reg [3:0] D1_2_data; // @[DetectionUnit.scala 201:23]
  reg [1:0] rd_Tag_inBuf; // @[DetectionUnit.scala 202:29]
  wire [7:0] _rd_Addr_inBuf_T_1 = addr1 + 8'h1; // @[DetectionUnit.scala 208:36]
  wire [7:0] _rd_Addr_inBuf_1_T_1 = rd_Addr_inBuf_1 + 8'h1; // @[DetectionUnit.scala 209:40]
  reg [7:0] wr_Addr_outBuf; // @[DetectionUnit.scala 214:31]
  reg [7:0] wr_AddrReg_outBuf; // @[DetectionUnit.scala 215:34]
  reg [7:0] wr_AddrFlwUp_outBuf; // @[DetectionUnit.scala 216:36]
  reg  wr_D_outBuf_0_validBit; // @[DetectionUnit.scala 219:24]
  reg [3:0] wr_D_outBuf_0_data; // @[DetectionUnit.scala 219:24]
  reg  wr_D_outBuf_1_validBit; // @[DetectionUnit.scala 219:24]
  reg [3:0] wr_D_outBuf_1_data; // @[DetectionUnit.scala 219:24]
  reg  wr_D_outBuf_2_validBit; // @[DetectionUnit.scala 219:24]
  reg [3:0] wr_D_outBuf_2_data; // @[DetectionUnit.scala 219:24]
  reg [1:0] wr_Tag_outBuf; // @[DetectionUnit.scala 220:30]
  reg [1:0] wr_TagOld_outBuf; // @[DetectionUnit.scala 221:33]
  wire [2:0] allValidBits = {wr_D_outBuf_0_validBit,wr_D_outBuf_1_validBit,wr_D_outBuf_2_validBit}; // @[Cat.scala 30:58]
  reg [1:0] allValidBitsPopCnt; // @[DetectionUnit.scala 235:35]
  wire [1:0] _allValidBitsPopCnt_T_3 = allValidBits[1] + allValidBits[2]; // @[Bitwise.scala 47:55]
  wire [1:0] _GEN_10 = {{1'd0}, allValidBits[0]}; // @[Bitwise.scala 47:55]
  wire [2:0] _allValidBitsPopCnt_T_5 = _GEN_10 + _allValidBitsPopCnt_T_3; // @[Bitwise.scala 47:55]
  reg  DSTWB; // @[DetectionUnit.scala 239:22]
  reg  context_switch; // @[DetectionUnit.scala 244:31]
  wire  _T = wr_TagOld_outBuf != wr_Tag_outBuf; // @[DetectionUnit.scala 245:25]
  wire  _T_1 = allValidBitsPopCnt > 2'h1; // @[DetectionUnit.scala 262:29]
  wire  _GEN_8 = _T_1 | DSTWB; // @[DetectionUnit.scala 268:35 DetectionUnit.scala 269:13 DetectionUnit.scala 239:22]
  reg [7:0] addr2; // @[DetectionUnit.scala 299:22]
  reg [7:0] addr3; // @[DetectionUnit.scala 300:22]
  reg [7:0] addr4; // @[DetectionUnit.scala 301:22]
  reg [7:0] addr5; // @[DetectionUnit.scala 302:22]
  reg [7:0] addr6; // @[DetectionUnit.scala 303:22]
  reg [1:0] tag2; // @[DetectionUnit.scala 308:21]
  reg [1:0] tag3; // @[DetectionUnit.scala 309:21]
  reg [1:0] tag4; // @[DetectionUnit.scala 310:21]
  reg [1:0] tag5; // @[DetectionUnit.scala 311:21]
  reg  D2_0_validBit; // @[DetectionUnit.scala 317:19]
  reg [3:0] D2_0_data; // @[DetectionUnit.scala 317:19]
  reg  D2_1_validBit; // @[DetectionUnit.scala 317:19]
  reg [3:0] D2_1_data; // @[DetectionUnit.scala 317:19]
  reg  D2_2_validBit; // @[DetectionUnit.scala 317:19]
  reg [3:0] D2_2_data; // @[DetectionUnit.scala 317:19]
  reg  D3_0_validBit; // @[DetectionUnit.scala 318:19]
  reg [3:0] D3_0_data; // @[DetectionUnit.scala 318:19]
  reg  D3_1_validBit; // @[DetectionUnit.scala 318:19]
  reg [3:0] D3_1_data; // @[DetectionUnit.scala 318:19]
  reg  D3_2_validBit; // @[DetectionUnit.scala 318:19]
  reg [3:0] D3_2_data; // @[DetectionUnit.scala 318:19]
  reg  D4_0_validBit; // @[DetectionUnit.scala 319:19]
  reg [3:0] D4_0_data; // @[DetectionUnit.scala 319:19]
  reg  D4_1_validBit; // @[DetectionUnit.scala 319:19]
  reg [3:0] D4_1_data; // @[DetectionUnit.scala 319:19]
  reg  D4_2_validBit; // @[DetectionUnit.scala 319:19]
  reg [3:0] D4_2_data; // @[DetectionUnit.scala 319:19]
  reg  D5_0_validBit; // @[DetectionUnit.scala 320:19]
  reg [3:0] D5_0_data; // @[DetectionUnit.scala 320:19]
  reg  D5_1_validBit; // @[DetectionUnit.scala 320:19]
  reg [3:0] D5_1_data; // @[DetectionUnit.scala 320:19]
  reg  D5_2_validBit; // @[DetectionUnit.scala 320:19]
  reg [3:0] D5_2_data; // @[DetectionUnit.scala 320:19]
  assign inputDataBuffer_0_validBit_MPORT_3_addr = inputDataBuffer_0_validBit_MPORT_3_addr_pipe_0;
  assign inputDataBuffer_0_validBit_MPORT_3_data = inputDataBuffer_0_validBit[inputDataBuffer_0_validBit_MPORT_3_addr]; // @[DetectionUnit.scala 167:36]
  assign inputDataBuffer_0_validBit_MPORT_data = io_wr_D_inBuf_0_validBit;
  assign inputDataBuffer_0_validBit_MPORT_addr = wr_Addr_inBuf;
  assign inputDataBuffer_0_validBit_MPORT_mask = 1'h1;
  assign inputDataBuffer_0_validBit_MPORT_en = 1'h1;
  assign inputDataBuffer_0_data_MPORT_3_addr = inputDataBuffer_0_data_MPORT_3_addr_pipe_0;
  assign inputDataBuffer_0_data_MPORT_3_data = inputDataBuffer_0_data[inputDataBuffer_0_data_MPORT_3_addr]; // @[DetectionUnit.scala 167:36]
  assign inputDataBuffer_0_data_MPORT_data = io_wr_D_inBuf_0_data;
  assign inputDataBuffer_0_data_MPORT_addr = wr_Addr_inBuf;
  assign inputDataBuffer_0_data_MPORT_mask = 1'h1;
  assign inputDataBuffer_0_data_MPORT_en = 1'h1;
  assign inputDataBuffer_1_validBit_MPORT_3_addr = inputDataBuffer_1_validBit_MPORT_3_addr_pipe_0;
  assign inputDataBuffer_1_validBit_MPORT_3_data = inputDataBuffer_1_validBit[inputDataBuffer_1_validBit_MPORT_3_addr]; // @[DetectionUnit.scala 167:36]
  assign inputDataBuffer_1_validBit_MPORT_data = io_wr_D_inBuf_1_validBit;
  assign inputDataBuffer_1_validBit_MPORT_addr = wr_Addr_inBuf;
  assign inputDataBuffer_1_validBit_MPORT_mask = 1'h1;
  assign inputDataBuffer_1_validBit_MPORT_en = 1'h1;
  assign inputDataBuffer_1_data_MPORT_3_addr = inputDataBuffer_1_data_MPORT_3_addr_pipe_0;
  assign inputDataBuffer_1_data_MPORT_3_data = inputDataBuffer_1_data[inputDataBuffer_1_data_MPORT_3_addr]; // @[DetectionUnit.scala 167:36]
  assign inputDataBuffer_1_data_MPORT_data = io_wr_D_inBuf_1_data;
  assign inputDataBuffer_1_data_MPORT_addr = wr_Addr_inBuf;
  assign inputDataBuffer_1_data_MPORT_mask = 1'h1;
  assign inputDataBuffer_1_data_MPORT_en = 1'h1;
  assign inputDataBuffer_2_validBit_MPORT_3_addr = inputDataBuffer_2_validBit_MPORT_3_addr_pipe_0;
  assign inputDataBuffer_2_validBit_MPORT_3_data = inputDataBuffer_2_validBit[inputDataBuffer_2_validBit_MPORT_3_addr]; // @[DetectionUnit.scala 167:36]
  assign inputDataBuffer_2_validBit_MPORT_data = io_wr_D_inBuf_2_validBit;
  assign inputDataBuffer_2_validBit_MPORT_addr = wr_Addr_inBuf;
  assign inputDataBuffer_2_validBit_MPORT_mask = 1'h1;
  assign inputDataBuffer_2_validBit_MPORT_en = 1'h1;
  assign inputDataBuffer_2_data_MPORT_3_addr = inputDataBuffer_2_data_MPORT_3_addr_pipe_0;
  assign inputDataBuffer_2_data_MPORT_3_data = inputDataBuffer_2_data[inputDataBuffer_2_data_MPORT_3_addr]; // @[DetectionUnit.scala 167:36]
  assign inputDataBuffer_2_data_MPORT_data = io_wr_D_inBuf_2_data;
  assign inputDataBuffer_2_data_MPORT_addr = wr_Addr_inBuf;
  assign inputDataBuffer_2_data_MPORT_mask = 1'h1;
  assign inputDataBuffer_2_data_MPORT_en = 1'h1;
  assign inputTagBuffer_rd_Tag_inBuf_MPORT_addr = inputTagBuffer_rd_Tag_inBuf_MPORT_addr_pipe_0;
  assign inputTagBuffer_rd_Tag_inBuf_MPORT_data = inputTagBuffer[inputTagBuffer_rd_Tag_inBuf_MPORT_addr]; // @[DetectionUnit.scala 168:35]
  assign inputTagBuffer_MPORT_1_data = io_wr_Tag_inBuf;
  assign inputTagBuffer_MPORT_1_addr = wr_Addr_inBuf_1;
  assign inputTagBuffer_MPORT_1_mask = 1'h1;
  assign inputTagBuffer_MPORT_1_en = 1'h1;
  assign outputDataBuffer_0_validBit_MPORT_2_addr = outputDataBuffer_0_validBit_MPORT_2_addr_pipe_0;
  assign outputDataBuffer_0_validBit_MPORT_2_data =
    outputDataBuffer_0_validBit[outputDataBuffer_0_validBit_MPORT_2_addr]; // @[DetectionUnit.scala 170:37]
  assign outputDataBuffer_0_validBit_MPORT_4_data = wr_D_outBuf_0_validBit;
  assign outputDataBuffer_0_validBit_MPORT_4_addr = wr_Addr_outBuf;
  assign outputDataBuffer_0_validBit_MPORT_4_mask = 1'h1;
  assign outputDataBuffer_0_validBit_MPORT_4_en = 1'h1;
  assign outputDataBuffer_0_data_MPORT_2_addr = outputDataBuffer_0_data_MPORT_2_addr_pipe_0;
  assign outputDataBuffer_0_data_MPORT_2_data = outputDataBuffer_0_data[outputDataBuffer_0_data_MPORT_2_addr]; // @[DetectionUnit.scala 170:37]
  assign outputDataBuffer_0_data_MPORT_4_data = wr_D_outBuf_0_data;
  assign outputDataBuffer_0_data_MPORT_4_addr = wr_Addr_outBuf;
  assign outputDataBuffer_0_data_MPORT_4_mask = 1'h1;
  assign outputDataBuffer_0_data_MPORT_4_en = 1'h1;
  assign outputDataBuffer_1_validBit_MPORT_2_addr = outputDataBuffer_1_validBit_MPORT_2_addr_pipe_0;
  assign outputDataBuffer_1_validBit_MPORT_2_data =
    outputDataBuffer_1_validBit[outputDataBuffer_1_validBit_MPORT_2_addr]; // @[DetectionUnit.scala 170:37]
  assign outputDataBuffer_1_validBit_MPORT_4_data = wr_D_outBuf_1_validBit;
  assign outputDataBuffer_1_validBit_MPORT_4_addr = wr_Addr_outBuf;
  assign outputDataBuffer_1_validBit_MPORT_4_mask = 1'h1;
  assign outputDataBuffer_1_validBit_MPORT_4_en = 1'h1;
  assign outputDataBuffer_1_data_MPORT_2_addr = outputDataBuffer_1_data_MPORT_2_addr_pipe_0;
  assign outputDataBuffer_1_data_MPORT_2_data = outputDataBuffer_1_data[outputDataBuffer_1_data_MPORT_2_addr]; // @[DetectionUnit.scala 170:37]
  assign outputDataBuffer_1_data_MPORT_4_data = wr_D_outBuf_1_data;
  assign outputDataBuffer_1_data_MPORT_4_addr = wr_Addr_outBuf;
  assign outputDataBuffer_1_data_MPORT_4_mask = 1'h1;
  assign outputDataBuffer_1_data_MPORT_4_en = 1'h1;
  assign outputDataBuffer_2_validBit_MPORT_2_addr = outputDataBuffer_2_validBit_MPORT_2_addr_pipe_0;
  assign outputDataBuffer_2_validBit_MPORT_2_data =
    outputDataBuffer_2_validBit[outputDataBuffer_2_validBit_MPORT_2_addr]; // @[DetectionUnit.scala 170:37]
  assign outputDataBuffer_2_validBit_MPORT_4_data = wr_D_outBuf_2_validBit;
  assign outputDataBuffer_2_validBit_MPORT_4_addr = wr_Addr_outBuf;
  assign outputDataBuffer_2_validBit_MPORT_4_mask = 1'h1;
  assign outputDataBuffer_2_validBit_MPORT_4_en = 1'h1;
  assign outputDataBuffer_2_data_MPORT_2_addr = outputDataBuffer_2_data_MPORT_2_addr_pipe_0;
  assign outputDataBuffer_2_data_MPORT_2_data = outputDataBuffer_2_data[outputDataBuffer_2_data_MPORT_2_addr]; // @[DetectionUnit.scala 170:37]
  assign outputDataBuffer_2_data_MPORT_4_data = wr_D_outBuf_2_data;
  assign outputDataBuffer_2_data_MPORT_4_addr = wr_Addr_outBuf;
  assign outputDataBuffer_2_data_MPORT_4_mask = 1'h1;
  assign outputDataBuffer_2_data_MPORT_4_en = 1'h1;
  assign io_rd_D_outBuf_0_validBit = outputDataBuffer_0_validBit_MPORT_2_data; // @[DetectionUnit.scala 193:18]
  assign io_rd_D_outBuf_0_data = outputDataBuffer_0_data_MPORT_2_data; // @[DetectionUnit.scala 193:18]
  assign io_rd_D_outBuf_1_validBit = outputDataBuffer_1_validBit_MPORT_2_data; // @[DetectionUnit.scala 193:18]
  assign io_rd_D_outBuf_1_data = outputDataBuffer_1_data_MPORT_2_data; // @[DetectionUnit.scala 193:18]
  assign io_rd_D_outBuf_2_validBit = outputDataBuffer_2_validBit_MPORT_2_data; // @[DetectionUnit.scala 193:18]
  assign io_rd_D_outBuf_2_data = outputDataBuffer_2_data_MPORT_2_data; // @[DetectionUnit.scala 193:18]
  assign io_context_switch = context_switch; // @[DetectionUnit.scala 283:21]
  assign io_wr_AddrFlwUp_outBuf = wr_AddrFlwUp_outBuf; // @[DetectionUnit.scala 284:26]
  assign io_validcnt = allValidBitsPopCnt; // @[DetectionUnit.scala 281:15]
  assign io_DSTWB = DSTWB; // @[DetectionUnit.scala 282:12]
  always @(posedge clock) begin
    if(inputDataBuffer_0_validBit_MPORT_en & inputDataBuffer_0_validBit_MPORT_mask) begin
      inputDataBuffer_0_validBit[inputDataBuffer_0_validBit_MPORT_addr] <= inputDataBuffer_0_validBit_MPORT_data; // @[DetectionUnit.scala 167:36]
    end
    inputDataBuffer_0_validBit_MPORT_3_en_pipe_0 <= io_beginRun;
    if (io_beginRun) begin
      inputDataBuffer_0_validBit_MPORT_3_addr_pipe_0 <= addr1;
    end
    if(inputDataBuffer_0_data_MPORT_en & inputDataBuffer_0_data_MPORT_mask) begin
      inputDataBuffer_0_data[inputDataBuffer_0_data_MPORT_addr] <= inputDataBuffer_0_data_MPORT_data; // @[DetectionUnit.scala 167:36]
    end
    inputDataBuffer_0_data_MPORT_3_en_pipe_0 <= io_beginRun;
    if (io_beginRun) begin
      inputDataBuffer_0_data_MPORT_3_addr_pipe_0 <= addr1;
    end
    if(inputDataBuffer_1_validBit_MPORT_en & inputDataBuffer_1_validBit_MPORT_mask) begin
      inputDataBuffer_1_validBit[inputDataBuffer_1_validBit_MPORT_addr] <= inputDataBuffer_1_validBit_MPORT_data; // @[DetectionUnit.scala 167:36]
    end
    inputDataBuffer_1_validBit_MPORT_3_en_pipe_0 <= io_beginRun;
    if (io_beginRun) begin
      inputDataBuffer_1_validBit_MPORT_3_addr_pipe_0 <= addr1;
    end
    if(inputDataBuffer_1_data_MPORT_en & inputDataBuffer_1_data_MPORT_mask) begin
      inputDataBuffer_1_data[inputDataBuffer_1_data_MPORT_addr] <= inputDataBuffer_1_data_MPORT_data; // @[DetectionUnit.scala 167:36]
    end
    inputDataBuffer_1_data_MPORT_3_en_pipe_0 <= io_beginRun;
    if (io_beginRun) begin
      inputDataBuffer_1_data_MPORT_3_addr_pipe_0 <= addr1;
    end
    if(inputDataBuffer_2_validBit_MPORT_en & inputDataBuffer_2_validBit_MPORT_mask) begin
      inputDataBuffer_2_validBit[inputDataBuffer_2_validBit_MPORT_addr] <= inputDataBuffer_2_validBit_MPORT_data; // @[DetectionUnit.scala 167:36]
    end
    inputDataBuffer_2_validBit_MPORT_3_en_pipe_0 <= io_beginRun;
    if (io_beginRun) begin
      inputDataBuffer_2_validBit_MPORT_3_addr_pipe_0 <= addr1;
    end
    if(inputDataBuffer_2_data_MPORT_en & inputDataBuffer_2_data_MPORT_mask) begin
      inputDataBuffer_2_data[inputDataBuffer_2_data_MPORT_addr] <= inputDataBuffer_2_data_MPORT_data; // @[DetectionUnit.scala 167:36]
    end
    inputDataBuffer_2_data_MPORT_3_en_pipe_0 <= io_beginRun;
    if (io_beginRun) begin
      inputDataBuffer_2_data_MPORT_3_addr_pipe_0 <= addr1;
    end
    if(inputTagBuffer_MPORT_1_en & inputTagBuffer_MPORT_1_mask) begin
      inputTagBuffer[inputTagBuffer_MPORT_1_addr] <= inputTagBuffer_MPORT_1_data; // @[DetectionUnit.scala 168:35]
    end
    inputTagBuffer_rd_Tag_inBuf_MPORT_en_pipe_0 <= io_beginRun;
    if (io_beginRun) begin
      inputTagBuffer_rd_Tag_inBuf_MPORT_addr_pipe_0 <= rd_Addr_inBuf_1;
    end
    if(outputDataBuffer_0_validBit_MPORT_4_en & outputDataBuffer_0_validBit_MPORT_4_mask) begin
      outputDataBuffer_0_validBit[outputDataBuffer_0_validBit_MPORT_4_addr] <= outputDataBuffer_0_validBit_MPORT_4_data; // @[DetectionUnit.scala 170:37]
    end
    outputDataBuffer_0_validBit_MPORT_2_addr_pipe_0 <= io_rd_Addr_outBuf;
    if(outputDataBuffer_0_data_MPORT_4_en & outputDataBuffer_0_data_MPORT_4_mask) begin
      outputDataBuffer_0_data[outputDataBuffer_0_data_MPORT_4_addr] <= outputDataBuffer_0_data_MPORT_4_data; // @[DetectionUnit.scala 170:37]
    end
    outputDataBuffer_0_data_MPORT_2_addr_pipe_0 <= io_rd_Addr_outBuf;
    if(outputDataBuffer_1_validBit_MPORT_4_en & outputDataBuffer_1_validBit_MPORT_4_mask) begin
      outputDataBuffer_1_validBit[outputDataBuffer_1_validBit_MPORT_4_addr] <= outputDataBuffer_1_validBit_MPORT_4_data; // @[DetectionUnit.scala 170:37]
    end
    outputDataBuffer_1_validBit_MPORT_2_addr_pipe_0 <= io_rd_Addr_outBuf;
    if(outputDataBuffer_1_data_MPORT_4_en & outputDataBuffer_1_data_MPORT_4_mask) begin
      outputDataBuffer_1_data[outputDataBuffer_1_data_MPORT_4_addr] <= outputDataBuffer_1_data_MPORT_4_data; // @[DetectionUnit.scala 170:37]
    end
    outputDataBuffer_1_data_MPORT_2_addr_pipe_0 <= io_rd_Addr_outBuf;
    if(outputDataBuffer_2_validBit_MPORT_4_en & outputDataBuffer_2_validBit_MPORT_4_mask) begin
      outputDataBuffer_2_validBit[outputDataBuffer_2_validBit_MPORT_4_addr] <= outputDataBuffer_2_validBit_MPORT_4_data; // @[DetectionUnit.scala 170:37]
    end
    outputDataBuffer_2_validBit_MPORT_2_addr_pipe_0 <= io_rd_Addr_outBuf;
    if(outputDataBuffer_2_data_MPORT_4_en & outputDataBuffer_2_data_MPORT_4_mask) begin
      outputDataBuffer_2_data[outputDataBuffer_2_data_MPORT_4_addr] <= outputDataBuffer_2_data_MPORT_4_data; // @[DetectionUnit.scala 170:37]
    end
    outputDataBuffer_2_data_MPORT_2_addr_pipe_0 <= io_rd_Addr_outBuf;
    if (reset) begin // @[DetectionUnit.scala 173:30]
      wr_Addr_inBuf <= 8'h0; // @[DetectionUnit.scala 173:30]
    end else if (io_wr_Addr_inBuf_en) begin // @[DetectionUnit.scala 185:28]
      wr_Addr_inBuf <= _wr_Addr_inBuf_T_1; // @[DetectionUnit.scala 189:19]
    end
    if (reset) begin // @[DetectionUnit.scala 174:32]
      wr_Addr_inBuf_1 <= 8'h0; // @[DetectionUnit.scala 174:32]
    end else if (io_wr_Addr_inBuf_en) begin // @[DetectionUnit.scala 185:28]
      wr_Addr_inBuf_1 <= _wr_Addr_inBuf_1_T_1; // @[DetectionUnit.scala 190:21]
    end
    if (reset) begin // @[DetectionUnit.scala 198:30]
      addr1 <= 8'h0; // @[DetectionUnit.scala 198:30]
    end else if (io_beginRun) begin // @[DetectionUnit.scala 207:20]
      addr1 <= _rd_Addr_inBuf_T_1; // @[DetectionUnit.scala 208:19]
    end
    if (reset) begin // @[DetectionUnit.scala 199:32]
      rd_Addr_inBuf_1 <= 8'h0; // @[DetectionUnit.scala 199:32]
    end else if (io_beginRun) begin // @[DetectionUnit.scala 207:20]
      rd_Addr_inBuf_1 <= _rd_Addr_inBuf_1_T_1; // @[DetectionUnit.scala 209:21]
    end
    D1_0_validBit <= inputDataBuffer_0_validBit_MPORT_3_data; // @[DetectionUnit.scala 205:14]
    D1_0_data <= inputDataBuffer_0_data_MPORT_3_data; // @[DetectionUnit.scala 205:14]
    D1_1_validBit <= inputDataBuffer_1_validBit_MPORT_3_data; // @[DetectionUnit.scala 205:14]
    D1_1_data <= inputDataBuffer_1_data_MPORT_3_data; // @[DetectionUnit.scala 205:14]
    D1_2_validBit <= inputDataBuffer_2_validBit_MPORT_3_data; // @[DetectionUnit.scala 205:14]
    D1_2_data <= inputDataBuffer_2_data_MPORT_3_data; // @[DetectionUnit.scala 205:14]
    if (reset) begin // @[DetectionUnit.scala 202:29]
      rd_Tag_inBuf <= 2'h0; // @[DetectionUnit.scala 202:29]
    end else begin
      rd_Tag_inBuf <= inputTagBuffer_rd_Tag_inBuf_MPORT_data; // @[DetectionUnit.scala 206:16]
    end
    if (reset) begin // @[DetectionUnit.scala 214:31]
      wr_Addr_outBuf <= 8'h0; // @[DetectionUnit.scala 214:31]
    end else begin
      wr_Addr_outBuf <= addr6; // @[DetectionUnit.scala 305:18]
    end
    wr_AddrReg_outBuf <= wr_Addr_outBuf; // @[DetectionUnit.scala 215:34]
    if (reset) begin // @[DetectionUnit.scala 216:36]
      wr_AddrFlwUp_outBuf <= 8'h0; // @[DetectionUnit.scala 216:36]
    end else if (wr_TagOld_outBuf != wr_Tag_outBuf) begin // @[DetectionUnit.scala 245:43]
      wr_AddrFlwUp_outBuf <= wr_AddrReg_outBuf; // @[DetectionUnit.scala 247:25]
    end
    wr_D_outBuf_0_validBit <= D5_0_validBit; // @[DetectionUnit.scala 323:15]
    wr_D_outBuf_0_data <= D5_0_data; // @[DetectionUnit.scala 323:15]
    wr_D_outBuf_1_validBit <= D5_1_validBit; // @[DetectionUnit.scala 323:15]
    wr_D_outBuf_1_data <= D5_1_data; // @[DetectionUnit.scala 323:15]
    wr_D_outBuf_2_validBit <= D5_2_validBit; // @[DetectionUnit.scala 323:15]
    wr_D_outBuf_2_data <= D5_2_data; // @[DetectionUnit.scala 323:15]
    if (reset) begin // @[DetectionUnit.scala 220:30]
      wr_Tag_outBuf <= 2'h0; // @[DetectionUnit.scala 220:30]
    end else begin
      wr_Tag_outBuf <= tag5; // @[DetectionUnit.scala 314:17]
    end
    if (reset) begin // @[DetectionUnit.scala 221:33]
      wr_TagOld_outBuf <= 2'h0; // @[DetectionUnit.scala 221:33]
    end else begin
      wr_TagOld_outBuf <= wr_Tag_outBuf; // @[DetectionUnit.scala 241:20]
    end
    if (reset) begin // @[DetectionUnit.scala 235:35]
      allValidBitsPopCnt <= 2'h0; // @[DetectionUnit.scala 235:35]
    end else begin
      allValidBitsPopCnt <= _allValidBitsPopCnt_T_5[1:0]; // @[DetectionUnit.scala 236:22]
    end
    if (reset) begin // @[DetectionUnit.scala 239:22]
      DSTWB <= 1'h0; // @[DetectionUnit.scala 239:22]
    end else if (context_switch) begin // @[DetectionUnit.scala 261:23]
      DSTWB <= _T_1;
    end else begin
      DSTWB <= _GEN_8;
    end
    context_switch <= reset | _T; // @[DetectionUnit.scala 244:31 DetectionUnit.scala 244:31]
    addr2 <= addr1; // @[DetectionUnit.scala 299:22]
    addr3 <= addr2; // @[DetectionUnit.scala 300:22]
    addr4 <= addr3; // @[DetectionUnit.scala 301:22]
    addr5 <= addr4; // @[DetectionUnit.scala 302:22]
    addr6 <= addr5; // @[DetectionUnit.scala 303:22]
    tag2 <= rd_Tag_inBuf; // @[DetectionUnit.scala 308:21]
    tag3 <= tag2; // @[DetectionUnit.scala 309:21]
    tag4 <= tag3; // @[DetectionUnit.scala 310:21]
    tag5 <= tag4; // @[DetectionUnit.scala 311:21]
    D2_0_validBit <= D1_0_validBit; // @[DetectionUnit.scala 317:19]
    D2_0_data <= D1_0_data; // @[DetectionUnit.scala 317:19]
    D2_1_validBit <= D1_1_validBit; // @[DetectionUnit.scala 317:19]
    D2_1_data <= D1_1_data; // @[DetectionUnit.scala 317:19]
    D2_2_validBit <= D1_2_validBit; // @[DetectionUnit.scala 317:19]
    D2_2_data <= D1_2_data; // @[DetectionUnit.scala 317:19]
    D3_0_validBit <= D2_0_validBit; // @[DetectionUnit.scala 318:19]
    D3_0_data <= D2_0_data; // @[DetectionUnit.scala 318:19]
    D3_1_validBit <= D2_1_validBit; // @[DetectionUnit.scala 318:19]
    D3_1_data <= D2_1_data; // @[DetectionUnit.scala 318:19]
    D3_2_validBit <= D2_2_validBit; // @[DetectionUnit.scala 318:19]
    D3_2_data <= D2_2_data; // @[DetectionUnit.scala 318:19]
    D4_0_validBit <= D3_0_validBit; // @[DetectionUnit.scala 319:19]
    D4_0_data <= D3_0_data; // @[DetectionUnit.scala 319:19]
    D4_1_validBit <= D3_1_validBit; // @[DetectionUnit.scala 319:19]
    D4_1_data <= D3_1_data; // @[DetectionUnit.scala 319:19]
    D4_2_validBit <= D3_2_validBit; // @[DetectionUnit.scala 319:19]
    D4_2_data <= D3_2_data; // @[DetectionUnit.scala 319:19]
    D5_0_validBit <= D4_0_validBit; // @[DetectionUnit.scala 320:19]
    D5_0_data <= D4_0_data; // @[DetectionUnit.scala 320:19]
    D5_1_validBit <= D4_1_validBit; // @[DetectionUnit.scala 320:19]
    D5_1_data <= D4_1_data; // @[DetectionUnit.scala 320:19]
    D5_2_validBit <= D4_2_validBit; // @[DetectionUnit.scala 320:19]
    D5_2_data <= D4_2_data; // @[DetectionUnit.scala 320:19]
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
    inputDataBuffer_0_validBit[initvar] = _RAND_0[0:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    inputDataBuffer_0_data[initvar] = _RAND_3[3:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    inputDataBuffer_1_validBit[initvar] = _RAND_6[0:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    inputDataBuffer_1_data[initvar] = _RAND_9[3:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    inputDataBuffer_2_validBit[initvar] = _RAND_12[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    inputDataBuffer_2_data[initvar] = _RAND_15[3:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    inputTagBuffer[initvar] = _RAND_18[1:0];
  _RAND_21 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    outputDataBuffer_0_validBit[initvar] = _RAND_21[0:0];
  _RAND_23 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    outputDataBuffer_0_data[initvar] = _RAND_23[3:0];
  _RAND_25 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    outputDataBuffer_1_validBit[initvar] = _RAND_25[0:0];
  _RAND_27 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    outputDataBuffer_1_data[initvar] = _RAND_27[3:0];
  _RAND_29 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    outputDataBuffer_2_validBit[initvar] = _RAND_29[0:0];
  _RAND_31 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    outputDataBuffer_2_data[initvar] = _RAND_31[3:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  inputDataBuffer_0_validBit_MPORT_3_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  inputDataBuffer_0_validBit_MPORT_3_addr_pipe_0 = _RAND_2[7:0];
  _RAND_4 = {1{`RANDOM}};
  inputDataBuffer_0_data_MPORT_3_en_pipe_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  inputDataBuffer_0_data_MPORT_3_addr_pipe_0 = _RAND_5[7:0];
  _RAND_7 = {1{`RANDOM}};
  inputDataBuffer_1_validBit_MPORT_3_en_pipe_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  inputDataBuffer_1_validBit_MPORT_3_addr_pipe_0 = _RAND_8[7:0];
  _RAND_10 = {1{`RANDOM}};
  inputDataBuffer_1_data_MPORT_3_en_pipe_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  inputDataBuffer_1_data_MPORT_3_addr_pipe_0 = _RAND_11[7:0];
  _RAND_13 = {1{`RANDOM}};
  inputDataBuffer_2_validBit_MPORT_3_en_pipe_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  inputDataBuffer_2_validBit_MPORT_3_addr_pipe_0 = _RAND_14[7:0];
  _RAND_16 = {1{`RANDOM}};
  inputDataBuffer_2_data_MPORT_3_en_pipe_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  inputDataBuffer_2_data_MPORT_3_addr_pipe_0 = _RAND_17[7:0];
  _RAND_19 = {1{`RANDOM}};
  inputTagBuffer_rd_Tag_inBuf_MPORT_en_pipe_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  inputTagBuffer_rd_Tag_inBuf_MPORT_addr_pipe_0 = _RAND_20[7:0];
  _RAND_22 = {1{`RANDOM}};
  outputDataBuffer_0_validBit_MPORT_2_addr_pipe_0 = _RAND_22[7:0];
  _RAND_24 = {1{`RANDOM}};
  outputDataBuffer_0_data_MPORT_2_addr_pipe_0 = _RAND_24[7:0];
  _RAND_26 = {1{`RANDOM}};
  outputDataBuffer_1_validBit_MPORT_2_addr_pipe_0 = _RAND_26[7:0];
  _RAND_28 = {1{`RANDOM}};
  outputDataBuffer_1_data_MPORT_2_addr_pipe_0 = _RAND_28[7:0];
  _RAND_30 = {1{`RANDOM}};
  outputDataBuffer_2_validBit_MPORT_2_addr_pipe_0 = _RAND_30[7:0];
  _RAND_32 = {1{`RANDOM}};
  outputDataBuffer_2_data_MPORT_2_addr_pipe_0 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  wr_Addr_inBuf = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  wr_Addr_inBuf_1 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  addr1 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  rd_Addr_inBuf_1 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  D1_0_validBit = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  D1_0_data = _RAND_38[3:0];
  _RAND_39 = {1{`RANDOM}};
  D1_1_validBit = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  D1_1_data = _RAND_40[3:0];
  _RAND_41 = {1{`RANDOM}};
  D1_2_validBit = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  D1_2_data = _RAND_42[3:0];
  _RAND_43 = {1{`RANDOM}};
  rd_Tag_inBuf = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  wr_Addr_outBuf = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  wr_AddrReg_outBuf = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  wr_AddrFlwUp_outBuf = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  wr_D_outBuf_0_validBit = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  wr_D_outBuf_0_data = _RAND_48[3:0];
  _RAND_49 = {1{`RANDOM}};
  wr_D_outBuf_1_validBit = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  wr_D_outBuf_1_data = _RAND_50[3:0];
  _RAND_51 = {1{`RANDOM}};
  wr_D_outBuf_2_validBit = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  wr_D_outBuf_2_data = _RAND_52[3:0];
  _RAND_53 = {1{`RANDOM}};
  wr_Tag_outBuf = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  wr_TagOld_outBuf = _RAND_54[1:0];
  _RAND_55 = {1{`RANDOM}};
  allValidBitsPopCnt = _RAND_55[1:0];
  _RAND_56 = {1{`RANDOM}};
  DSTWB = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  context_switch = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  addr2 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  addr3 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  addr4 = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  addr5 = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  addr6 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  tag2 = _RAND_63[1:0];
  _RAND_64 = {1{`RANDOM}};
  tag3 = _RAND_64[1:0];
  _RAND_65 = {1{`RANDOM}};
  tag4 = _RAND_65[1:0];
  _RAND_66 = {1{`RANDOM}};
  tag5 = _RAND_66[1:0];
  _RAND_67 = {1{`RANDOM}};
  D2_0_validBit = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  D2_0_data = _RAND_68[3:0];
  _RAND_69 = {1{`RANDOM}};
  D2_1_validBit = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  D2_1_data = _RAND_70[3:0];
  _RAND_71 = {1{`RANDOM}};
  D2_2_validBit = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  D2_2_data = _RAND_72[3:0];
  _RAND_73 = {1{`RANDOM}};
  D3_0_validBit = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  D3_0_data = _RAND_74[3:0];
  _RAND_75 = {1{`RANDOM}};
  D3_1_validBit = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  D3_1_data = _RAND_76[3:0];
  _RAND_77 = {1{`RANDOM}};
  D3_2_validBit = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  D3_2_data = _RAND_78[3:0];
  _RAND_79 = {1{`RANDOM}};
  D4_0_validBit = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  D4_0_data = _RAND_80[3:0];
  _RAND_81 = {1{`RANDOM}};
  D4_1_validBit = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  D4_1_data = _RAND_82[3:0];
  _RAND_83 = {1{`RANDOM}};
  D4_2_validBit = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  D4_2_data = _RAND_84[3:0];
  _RAND_85 = {1{`RANDOM}};
  D5_0_validBit = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  D5_0_data = _RAND_86[3:0];
  _RAND_87 = {1{`RANDOM}};
  D5_1_validBit = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  D5_1_data = _RAND_88[3:0];
  _RAND_89 = {1{`RANDOM}};
  D5_2_validBit = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  D5_2_data = _RAND_90[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
