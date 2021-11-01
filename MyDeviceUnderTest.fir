;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit MyDeviceUnderTest : 
  module MyDeviceUnderTest : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip imgIn : SInt<8>, flip weight : SInt<8>, flip partialSumFromUp : SInt<16>, partialSumToBelow : SInt<16>, imgForward : SInt<8>}
    
    reg weightReg : SInt<8>, clock @[MyDeviceUnderTest.scala 32:22]
    weightReg <= io.weight @[MyDeviceUnderTest.scala 33:13]
    reg imgReg : SInt<8>, clock @[MyDeviceUnderTest.scala 35:19]
    imgReg <= io.imgIn @[MyDeviceUnderTest.scala 36:10]
    io.imgForward <= imgReg @[MyDeviceUnderTest.scala 37:17]
    reg sumReg : SInt<16>, clock with : (reset => (reset, asSInt(UInt<16>("h00")))) @[MyDeviceUnderTest.scala 39:23]
    node _sumReg_T = mul(imgReg, weightReg) @[MyDeviceUnderTest.scala 41:20]
    node _sumReg_T_1 = add(_sumReg_T, io.partialSumFromUp) @[MyDeviceUnderTest.scala 41:32]
    node _sumReg_T_2 = tail(_sumReg_T_1, 1) @[MyDeviceUnderTest.scala 41:32]
    node _sumReg_T_3 = asSInt(_sumReg_T_2) @[MyDeviceUnderTest.scala 41:32]
    sumReg <= _sumReg_T_3 @[MyDeviceUnderTest.scala 41:10]
    io.partialSumToBelow <= sumReg @[MyDeviceUnderTest.scala 43:24]
    
