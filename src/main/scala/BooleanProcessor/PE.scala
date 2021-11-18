package BooleanProcessor
import chisel3._

//PE with IQ
class PE(width: Int = 64, instrWidth: Int = 3) extends Module{
  val io = IO(new Bundle{
    val in_a = Input(UInt(width.W))
    val in_b = Input(UInt(width.W))
    val wr_en = Input(Bool())
    val wr_instr = Input(UInt(instrWidth.W))
    val run = Input(Bool())// always 1 when running
    val out = Output(UInt(width.W))
  })
  val in_a_reg = RegInit(0.U(64.W))
  val in_b_reg = RegInit(0.U(64.W))
  val out_reg = RegInit(0.U(64.W))

  val ALU64 = Module(new ALU(64))

  val IQ = Mem(100, UInt(instrWidth.W))// instruction queue
  val PC = RegInit(0.U(7.W))
  val wr_addr = RegInit(0.U(7.W))
  val instr = RegInit(0.U(instrWidth.W))

  ALU64.io.in_a := in_a_reg
  ALU64.io.in_b := in_b_reg

  ALU64.io.opcode := instr
  io.out := out_reg

  when(io.run){
    PC := PC + 1.U
    instr := IQ(PC)
    in_a_reg := io.in_a
    in_b_reg := io.in_b
    out_reg := ALU64.io.out
  }.elsewhen(io.wr_en){
    wr_addr := wr_addr + 1.U
    IQ(wr_addr) := io.wr_instr
  }
}

object PEMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new PE())
}