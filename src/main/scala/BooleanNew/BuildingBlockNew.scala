package BooleanNew
import chisel3._
import chisel3.util._


//initial interval = 1
//instruction of PE is still 4-bit long
//valid bit is implemented
//simulation haven't done
class BuildingBlockNew extends Module{
  val io = IO(new Bundle{
    val d_in = Vec(32, Input(new DataBundle()))
    val d_out = Vec(32, Output(new DataBundle()))
    val wr_en_mem1 = Input(Bool())
    val wr_en_mem2 = Input(Bool())
    val wr_en_mem3 = Input(Bool())
    val wr_en_mem4 = Input(Bool())
    val wr_en_mem5 = Input(Bool())
    val wr_en_mem6 = Input(Bool())
    val wr_instr_mem1 = Input(UInt(128.W))////////记得改成160
    val wr_instr_mem2 = Input(UInt(128.W))
    val wr_instr_mem3 = Input(UInt(128.W))
    val wr_instr_mem4 = Input(UInt(128.W))
    val wr_instr_mem5 = Input(UInt(128.W))
    val wr_instr_mem6 = Input(UInt(128.W))
    val run = Input(Bool())
  })

  val Mem1 = Mem(256, UInt(128.W))////////记得改成160
  val Mem2 = Mem(256, UInt(128.W))
  val Mem3 = Mem(256, UInt(128.W))
  val Mem4 = Mem(256, UInt(128.W))
  val Mem5 = Mem(256, UInt(128.W))
  val Mem6 = Mem(256, UInt(128.W))
  val PC1 = RegInit(0.U(8.W))
  val PC2 = RegInit(0.U(8.W))
  val PC3 = RegInit(0.U(8.W))
  val PC4 = RegInit(0.U(8.W))
  val PC5 = RegInit(0.U(8.W))
  val PC6 = RegInit(0.U(8.W))
  val wrAddr1 = RegInit(0.U(8.W))
  val wrAddr2 = RegInit(0.U(8.W))
  val wrAddr3 = RegInit(0.U(8.W))
  val wrAddr4 = RegInit(0.U(8.W))
  val wrAddr5 = RegInit(0.U(8.W))
  val wrAddr6 = RegInit(0.U(8.W))
  val instr1 = RegInit(0.U(128.W))////////记得改成160
  val instr2 = RegInit(0.U(128.W))
  val instr3 = RegInit(0.U(128.W))
  val instr4 = RegInit(0.U(128.W))
  val instr5 = RegInit(0.U(128.W))
  val instr6 = RegInit(0.U(128.W))
  val run1 = io.run
  val run2 = RegNext(io.run)//1 cycle later, you start reading from Mem2
  val run3 = RegNext(RegNext(io.run))//2 cycles later, you start reading from Mem3
  val run4 = RegNext(RegNext(RegNext(io.run)))//3 cycles later, you start reading from Mem4
  val run5 = RegNext(RegNext(RegNext(RegNext(io.run))))//4 cycles later, you start reading from Mem5
  val run6 = RegNext(RegNext(RegNext(RegNext(RegNext(io.run)))))//5 cycles later, you start reading from Mem6

  val peCol = Module(new PEcol())
  val ingress1 = Module(new CLOSingress1())
  val ingress2 = Module(new CLOSingress2())
  val middle = Module(new CLOSmiddle())
  val egress1 = Module(new CLOSegress1())
  val egress2 = Module(new CLOSegress2())

  when(run1){
    PC1 := PC1 + 1.U
    instr1 := Mem1(PC1)
  }.otherwise{
    PC1 := PC1
    instr1 := instr1
  }

  when(run2){
    PC2 := PC2 + 1.U
    instr2 := Mem2(PC2)
  }.otherwise{
    PC2 := PC2
    instr2 := instr2
  }

  when(run3){
    PC3 := PC3 + 1.U
    instr3 := Mem3(PC3)
  }.otherwise{
    PC3 := PC3
    instr3 := instr3
  }

  when(run4){
    PC4 := PC4 + 1.U
    instr4 := Mem4(PC4)
  }.otherwise{
    PC4 := PC4
    instr4 := instr4
  }

  when(run5){
    PC5 := PC5 + 1.U
    instr5 := Mem5(PC5)
  }.otherwise{
    PC5 := PC5
    instr5 := instr5
  }

  when(run6){
    PC6 := PC6 + 1.U
    instr6 := Mem6(PC6)
  }.otherwise{
    PC6 := PC6
    instr6 := instr6
  }

  peCol.io.instr := instr1
  ingress1.io.ctrl := instr2
  ingress2.io.ctrl := instr3
  middle.io.ctrl := instr4
  egress1.io.ctrl := instr5
  egress2.io.ctrl := instr6


  //write logic
  when(io.wr_en_mem1){
    Mem1(wrAddr1) := io.wr_instr_mem1
    wrAddr1 := wrAddr1 + 1.U
  }
  when(io.wr_en_mem2){
    Mem2(wrAddr2) := io.wr_instr_mem2
    wrAddr2 := wrAddr2 + 1.U
  }
  when(io.wr_en_mem3){
    Mem3(wrAddr3) := io.wr_instr_mem3
    wrAddr3 := wrAddr3 + 1.U
  }
  when(io.wr_en_mem4){
    Mem4(wrAddr4) := io.wr_instr_mem4
    wrAddr4 := wrAddr4 + 1.U
  }
  when(io.wr_en_mem5){
    Mem5(wrAddr5) := io.wr_instr_mem5
    wrAddr5 := wrAddr5 + 1.U
  }
  when(io.wr_en_mem6){
    Mem6(wrAddr6) := io.wr_instr_mem6
    wrAddr6 := wrAddr6 + 1.U
  }

  //make connections between input bundle to PEcol
  peCol.io.d_in := io.d_in

  for(i <- 0 until 32) {
    ingress1.io.in64(i*2) := peCol.io.d_out(i).a
    ingress1.io.in64(i*2+1) := peCol.io.d_out(i).b
    ingress1.io.validin64(i*2) := peCol.io.d_out(i).valid_a
    ingress1.io.validin64(i*2+1) := peCol.io.d_out(i).valid_b
  }
  //make connections between CLOS
  ingress2.io.in64 := ingress1.io.out64
  ingress2.io.validin64 := ingress1.io.validout64
  middle.io.in64 := ingress2.io.out64
  middle.io.validin64 := ingress2.io.validout64
  egress1.io.in64 := middle.io.out64
  egress1.io.validin64 := middle.io.validout64
  egress2.io.in64 := egress1.io.out64
  egress2.io.validin64 := egress1.io.validout64

  //bundle the output of egress2 from Vec(64, Output(UInt(64.W))) to Vec(32, Output(new DataBundle())) to form the module output
  for(i <- 0 until 32) {
    io.d_out(i).a := egress2.io.out64(i*2)
    io.d_out(i).b := egress2.io.out64(i*2+1)
    io.d_out(i).valid_a := egress2.io.validout64(i*2)
    io.d_out(i).valid_b := egress2.io.validout64(i*2+1)
  }

}

object BuildBlockNewMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new BuildingBlockNew())
}