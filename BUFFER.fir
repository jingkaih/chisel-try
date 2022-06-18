;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit BUFFER : 
  module BUFFER : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip wr_D : {validBit : UInt<1>, data : UInt<64>}[3], flip wr_Addr : UInt<8>, flip wr_en : UInt<1>, flip rd_Addr : UInt<8>, rd_D : {validBit : UInt<1>, data : UInt<64>}[3]}
    
    cmem Buffer : {validBit : UInt<1>, data : UInt<64>}[3][256] @[BUFFER.scala 17:19]
    infer mport MPORT = Buffer[io.wr_Addr], clock @[BUFFER.scala 20:9]
    MPORT[0].data is invalid @[BUFFER.scala 20:22]
    MPORT[0].validBit is invalid @[BUFFER.scala 20:22]
    MPORT[1].data is invalid @[BUFFER.scala 20:22]
    MPORT[1].validBit is invalid @[BUFFER.scala 20:22]
    MPORT[2].data is invalid @[BUFFER.scala 20:22]
    MPORT[2].validBit is invalid @[BUFFER.scala 20:22]
    when io.wr_en : @[BUFFER.scala 27:17]
      infer mport MPORT_1 = Buffer[io.wr_Addr], clock @[BUFFER.scala 28:11]
      MPORT_1[0].data <= io.wr_D[0].data @[BUFFER.scala 28:24]
      MPORT_1[0].validBit <= io.wr_D[0].validBit @[BUFFER.scala 28:24]
      MPORT_1[1].data <= io.wr_D[1].data @[BUFFER.scala 28:24]
      MPORT_1[1].validBit <= io.wr_D[1].validBit @[BUFFER.scala 28:24]
      MPORT_1[2].data <= io.wr_D[2].data @[BUFFER.scala 28:24]
      MPORT_1[2].validBit <= io.wr_D[2].validBit @[BUFFER.scala 28:24]
      skip @[BUFFER.scala 27:17]
    infer mport MPORT_2 = Buffer[io.rd_Addr], clock @[BUFFER.scala 32:20]
    io.rd_D[0].data <= MPORT_2[0].data @[BUFFER.scala 32:11]
    io.rd_D[0].validBit <= MPORT_2[0].validBit @[BUFFER.scala 32:11]
    io.rd_D[1].data <= MPORT_2[1].data @[BUFFER.scala 32:11]
    io.rd_D[1].validBit <= MPORT_2[1].validBit @[BUFFER.scala 32:11]
    io.rd_D[2].data <= MPORT_2[2].data @[BUFFER.scala 32:11]
    io.rd_D[2].validBit <= MPORT_2[2].validBit @[BUFFER.scala 32:11]
    
