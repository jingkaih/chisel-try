//package PE
//
//import chisel3._
//import chisel3.util._
//
////2 by 2 crossbar
//class CLOScell2(num_in: Int = 2, num_out: Int = 2, datawidth: Int = 64) extends Module{
//  val io = IO(new Bundle{
//    val input = Vec(num_in, Input(UInt(datawidth.W)))
//    val output = Vec(num_out, Output(UInt(datawidth.W)))
//    val ctrl = Vec(num_out, Input(UInt(log2Up(num_in).W)))// 2 * 1bit
//  })
//  val cell2 = Module(new CrossBarSwitchNew(64,true,2,2)).io
//  cell2.select := io.ctrl
//  cell2.fw_left := io.input
//  io.output:= cell2.fw_bottom
//}
////4 by 4 crossbar
//class CLOScell4(num_in: Int = 4, num_out: Int = 4, datawidth: Int = 64) extends Module{
//  val io = IO(new Bundle{
//    val input = Vec(num_in, Input(UInt(datawidth.W)))
//    val output = Vec(num_out, Output(UInt(datawidth.W)))
//    val ctrl = Vec(num_out, Input(UInt(log2Up(num_in).W)))// 4 * 2bit
//  })
//  val cell4 = Module(new CrossBarSwitchNew(64,true,4,4)).io
//  cell4.select := io.ctrl
//  cell4.fw_left := io.input
//  io.output:= cell4.fw_bottom
//}
//
//
//class CLOS(n: Int = 8) extends Module{  //i = 8,16,32,...
//  val io = IO(new Bundle{
//    val input = Vec(n, Input(UInt(64.W)))
//    val output = Vec(n, Output(UInt(64.W)))
//    val ctrl = if(n == 8) Some(Vec(40, Input(Bool()))) else if(n == 16) Some(Vec(96, Input(Bool())))// for now, 40 bits for 8*8, 96 bits for 16*16
//  })
//
////  val mem = Mem(1024, UInt(64.W))
////  val rdAddrBase = RegInit(0.U(10.W))//Program Counter
////  val wrAddrBase = RegInit(0.U(10.W))
////  var ctrl = RegInit(0.U(64.W))
////  //configuration phase: when write enable, instructions are written into RAM
////  when(io.controlSignal_wr_en) {
////    mem.write(wrAddrBase, io.controlSignal_wr)
////    wrAddrBase := wrAddrBase + 1.U
////  }
////  //PC starts increment
////  when(io.run) {
////    ctrl := mem.read(rdAddrBase)
////    rdAddrBase := rdAddrBase + 1.U
////  }
//
//
//  val ingress = for (i <- 0 until n/4) yield Module(new CLOScell4())
//  val egress = for (i <- 0 until n/4) yield Module(new CLOScell4())
//
//
////  for(i <- 0 until n/4){
////    ingress(i).io.input := io.input.slice(i*4, i*4+3)
////    //io.output.slice(i * 4, i * 4 + 3) := egress(i).io.output//.slice method doesn't work for LHS, so we do the following nested for loop
////  }
//
//  //Wrapper
//  for(i <- 0 until n/4) {
//    for(k <- 0 until 4) {
//      ingress(i).io.input(k) := io.input(i*4+k)
//      io.output(i*4+k) := egress(i).io.output(k)
//    }
//  }
//
//  if(n == 8){
//    val middle = for (i <- 0 until 4) yield Module(new CLOScell2())
//    for(i <- 0 until 4){
//      for(j <- 0 until 2){
//        middle(i).io.input(j) := ingress(j).io.output(i)// The ith Crossbar in the middle layer has its jth input connects to the ingress jth Crossbar's ith output
//        egress(j).io.input(i) := middle(i).io.output(j)// connect between middle and egress
//      }
//    }
//  } else if(n == 16){
//    val middle = for (i <- 0 until 4) yield Module(new CLOScell4())
//    for(i <- 0 until 4){
//      for(j <- 0 until 4) {
//        middle(i).io.input(j) := ingress(j).io.output(i)// connect between ingress and middle
//        egress(j).io.input(i) := middle(i).io.output(j)// connect between middle and egress
//        ctrl
//      }
//    }
////  } else if (log2Up(n)/2 == 0){ // n = 64, 256
////    val middle = for (i <- 0 until 4) yield Module(new CLOS(n/4))//wrong! because sub clos are seperated
////  } else {
////    val middle = for (i <- 0 until )
//  }
//
//}
//
//
//object CLOS extends App {
//  println("Hello World, I will now generate the Verilog file!")
//  (new chisel3.stage.ChiselStage).emitVerilog(new CLOS(16))
//}