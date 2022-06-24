package BooleanNew
import chisel3._
import chisel3.util._


class BuildingBlockNew(dataWidth: Int = 64, dataRAMaddrWidth: Int = 8) extends Module{
  val io = IO(new Bundle{
    val d_in = Vec(32, Input(new PEDataBundle(dataWidth)))
    val d_out = Vec(32, Output(new PEDataBundle(dataWidth)))
    val wr_en_mem1 = Input(Bool())
    val wr_en_mem2 = Input(Bool())
    val wr_en_mem3 = Input(Bool())
    val wr_en_mem4 = Input(Bool())
    val wr_en_mem5 = Input(Bool())
    val wr_en_mem6 = Input(Bool())
    val wr_instr_mem1 = Input(UInt(288.W))
    val wr_instr_mem2 = Input(UInt(128.W))
    val wr_instr_mem3 = Input(UInt(128.W))
    val wr_instr_mem4 = Input(UInt(128.W))
    val wr_instr_mem5 = Input(UInt(128.W))
    val wr_instr_mem6 = Input(UInt(128.W))
    val run_in = Input(Bool())
    val run_out = Output(Bool())
    //    val PC1_in_en = Input(Bool())// There is no PC_in_en in the 2nd building block and the followers
    val PC1_in = Input(UInt(8.W))// Always on. only "wrPC1_in" of the 1st building block is modified by the detecting logic, indicated by enable signal
    val PC6_out = Output(UInt(8.W))// Always on. for the last building block, forward this to the 1st PEcol of 1st Building block
    val Addr_in = Input(UInt(8.W))// where I read from the data RAM
    val Addr_out = Output(UInt(8.W))// where I'm going to write to in the output buffer. Modified by detecting logic
    val Tag_in = Input(UInt(2.W))
    val Tag_out = Output(UInt(2.W))
  })

  val Mem1 = SyncReadMem(256, UInt(288.W))////////记得改成192
  val Mem2 = SyncReadMem(256, UInt(128.W))
  val Mem3 = SyncReadMem(256, UInt(128.W))
  val Mem4 = SyncReadMem(256, UInt(128.W))
  val Mem5 = SyncReadMem(256, UInt(128.W))
  val Mem6 = SyncReadMem(256, UInt(128.W))
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

//  val instr1 = Reg(UInt(288.W))
//  val instr2 = Reg(UInt(128.W))
//  val instr3 = Reg(UInt(128.W))
//  val instr4 = Reg(UInt(128.W))
//  val instr5 = Reg(UInt(128.W))
//  val instr6 = Reg(UInt(128.W))
    val instr1 = Wire(UInt(288.W))
    val instr2 = Wire(UInt(128.W))
    val instr3 = Wire(UInt(128.W))
    val instr4 = Wire(UInt(128.W))
    val instr5 = Wire(UInt(128.W))
    val instr6 = Wire(UInt(128.W))

  //  val run1 = io.run_in
  //  val run2 = RegNext(io.run_in)//1 cycle later, you start reading from Mem2
  //  val run3 = RegNext(RegNext(io.run_in))//2 cycles later, you start reading from Mem3
  //  val run4 = RegNext(RegNext(RegNext(io.run_in)))//3 cycles later, you start reading from Mem4
  //  val run5 = RegNext(RegNext(RegNext(RegNext(io.run_in))))//4 cycles later, you start reading from Mem5
  //  val run6 = RegNext(RegNext(RegNext(RegNext(RegNext(io.run_in)))))//5 cycles later, you start reading from Mem6
  val run1 = io.run_in
  val run2 = RegNext(run1)//1 cycle later, you start reading from Mem2
  val run3 = RegNext(run2)//2 cycles later, you start reading from Mem3
  val run4 = RegNext(run3)//3 cycles later, you start reading from Mem4
  val run5 = RegNext(run4)//4 cycles later, you start reading from Mem5
  val run6 = RegNext(run5)//5 cycles later, you start reading from Mem6
  io.run_out := run6

  //  val Addr6 = RegNext(RegNext(RegNext(RegNext(RegNext(io.Addr_in)))))//5 cycles later
  //  io.Addr_out := Addr6


  val peCol = Module(new PEcol(dataWidth, instrWidth = 288, dataRAMaddrWidth))
  val ingress1 = Module(new CLOSingress1(dataWidth, dataRAMaddrWidth))
  val ingress2 = Module(new CLOSingress2(dataWidth, dataRAMaddrWidth))
  val middle = Module(new CLOSmiddle(dataWidth, dataRAMaddrWidth))
  val egress1 = Module(new CLOSegress1(dataWidth, dataRAMaddrWidth))
  val egress2 = Module(new CLOSegress2(dataWidth, dataRAMaddrWidth))

//  when(run1){
//    PC1 := io.PC1_in
//    instr1 := Mem1.read(PC1)
//  }.otherwise{
//    PC1 := PC1
//    instr1 := instr1
//  }
//
//  when(run2){
//    PC2 := PC1
//    instr2 := Mem2.read(PC2)
//  }.otherwise{
//    PC2 := PC2
//    instr2 := instr2
//  }
//
//  when(run3){
//    PC3 := PC2
//    instr3 := Mem3.read(PC3)
//  }.otherwise{
//    PC3 := PC3
//    instr3 := instr3
//  }
//
//  when(run4){
//    PC4 := PC3
//    instr4 := Mem4.read(PC4)
//  }.otherwise{
//    PC4 := PC4
//    instr4 := instr4
//  }
//
//  when(run5){
//    PC5 := PC4
//    instr5 := Mem5.read(PC5)
//  }.otherwise{
//    PC5 := PC5
//    instr5 := instr5
//  }
//
//  when(run6){
//    PC6 := PC5
//    instr6 := Mem6.read(PC6)
//  }.otherwise{
//    PC6 := PC6
//    instr6 := instr6
//  }
//  when(io.run_in){
//    instr1 := Mem1.read(PC1)
//    instr2 := Mem2.read(PC2)
//    instr3 := Mem3.read(PC3)
//    instr4 := Mem4.read(PC4)
//    instr5 := Mem5.read(PC5)
//    instr6 := Mem6.read(PC6)
//  }. otherwise{
//    instr1 := DontCare
//    instr2 := DontCare
//    instr3 := DontCare
//    instr4 := DontCare
//    instr5 := DontCare
//    instr6 := DontCare
//  }


  PC1 := io.PC1_in
  PC2 := PC1
  PC3 := PC2
  PC4 := PC3
  PC5 := PC4
  PC6 := PC5

  io.PC6_out := PC6

  peCol.io.instr := instr1
  ingress1.io.ctrl := instr2
  ingress2.io.ctrl := instr3
  middle.io.ctrl := instr4
  egress1.io.ctrl := instr5
  egress2.io.ctrl := instr6


  //write logic
//  when(io.wr_en_mem1){
//    Mem1.write(wrAddr1, io.wr_instr_mem1)
//    wrAddr1 := wrAddr1 + 1.U
//    instr1 := DontCare
//  } .otherwise{
//    instr1 := Mem1.read(PC1)
//  }
//  when(io.wr_en_mem2){
//    Mem2.write(wrAddr2, io.wr_instr_mem2)
//    wrAddr2 := wrAddr2 + 1.U
//    instr2 := DontCare
//  } .otherwise{
//    instr2 := Mem2.read(PC2)
//  }
//  when(io.wr_en_mem3){
//    Mem3.write(wrAddr3, io.wr_instr_mem3)
//    wrAddr3 := wrAddr3 + 1.U
//    instr3 := DontCare
//  } .otherwise{
//    instr3 := Mem3.read(PC3)
//  }
//  when(io.wr_en_mem4){
//    Mem4.write(wrAddr4, io.wr_instr_mem4)
//    wrAddr4 := wrAddr4 + 1.U
//    instr4 := DontCare
//  } .otherwise{
//    instr4 := Mem4.read(PC4)
//  }
//  when(io.wr_en_mem5){
//    Mem5.write(wrAddr5, io.wr_instr_mem5)
//    wrAddr5 := wrAddr5 + 1.U
//    instr5 := DontCare
//  } .otherwise{
//    instr5 := Mem5.read(PC5)
//  }
//  when(io.wr_en_mem6){
//    Mem6.write(wrAddr6, io.wr_instr_mem6)
//    wrAddr6 := wrAddr6 + 1.U
//    instr6 := DontCare
//  } .otherwise{
//    instr6 := Mem6.read(PC6)
//  }

  val MemAddr1 = WireInit(0.U(8.W))
  val MemAddr2 = WireInit(0.U(8.W))
  val MemAddr3 = WireInit(0.U(8.W))
  val MemAddr4 = WireInit(0.U(8.W))
  val MemAddr5 = WireInit(0.U(8.W))
  val MemAddr6 = WireInit(0.U(8.W))


  when(io.wr_en_mem1){
    Mem1.write(MemAddr1, io.wr_instr_mem1)
    MemAddr1 := wrAddr1
    wrAddr1 := wrAddr1 + 1.U
    instr1 := DontCare
  } .otherwise{
    instr1 := Mem1.read(MemAddr1)
    MemAddr1 := PC1
  }
  when(io.wr_en_mem2){
    Mem2.write(MemAddr2, io.wr_instr_mem2)
    MemAddr2 := wrAddr2
    wrAddr2 := wrAddr2 + 1.U
    instr2 := DontCare
  } .otherwise{
    instr2 := Mem2.read(MemAddr2)
    MemAddr2 := PC2
  }
  when(io.wr_en_mem3){
    Mem3.write(MemAddr3, io.wr_instr_mem3)
    MemAddr3 := wrAddr3
    wrAddr3 := wrAddr3 + 1.U
    instr3 := DontCare
  } .otherwise{
    instr3 := Mem3.read(MemAddr3)
    MemAddr3 := PC3
  }
  when(io.wr_en_mem4){
    Mem4.write(MemAddr4, io.wr_instr_mem4)
    MemAddr4 := wrAddr4
    wrAddr4 := wrAddr4 + 1.U
    instr4 := DontCare
  } .otherwise{
    instr4 := Mem4.read(MemAddr4)
    MemAddr4 := PC4
  }
  when(io.wr_en_mem5){
    Mem5.write(MemAddr5, io.wr_instr_mem5)
    MemAddr5 := wrAddr5
    wrAddr5 := wrAddr5 + 1.U
    instr5 := DontCare
  } .otherwise{
    instr5 := Mem5.read(MemAddr5)
    MemAddr5 := PC5
  }
  when(io.wr_en_mem6){
    Mem6.write(MemAddr6, io.wr_instr_mem6)
    MemAddr6 := wrAddr6
    wrAddr6 := wrAddr6 + 1.U
    instr6 := DontCare
  } .otherwise{
    instr6 := Mem6.read(MemAddr6)
    MemAddr6 := PC6
  }


  //make connections between input bundle to PEcol
  peCol.io.d_in := io.d_in
  peCol.io.tagin := io.Tag_in
  peCol.io.addrin := io.Addr_in
  //make connection between PEcol to ingress1
  ingress1.io.tagin := peCol.io.tagout
  ingress1.io.addrin := peCol.io.addrout
  for(i <- 0 until 32) {
    ingress1.io.in64(i*2) := peCol.io.d_out(i).a
    ingress1.io.in64(i*2+1) := peCol.io.d_out(i).b
    ingress1.io.validin64(i*2) := peCol.io.d_out(i).valid_a
    ingress1.io.validin64(i*2+1) := peCol.io.d_out(i).valid_b
  }
  //make connections between CLOS
  ingress2.io.in64 := ingress1.io.out64
  ingress2.io.validin64 := ingress1.io.validout64
  ingress2.io.tagin := ingress1.io.tagout
  ingress2.io.addrin := ingress1.io.addrout
  middle.io.in64 := ingress2.io.out64
  middle.io.validin64 := ingress2.io.validout64
  middle.io.tagin := ingress2.io.tagout
  middle.io.addrin := ingress2.io.addrout
  egress1.io.in64 := middle.io.out64
  egress1.io.validin64 := middle.io.validout64
  egress1.io.tagin := middle.io.tagout
  egress1.io.addrin := middle.io.addrout
  egress2.io.in64 := egress1.io.out64
  egress2.io.validin64 := egress1.io.validout64
  egress2.io.tagin := egress1.io.tagout
  egress2.io.addrin := egress1.io.addrout


  //bundle the output of egress2 from Vec(64, Output(UInt(64.W))) to Vec(32, Output(new PEDataBundle())) to form the module output
  for(i <- 0 until 32) {
    io.d_out(i).a := egress2.io.out64(i*2)
    io.d_out(i).b := egress2.io.out64(i*2+1)
    io.d_out(i).valid_a := egress2.io.validout64(i*2)
    io.d_out(i).valid_b := egress2.io.validout64(i*2+1)
  }
  io.Tag_out := egress2.io.tagout
  io.Addr_out := egress2.io.addrout

}


//initiate interval = 1
//valid bit is implemented
//class BuildingBlockNew(dataWidth: Int = 64, dataRAMaddrWidth: Int = 8) extends Module{
//  val io = IO(new Bundle{
//    val d_in = Vec(32, Input(new PEDataBundle(dataWidth)))
//    val d_out = Vec(32, Output(new PEDataBundle(dataWidth)))
//    val wr_en_mem1 = Input(Bool())
//    val wr_en_mem2 = Input(Bool())
//    val wr_en_mem3 = Input(Bool())
//    val wr_en_mem4 = Input(Bool())
//    val wr_en_mem5 = Input(Bool())
//    val wr_en_mem6 = Input(Bool())
//    val wr_instr_mem1 = Input(UInt(224.W))////////记得改成192
//    val wr_instr_mem2 = Input(UInt(128.W))
//    val wr_instr_mem3 = Input(UInt(128.W))
//    val wr_instr_mem4 = Input(UInt(128.W))
//    val wr_instr_mem5 = Input(UInt(128.W))
//    val wr_instr_mem6 = Input(UInt(128.W))
//    val run_in = Input(Bool())
//    val run_out = Output(Bool())
////    val PC1_in_en = Input(Bool())// There is no PC_in_en in the 2nd building block and the followers
//    val PC1_in = Input(UInt(8.W))// Always on. only "wrPC1_in" of the 1st building block is modified by the detecting logic, indicated by enable signal
//    val PC6_out = Output(UInt(8.W))// Always on. for the last building block, forward this to the 1st PEcol of 1st Building block
//    val Addr_in = Input(UInt(8.W))// where I read from the data RAM
//    val Addr_out = Output(UInt(8.W))// where I'm going to write to in the output buffer. Modified by detecting logic
//    val Tag_in = Input(UInt(2.W))
//    val Tag_out = Output(UInt(2.W))
//  })
//
//  val Mem1 = Mem(256, UInt(224.W))////////记得改成192
//  val Mem2 = Mem(256, UInt(128.W))
//  val Mem3 = Mem(256, UInt(128.W))
//  val Mem4 = Mem(256, UInt(128.W))
//  val Mem5 = Mem(256, UInt(128.W))
//  val Mem6 = Mem(256, UInt(128.W))
//  val PC1 = RegInit(0.U(8.W))
//  val PC2 = RegInit(0.U(8.W))
//  val PC3 = RegInit(0.U(8.W))
//  val PC4 = RegInit(0.U(8.W))
//  val PC5 = RegInit(0.U(8.W))
//  val PC6 = RegInit(0.U(8.W))
//  val wrAddr1 = RegInit(0.U(8.W))
//  val wrAddr2 = RegInit(0.U(8.W))
//  val wrAddr3 = RegInit(0.U(8.W))
//  val wrAddr4 = RegInit(0.U(8.W))
//  val wrAddr5 = RegInit(0.U(8.W))
//  val wrAddr6 = RegInit(0.U(8.W))
//  val instr1 = RegInit(0.U(224.W))////////记得改成192
//  val instr2 = RegInit(0.U(128.W))
//  val instr3 = RegInit(0.U(128.W))
//  val instr4 = RegInit(0.U(128.W))
//  val instr5 = RegInit(0.U(128.W))
//  val instr6 = RegInit(0.U(128.W))
////  val run1 = io.run_in
////  val run2 = RegNext(io.run_in)//1 cycle later, you start reading from Mem2
////  val run3 = RegNext(RegNext(io.run_in))//2 cycles later, you start reading from Mem3
////  val run4 = RegNext(RegNext(RegNext(io.run_in)))//3 cycles later, you start reading from Mem4
////  val run5 = RegNext(RegNext(RegNext(RegNext(io.run_in))))//4 cycles later, you start reading from Mem5
////  val run6 = RegNext(RegNext(RegNext(RegNext(RegNext(io.run_in)))))//5 cycles later, you start reading from Mem6
//  val run1 = io.run_in
//  val run2 = RegNext(run1)//1 cycle later, you start reading from Mem2
//  val run3 = RegNext(run2)//2 cycles later, you start reading from Mem3
//  val run4 = RegNext(run3)//3 cycles later, you start reading from Mem4
//  val run5 = RegNext(run4)//4 cycles later, you start reading from Mem5
//  val run6 = RegNext(run5)//5 cycles later, you start reading from Mem6
//  io.run_out := run6
//
////  val Addr6 = RegNext(RegNext(RegNext(RegNext(RegNext(io.Addr_in)))))//5 cycles later
////  io.Addr_out := Addr6
//
//
//  val peCol = Module(new PEcol(dataWidth, instrWidth = 224, dataRAMaddrWidth))
//  val ingress1 = Module(new CLOSingress1(dataWidth, dataRAMaddrWidth))
//  val ingress2 = Module(new CLOSingress2(dataWidth, dataRAMaddrWidth))
//  val middle = Module(new CLOSmiddle(dataWidth, dataRAMaddrWidth))
//  val egress1 = Module(new CLOSegress1(dataWidth, dataRAMaddrWidth))
//  val egress2 = Module(new CLOSegress2(dataWidth, dataRAMaddrWidth))
//
//  when(run1){
//    PC1 := io.PC1_in
//    instr1 := Mem1(PC1)
//  }.otherwise{
//    PC1 := PC1
//    instr1 := instr1
//  }
//
//  when(run2){
////    PC2 := PC2 + 1.U
//    PC2 := PC1
//    instr2 := Mem2(PC2)
//  }.otherwise{
//    PC2 := PC2
//    instr2 := instr2
//  }
//
//  when(run3){
////    PC3 := PC3 + 1.U
//    PC3 := PC2
//    instr3 := Mem3(PC3)
//  }.otherwise{
//    PC3 := PC3
//    instr3 := instr3
//  }
//
//  when(run4){
////    PC4 := PC4 + 1.U
//    PC4 := PC3
//    instr4 := Mem4(PC4)
//  }.otherwise{
//    PC4 := PC4
//    instr4 := instr4
//  }
//
//  when(run5){
////    PC5 := PC5 + 1.U
//    PC5 := PC4
//    instr5 := Mem5(PC5)
//  }.otherwise{
//    PC5 := PC5
//    instr5 := instr5
//  }
//
//  when(run6){
////    PC6 := PC6 + 1.U
//    PC6 := PC5
//    instr6 := Mem6(PC6)
//  }.otherwise{
//    PC6 := PC6
//    instr6 := instr6
//  }
//
//  io.PC6_out := PC6
//
//  peCol.io.instr := instr1
//  ingress1.io.ctrl := instr2
//  ingress2.io.ctrl := instr3
//  middle.io.ctrl := instr4
//  egress1.io.ctrl := instr5
//  egress2.io.ctrl := instr6
//
//
//  //write logic
//  when(io.wr_en_mem1){
//    Mem1(wrAddr1) := io.wr_instr_mem1
//    wrAddr1 := wrAddr1 + 1.U
//  }
//  when(io.wr_en_mem2){
//    Mem2(wrAddr2) := io.wr_instr_mem2
//    wrAddr2 := wrAddr2 + 1.U
//  }
//  when(io.wr_en_mem3){
//    Mem3(wrAddr3) := io.wr_instr_mem3
//    wrAddr3 := wrAddr3 + 1.U
//  }
//  when(io.wr_en_mem4){
//    Mem4(wrAddr4) := io.wr_instr_mem4
//    wrAddr4 := wrAddr4 + 1.U
//  }
//  when(io.wr_en_mem5){
//    Mem5(wrAddr5) := io.wr_instr_mem5
//    wrAddr5 := wrAddr5 + 1.U
//  }
//  when(io.wr_en_mem6){
//    Mem6(wrAddr6) := io.wr_instr_mem6
//    wrAddr6 := wrAddr6 + 1.U
//  }
//
//  //make connections between input bundle to PEcol
//  peCol.io.d_in := io.d_in
//  peCol.io.tagin := io.Tag_in
//  peCol.io.addrin := io.Addr_in
//  //make connection between PEcol to ingress1
//  ingress1.io.tagin := peCol.io.tagout
//  ingress1.io.addrin := peCol.io.addrout
//  for(i <- 0 until 32) {
//    ingress1.io.in64(i*2) := peCol.io.d_out(i).a
//    ingress1.io.in64(i*2+1) := peCol.io.d_out(i).b
//    ingress1.io.validin64(i*2) := peCol.io.d_out(i).valid_a
//    ingress1.io.validin64(i*2+1) := peCol.io.d_out(i).valid_b
//  }
//  //make connections between CLOS
//  ingress2.io.in64 := ingress1.io.out64
//  ingress2.io.validin64 := ingress1.io.validout64
//  ingress2.io.tagin := ingress1.io.tagout
//  ingress2.io.addrin := ingress1.io.addrout
//  middle.io.in64 := ingress2.io.out64
//  middle.io.validin64 := ingress2.io.validout64
//  middle.io.tagin := ingress2.io.tagout
//  middle.io.addrin := ingress2.io.addrout
//  egress1.io.in64 := middle.io.out64
//  egress1.io.validin64 := middle.io.validout64
//  egress1.io.tagin := middle.io.tagout
//  egress1.io.addrin := middle.io.addrout
//  egress2.io.in64 := egress1.io.out64
//  egress2.io.validin64 := egress1.io.validout64
//  egress2.io.tagin := egress1.io.tagout
//  egress2.io.addrin := egress1.io.addrout
//
//
//  //bundle the output of egress2 from Vec(64, Output(UInt(64.W))) to Vec(32, Output(new PEDataBundle())) to form the module output
//  for(i <- 0 until 32) {
//    io.d_out(i).a := egress2.io.out64(i*2)
//    io.d_out(i).b := egress2.io.out64(i*2+1)
//    io.d_out(i).valid_a := egress2.io.validout64(i*2)
//    io.d_out(i).valid_b := egress2.io.validout64(i*2+1)
//  }
//  io.Tag_out := egress2.io.tagout
//  io.Addr_out := egress2.io.addrout
//
//}

object BuildBlockNewMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new BuildingBlockNew(dataWidth = 4))
}


// use this for OpenRAM
//object  BuildBlockNewMain extends App {
//  println("Hello World, I will now generate the Verilog file!")
//  (new chisel3.stage.ChiselStage).emitVerilog(new BuildingBlockNew(), Array("--repl-seq-mem", "-c:BuildingBlockNew:-o:Buffer.mem.conf"))
//}