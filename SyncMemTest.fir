;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit SyncMemTest : 
  module SyncMemTest : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip wr_D_inBuf : UInt<4>[3], flip wr_Addr_inBuf_en : UInt<1>, rd_D_inBuf : UInt<4>[3], flip rd_Addr_inBuf : UInt<8>}
    
    smem inputDataBuffer : UInt<4>[3][256], undefined @[SyncMemTest.scala 15:36]
    reg wr_Addr_inBuf : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[SyncMemTest.scala 16:30]
    when io.wr_Addr_inBuf_en : @[SyncMemTest.scala 19:28]
      write mport MPORT = inputDataBuffer[wr_Addr_inBuf], clock
      MPORT[0] <= io.wr_D_inBuf[0]
      MPORT[1] <= io.wr_D_inBuf[1]
      MPORT[2] <= io.wr_D_inBuf[2]
      node _wr_Addr_inBuf_T = add(wr_Addr_inBuf, UInt<1>("h01")) @[SyncMemTest.scala 21:36]
      node _wr_Addr_inBuf_T_1 = tail(_wr_Addr_inBuf_T, 1) @[SyncMemTest.scala 21:36]
      wr_Addr_inBuf <= _wr_Addr_inBuf_T_1 @[SyncMemTest.scala 21:19]
      skip @[SyncMemTest.scala 19:28]
    read mport MPORT_1 = inputDataBuffer[io.rd_Addr_inBuf], clock @[SyncMemTest.scala 23:40]
    io.rd_D_inBuf[0] <= MPORT_1[0] @[SyncMemTest.scala 23:17]
    io.rd_D_inBuf[1] <= MPORT_1[1] @[SyncMemTest.scala 23:17]
    io.rd_D_inBuf[2] <= MPORT_1[2] @[SyncMemTest.scala 23:17]
    
