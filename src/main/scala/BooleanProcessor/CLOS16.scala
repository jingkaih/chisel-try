package BooleanProcessor
import chisel3._

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

class CLOS16(instrWidth: Int = 96) extends Module{
  val io = IO(new Bundle{
    val in16 = Vec(16, Input(UInt(64.W)))
    val out16 = Vec(16, Output(UInt(64.W)))
    val wr_en = Input(Bool())
    val wr_instr = Input(UInt(instrWidth.W))// 96 bits = 32 * 3
    val run = Input(Bool())
  })
  // instruction queue
  val IQ = Mem(100, UInt(instrWidth.W))
  val PC = RegInit(0.U(7.W))
  val wr_addr = RegInit(0.U(7.W))
  val instr = RegInit(0.U(instrWidth.W))

  when(io.run){
    PC := PC + 1.U
    instr := IQ(PC)
  }.elsewhen(io.wr_en){
    wr_addr := wr_addr + 1.U
    IQ(wr_addr) := io.wr_instr
  }
  val ingress = for (i <- 0 until 4) yield Module(new CLOScell4())
  val egress = for (i <- 0 until 4) yield Module(new CLOScell4())
  val middle = for (i <- 0 until 4) yield Module(new CLOScell4())

  //Wrapper
  for(i <- 0 until 4) {
    for(k <- 0 until 4) {
      ingress(i).io.in4(k) := io.in16(i*4+k)
      io.out16(i*4+k) := egress(i).io.out4(k)
    }
  }
  //extraction
  val ingressCtrlReg = instr(95,64)
  val middleCtrlReg = RegNext(instr(63,32))
  val egressCtrlReg = RegNext(RegNext(instr(31,0)))

  //assign ctrl bits
  for(i <- 0 until 4){
    ingress(i).io.ctrl := ingressCtrlReg(31-i*8,24-i*8)
    middle(i).io.ctrl := middleCtrlReg(31-i*8,24-i*8)
    egress(i).io.ctrl := egressCtrlReg(31-i*8,24-i*8)
  }
  //make connections
  for(i <- 0 until 4){
    for(j <- 0 until 4){
      middle(i).io.in4(j) := ingress(j).io.out4(i)// connect between ingress and middle
      egress(j).io.in4(i) := middle(i).io.out4(j)// connect between middle and egress
    }
  }
}

//class CLOS64(instrWidth:Int = 128)extends Module{
//  val io = IO(new Bundle{
//    val in64 = Vec(64, Input(UInt(64.W)))// comes from 32 PE
//    val out64 = Vec(64, Output(UInt(64.W)))
//    val wr_en = Input(Bool())// wr_en should last for 5 cycles
//    val wr_instr = Input(UInt(instrWidth.W))// 128 bits only for 1 stage// it takes 5 cycles to write to 5 IQs
//    val run = Input(Bool())
//  })
//  // 5 instruction queues
//  val IQ = Vec(5, Mem(128, UInt(instrWidth.W)))
//  val PC = RegInit(0.U(7.W))
//  val wr_addr = RegInit(0.U(7.W))
//  val instr = Vec(5, RegInit(0.U(instrWidth.W)))
//  val wr_en_set = RegInit(false.B)// set 1 cycle
//
//  when(io.run){
//    PC := PC + 1.U
//    instr := IQ(PC)
//  }.elsewhen(wr_en){
//
//   when(!io.wr_en){
//     wr_en_last := false.B
//   }
//  }.elsewhen(io.wr_en){
//    wr_en_last := true.B
//
//
//
//    wr_addr := wr_addr + 1.U
//    for(i <- 0 until 5){
//      IQ(i)(wr_addr) := io.wr_instr
//    }
//  }
//}

//object CLOS16Main extends App {
//  println("Hello World, I will now generate the Verilog file!")
//  (new chisel3.stage.ChiselStage).emitVerilog(new CLOS16())
//}