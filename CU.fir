;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit CU : 
  module CU : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip run : UInt<1>, flip wr_PC1 : UInt<8>, flip wr_PC1_en : UInt<1>, rd_PC6 : UInt<8>}
    
    reg PC1 : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[CU.scala 12:20]
    reg PC2 : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[CU.scala 13:20]
    reg PC3 : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[CU.scala 14:20]
    reg PC4 : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[CU.scala 15:20]
    reg PC5 : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[CU.scala 16:20]
    reg PC6 : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[CU.scala 17:20]
    reg run2 : UInt<1>, clock @[CU.scala 20:21]
    run2 <= io.run @[CU.scala 20:21]
    reg run3_REG : UInt<1>, clock @[CU.scala 21:29]
    run3_REG <= io.run @[CU.scala 21:29]
    reg run3 : UInt<1>, clock @[CU.scala 21:21]
    run3 <= run3_REG @[CU.scala 21:21]
    reg run4_REG : UInt<1>, clock @[CU.scala 22:37]
    run4_REG <= io.run @[CU.scala 22:37]
    reg run4_REG_1 : UInt<1>, clock @[CU.scala 22:29]
    run4_REG_1 <= run4_REG @[CU.scala 22:29]
    reg run4 : UInt<1>, clock @[CU.scala 22:21]
    run4 <= run4_REG_1 @[CU.scala 22:21]
    reg run5_REG : UInt<1>, clock @[CU.scala 23:45]
    run5_REG <= io.run @[CU.scala 23:45]
    reg run5_REG_1 : UInt<1>, clock @[CU.scala 23:37]
    run5_REG_1 <= run5_REG @[CU.scala 23:37]
    reg run5_REG_2 : UInt<1>, clock @[CU.scala 23:29]
    run5_REG_2 <= run5_REG_1 @[CU.scala 23:29]
    reg run5 : UInt<1>, clock @[CU.scala 23:21]
    run5 <= run5_REG_2 @[CU.scala 23:21]
    reg run6_REG : UInt<1>, clock @[CU.scala 24:53]
    run6_REG <= io.run @[CU.scala 24:53]
    reg run6_REG_1 : UInt<1>, clock @[CU.scala 24:45]
    run6_REG_1 <= run6_REG @[CU.scala 24:45]
    reg run6_REG_2 : UInt<1>, clock @[CU.scala 24:37]
    run6_REG_2 <= run6_REG_1 @[CU.scala 24:37]
    reg run6_REG_3 : UInt<1>, clock @[CU.scala 24:29]
    run6_REG_3 <= run6_REG_2 @[CU.scala 24:29]
    reg run6 : UInt<1>, clock @[CU.scala 24:21]
    run6 <= run6_REG_3 @[CU.scala 24:21]
    when io.run : @[CU.scala 26:13]
      when io.wr_PC1_en : @[CU.scala 27:23]
        PC1 <= io.wr_PC1 @[CU.scala 28:11]
        skip @[CU.scala 27:23]
      else : @[CU.scala 29:17]
        node _PC1_T = add(PC1, UInt<1>("h01")) @[CU.scala 30:18]
        node _PC1_T_1 = tail(_PC1_T, 1) @[CU.scala 30:18]
        PC1 <= _PC1_T_1 @[CU.scala 30:11]
        skip @[CU.scala 29:17]
      skip @[CU.scala 26:13]
    else : @[CU.scala 32:14]
      PC1 <= PC1 @[CU.scala 33:9]
      skip @[CU.scala 32:14]
    when run2 : @[CU.scala 36:13]
      PC2 <= PC1 @[CU.scala 38:9]
      skip @[CU.scala 36:13]
    else : @[CU.scala 39:14]
      PC2 <= PC2 @[CU.scala 40:9]
      skip @[CU.scala 39:14]
    when run3 : @[CU.scala 43:13]
      PC3 <= PC2 @[CU.scala 45:9]
      skip @[CU.scala 43:13]
    else : @[CU.scala 46:14]
      PC3 <= PC3 @[CU.scala 47:9]
      skip @[CU.scala 46:14]
    when run4 : @[CU.scala 50:13]
      PC4 <= PC3 @[CU.scala 52:9]
      skip @[CU.scala 50:13]
    else : @[CU.scala 53:14]
      PC4 <= PC4 @[CU.scala 54:9]
      skip @[CU.scala 53:14]
    when run5 : @[CU.scala 57:13]
      PC5 <= PC4 @[CU.scala 59:9]
      skip @[CU.scala 57:13]
    else : @[CU.scala 60:14]
      PC5 <= PC5 @[CU.scala 61:9]
      skip @[CU.scala 60:14]
    when run6 : @[CU.scala 64:13]
      PC6 <= PC5 @[CU.scala 66:9]
      skip @[CU.scala 64:13]
    else : @[CU.scala 67:14]
      PC6 <= PC6 @[CU.scala 68:9]
      skip @[CU.scala 67:14]
    io.rd_PC6 <= PC6 @[CU.scala 71:13]
    
