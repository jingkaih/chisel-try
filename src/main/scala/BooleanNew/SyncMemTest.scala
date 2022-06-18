package BooleanNew
import chisel3._

class SyncMemTest extends Module{
  val io = IO(new Bundle{
    val wr_D_inBuf = Vec(3, Input(UInt(4.W)))
    val wr_Addr_inBuf_en = Input(Bool())// write pointer increment enable
//    val wr_Addr_inBuf = Input(UInt(8.W))// but we make it self increment
    val rd_D_inBuf = Vec(3, Output(UInt(4.W)))
//    val run = Input(Bool())
    val rd_Addr_inBuf = Input(UInt(8.W))
  })
  val banks = Vec(3, UInt(4.W))
  // input data memory declaration
  val inputDataBuffer = SyncReadMem(256, banks)
  val wr_Addr_inBuf = RegInit(0.U(8.W))

// dual port implementation
  when(io.wr_Addr_inBuf_en){
    inputDataBuffer.write(wr_Addr_inBuf, io.wr_D_inBuf)
    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
  }
  io.rd_D_inBuf := inputDataBuffer.read(io.rd_Addr_inBuf)

  //single port implementation



}
object SyncMemMain extends App {
  println("Hello World, I will now generate the Verilog file!")
//  (new chisel3.stage.ChiselStage).emitVerilog(new SyncMemTest())
  (new chisel3.stage.ChiselStage).emitVerilog(new SyncMemTest(), Array("--repl-seq-mem", "-c:SyncMemTest:-o:Buffer.mem.conf"))
}