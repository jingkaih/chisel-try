package mypack

import chisel3._
import chisel3.util._
//import chisel3.tester._
//import chisel3.tester.RawTester.test

//class MyDeviceUnderTest extends Module {
//  val io = IO(new Bundle() {
//    val a = Input(UInt(1.W))
//    val out = Output(UInt(8.W))

//  })
//  val can_be_negative = true
//  val number = RegInit (if( can_be_negative ) -6.S(8.W) else 10.U(8.W))
//  when(io.a === 0.U){
//    io.out := number
//  } .otherwise{
//    io.out := 0.U
//  }
//
//}
//weights-stationary arithmetic
class MyDeviceUnderTest(imgType: Int, weightType: Int, sumType:Int) extends Module {
  val io = IO(new Bundle {
    val imgIn = Input(SInt(imgType.W))
    val weight = Input(SInt(weightType.W))
    val partialSumFromUp = Input(SInt(sumType.W))
    val partialSumToBelow = Output(SInt(sumType.W))//pass to the PE below
    val imgForward = Output(SInt(imgType.W))//forwarding to next PE
  })

  val weightReg = Reg(SInt(weightType.W))
  weightReg := io.weight

  val imgReg = Reg(SInt(imgType.W))
  imgReg := io.imgIn
  io.imgForward := imgReg

  val sumReg = RegInit(0.S(sumType.W))

  sumReg := imgReg * weightReg + io.partialSumFromUp

  io.partialSumToBelow := sumReg
//do some saturating

//  val register = Reg(UInt(12.W))
//  register := io.in + 1.U
//  io.out := register
}



class ArrayOfPEs extends Module{            //2*2 PE array
  val io = IO(new Bundle {
    val imgIn1 = Input(SInt(8.W))
    val imgIn2 = Input(SInt(8.W))
    val weight1 = Input(SInt(8.W))
    val weight2 = Input(SInt(8.W))
    val weight3 = Input(SInt(8.W))
    val weight4 = Input(SInt(8.W))
    //     val partialSumFromUp = Input(SInt(sumType.W))
    val finalSum1 = Output(SInt(16.W))//pass to the PE below
    val finalSum2 = Output(SInt(16.W))//pass to the PE below
    //val imgForward = Output(SInt(imgType.W))//forwarding to next PE
  })

  val PE11 = Module (new MyDeviceUnderTest(8,8,16))
  val PE12 = Module (new MyDeviceUnderTest(8,8,16))
  val PE21 = Module (new MyDeviceUnderTest(8,8,16))
  val PE22 = Module (new MyDeviceUnderTest(8,8,16))

  PE11.io.imgIn := io.imgIn1
  PE21.io.imgIn := io.imgIn2

  PE11.io.weight := io.weight1
  PE12.io.weight := io.weight2
  PE21.io.weight := io.weight3
  PE22.io.weight := io.weight3

  val initialSum = 0.S(8.W)
  PE11.io.partialSumFromUp := initialSum
  PE12.io.partialSumFromUp := initialSum
  PE21.io.partialSumFromUp := PE11.io.partialSumToBelow
  PE22.io.partialSumFromUp := PE12.io.partialSumToBelow
  PE12.io.imgIn := PE11.io.imgForward
  PE22.io.imgIn := PE21.io.imgForward

  io.finalSum1 := PE21.io.partialSumToBelow
  io.finalSum2 := PE22.io.partialSumToBelow
}

object Main extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new MyDeviceUnderTest(8,8,16))
}



//test(new MyDeviceUnderTest(8,8,16)) { c =>
//c.io.imgIn.poke(6.S)
//c.io.weight.poke(8.S)
//c.io.partialSumFromUp.poke(2.S)
//c.clock.step(1)
//c.io.imgForward.expect(6.S)
//c.io.partialSumToBelow.expect(50.S)
//c.io.imgIn.poke(3.S)
//c.io.weight.poke(8.S)
//c.io.partialSumFromUp.poke(-16.S)
//c.clock.step(1)
//c.io.imgForward.expect(3.S)
//c.io.partialSumToBelow.expect(8.S)
//}
//println("SUCCESS!!")