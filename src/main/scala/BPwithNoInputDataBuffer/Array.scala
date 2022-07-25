package BPwithNoInputDataBuffer
import chisel3._
import chisel3.util._

class MEMDataBundle(dataWidth: Int = 64) extends Bundle{
  val validBit = Bool()
  val data = UInt(dataWidth.W)
}

class MEMTagDataBundle(TagWidth: Int = 2, CounterWidth: Int = 3) extends Bundle{
  val Tag = UInt(TagWidth.W)
  val RoundCnt = UInt(CounterWidth.W)
}

class PEArray(PEcolCnt: Int = 16, dataWidth: Int = 64, dataRAMaddrWidth: Int = 8, TagWidth: Int = 2, CounterWidth: Int = 3) extends Module {
  val io = IO(new Bundle {
    //instruction memory
    val wr_en_mem1 = Vec(PEcolCnt, Input(Bool()))
    val wr_en_mem2 = Vec(PEcolCnt, Input(Bool()))
    val wr_en_mem3 = Vec(PEcolCnt, Input(Bool()))
    val wr_en_mem4 = Vec(PEcolCnt, Input(Bool()))
    val wr_en_mem5 = Vec(PEcolCnt, Input(Bool()))
    val wr_en_mem6 = Vec(PEcolCnt, Input(Bool()))
    val wr_instr_mem1 = Vec(PEcolCnt, Input(UInt(288.W)))
    val wr_instr_mem2 = Vec(PEcolCnt, Input(UInt(128.W)))
    val wr_instr_mem3 = Vec(PEcolCnt, Input(UInt(128.W)))
    val wr_instr_mem4 = Vec(PEcolCnt, Input(UInt(128.W)))
    val wr_instr_mem5 = Vec(PEcolCnt, Input(UInt(128.W)))
    val wr_instr_mem6 = Vec(PEcolCnt, Input(UInt(128.W)))
    val d_in = Vec(32, Input(new PEDataBundle(dataWidth)))
    val d_out = Vec(32, Output(new PEDataBundle(dataWidth)))
    val Tag_in = Input(new MEMTagDataBundle(TagWidth, CounterWidth))
    val Tag_out = Output(new MEMTagDataBundle(TagWidth, CounterWidth))
    val Addr_in = Input(UInt(dataRAMaddrWidth.W))
    val Addr_out = Output(UInt(dataRAMaddrWidth.W))
    val PC_in = Input(UInt(dataRAMaddrWidth.W))
    val PC_out = Output(UInt(dataRAMaddrWidth.W))
    val beginRun = Input(Bool())
    //data memory interface (input)
  })
  val array = for(i <- 0 until PEcolCnt) yield Module(new BuildingBlockNew(dataWidth, dataRAMaddrWidth, TagWidth, CounterWidth))
  array(0).io.d_in := io.d_in
  array(0).io.Tag_in := io.Tag_in


  //below needs to be modified
  array(0).io.PC1_in := io.PC_in
  array(0).io.Addr_in := io.Addr_in



  array(0).io.wr_en_mem1 := io.wr_en_mem1(0)
  array(0).io.wr_en_mem2 := io.wr_en_mem2(0)
  array(0).io.wr_en_mem3 := io.wr_en_mem3(0)
  array(0).io.wr_en_mem4 := io.wr_en_mem4(0)
  array(0).io.wr_en_mem5 := io.wr_en_mem5(0)
  array(0).io.wr_en_mem6 := io.wr_en_mem6(0)
  array(0).io.wr_instr_mem1 := io.wr_instr_mem1(0)
  array(0).io.wr_instr_mem2 := io.wr_instr_mem2(0)
  array(0).io.wr_instr_mem3 := io.wr_instr_mem3(0)
  array(0).io.wr_instr_mem4 := io.wr_instr_mem4(0)
  array(0).io.wr_instr_mem5 := io.wr_instr_mem5(0)
  array(0).io.wr_instr_mem6 := io.wr_instr_mem6(0)
  //  array(0).io.run_in := io.beginRun
  array(0).io.run_in := io.beginRun
  //  array(0).io.PC1_in := PC
  //  array(0).io.Addr_in := Addr
  for(i <- 1 until PEcolCnt){
    array(i).io.d_in := array(i-1).io.d_out
    array(i).io.Tag_in := array(i-1).io.Tag_out
    array(i).io.wr_en_mem1 := io.wr_en_mem1(i)
    array(i).io.wr_en_mem2 := io.wr_en_mem2(i)
    array(i).io.wr_en_mem3 := io.wr_en_mem3(i)
    array(i).io.wr_en_mem4 := io.wr_en_mem4(i)
    array(i).io.wr_en_mem5 := io.wr_en_mem5(i)
    array(i).io.wr_en_mem6 := io.wr_en_mem6(i)
    array(i).io.wr_instr_mem1 := io.wr_instr_mem1(i)
    array(i).io.wr_instr_mem2 := io.wr_instr_mem2(i)
    array(i).io.wr_instr_mem3 := io.wr_instr_mem3(i)
    array(i).io.wr_instr_mem4 := io.wr_instr_mem4(i)
    array(i).io.wr_instr_mem5 := io.wr_instr_mem5(i)
    array(i).io.wr_instr_mem6 := io.wr_instr_mem6(i)
    array(i).io.run_in := array(i-1).io.run_out
    array(i).io.PC1_in := array(i-1).io.PC6_out
    array(i).io.Addr_in := array(i-1).io.Addr_out
  }

  io.d_out := array(PEcolCnt-1).io.d_out
  io.Tag_out := array(PEcolCnt-1).io.Tag_out
  io.Addr_out := array(PEcolCnt-1).io.Addr_out
  io.PC_out := array(PEcolCnt-1).io.PC6_out
  //  io.PC_out := array(PEcolCnt-1).io.PC6_out

}


object PEArrayMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new PEArray(16, 64, 8, 2, 3), Array("--repl-seq-mem", "-c:PEArray:-o:PEArray.mem.conf"))
}