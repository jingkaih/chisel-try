package BooleanNew
import chisel3._
import chisel3.util._

class DataBundle(dataWidth: Int = 64) extends Bundle{
  val a = UInt(dataWidth.W)
  val b = UInt(dataWidth.W)
}

class CLOScell4 extends Module{
  val io = IO(new Bundle{
    val in4 = Vec(4, Input(UInt(64.W)))
    val out4 = Vec(4, Output(UInt(64.W)))
    //    val ctrl = Vec(num_out, Input(UInt(log2Up(num_in).W)))// 4 * 2bit
    val ctrl = Input(UInt(8.W))// 4 * 2bit = 8 bit
  })
  val cell4 = Module(new CrossBarSwitch(64,true,4,4)).io
  for(i <- 0 until 4){
    cell4.select(i) := io.ctrl(7-i*2,6-i*2)
  }
  cell4.fw_left := io.in4
  io.out4 := cell4.fw_bottom
}

class CLOSingress1 extends Module{//1st column of 16 4*4 Crossbars// the last col is implemented in another way
  val io = IO(new Bundle{
    val in64 = Vec(64, Input(UInt(64.W)))
    val out64 = Vec(64, Output(UInt(64.W)))
    val ctrl = Input(UInt(128.W))// 16*8=128 bits
  })

  val ingress1 = for (i <- 0 until 16) yield Module(new CLOScell4())
  val ctrl_reg = RegInit(0.U(128.W))
  ctrl_reg := io.ctrl

  //wrapper
  for(i <- 0 until 16)
    for(k <- 0 until 4) {
      ingress1(i).io.in4(k) := io.in64(i*4+k)
      io.out64(i+16*k) := ingress1(i).io.out4(k)// topo between ingress1 and ingress2
    }
  //control bits assignment
  for(i <- 0 until 16)
    ingress1(i).io.ctrl := ctrl_reg(127-i*8,120-i*8)
}

class CLOSingress2 extends Module{//2nd column of 16 4*4 Crossbars// the last col is implemented in another way
  val io = IO(new Bundle{
    val in64 = Vec(64, Input(UInt(64.W)))
    val out64 = Vec(64, Output(UInt(64.W)))
    val ctrl = Input(UInt(128.W))// 16*8=128 bits
  })

  val ingress2 = for (i <- 0 until 16) yield Module(new CLOScell4())
  val ctrl_reg = RegInit(0.U(128.W))
  ctrl_reg := io.ctrl

  //wrapper
  for(i <- 0 until 4)
    for(j <- 0 until 4)
      for(k <- 0 until 4) {
        ingress2(i*4+j).io.in4(k) := io.in64((i*4+j)*4+k)
        io.out64(i*16+j+k*4) := ingress2(i*4+j).io.out4(k)// topo between ingress2 and middle
      }
  //control bits assignment
  for(i <- 0 until 16)
    ingress2(i).io.ctrl := ctrl_reg(127-i*8,120-i*8)
}

class CLOSmiddle extends Module{//3rd column of 16 4*4 Crossbars// the last col is implemented in another way
  val io = IO(new Bundle{
    val in64 = Vec(64, Input(UInt(64.W)))
    val out64 = Vec(64, Output(UInt(64.W)))
    val ctrl = Input(UInt(128.W))// 16*8=128 bits
  })

  val middle = for (i <- 0 until 16) yield Module(new CLOScell4())
  val ctrl_reg = RegInit(0.U(128.W))
  ctrl_reg := io.ctrl

  //wrapper
  for(i <- 0 until 4)
    for(j <- 0 until 4)
      for(k <- 0 until 4) {
        middle(i*4+j).io.in4(k) := io.in64((i*4+j)*4+k)
        io.out64(i*16+j+k*4) := middle(i*4+j).io.out4(k)// topo between and middle and egress1
      }
  //control bits assignment
  for(i <- 0 until 16)
    middle(i).io.ctrl := ctrl_reg(127-i*8,120-i*8)
}

class CLOSegress1 extends Module{//4th column of 16 4*4 Crossbars// the last col is implemented in another way
  val io = IO(new Bundle{
    val in64 = Vec(64, Input(UInt(64.W)))
    val out64 = Vec(64, Output(UInt(64.W)))
    val ctrl = Input(UInt(128.W))// 16*8=128 bits
  })

  val egress1 = for (i <- 0 until 16) yield Module(new CLOScell4())
  val ctrl_reg = RegInit(0.U(128.W))
  ctrl_reg := io.ctrl

  //wrapper
  for(i <- 0 until 16)
    for(k <- 0 until 4) {
      egress1(i).io.in4(k) := io.in64(i*4+k)
      io.out64(i+16*k) := egress1(i).io.out4(k)// topo between egress1 and egress2
    }
  //control bits assignment
  for(i <- 0 until 16)
    egress1(i).io.ctrl := ctrl_reg(127-i*8,120-i*8)
}

class CLOSegress2 extends Module{// the last col of CLOS
  val io = IO(new Bundle{
    val in64 = Vec(64, Input(UInt(64.W)))
    val out64 = Vec(64, Output(UInt(64.W)))
    val ctrl = Input(UInt(128.W))// 16*8=128 bits
  })

  val egress2 = for (i <- 0 until 16) yield Module(new CLOScell4())
  val ctrl_reg = RegInit(0.U(128.W))
  ctrl_reg := io.ctrl

  //wrapper
  for(i <- 0 until 16)
    for(k <- 0 until 4) {
      egress2(i).io.in4(k) := io.in64(i*4+k)
      io.out64(i*4+k) := egress2(i).io.out4(k)// topo between egress2 and next PEcol: go directly// remember to convert out64 to that bundle in the main function
    }
  //control bits assignment
  for(i <- 0 until 16)
    egress2(i).io.ctrl := ctrl_reg(127-i*8,120-i*8)
}

class PEcol(instrWidth: Int = 128) extends Module{
  val io = IO(new Bundle{
    val d_in = Vec(32, Input(new DataBundle()))
    val d_out = Vec(32, Output(new DataBundle()))
    val instr = Input(UInt(instrWidth.W))
  })

//  val instr = RegInit(0.U(instrWidth.W))
//  instr := io.instr

//  val d_in_reg = RegNext(io.d_in)

  val ALU64_32 = for (i <- 0 until 32) yield Module(new ALU(64))

  for(i <- 0 until 32){
//    ALU64_32(i).io.in_a := d_in_reg(i).a
//    ALU64_32(i).io.in_b := d_in_reg(i).b
    ALU64_32(i).io.in_a := io.d_in(i).a
    ALU64_32(i).io.in_b := io.d_in(i).b
    ALU64_32(i).io.opcode := io.instr(127-4*i, 124-4*i)
//    ALU64_32(i).io.opcode := instr(127-4*i, 124-4*i)
    io.d_out(i).a := ALU64_32(i).io.out_a
    io.d_out(i).b := ALU64_32(i).io.out_b
  }
}

class BuildingBlock extends Module{
  val io = IO(new Bundle{
    val d_in = Vec(32, Input(new DataBundle()))
    val d_out = Vec(32, Output(new DataBundle()))
    val wr_en_mem1 = Input(Bool())
    val wr_en_mem2 = Input(Bool())
    val wr_instr_mem1 = Input(UInt(128.W))// configure PE+ingress1+ingress2// instructions stored in order
    val wr_instr_mem2 = Input(UInt(128.W))// configure middle+egress1+egress2// instructions stored in order
    val run = Input(Bool())
    //val valid = Output(Bool())// carry through the pipe as write-back enable
  })
  val Mem1 = Mem(256, UInt(128.W))//implemented as Instruction queue
  val Mem2 = Mem(256, UInt(128.W))
  val PC1 = RegInit(0.U(8.W))
  val PC2 = RegInit(0.U(8.W))
  val wrAddr1 = RegInit(0.U(8.W))
  val wrAddr2 = RegInit(0.U(8.W))
  val instr1 = RegInit(0.U(128.W))
  val instr2 = RegInit(0.U(128.W))

  val run_Reg = RegNext(RegNext(RegNext(io.run)))//3 cycles later, you start reading from Mem2

  val peCol = Module(new PEcol())
  val ingress1 = Module(new CLOSingress1())
  val ingress2 = Module(new CLOSingress2())
  val middle = Module(new CLOSmiddle())
  val egress1 = Module(new CLOSegress1())
  val egress2 = Module(new CLOSegress2())

  //state machine 1
  val idle :: config1 :: config2 :: config3 :: Nil = Enum(4)
  val stageReg1 = RegInit(idle)
  val stageReg2 = RegInit(idle)

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

  peCol.io.instr := Mux(stageReg1 === config1, instr1, 0.U)
  ingress1.io.ctrl := Mux(stageReg1 === config2, instr1, 0.U)
  ingress2.io.ctrl := Mux(stageReg1 === config3, instr1, 0.U)

// stage reg 2
  switch(stageReg2){
    is(idle){
      when(run_Reg){
        stageReg2 := config1
        PC2 := PC2 + 1.U// mealy
        instr2 := Mem2(PC2)
      }
    }
    is(config1){
      when(!run_Reg) {
        stageReg2 := idle
      }. otherwise{
        stageReg2 := config2
        PC2 := PC2 + 1.U
        instr2 := Mem2(PC2)
      }
    }
    is(config2){
      when(!run_Reg) {
        stageReg2 := idle
      }. otherwise{
        stageReg2 := config3
        PC2 := PC2 + 1.U
        instr2 := Mem2(PC2)
      }
    }
    is(config3){
      when(!run_Reg) {
        stageReg2 := idle
      }. otherwise{
        stageReg2 := config1
        PC2 := PC2 + 1.U
        instr2 := Mem2(PC2)
      }
    }
  }

  middle.io.ctrl := Mux(stageReg2 === config1, instr2, 0.U)
  egress1.io.ctrl := Mux(stageReg2 === config2, instr2, 0.U)
  egress2.io.ctrl := Mux(stageReg2 === config3, instr2, 0.U)





  //write logic
  when(io.wr_en_mem1){
    Mem1(wrAddr1) := io.wr_instr_mem1
    wrAddr1 := wrAddr1 + 1.U
  }
  when(io.wr_en_mem2){
    Mem2(wrAddr2) := io.wr_instr_mem2
    wrAddr2 := wrAddr2 + 1.U
  }



  //make connections between input bundle to PEcol
  peCol.io.d_in := io.d_in

  for(i <- 0 until 32) {
    ingress1.io.in64(i*2) := peCol.io.d_out(i).a
    ingress1.io.in64(i*2+1) := peCol.io.d_out(i).b
  }
  //make connections between CLOS
  ingress2.io.in64 := ingress1.io.out64
  middle.io.in64 := ingress2.io.out64
  egress1.io.in64 := middle.io.out64
  egress2.io.in64 := egress1.io.out64

  //bundle the output of egress2 from Vec(64, Output(UInt(64.W))) to Vec(32, Output(new DataBundle())) to form the module output
  for(i <- 0 until 32) {
    io.d_out(i).a := egress2.io.out64(i*2)
    io.d_out(i).b := egress2.io.out64(i*2+1)
  }

}


//object PEcolMain extends App {
//  println("Hello World, I will now generate the Verilog file!")
//  (new chisel3.stage.ChiselStage).emitVerilog(new PEcol())
//}


object BuildBlockMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new BuildingBlock())
}