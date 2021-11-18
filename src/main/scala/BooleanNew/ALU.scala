package BooleanNew

import chisel3._
import chisel3.util.{is, switch}

class ALU(width: Int = 64) extends Module {
  var io = IO(new Bundle{
    val opcode = Input(UInt(4.W))
    // opcode = 3'b000, do pass through for input A
    // opcode = 3'b001, do bitwise NOT for input A
    // opcode = 3'b010, do AND
    // opcode = 3'b011, do NAND
    // opcode = 3'b100, do OR
    // opcode = 3'b101, do NOR
    // opcode = 3'b110, do XOR
    // opcode = 3'b111, do XNOR
    val in_a = Input(UInt(width.W))
    val in_b = Input(UInt(width.W))
    val out_a = Output(UInt(width.W))
    val out_b = Output(UInt(width.W))
  })

  val opcode = io.opcode
  val a = io.in_a//renaming io.in_a to a
  val b = io.in_b//renaming io.in_b to b

  val temp_result_a = RegInit(0.U(width.W))
  val temp_result_b = RegInit(0.U(width.W))

  switch(opcode){
    is(0.U) {
      temp_result_a := 0.U
      temp_result_b := 0.U
    }
    is(1.U) {
      temp_result_a := a & b
      temp_result_b := 0.U
    }
    is(2.U) {
      temp_result_a := !a & b
      temp_result_b := 0.U
    }
    is(3.U) {
      temp_result_a := a | b
      temp_result_b := 0.U
    }
    is(4.U) {
      temp_result_a := !a | b
      temp_result_b := 0.U
    }
    is(5.U) {
      temp_result_a := a ^ b
      temp_result_b := 0.U
    }
    is(6.U) {
      temp_result_a := !a ^ b
      temp_result_b := 0.U
    }
    is(7.U) {
      temp_result_a := !(a ^ b)
      temp_result_b := 0.U
    }
    is(8.U) {
      temp_result_a := a & b
      temp_result_b := b
    }
    is(9.U) {
      temp_result_a := !a & b
      temp_result_b := b
    }
    is(10.U) {
      temp_result_a := a | b
      temp_result_b := b
    }
    is(11.U) {
      temp_result_a := !a | b
      temp_result_b := b
    }
    is(12.U) {
      temp_result_a := a ^ b
      temp_result_b := b
    }
    is(13.U) {
      temp_result_a := !a ^ b
      temp_result_b := b
    }
    is(14.U) {
      temp_result_a := !(a ^ b)
      temp_result_b := b
    }
    is(15.U) {
      temp_result_a := b
      temp_result_b := a
    }
  }
  io.out_a := temp_result_a
  io.out_b := temp_result_b
}




//class ALU(width: Int = 64) extends Module {
//  var io = IO(new Bundle{
//    val opcode = Input(UInt(4.W))
//    // opcode = 3'b000, do pass through for input A
//    // opcode = 3'b001, do bitwise NOT for input A
//    // opcode = 3'b010, do AND
//    // opcode = 3'b011, do NAND
//    // opcode = 3'b100, do OR
//    // opcode = 3'b101, do NOR
//    // opcode = 3'b110, do XOR
//    // opcode = 3'b111, do XNOR
//    val in_a = Input(UInt(width.W))
//    val in_b = Input(UInt(width.W))
//    val out_a = Output(UInt(width.W))
//    val out_b = Output(UInt(width.W))
//  })
//
//  val opcode = io.opcode
//  val a = io.in_a//renaming io.in_a to a
//  val b = io.in_b//renaming io.in_b to b
//
//
//  when(opcode === 0.U){
//    io.out_a := 0.U
//    io.out_b := 0.U
//  }. elsewhen(opcode === 1.U){
//    io.out_a := a
//    io.out_b := b
//  }. elsewhen(opcode === 2.U){
//    io.out_a := a + b
//    io.out_b := b
//  }. elsewhen(opcode === 3.U){
//    io.out_a := a * b
//    io.out_b := b
//  }. elsewhen(opcode === 4.U){
//    io.out_a := a - b
//    io.out_b := b
//  }. elsewhen(opcode === 5.U){
//    io.out_a := a | b
//    io.out_b := b
//  }. elsewhen(opcode === 6.U){
//    io.out_a := a & b
//    io.out_b := b
//  }. elsewhen(opcode === 7.U){
//    io.out_a := a ^ b
//    io.out_b := b
//  }. elsewhen(opcode === 8.U){
//    io.out_a := !a & b
//    io.out_b := b
//  }. elsewhen(opcode === 9.U){
//    io.out_a := a & !b
//    io.out_b := b
//  }. elsewhen(opcode === 10.U){
//    io.out_a := !a | b
//    io.out_b := b
//  }. elsewhen(opcode === 11.U){
//    io.out_a := a | !b
//    io.out_b := b
//  }. elsewhen(opcode === 12.U){
//    io.out_a := !a ^ !b
//    io.out_b := b
//  }. elsewhen(opcode === 13.U){
//    io.out_a := !a ^ b
//    io.out_b := b
//  }. elsewhen(opcode === 14.U){
//    io.out_a := a ^ !b
//    io.out_b := b
//  }. elsewhen(opcode === 15.U){
//    io.out_a := a
//    io.out_b := b
//  }. otherwise{
//    io.out_a := 0.U
//    io.out_b := 0.U
//  }
//
//
//
////switch(opcode){
////    is(0.U) {
////      io.out_a := a
////      io.out_b := b
////    }
////    is(1.U) {
////      io.out_a := b
////      io.out_b := a
////    }
////    is(2.U) {
////      io.out_a := a + b
////      io.out_b := a
////    }
////    is(3.U) {
////      io.out_a := a * b
////      io.out_b := a
////    }
////    is(4.U) {
////      io.out_a := a & b
////      io.out_b := a
////    }
////    is(5.U) {
////      io.out_a := a | b
////      io.out_b := a
////    }
////    is(6.U) {
////      io.out_a := a ^ b
////      io.out_b := a
////    }
////    is(7.U) {
////      io.out_a := a + b
////      io.out_b := a
////    }
////    is(8.U) {
////      io.out_a := a
////      io.out_b := b
////    }
////    is(9.U) {
////      io.out_a := b
////      io.out_b := a
////    }
////    is(10.U) {
////      io.out_a := a + b
////      io.out_b := a
////    }
////    is(11.U) {
////      io.out_a := a * b
////      io.out_b := a
////    }
////    is(12.U) {
////      io.out_a := a & b
////      io.out_b := a
////    }
////    is(13.U) {
////      io.out_a := a | b
////      io.out_b := a
////    }
////    is(14.U) {
////      io.out_a := a ^ b
////      io.out_b := a
////    }
////    is(15.U) {
////      io.out_a := a + b
////      io.out_b := a
////    }
////  }
//
//
//
//}




object ALUMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new ALU(64))
}
