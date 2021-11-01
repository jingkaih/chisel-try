package PE

import chisel3._
import chisel3.util._

class Tile (N: Boolean = true, E: Boolean = true, W: Boolean = true, S: Boolean = true, width: Int = 64)extends Module{  //north, east, west, south's in&out
  var io = IO(new Bundle() {
    val controlSignal_wr = Input(UInt(32.W))//write into distributed RAM
    val controlSignal_wr_en = Input(Bool())
    val run = Input(Bool())

    val north_in_a = Input(UInt(64.W))
    val north_in_b = Input(UInt(64.W))
    val north_out_a = Output(UInt(64.W))
    val north_out_b = Output(UInt(64.W))

    val east_in_a = Input(UInt(64.W))
    val east_in_b = Input(UInt(64.W))
    val east_out_a = Output(UInt(64.W))
    val east_out_b = Output(UInt(64.W))

    val west_in_a = Input(UInt(64.W))
    val west_in_b = Input(UInt(64.W))
    val west_out_a = Output(UInt(64.W))
    val west_out_b = Output(UInt(64.W))

    val south_in_a = Input(UInt(64.W))
    val south_in_b = Input(UInt(64.W))
    val south_out_a = Output(UInt(64.W))
    val south_out_b = Output(UInt(64.W))
//    val north_in_a = if (N) Some(Input(UInt(64.W))) else None
//    val north_in_b = if (N) Some(Input(UInt(64.W))) else None
//    val north_out_a = if (N) Some(Output(UInt(64.W))) else None
//    val north_out_b = if (N) Some(Output(UInt(64.W))) else None
//
//    val east_in_a = if (E) Some(Input(UInt(64.W))) else None
//    val east_in_b = if (E) Some(Input(UInt(64.W))) else None
//    val east_out_a = if (E) Some(Output(UInt(64.W))) else None
//    val east_out_b = if (E) Some(Output(UInt(64.W))) else None
//
//    val west_in_a = if (W) Some(Input(UInt(64.W))) else None
//    val west_in_b = if (W) Some(Input(UInt(64.W))) else None
//    val west_out_a = if (W) Some(Output(UInt(64.W))) else None
//    val west_out_b = if (W) Some(Output(UInt(64.W))) else None
//
//    val south_in_a = if (S) Some(Input(UInt(64.W))) else None
//    val south_in_b = if (S) Some(Input(UInt(64.W))) else None
//    val south_out_a = if (S) Some(Output(UInt(64.W))) else None
//    val south_out_b = if (S) Some(Output(UInt(64.W))) else None
  })
  //instruction memory
  //64 bits instruction, depth = 1024
  //3 bits for PE opcode, 8 bits for NEWS inputs whether as wire or register, 3*8 bits for Crossbar control
  val mem = Mem(1024, UInt(64.W))
  val rdAddrBase = RegInit(0.U(10.W))//Program Counter
  val wrAddrBase = RegInit(0.U(10.W))
  var ctrl = RegInit(0.U(64.W))
  //configuration phase: when write enable, instructions are written into RAM
  when(io.controlSignal_wr_en) {
    mem.write(wrAddrBase, io.controlSignal_wr)
    wrAddrBase := wrAddrBase + 1.U
  }
  //PC starts increment
  when(io.run) {
    ctrl := mem.read(rdAddrBase)
    rdAddrBase := rdAddrBase + 1.U
  }


  val crossBar = Module(new CrossBarSwitchNew(width,true,8,8))
  //decoder: extract instr[31,29] and convert to one-hot
  var RegMuxSel = ctrl(36, 29)//3 bit for RegMux//No we need 8 bits for Regmux
  var CrossBarSel = ctrl(28, 5)//3*8 bit for Crossbar, 8 cols each is encoded as a 3-bit
//  var RegMuxSelOneHot = UIntToOH(RegMuxSel)
  var RegMuxSelOneHot = RegMuxSel

  //var CrossBarSelOneHot//one hot decode is done in sub module "CrossBarSwitch"
  val CrossBarSelVec = Wire(Vec(8, UInt(3.W)))
  for(i <- 0 until 8){
    CrossBarSelVec(i) := CrossBarSel(2+i*3, i*3)
  }
  crossBar.io.select := CrossBarSelVec
  //inputs from 4 directions can be registered or not (it depends on configurations)

//ugly code
  if(N){
//    val RegMuxVecNorth = Vec(2, Module(new RegMux(width = width)).io)
//    val RegMuxVecNorth = Vec(Seq.fill(2) {Module(new RegMux(width = width)).io})
    val RegMuxVecNorth = for (i <- 0 until 2) yield Module(new RegMux(width = width)).io
    RegMuxVecNorth(0).in := io.north_in_a//north_in A
    RegMuxVecNorth(0).sel := RegMuxSelOneHot(0)
    crossBar.io.fw_left(0) := RegMuxVecNorth(0).out

    RegMuxVecNorth(1).in := io.north_in_b//north_in B
    RegMuxVecNorth(1).sel := RegMuxSelOneHot(1)
    crossBar.io.fw_left(1) := RegMuxVecNorth(1).out
  }

  if(E){
//    val RegMuxVecEast = Vec(2, Module(new RegMux(width = width)).io)
    val RegMuxVecEast = for (i <- 0 until 2) yield Module(new RegMux(width = width)).io
    RegMuxVecEast(0).in := io.east_in_a//north_in A
    RegMuxVecEast(0).sel := RegMuxSelOneHot(2)
    crossBar.io.fw_left(2) := RegMuxVecEast(0).out

    RegMuxVecEast(1).in := io.east_in_b//north_in B
    RegMuxVecEast(1).sel := RegMuxSelOneHot(3)
    crossBar.io.fw_left(3) := RegMuxVecEast(1).out
  }

  if(W){
//    val RegMuxVecWest = Vec(2, Module(new RegMux(width = width)).io)
    val RegMuxVecWest = for (i <- 0 until 2) yield Module(new RegMux(width = width)).io
    RegMuxVecWest(0).in := io.west_in_a//north_in A
    RegMuxVecWest(0).sel := RegMuxSelOneHot(4)
    crossBar.io.fw_left(4) := RegMuxVecWest(0).out

    RegMuxVecWest(1).in := io.west_in_b//north_in B
    RegMuxVecWest(1).sel := RegMuxSelOneHot(5)
    crossBar.io.fw_left(5) := RegMuxVecWest(1).out
  }

  if(S){
//    val RegMuxVecSouth = Vec(2, Module(new RegMux(width = width)).io)
    val RegMuxVecSouth = for (i <- 0 until 2) yield Module(new RegMux(width = width)).io
    RegMuxVecSouth(0).in := io.south_in_a//north_in A
    RegMuxVecSouth(0).sel := RegMuxSelOneHot(6)
    crossBar.io.fw_left(6) := RegMuxVecSouth(0).out

    RegMuxVecSouth(1).in := io.south_in_b//north_in B
    RegMuxVecSouth(1).sel := RegMuxSelOneHot(7)
    crossBar.io.fw_left(7) := RegMuxVecSouth(1).out
  }

  io.north_out_a := crossBar.io.fw_bottom(0)
  io.north_out_b := crossBar.io.fw_bottom(1)
  io.east_out_a := crossBar.io.fw_bottom(2)
  io.east_out_b := crossBar.io.fw_bottom(3)
  io.west_out_a := crossBar.io.fw_bottom(4)
  io.west_out_b := crossBar.io.fw_bottom(5)
  io.south_out_a := crossBar.io.fw_bottom(6)
  io.south_out_b := crossBar.io.fw_bottom(7)


}

object TileMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new Tile())
}
