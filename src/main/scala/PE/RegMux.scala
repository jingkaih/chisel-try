package PE
import chisel3._

class RegMux (width:Int = 64) extends Module{
  val io = IO(new Bundle {
    val in = Input(UInt(width.W))
    val out = Output(UInt(width.W))
    val sel = Input(Bool())
  })

  var reg = Reg(UInt(width.W))
  reg := io.in
  when(io.sel === false.B){
    io.out := io.in
  }.elsewhen(io.sel === true.B){
    io.out := reg
  }.otherwise{
    io.out := io.in
  }
}

object trialtest extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new RegMux)
}