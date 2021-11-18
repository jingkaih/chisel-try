package BooleanNew

import chisel3._
import chisel3.util._

class SMtest extends Module{
  val io = IO(new Bundle{
    val d_in = Vec(32, Input(new DataBundle()))
    val d_out = Vec(32, Output(new DataBundle()))
    val wr_en_mem1 = Input(Bool())
    val wr_instr_mem1 = Input(UInt(128.W))// configure PE+ingress1+ingress2// instructions stored in order
    val run = Input(Bool())
  })
  val Mem1 = Mem(256, UInt(128.W))//implemented as Instruction queue
  val PC1 = RegInit(0.U(8.W))
  val wrAddr1 = RegInit(0.U(8.W))
  val instr1 = RegInit(0.U(128.W))


  val peCol = Module(new PEcol())
  val ingress1 = Module(new CLOSingress1())
  val ingress2 = Module(new CLOSingress2())

  val idle :: config1 :: config2 :: config3 :: Nil = Enum(4)
  val stageReg1 = RegInit(idle)

//  switch(stageReg1){
//    is(idle){
//      when(io.run){
//        stageReg1 := config1
//        peCol.io.instr := 0.U
//        ingress1.io.ctrl := 0.U
//        ingress2.io.ctrl := 0.U
//        //        PC1 := PC1 + 1.U// mealy
//        //        instr1 := Mem1(PC1)
//      }
//    }
//    is(config1){
//      when(!io.run) {
//        stageReg1 := idle
//        peCol.io.instr := 0.U
//        ingress1.io.ctrl := 0.U
//        ingress2.io.ctrl := 0.U
//      }. otherwise{
//        stageReg1 := config2
//        PC1 := PC1 + 1.U
//        instr1 := Mem1(PC1)
//        peCol.io.instr := instr1
//        ingress1.io.ctrl := 0.U
//        ingress2.io.ctrl := 0.U
//      }
//    }
//    is(config2){
//      when(!io.run) {
//        stageReg1 := idle
//        peCol.io.instr := 0.U
//        ingress1.io.ctrl := 0.U
//        ingress2.io.ctrl := 0.U
//      }. otherwise{
//        stageReg1 := config3
//        PC1 := PC1 + 1.U
//        instr1 := Mem1(PC1)
//        peCol.io.instr := 0.U
//        ingress1.io.ctrl := instr1
//        ingress1.io.ctrl := 0.U
//      }
//    }
//    is(config3){
//      when(!io.run) {
//        stageReg1 := idle
//        peCol.io.instr := 0.U
//        ingress1.io.ctrl := 0.U
//        ingress2.io.ctrl := 0.U
//      }. otherwise{
//        stageReg1 := config1
//        PC1 := PC1 + 1.U
//        instr1 := Mem1(PC1)
//        peCol.io.instr := 0.U
//        ingress1.io.ctrl := 0.U
//        ingress2.io.ctrl := instr1
//      }
//    }
//  }
  switch(stageReg1){
    is(idle){
      when(io.run){
        stageReg1 := config1
        PC1 := PC1 + 1.U// mealy
        instr1 := Mem1(PC1)
      }
    }
    is(config1){
      when(!io.run) {
        stageReg1 := idle
      }. otherwise{
        stageReg1 := config2
        PC1 := PC1 + 1.U
        instr1 := Mem1(PC1)
      }
    }
    is(config2){
      when(!io.run) {
        stageReg1 := idle
      }. otherwise{
        stageReg1 := config3
        PC1 := PC1 + 1.U
        instr1 := Mem1(PC1)
      }
    }
    is(config3){
      when(!io.run) {
        stageReg1 := idle
      }. otherwise{
        stageReg1 := config1
        PC1 := PC1 + 1.U
        instr1 := Mem1(PC1)
      }
    }
  }

//  val instr_reg_peCol = RegEnable(instr1, stageReg1 === config1)
//  val instr_reg_ingress1 = RegEnable(instr1, stageReg1 === config2)
//  val instr_reg_ingress2 = RegEnable(instr1, stageReg1 === config3)
//  peCol.io.instr := instr_reg_peCol
//  ingress1.io.ctrl := instr_reg_ingress1
//  ingress2.io.ctrl := instr_reg_ingress2

    peCol.io.instr := Mux(stageReg1 === config1, instr1, 0.U)
    ingress1.io.ctrl := Mux(stageReg1 === config2, instr1, 0.U)
    ingress2.io.ctrl := Mux(stageReg1 === config3, instr1, 0.U)


  //write logic
  when(io.wr_en_mem1){
    Mem1(wrAddr1) := io.wr_instr_mem1
    wrAddr1 := wrAddr1 + 1.U
  }

  peCol.io.d_in := io.d_in
  for(i <- 0 until 32) {
    ingress1.io.in64(i*2) := peCol.io.d_out(i).a
    ingress1.io.in64(i*2+1) := peCol.io.d_out(i).b
  }
  //make connections between CLOS
  ingress2.io.in64 := ingress1.io.out64
  for(i <- 0 until 32) {
    io.d_out(i).a := ingress2.io.out64(i*2)
    io.d_out(i).b := ingress2.io.out64(i*2+1)
  }
}


object SMMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new SMtest())
}