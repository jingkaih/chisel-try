package BooleanNew

import chisel3._
import chisel3.util.{is, switch}

class ALU(width: Int = 64) extends Module {
  var io = IO(new Bundle{
    val opcode = Input(UInt(4.W))
    val in_a = Input(UInt(width.W))
    val in_b = Input(UInt(width.W))
    val out_a = Output(UInt(width.W))
    val out_b = Output(UInt(width.W))
    val validin_a = Input(Bool())
    val validin_b = Input(Bool())
    val validout_a = Output(Bool())
    val validout_b = Output(Bool())
  })

  val opcode = io.opcode
  val a = io.in_a
  val b = io.in_b
//  val regClk3_a = RegNext(RegNext(RegNext(a)))// Freeze input_a for 3 clocks. This is for Initial Interval = 3
  val regClk1_a = RegNext(a)// Freeze input_a for 1 clocks. This is for Initial Interval = 1
  val temp_result_a = RegInit(0.U(width.W))
  val temp_result_b = RegInit(0.U(width.W))
  val temp_valid_a = RegInit(0.B)
  val temp_valid_b = RegInit(0.B)

  temp_valid_a := io.validin_a////////记得改这里！让指令去修改valid bit
  temp_valid_b := io.validin_b////////记得改这里！让指令去修改valid bit

  switch(opcode){
    is(0.U) {
      temp_result_a := a & b
      temp_result_b := b
    }
    is(1.U) {
      temp_result_a := ~(a & b)
      temp_result_b := b
    }
    is(2.U) {
      temp_result_a := a & ~b
      temp_result_b := ~b
    }
    is(3.U) {
      temp_result_a := a | b
      temp_result_b := b
    }
    is(4.U) {
      temp_result_a := ~(a | b)
      temp_result_b := b
    }
    is(5.U) {
      temp_result_a := a | ~b
      temp_result_b := ~b
    }
    is(6.U) {
      temp_result_a := a ^ b
      temp_result_b := b
    }
    is(7.U) {
      temp_result_a := a ^ ~b // same with !a^b and !(a^b)
      temp_result_b := ~b
    }
    is(8.U) {
      temp_result_a := regClk1_a & b
      temp_result_b := b
    }
    is(9.U) {
      temp_result_a := ~(regClk1_a & b)
      temp_result_b := b
    }
    is(10.U) {
      temp_result_a := regClk1_a & ~b
      temp_result_b := ~b
    }
    is(11.U) {
      temp_result_a := regClk1_a | b
      temp_result_b := b
    }
    is(12.U) {
      temp_result_a := ~(regClk1_a | b)
      temp_result_b := b
    }
    is(13.U) {
      temp_result_a := regClk1_a | ~b
      temp_result_b := ~b
    }
    is(14.U) {
      temp_result_a := regClk1_a ^ b
      temp_result_b := b
    }
    is(15.U) {
      temp_result_a := regClk1_a ^ ~b // same with !a^b and !(a^b)
      temp_result_b := ~b
    }
  }
  io.out_a := temp_result_a
  io.out_b := temp_result_b
  io.validout_a := temp_valid_a
  io.validout_b := temp_valid_b
}


// no 3 clock reg
//class ALU(width: Int = 64) extends Module {
//  var io = IO(new Bundle{
//    val opcode = Input(UInt(4.W))
//    val in_a = Input(UInt(width.W))
//    val in_b = Input(UInt(width.W))
//    val out_a = Output(UInt(width.W))
//    val out_b = Output(UInt(width.W))
//  })
//
//  val opcode = io.opcode
//  val a = io.in_a
//  val b = io.in_b
//
//  val temp_result_a = RegInit(0.U(width.W))
//  val temp_result_b = RegInit(0.U(width.W))
//
//  switch(opcode){
//    is(0.U) {
//      temp_result_a := 0.U
//      temp_result_b := 0.U
//    }
//    is(1.U) {
//      temp_result_a := a & b
//      temp_result_b := 0.U
//    }
//    is(2.U) {
//      temp_result_a := !a & b
//      temp_result_b := 0.U
//    }
//    is(3.U) {
//      temp_result_a := a | b
//      temp_result_b := 0.U
//    }
//    is(4.U) {
//      temp_result_a := !a | b
//      temp_result_b := 0.U
//    }
//    is(5.U) {
//      temp_result_a := a ^ b
//      temp_result_b := 0.U
//    }
//    is(6.U) {
//      temp_result_a := !a ^ b
//      temp_result_b := 0.U
//    }
//    is(7.U) {
//      temp_result_a := !(a ^ b)
//      temp_result_b := 0.U
//    }
//    is(8.U) {
//      temp_result_a := a & b
//      temp_result_b := b
//    }
//    is(9.U) {
//      temp_result_a := !a & b
//      temp_result_b := b
//    }
//    is(10.U) {
//      temp_result_a := a | b
//      temp_result_b := b
//    }
//    is(11.U) {
//      temp_result_a := !a | b
//      temp_result_b := b
//    }
//    is(12.U) {
//      temp_result_a := a ^ b
//      temp_result_b := b
//    }
//    is(13.U) {
//      temp_result_a := !a ^ b
//      temp_result_b := b
//    }
//    is(14.U) {
//      temp_result_a := !(a ^ b)
//      temp_result_b := b
//    }
//    is(15.U) {
//      temp_result_a := b
//      temp_result_b := a
//    }
//  }
//  io.out_a := temp_result_a
//  io.out_b := temp_result_b
//}





object ALUMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new ALU(64))
}
