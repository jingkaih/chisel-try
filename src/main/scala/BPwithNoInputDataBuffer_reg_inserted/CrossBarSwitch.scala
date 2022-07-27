package BPwithNoInputDataBuffer_reg_inserted


import chisel3._
import chisel3.util._

class CrossBarCell(val width: Int) extends Module { //one way cross point cell
  val io = IO(new Bundle {
    val fw_left = Input(UInt(width.W))
    val fw_top = Input(UInt(width.W))
    val fw_bottom = Output(UInt(width.W))
    val fw_right = Output(UInt(width.W))
    val sel = Input(Bool())
  })
  io.fw_right := io.fw_left
  when (io.sel) {
    io.fw_bottom := io.fw_left
  } .otherwise {
    io.fw_bottom := io.fw_top
  }
}
//// reg the input (i.e., fw_left)
//m inbound wires, n outbound wires
//class CrossBarSwitch(val width: Int, val sel_input: Boolean, val m: Int, val n: Int) extends Module {
//  val io = IO(new Bundle {
//    val fw_left = Vec(m, Input(UInt(width.W))) // width is for each wire and there are total m wires for the West input
//    val fw_bottom = Vec(n, Output(UInt(width.W))) // n wires for the South output
//    val select = if (sel_input) {
//      Vec(n, Input(UInt(log2Up(m).W)))// decoded sel signal. Each of the n outgoing wires is assigned a log2Up(m) bits long control signal
//    } else {
//      Vec(m, Input(UInt(log2Up(n).W)))// Each of the m incoming wires is assigned a log2Up(n) bits long control signal
//    }
//  })
//  val fw_left_reg = RegNext(io.fw_left)
//
//  //val cells = Vec(n, Vec(m, Module(new CrossBarCell(width)).io))// instantiate a M by N matrix
//  //val cells = VecInit(Seq.fill(n) {VecInit(Seq.fill(m) {Module(new CrossBarCell(width)).io})})
//  val cells_2d = for (i <- 0 until m*n) yield Module(new CrossBarCell(width))
//
//  val select_onehot = if (sel_input) {
//    Range(0, n).map {
//      i => UIntToOH(io.select(i), m) // encode as m-bit-long one-hot code
//    }
//  } else {
//    Range(0, m).map {
//      i => UIntToOH(io.select(i), n) // encode as n-bit-long one-hot code// to achieve "multi-cast", we should not use this method
//    }
//  }
//  //Connecting cells
//
//  for(j <- 0 until m){
//    for(i <- 0 until n){
//      val cur_cell = cells_2d(i+n*j)
//
//      if(j == 0){
//        cur_cell.io.fw_top := 0.U
//      } else {
//        val top_cell = cells_2d(i+n*(j-1))
//        cur_cell.io.fw_top := top_cell.io.fw_bottom
//      }
//
//      if(i == 0){
//        cur_cell.io.fw_left := fw_left_reg(j)
////        cur_cell.io.fw_left := io.fw_left(j)
//      } else {
//        val left_cell = cells_2d(i-1+n*j)
//        cur_cell.io.fw_left := left_cell.io.fw_right
//      }
//
//      if (sel_input) {
//        cur_cell.io.sel := select_onehot(i)(j)
//      } else {
//        cur_cell.io.sel := select_onehot(j)(i)
//      }
//    }
//  }
//  for (i <- 0 until n) {
//    io.fw_bottom(i) := cells_2d(i+n*(m-1)).io.fw_bottom
//  }
//
//}



//// reg the output (i.e., fw_bottom)
class CrossBarSwitch(val width: Int, val sel_input: Boolean, val m: Int, val n: Int) extends Module {
  val io = IO(new Bundle {
    val fw_left = Vec(m, Input(UInt(width.W))) // width is for each wire and there are total m wires for the West input
    val fw_bottom = Vec(n, Output(UInt(width.W))) // n wires for the South output
    val select = if (sel_input) {
      Vec(n, Input(UInt(log2Up(m).W)))// decoded sel signal. Each of the n outgoing wires is assigned a log2Up(m) bits long control signal
    } else {
      Vec(m, Input(UInt(log2Up(n).W)))// Each of the m incoming wires is assigned a log2Up(n) bits long control signal
    }
  })
  //  val fw_left_reg = RegNext(io.fw_left)
  val fw_bottom_reg = Reg(Vec(n, UInt(width.W)))
  //val cells = Vec(n, Vec(m, Module(new CrossBarCell(width)).io))// instantiate a M by N matrix
  //val cells = VecInit(Seq.fill(n) {VecInit(Seq.fill(m) {Module(new CrossBarCell(width)).io})})
  val cells_2d = for (i <- 0 until m*n) yield Module(new CrossBarCell(width))

  val select_onehot = if (sel_input) {
    Range(0, n).map {
      i => UIntToOH(io.select(i), m) // encode as m-bit-long one-hot code
    }
  } else {
    Range(0, m).map {
      i => UIntToOH(io.select(i), n) // encode as n-bit-long one-hot code// to achieve "multi-cast", we should not use this method
    }
  }
  //Connecting cells

  for(j <- 0 until m){
    for(i <- 0 until n){
      val cur_cell = cells_2d(i+n*j)

      if(j == 0){
        cur_cell.io.fw_top := 0.U
      } else {
        val top_cell = cells_2d(i+n*(j-1))
        cur_cell.io.fw_top := top_cell.io.fw_bottom
      }

      if(i == 0){
        //        cur_cell.io.fw_left := fw_left_reg(j)
        cur_cell.io.fw_left := io.fw_left(j)
      } else {
        val left_cell = cells_2d(i-1+n*j)
        cur_cell.io.fw_left := left_cell.io.fw_right
      }

      if (sel_input) {
        cur_cell.io.sel := select_onehot(i)(j)
      } else {
        cur_cell.io.sel := select_onehot(j)(i)
      }
    }
  }
  for (i <- 0 until n) {
    //    io.fw_bottom(i) := cells_2d(i+n*(m-1)).io.fw_bottom
    fw_bottom_reg(i) := cells_2d(i+n*(m-1)).io.fw_bottom
  }
  //////////////////////////////////////I add this
  io.fw_bottom := fw_bottom_reg
  //////////////////////////////////////I add this
}


object CrossBarMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new CrossBarSwitch(65,true,4,4))
}
