package PEnew

import chisel3._
import chisel3.util.{is, switch}

class PE(width: Int = 64) extends Module {
  var io = IO(new Bundle{
    val opcode = Input(UInt(3.W))
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
    val out = Output(UInt(width.W))
  })

  val opcode = io.opcode
  val a = io.in_a//renaming io.in_a to a
  val b = io.in_b//renaming io.in_b to b

  val temp_result = Wire(UInt(width.W))
  temp_result := 0.U(width.W)

  switch(opcode){
    is(0.U) {temp_result := a}
    is(1.U) {temp_result := ~a}
    is(2.U) {temp_result := a & b}
    is(3.U) {temp_result := ~(a & b)}
    is(4.U) {temp_result := a | b}
    is(5.U) {temp_result := ~(a | b)}
    is(6.U) {temp_result := a ^ b}
    is(7.U) {temp_result := ~(a ^ b)}
  }
  io.out := temp_result
}

object HelloMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new PE(64))
}