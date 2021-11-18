package BooleanProcessor
import chisel3._
import chisel3.util._

//16 by 16 implementation
//class Array(instrWidthPEcol: Int = 3 * 16, instrWidthCLOS: Int = 96) extends Module{
//  val io = IO(new Bundle{
////    val wr_en_PEcol = Vec(16, Input(Bool()))// each PE col has a Enable signal? maybe 1 Enable is enough
////    val wr_instr_PEcol = Vec(16, Input(UInt(instrWidthPEcol.W)))// too costly
//    val wr_en_vec = Vec(31, Input(Bool()))
//    val wr_instr_PEcol = Vec(16, Input(instrWidthPEcol.W))// consume every cycle
//    val wr_instr_CLOS = Vec(15, Input(instrWidthCLOS.W))// consume every cycle
//    val config = Input(Bool())//start config. It will take 31 cycles to read 31 instruction from instructionMEM and then write them into 31 distributed RAMs
//  })
//
//  val dataMEM =Mem(100, UInt(2048.W))// partition? interleave?
//  val
//  val CLOS16_15 = for(i <- 0 until 15) yield Module(new CLOS16())
//  CLOS16_15(0).io.
//}
class MyQueue(width: Int = 96) extends Module {
  val io = IO(new Bundle {
    val in = Flipped(Decoupled(UInt(width.W)))
    val out = Decoupled(UInt(width.W))// decoupled is out direction by default// output: bits, valid; input: ready
    val cnt = Output(UInt(9.W))
  })
  val q = Module(new Queue(UInt(width.W), 512))
  q.io.enq <> io.in
  io.out <> q.io.deq
  io.cnt := q.io.count
}
class Array(instrWidthPEcol: Int = 3 * 16, instrWidthCLOS: Int = 96) extends Module{
  val io = IO(new Bundle{
    //    val wr_en_PEcol = Vec(16, Input(Bool()))// each PE col has a Enable signal? maybe 1 Enable is enough
    //    val wr_instr_PEcol = Vec(16, Input(UInt(instrWidthPEcol.W)))// too costly
    val wr_en = Input(Bool())
    val wr_instr = Input(UInt(instrWidthCLOS.W))// consume every cycle
    val q_ready = Output(Bool())//assert when MEM is not full
    val config = Input(Bool())//start config. It will take 31 cycles to read 31 instruction from instructionMEM and then write them into 31 distributed RAMs
  })
  val q = Module(new MyQueue())
  //in:
  // q.io.in.bits
  // q.io.in.valid
  // q.io.out.ready
  //out:
  // q.io.in.ready
  // q.io.out.valid
  // q.io.out.bits

  q.io.in.valid := io.wr_en
  q.io.in.bits := io.wr_instr
  io.q_ready := q.io.in.ready




  val PEcol_15 = for(i <- 0 until 15) yield Module(new PEcol())// 2nd to 16th
  val CLOS16_15 = for(i <- 0 until 15) yield Module(new CLOS16())
  CLOS16_15(0).io.in16 := PEcol_15(0).io.out16




}

//class Array(instrWidthPEcol: Int = 3 * 16, instrWidthCLOS: Int = 96) extends Module{
//  val io = IO(new Bundle{
//    //    val wr_en_PEcol = Vec(16, Input(Bool()))// each PE col has a Enable signal? maybe 1 Enable is enough
//    //    val wr_instr_PEcol = Vec(16, Input(UInt(instrWidthPEcol.W)))// too costly
//    val wr_en = Input(Bool())
//    val wr_instr = Input(UInt(instrWidthCLOS.W))// consume every cycle
//    val config = Input(Bool())//start config. It will take 31 cycles to read 31 instruction from instructionMEM and then write them into 31 distributed RAMs
//  })
//
//  val MEM = Mem(512, UInt(128.W))// to store both instr and data, two data (128 bits) read from mem at the same time
//  val rd_value = RegInit(UInt(128.W))
//
//  val wr_addr = RegInit(0.U(9.W))
//  when(io.wr_en){
//    MEM(wr_addr) := io.wr_instr
//    wr_addr := wr_addr + 1.U
//  }
//  val rd_addr = RegInit(0.U(9.W))
//  when(io.config){
//    rd_value := MEM(rd_addr)
//    rd_addr := rd_addr + 1.U
//  }
//
//  val CLOS16_15 = for(i <- 0 until 15) yield Module(new CLOS16())
//  CLOS16_15(0).io.
//}