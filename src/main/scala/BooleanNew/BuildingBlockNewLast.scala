package BooleanNew
import chisel3._


class BuildingBlockNewLast(dataWidth: Int = 64, dataRAMaddrWidth: Int = 8) extends Module{
  val io = IO(new Bundle{
    val d_in = Vec(32, Input(new PEDataBundle(dataWidth)))
    val d_out = Vec(32, Output(new PEDataBundle(dataWidth)))
    val wr_en_mem1 = Input(Bool())
//    val wr_en_mem2 = Input(Bool())
//    val wr_en_mem3 = Input(Bool())
//    val wr_en_mem4 = Input(Bool())
//    val wr_en_mem5 = Input(Bool())
//    val wr_en_mem6 = Input(Bool())
    val wr_instr_mem1 = Input(UInt(288.W))
//    val wr_instr_mem2 = Input(UInt(128.W))
//    val wr_instr_mem3 = Input(UInt(128.W))
//    val wr_instr_mem4 = Input(UInt(128.W))
//    val wr_instr_mem5 = Input(UInt(128.W))
//    val wr_instr_mem6 = Input(UInt(128.W))
    val run_in = Input(Bool())
    val run_out = Output(Bool())
    val PC1_in = Input(UInt(8.W))// Always on. only "wrPC1_in" of the 1st building block is modified by the detecting logic, indicated by enable signal
    val PC2_out = Output(UInt(8.W))// Always on. for the last building block, forward this to the 1st PEcol of 1st Building block
    //    val PC6_out = Output(UInt(8.W))// Always on. for the last building block, forward this to the 1st PEcol of 1st Building block
    val Addr_in = Input(UInt(8.W))// where I read from the data RAM
    val Addr_out = Output(UInt(8.W))// where I'm going to write to in the output buffer. Modified by detecting logic
    val Tag_in = Input(UInt(2.W))
    val Tag_out = Output(UInt(2.W))
  })

  val Mem1 = SyncReadMem(256, UInt(288.W))
//  val Mem2 = SyncReadMem(256, UInt(128.W))
//  val Mem3 = SyncReadMem(256, UInt(128.W))
//  val Mem4 = SyncReadMem(256, UInt(128.W))
//  val Mem5 = SyncReadMem(256, UInt(128.W))
//  val Mem6 = SyncReadMem(256, UInt(128.W))
  val PC1 = RegInit(0.U(8.W))
  val PC2 = RegInit(0.U(8.W))
//  val PC3 = RegInit(0.U(8.W))
//  val PC4 = RegInit(0.U(8.W))
//  val PC5 = RegInit(0.U(8.W))
//  val PC6 = RegInit(0.U(8.W))
  val wrAddr1 = RegInit(0.U(8.W))
//  val wrAddr2 = RegInit(0.U(8.W))
//  val wrAddr3 = RegInit(0.U(8.W))
//  val wrAddr4 = RegInit(0.U(8.W))
//  val wrAddr5 = RegInit(0.U(8.W))
//  val wrAddr6 = RegInit(0.U(8.W))

  val instr1 = Wire(UInt(288.W))
//  val instr2 = Wire(UInt(128.W))
//  val instr3 = Wire(UInt(128.W))
//  val instr4 = Wire(UInt(128.W))
//  val instr5 = Wire(UInt(128.W))
//  val instr6 = Wire(UInt(128.W))

  val run1 = io.run_in
  val run2 = RegNext(run1)//1 cycle later, you start reading from Mem2
  io.run_out := run2

//  val run1 = io.run_in
//  val run2 = RegNext(run1)//1 cycle later, you start reading from Mem2
//  val run3 = RegNext(run2)//2 cycles later, you start reading from Mem3
//  val run4 = RegNext(run3)//3 cycles later, you start reading from Mem4
//  val run5 = RegNext(run4)//4 cycles later, you start reading from Mem5
//  val run6 = RegNext(run5)//5 cycles later, you start reading from Mem6
//  io.run_out := run6

  val peCol = Module(new PEcol(dataWidth, instrWidth = 288, dataRAMaddrWidth))
//  val ingress1 = Module(new CLOSingress1(dataWidth, dataRAMaddrWidth))
//  val ingress2 = Module(new CLOSingress2(dataWidth, dataRAMaddrWidth))
//  val middle = Module(new CLOSmiddle(dataWidth, dataRAMaddrWidth))
//  val egress1 = Module(new CLOSegress1(dataWidth, dataRAMaddrWidth))
//  val egress2 = Module(new CLOSegress2(dataWidth, dataRAMaddrWidth))

  PC1 := io.PC1_in
  PC2 := PC1

  io.PC2_out := PC2

  peCol.io.instr := instr1
//  ingress1.io.ctrl := instr2
//  ingress2.io.ctrl := instr3
//  middle.io.ctrl := instr4
//  egress1.io.ctrl := instr5
//  egress2.io.ctrl := instr6

  val MemAddr1 = WireInit(0.U(8.W))
//  val MemAddr2 = WireInit(0.U(8.W))
//  val MemAddr3 = WireInit(0.U(8.W))
//  val MemAddr4 = WireInit(0.U(8.W))
//  val MemAddr5 = WireInit(0.U(8.W))
//  val MemAddr6 = WireInit(0.U(8.W))


  when(io.wr_en_mem1){
    Mem1.write(MemAddr1, io.wr_instr_mem1)
    MemAddr1 := wrAddr1
    wrAddr1 := wrAddr1 + 1.U
    instr1 := DontCare
  } .otherwise{
    instr1 := Mem1.read(MemAddr1)
    MemAddr1 := PC1
  }

  peCol.io.d_in := io.d_in
  peCol.io.tagin := io.Tag_in
  peCol.io.addrin := io.Addr_in

  for(i <- 0 until 32) {
    io.d_out(i).a := peCol.io.d_out(i).a
    io.d_out(i).b := peCol.io.d_out(i).b
    io.d_out(i).valid_a := peCol.io.d_out(i).valid_a
    io.d_out(i).valid_b := peCol.io.d_out(i).valid_b
  }
  io.Tag_out := peCol.io.tagout
  io.Addr_out := peCol.io.addrout

}
