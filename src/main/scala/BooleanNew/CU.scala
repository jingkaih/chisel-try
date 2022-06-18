package BooleanNew
import chisel3._

class CU extends Module{
  val io = IO(new Bundle{
    val run = Input(Bool())
    val wr_PC1 = Input(UInt(8.W))
    val wr_PC1_en = Input(Bool())// last for 1 cycle
    val PC6_out = Output(UInt(8.W))
  })

  val PC1 = RegInit(0.U(8.W))
  val PC2 = RegInit(0.U(8.W))
  val PC3 = RegInit(0.U(8.W))
  val PC4 = RegInit(0.U(8.W))
  val PC5 = RegInit(0.U(8.W))
  val PC6 = RegInit(0.U(8.W))

  val run1 = io.run
  val run2 = RegNext(io.run)//1 cycle later, you start reading from Mem2
  val run3 = RegNext(RegNext(io.run))//2 cycles later, you start reading from Mem3
  val run4 = RegNext(RegNext(RegNext(io.run)))//3 cycles later, you start reading from Mem4
  val run5 = RegNext(RegNext(RegNext(RegNext(io.run))))//4 cycles later, you start reading from Mem5
  val run6 = RegNext(RegNext(RegNext(RegNext(RegNext(io.run)))))//5 cycles later, you start reading from Mem6

  when(run1){
    when(io.wr_PC1_en){// overwrite PC1
      PC1 := io.wr_PC1
    } .otherwise{
      PC1 := PC1 + 1.U
    }
  }.otherwise{
    PC1 := PC1
  }

  when(run2){
    //    PC2 := PC2 + 1.U
    PC2 := PC1
  }.otherwise{
    PC2 := PC2
  }

  when(run3){
    //    PC3 := PC3 + 1.U
    PC3 := PC2
  }.otherwise{
    PC3 := PC3
  }

  when(run4){
    //    PC4 := PC4 + 1.U
    PC4 := PC3
  }.otherwise{
    PC4 := PC4
  }

  when(run5){
    //    PC5 := PC5 + 1.U
    PC5 := PC4
  }.otherwise{
    PC5 := PC5
  }

  when(run6){
    //    PC6 := PC6 + 1.U
    PC6 := PC5
  }.otherwise{
    PC6 := PC6
  }

  io.PC6_out := PC6

}

object CUMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new CU())
}