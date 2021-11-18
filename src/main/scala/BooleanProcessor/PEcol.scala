package BooleanProcessor
import chisel3._


// out has no reg
class PEcol(instrWidth: Int = 3 * 16) extends Module{
  val io = IO(new Bundle{
    val in_a_16 = Vec(16, Input(UInt(64.W)))
    val in_b_16 = Vec(16, Input(UInt(64.W)))
    val out16 = Vec(16, Output(UInt(64.W)))
    val wr_en = Input(Bool())
    val wr_instr = Input(UInt(instrWidth.W))
    val run = Input(Bool())
  })
  val IQ = Mem(128, UInt(instrWidth.W))
  val PC = RegInit(0.U(7.W))
  val wr_addr = RegInit(0.U(7.W))
  val instr = RegInit(0.U(instrWidth.W))

  val in_a_16_regVec = RegNext(io.in_a_16)
  val in_b_16_regVec = RegNext(io.in_b_16)


  val ALU64_16 = for (i <- 0 until 16) yield Module(new ALU(64))
  for(i <- 0 until 16){
    ALU64_16(i).io.in_a := in_a_16_regVec(i)
    ALU64_16(i).io.in_b := in_b_16_regVec(i)
    ALU64_16(i).io.opcode := instr(47-3*i, 45-3*i)
    io.out16(i) := ALU64_16(i).io.out
  }


  when(io.run){
    PC := PC + 1.U
    instr := IQ(PC)
//    for(i <- 0 until 16){
//      io.out16(i) := ALU64_16(i).io.out
//    }

  }.elsewhen(io.wr_en){
    wr_addr := wr_addr + 1.U
    IQ(wr_addr) := io.wr_instr
//    for(i <- 0 until 16){
//      io.out16(i) := 0// to avoid trash value
//    }
  }
}

//// out has reg
//class PEcol(instrWidth: Int = 3 * 16) extends Module{
//  val io = IO(new Bundle{
//    val in_a_16 = Vec(16, Input(UInt(64.W)))
//    val in_b_16 = Vec(16, Input(UInt(64.W)))
//    val out16 = Vec(16, Output(UInt(64.W)))
//    val wr_en = Input(Bool())
//    val wr_instr = Input(UInt(instrWidth.W))
//    val run = Input(Bool())
//  })
//  val IQ = Mem(128, UInt(instrWidth.W))
//  val PC = RegInit(0.U(7.W))
//  val wr_addr = RegInit(0.U(7.W))
//  val instr = RegInit(0.U(instrWidth.W))
//
//  val in_a_16_regVec = RegNext(io.in_a_16)
//  val in_b_16_regVec = RegNext(io.in_b_16)
//  val out_16_regVec = Reg(Vec(16, UInt(64.W)))
//
//  io.out16 := out_16_regVec
//
//  val ALU64_16 = for (i <- 0 until 16) yield Module(new ALU(64))
//  for(i <- 0 until 16){
//    ALU64_16(i).io.in_a := in_a_16_regVec(i)
//    ALU64_16(i).io.in_b := in_b_16_regVec(i)
//    ALU64_16(i).io.opcode := instr(47-3*i, 45-3*i)
//  }
//
//
//  when(io.run){
//    PC := PC + 1.U
//    instr := IQ(PC)
//    for(i <- 0 until 16){
//      out_16_regVec(i) := ALU64_16(i).io.out
//    }
//
//  }.elsewhen(io.wr_en){
//    wr_addr := wr_addr + 1.U
//    IQ(wr_addr) := io.wr_instr
//  }
//}


object PEcolMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new PEcol())
}