package PE

import chisel3._


class CLOS16withRAM(n: Int = 16) extends Module{  //i = 8,16,32,...
  val io = IO(new Bundle{
    val input = Vec(n, Input(UInt(64.W)))
    val output = Vec(n, Output(UInt(64.W)))
    val ctrl = Input(UInt(64.W))
  })

  val configure_en = RegInit(false.B)
  val instruction_reg = RegInit(0.U(64.W))
  when((io.ctrl(63) === 1.B)){// this 64 bits aim for configure the 15th CLOS//(io.ctrl(1,4) === 6.U)
    configure_en := true.B
    instruction_reg := io.ctrl
  } .otherwise{
    configure_en := false.B
    instruction_reg := instruction_reg
  }

  //  val mem = Mem(1024, UInt(64.W))
  //  val rdAddrBase = RegInit(0.U(10.W))//Program Counter
  //  val wrAddrBase = RegInit(0.U(10.W))
  //  var ctrl = RegInit(0.U(64.W))
  //  //configuration phase: when write enable, instructions are written into RAM
  //  when(io.controlSignal_wr_en) {
  //    mem.write(wrAddrBase, io.controlSignal_wr)
  //    wrAddrBase := wrAddrBase + 1.U
  //  }
  //  //PC starts increment
  //  when(io.run) {
  //    ctrl := mem.read(rdAddrBase)
  //    rdAddrBase := rdAddrBase + 1.U
  //  }


  val ingress = for (i <- 0 until 4) yield Module(new CLOScell4New())
  val egress = for (i <- 0 until 4) yield Module(new CLOScell4New())
  val middle = for (i <- 0 until 4) yield Module(new CLOScell4New())

  val ingressCtrlReg = RegInit(0.U(32.W))
  val middleCtrlReg = RegInit(0.U(32.W))
  val egressCtrlReg = RegInit(0.U(32.W))

  for(i <- 0 until 4){
    ingress(i).io.ctrl := ingressCtrlReg(31-i*8,24-i*8)
    middle(i).io.ctrl := middleCtrlReg(31-i*8,24-i*8)
    egress(i).io.ctrl := egressCtrlReg(31-i*8,24-i*8)
  }

  //  for(i <- 0 until n/4){
  //    ingress(i).io.input := io.input.slice(i*4, i*4+3)
  //    //io.output.slice(i * 4, i * 4 + 3) := egress(i).io.output//.slice method doesn't work for LHS, so we do the following nested for loop
  //  }
  //Wrapper
  for(i <- 0 until 4) {
    for(k <- 0 until 4) {
      ingress(i).io.input(k) := io.input(i*4+k)
      io.output(i*4+k) := egress(i).io.output(k)
    }
  }

  //generate connections
  for(i <- 0 until 4){
    for(j <- 0 until 4){
      middle(i).io.input(j) := ingress(j).io.output(i)// connect between ingress and middle
      egress(j).io.input(i) := middle(i).io.output(j)// connect between middle and egress
    }
  }

  //32 bits configuration
  when(configure_en && instruction_reg(58,57) === 1.U) {// (5,6) specify the 1st col
    //    for(i <- 0 until 4){
    //      ingress(i).io.ctrl := instruction_reg(56-i*8, 49-i*8)
    //    }
    ingressCtrlReg := instruction_reg(56, 25)
  } .elsewhen(configure_en && instruction_reg(58,57) === 2.U) {// 2nd col
    //    for(i <- 0 until 4){
    //      middle(i).io.ctrl := instruction_reg(56-i*8, 49-i*8)
    //    }
    middleCtrlReg := instruction_reg(56, 25)
  } .elsewhen(configure_en && instruction_reg(58,57) === 3.U) {// 3rd col
    //    for(i <- 0 until 4){
    //      egress(i).io.ctrl := instruction_reg(56-i*8, 49-i*8)
    //    }
    egressCtrlReg := instruction_reg(56, 25)
  }
}


