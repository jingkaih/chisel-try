package BooleanNew
import chisel3._
import chisel3.util._

class BP(Mem1depth:Int = 128, Mem2depth:Int = 128) extends Module{
  val io = IO(new Bundle{
    val wr_en = Input(Bool())
    val rd_Addr = Input(UInt(log2Up(Mem2depth).W))
    val valid = Output(Bool())
  })

  val Mem1 = Mem(Mem1depth, UInt(128.W))
  val Mem2 = Mem(Mem2depth, UInt(64.W))

}
