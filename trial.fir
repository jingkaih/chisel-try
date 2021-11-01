;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit trial : 
  module trial : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<64>, out : UInt<64>, flip opcode : UInt<1>}
    
    reg reg : UInt<64>, clock @[trial.scala 11:16]
    reg <= io.in @[trial.scala 12:7]
    node _T = eq(io.opcode, UInt<1>("h00")) @[trial.scala 13:18]
    when _T : @[trial.scala 13:30]
      io.out <= io.in @[trial.scala 14:12]
      skip @[trial.scala 13:30]
    else : @[trial.scala 15:35]
      node _T_1 = eq(io.opcode, UInt<1>("h01")) @[trial.scala 15:24]
      when _T_1 : @[trial.scala 15:35]
        io.out <= reg @[trial.scala 16:12]
        skip @[trial.scala 15:35]
      else : @[trial.scala 17:14]
        io.out <= io.in @[trial.scala 18:12]
        skip @[trial.scala 17:14]
    
