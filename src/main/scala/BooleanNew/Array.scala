package BooleanNew
import chisel3._
import chisel3.util._

class Array(PEnum: Int = 16) extends Module{
  val io = IO(new Bundle{
    val d_in = Vec(32, Input(new DataBundle()))
    val d_out = Vec(32, Output(new DataBundle()))
    val wr_en_mem1 = Vec(PEnum, Input(Bool()))
    val wr_en_mem2 = Vec(PEnum, Input(Bool()))
    val wr_instr_mem1 = Vec(PEnum, Input(UInt(128.W)))
    val wr_instr_mem2 = Vec(PEnum, Input(UInt(128.W)))
    val run = Vec(PEnum, Input(Bool()))
  })

  val array = for(i <- 0 until PEnum) yield Module(new BuildingBlock)


  array(0).io.d_in := io.d_in
  array(0).io.wr_en_mem1 := io.wr_en_mem1(0)
  array(0).io.wr_en_mem2 := io.wr_en_mem2(0)
  array(0).io.wr_instr_mem1 := io.wr_instr_mem1(0)
  array(0).io.wr_instr_mem2 := io.wr_instr_mem2(0)
  array(0).io.run := io.run(0)
  for(i <- 1 until PEnum){
    array(i).io.d_in := array(i-1).io.d_out
    array(i).io.wr_en_mem1 := io.wr_en_mem1(i)
    array(i).io.wr_en_mem2 := io.wr_en_mem2(i)
    array(i).io.wr_instr_mem1 := io.wr_instr_mem1(i)
    array(i).io.wr_instr_mem2 := io.wr_instr_mem2(i)
    array(i).io.run := io.run(i)
  }
  io.d_out := array(PEnum-1).io.d_out
  
}


object ArrayMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new Array())
}