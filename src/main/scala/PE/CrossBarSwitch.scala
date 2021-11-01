//package PE
//
//import chisel3._
//import chisel3.util._
//
//class CrossBarCell(val width: Int) extends Module { //one way cross point cell
//  val io = IO(new Bundle {
//    val fw_left = Input(UInt(width.W))
//    val fw_top = Input(UInt(width.W))
//    val fw_bottom = Output(UInt(width.W))
//    val fw_right = Output(UInt(width.W))
//    val sel = Input(Bool())
//  })
//    io.fw_right := io.fw_left
//    when (io.sel) {
//      io.fw_bottom := io.fw_left
//    } .otherwise {
//      io.fw_bottom := io.fw_top
//    }
//}
//
////m inbound wires, n outbound wires
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
//
//  //val cells = Vec(n, Vec(m, Module(new CrossBarCell(width))))// instantiate a M by N matrix
//  val cells = VecInit(Seq.fill(n) {VecInit(Seq.fill(m) {Module(new CrossBarCell(width)).io})})
//
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
//  for (i <- 0 until n; j <- 0 until m) {
//    val cur_cell = cells(i)(j)
//
//    if (i == 0) {
//      cur_cell.io.fw_left := io.fw_left(j)// the left_in of the leftmost cell will be connected to the inbound wires
//    } else {
//      val left_cell = cells(i - 1)(j)
//      cur_cell.io.fw_left := left_cell.io.fw_right// others are just connecting to the right_out of their left neighbors
//    }
//
//    if (j == 0) {
//      cur_cell.io.fw_top := 0.U// the topmost cells have input=0 from their tops (GND)
//    } else {
//      val top_cell = cells(i)(j - 1)
//      cur_cell.io.fw_top := top_cell.io.fw_bottom //top_in port of others are just connecting to the bottom_in of their top neighbors
//    }
//
//    if (sel_input) {
//      cur_cell.io.sel := select_onehot(i)(j)
//    } else {
//      cur_cell.io.sel := select_onehot(j)(i)
//    }
//  }
//  //Generate output for the entire switchbar matrix
//  for (i <- 0 until n) {
//    io.fw_bottom(i) := cells(i)(m - 1).io.fw_bottom
//  }
//}
//
//
//object CrossBarMain extends App {
//  println("Hello World, I will now generate the Verilog file!")
//  (new chisel3.stage.ChiselStage).emitVerilog(new CrossBarSwitch(64,true,8,8))
//}
