package BooleanNew
import chisel3._
import chisel3.util._

class BUFFER(bankscnt: Int = 64) extends Module{
  val io = IO(new Bundle{
    val wr_D = Vec(bankscnt, Input(new MEMDataBundle()))
    val wr_Addr = Input(UInt(8.W))// write to input buffer
    val wr_en = Input(Bool())
    val rd_Addr = Input(UInt(8.W))// read from output buffer
    val rd_D = Vec(bankscnt, Output(new MEMDataBundle()))
  })

  val banks = Vec(bankscnt, new MEMDataBundle())
  val Buffer = Mem(256, banks)

  Buffer(io.wr_Addr) := DontCare


  when(io.wr_en){
    Buffer(io.wr_Addr) := io.wr_D
//    wrAddr1 := wrAddr1 + 1.U
  }

  io.rd_D := Buffer(io.rd_Addr)
}

object BUFFERMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new BUFFER(bankscnt = 3))
}
