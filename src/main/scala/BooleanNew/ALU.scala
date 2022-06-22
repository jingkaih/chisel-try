package BooleanNew

import chisel3._
import chisel3.util.{is, switch}

//2 ss registers and 9-bit opcode; without paired Splitter/NOTT gate (individual Splitter/NOTT PE)
class ALU(width: Int = 64) extends Module {
  var io = IO(new Bundle{
    val opcode = Input(UInt(9.W))
    val in_a = Input(UInt(width.W))
    val in_b = Input(UInt(width.W))
    val out_a = Output(UInt(width.W))
    val out_b = Output(UInt(width.W))
    //    val tagin_a = Input(UInt(2.W))
    //    val tagin_b = Input(UInt(2.W))
    //    val tagout_a = Output(UInt(2.W))
    //    val tagout_b = Output(UInt(2.W))
    val validin_a = Input(Bool())
    val validin_b = Input(Bool())
    val validout_a = Output(Bool())
    val validout_b = Output(Bool())
  })


  val snapshot_a = RegInit(0.U(width.W))
  val snapshot_b = RegInit(0.U(width.W))

  val snapshot_valid_a = RegInit(false.B)
  val snapshot_valid_b = RegInit(false.B)
  //  val snapshot_tag_a = RegInit(0.U(2.W))

  //temp_result and temp_valid are what the output port is getting updated from
  val temp_result_a = RegInit(0.U(width.W))
  val temp_result_b = RegInit(0.U(width.W))
  //  val temp_tag_a = RegInit(0.U(2.W))
  //  val temp_tag_b = RegInit(0.U(2.W))
  val temp_valid_a = RegInit(0.B)
  val temp_valid_b = RegInit(0.B)


  val opcode = VecInit(io.opcode.asBools)// opcode = Vec(7, Bools())

  val gate_a = WireDefault(0.U(width.W))//Wire(UInt(width.W))// intermediate value between io.in_a and the actual input that is going to be fed into AND gate
  val gate_b = WireDefault(0.U(width.W))//Wire(UInt(width.W))// invert when needed



  val gate_valid_a = WireDefault(0.B)
  val gate_valid_b = WireDefault(0.B)

  when(opcode(8) === 1.B && opcode(7) === 0.B){ //AND
    when(opcode(6) === 1.B && opcode(5) === 1.B){
      temp_result_a := ~(gate_a & gate_b)//NAND
      temp_result_b := gate_b//invalidated anyway
    }.otherwise{
      temp_result_a := gate_a & gate_b//AND
      temp_result_b := gate_b//invalidated anyway
    }
  }.elsewhen(opcode(8) === 1.B && opcode(7) === 1.B){ //OR
    when(opcode(6) === 1.B && opcode(5) === 1.B){
      temp_result_a := ~(gate_a | gate_b)//NOR
      temp_result_b := gate_b//invalidated anyway
    }.otherwise{
      temp_result_a := gate_a | gate_b//OR
      temp_result_b := gate_b//invalidated anyway
    }
  }.elsewhen(opcode(8) === 0.B && opcode(7) === 1.B){ //XOR
    when(opcode(5) === 1.B){//                                    opcode(6) is not specified, might occur error
      temp_result_a := ~(gate_a ^ gate_b)//XNOR
      temp_result_b := gate_b//invalidated anyway
    }.otherwise{
      temp_result_a := gate_a ^ gate_b//XOR
      temp_result_b := gate_b//invalidated anyway
    }
  }.elsewhen(opcode(8) === 0.B && opcode(7) === 0.B){ //Splitter;NOT
    when(opcode(5) === 0.B){// Splitter                            opcode(6) not specified, problem might occur
      temp_result_a := gate_a
      temp_result_b := gate_b//                                    possibly valid output b, unlike above
    }.elsewhen(opcode(5) === 1.B){// NOTT
      temp_result_a := ~gate_a
      temp_result_b := gate_b
    }
  }


  //program gate_a, gate_b in 3 classes regarding inverter (Instr[6:5]):
  //class1: Instr[8:5]=1X01 (inverter on input A)
  //class2: Instr[8:5]=1X10 (inverter on input B)
  //class3: Instr[8:5]=others (No inverter, plain input)
  //    Each class is further divided into 4 classes regarding SS or fresh
  //    i.e., Instr[4:3]
  when(opcode(8) === 1.B && opcode(6) === 0.B && opcode(5) === 1.B){//it's an AND, OR. A need to be negated. Instr[8:5]=1X01
    when(opcode(4) === 0.B && opcode(3) === 0.B){//A is fresh; B is fresh
      gate_a := ~io.in_a
      gate_b := io.in_b
      gate_valid_a := io.validin_a
      gate_valid_b := io.validin_b
    }.elsewhen(opcode(4) === 1.B && opcode(3) === 0.B){//A is ss; B is fresh
      gate_a := ~snapshot_a
      gate_b := io.in_b
      gate_valid_a := snapshot_valid_a
      gate_valid_b := io.validin_b
    }.elsewhen(opcode(4) === 0.B && opcode(3) === 1.B){//A is fresh; B is ss
      gate_a := ~io.in_a
      gate_b := snapshot_b
      gate_valid_a := io.validin_a
      gate_valid_b := snapshot_valid_b
    }.otherwise{//A is ss; B is ss
      gate_a := ~snapshot_a
      gate_b := snapshot_b
      gate_valid_a := snapshot_valid_a
      gate_valid_b := snapshot_valid_b
    }
  }.elsewhen(opcode(8) === 1.B && opcode(6) === 1.B && opcode(5) === 0.B){//it's an AND, OR. B need to be reversed. Instr[8:5]=1X10
    when(opcode(4) === 0.B && opcode(3) === 0.B){//A is fresh; B is fresh
      gate_a := io.in_a
      gate_b := ~io.in_b
      gate_valid_a := io.validin_a
      gate_valid_b := io.validin_b
    }.elsewhen(opcode(4) === 1.B && opcode(3) === 0.B){//A is ss; B is fresh
      gate_a := snapshot_a
      gate_b := ~io.in_b
      gate_valid_a := snapshot_valid_a
      gate_valid_b := io.validin_b
    }.elsewhen(opcode(4) === 0.B && opcode(3) === 1.B){//A is fresh; B is ss
      gate_a := io.in_a
      gate_b := ~snapshot_b
      gate_valid_a := io.validin_a
      gate_valid_b := snapshot_valid_b
    }.otherwise{//A is ss; B is ss
      gate_a := snapshot_a
      gate_b := ~snapshot_b
      gate_valid_a := snapshot_valid_a
      gate_valid_b := snapshot_valid_b
    }
  }.otherwise{
    when(opcode(4) === 0.B && opcode(3) === 0.B){//A is fresh; B is fresh
      gate_a := io.in_a
      gate_b := io.in_b
      gate_valid_a := io.validin_a
      gate_valid_b := io.validin_b
    }.elsewhen(opcode(4) === 1.B && opcode(3) === 0.B){//A is ss; B is fresh
      gate_a := snapshot_a
      gate_b := io.in_b
      gate_valid_a := snapshot_valid_a
      gate_valid_b := io.validin_b
    }.elsewhen(opcode(4) === 0.B && opcode(3) === 1.B){//A is fresh; B is ss
      gate_a := io.in_a
      gate_b := snapshot_b
      gate_valid_a := io.validin_a
      gate_valid_b := snapshot_valid_b
    }.otherwise{//A is ss; B is ss
      gate_a := snapshot_a
      gate_b := snapshot_b
      gate_valid_a := snapshot_valid_a
      gate_valid_b := snapshot_valid_b
    }
  }

  when(opcode(2) === 1.B){//take a new snapshot for ss A
    snapshot_a := io.in_a
    snapshot_valid_a := io.validin_a
  } .elsewhen(opcode(2) === 0.B){//hold
    snapshot_a := snapshot_a
    snapshot_valid_a := snapshot_valid_a
  }

  when(opcode(1) === 1.B){//take a new snapshot for ss B
    snapshot_b := io.in_b
    snapshot_valid_b := io.validin_b
  } .elsewhen(opcode(1) === 0.B){//hold
    snapshot_b := snapshot_b
    snapshot_valid_b := snapshot_valid_b
  }


  when(opcode(8) === 0.B && opcode(7) === 0.B){//Splitter;NOT
    when(opcode(0) === 0.B) { //invalidate the output port B
      temp_valid_a := gate_valid_a
      temp_valid_b := 0.B
    }. elsewhen(opcode(0) === 1.B){
      temp_valid_a := gate_valid_a
      temp_valid_b := gate_valid_b
    }
  }.otherwise{//AND;OR;XOR
    when(opcode(0) === 0.B) { //invalidate the output port A
      temp_valid_a := 0.B
      temp_valid_b := gate_valid_b
    }. elsewhen(opcode(0) === 1.B){
      temp_valid_a := gate_valid_a
      temp_valid_b := gate_valid_b
    }
  }


//// NO pass-through
//  when(opcode(1) === 0.B && opcode(0) === 0.B){ // invalidate both output
//    temp_valid_a := 0.B
//    temp_valid_b := 0.B
//    temp_result_b := io.in_b
//  } .elsewhen(opcode(1) === 0.B && opcode(0) === 1.B){ // no pass-through data
//    temp_valid_a := gate_valid_a && gate_valid_b
//    temp_valid_b := 0.B
//    temp_result_b := io.in_b
//  } .elsewhen(opcode(1) === 1.B && opcode(0) === 0.B){ // pass original A through, so it's io.in_a instead of gate_a
//    temp_valid_a := gate_valid_a && gate_valid_b
//    temp_valid_b := io.validin_a
//    temp_result_b := io.in_a
//  } .elsewhen(opcode(1) === 1.B && opcode(0) === 1.B){ // pass original B through, so it's io.in_b instead of gate_b
//    temp_valid_a := gate_valid_a && gate_valid_b
//    temp_valid_b := io.validin_b
//    temp_result_b := io.in_b
//  }



  io.out_a := temp_result_a
  io.out_b := temp_result_b
  io.validout_a := temp_valid_a
  io.validout_b := temp_valid_b
}



////2 ss registers and 9-bit opcode; with paired Splitter/NOTT gate
//class ALU(width: Int = 64) extends Module {
//  var io = IO(new Bundle{
//    val opcode = Input(UInt(9.W))
//    val in_a = Input(UInt(width.W))
//    val in_b = Input(UInt(width.W))
//    val out_a = Output(UInt(width.W))
//    val out_b = Output(UInt(width.W))
//    //    val tagin_a = Input(UInt(2.W))
//    //    val tagin_b = Input(UInt(2.W))
//    //    val tagout_a = Output(UInt(2.W))
//    //    val tagout_b = Output(UInt(2.W))
//    val validin_a = Input(Bool())
//    val validin_b = Input(Bool())
//    val validout_a = Output(Bool())
//    val validout_b = Output(Bool())
//  })
//
//
//  val snapshot_a = RegInit(0.U(width.W))
//  val snapshot_b = RegInit(0.U(width.W))
//
//  val snapshot_valid_a = RegInit(false.B)
//  val snapshot_valid_b = RegInit(false.B)
//  //  val snapshot_tag_a = RegInit(0.U(2.W))
//
//  //temp_result and temp_valid are what the output port is getting updated from
//  val temp_result_a = RegInit(0.U(width.W))
//  val temp_result_b = RegInit(0.U(width.W))
//  //  val temp_tag_a = RegInit(0.U(2.W))
//  //  val temp_tag_b = RegInit(0.U(2.W))
//  val temp_valid_a = RegInit(0.B)
//  val temp_valid_b = RegInit(0.B)
//
//
//  val opcode = VecInit(io.opcode.asBools)// opcode = Vec(7, Bools())
//
//  val gate_a = WireDefault(0.U(width.W))//Wire(UInt(width.W))// intermediate value between io.in_a and the actual input that is going to be fed into AND gate
//  val gate_b = WireDefault(0.U(width.W))//Wire(UInt(width.W))// invert when needed
//
//
//
//  val gate_valid_a = WireDefault(0.B)
//  val gate_valid_b = WireDefault(0.B)
//
//  when(opcode(8) === 1.B && opcode(7) === 0.B){ //AND
//    when(opcode(6) === 1.B && opcode(5) === 1.B){
//      temp_result_a := ~(gate_a & gate_b)//NAND
//      temp_result_b := gate_b//invalidated anyway
//    }.otherwise{
//      temp_result_a := gate_a & gate_b//AND
//      temp_result_b := gate_b//invalidated anyway
//    }
//  }.elsewhen(opcode(8) === 1.B && opcode(7) === 1.B){ //OR
//    when(opcode(6) === 1.B && opcode(5) === 1.B){
//      temp_result_a := ~(gate_a | gate_b)//NOR
//      temp_result_b := gate_b//invalidated anyway
//    }.otherwise{
//      temp_result_a := gate_a | gate_b//OR
//      temp_result_b := gate_b//invalidated anyway
//    }
//  }.elsewhen(opcode(8) === 0.B && opcode(7) === 1.B){ //XOR
//    when(opcode(5) === 1.B){//                                    opcode(6) is not specified, might occur error
//      temp_result_a := ~(gate_a ^ gate_b)//XNOR
//      temp_result_b := gate_b//invalidated anyway
//    }.otherwise{
//      temp_result_a := gate_a ^ gate_b//XOR
//      temp_result_b := gate_b//invalidated anyway
//    }
//  }.elsewhen(opcode(8) === 0.B && opcode(7) === 0.B){ //Splitter;NOT
//    when(opcode(6) === 1.B && opcode(5) === 1.B){//11:(NOT;NOT)
//      temp_result_a := ~gate_a
//      temp_result_b := ~gate_b//                                    possibly valid output b, unlike above
//    }.elsewhen(opcode(6) === 1.B && opcode(5) === 0.B){//10:(NOT;Splitter)
//      temp_result_a := ~gate_a
//      temp_result_b := gate_b
//    }.elsewhen(opcode(6) === 0.B && opcode(5) === 1.B){//01:(Splitter;NOT)
//      temp_result_a := gate_a
//      temp_result_b := ~gate_b
//    }.otherwise{//00:(Splitter;Splitter)
//      temp_result_a := gate_a
//      temp_result_b := gate_b
//    }
//  }
//
//
//  //program gate_a, gate_b in 3 classes regarding inverter (Instr[6:5]):
//  //class1: Instr[8:5]=1X01 (inverter on input A)
//  //class2: Instr[8:5]=1X10 (inverter on input B)
//  //class3: Instr[8:5]=others (No inverter, plain input)
//  //    Each class is further divided into 4 classes regarding SS or fresh
//  //    i.e., Instr[4:3]
//  when(opcode(8) === 1.B && opcode(6) === 0.B && opcode(5) === 1.B){//it's an AND, OR. A need to be reversed. Instr[8:5]=1X01
//    when(opcode(4) === 0.B && opcode(3) === 0.B){//A is fresh; B is fresh
//      gate_a := ~io.in_a
//      gate_b := io.in_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := io.validin_b
//    }.elsewhen(opcode(4) === 1.B && opcode(3) === 0.B){//A is ss; B is fresh
//      gate_a := ~snapshot_a
//      gate_b := io.in_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := io.validin_b
//    }.elsewhen(opcode(4) === 0.B && opcode(3) === 1.B){//A is fresh; B is ss
//      gate_a := ~io.in_a
//      gate_b := snapshot_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := snapshot_valid_b
//    }.otherwise{//A is ss; B is ss
//      gate_a := ~snapshot_a
//      gate_b := snapshot_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := snapshot_valid_b
//    }
//  }.elsewhen(opcode(8) === 1.B && opcode(6) === 1.B && opcode(5) === 0.B){//it's an AND, OR. B need to be reversed. Instr[8:5]=1X10
//    when(opcode(4) === 0.B && opcode(3) === 0.B){//A is fresh; B is fresh
//      gate_a := io.in_a
//      gate_b := ~io.in_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := io.validin_b
//    }.elsewhen(opcode(4) === 1.B && opcode(3) === 0.B){//A is ss; B is fresh
//      gate_a := snapshot_a
//      gate_b := ~io.in_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := io.validin_b
//    }.elsewhen(opcode(4) === 0.B && opcode(3) === 1.B){//A is fresh; B is ss
//      gate_a := io.in_a
//      gate_b := ~snapshot_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := snapshot_valid_b
//    }.otherwise{//A is ss; B is ss
//      gate_a := snapshot_a
//      gate_b := ~snapshot_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := snapshot_valid_b
//    }
//  }.otherwise{
//    when(opcode(4) === 0.B && opcode(3) === 0.B){//A is fresh; B is fresh
//      gate_a := io.in_a
//      gate_b := io.in_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := io.validin_b
//    }.elsewhen(opcode(4) === 1.B && opcode(3) === 0.B){//A is ss; B is fresh
//      gate_a := snapshot_a
//      gate_b := io.in_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := io.validin_b
//    }.elsewhen(opcode(4) === 0.B && opcode(3) === 1.B){//A is fresh; B is ss
//      gate_a := io.in_a
//      gate_b := snapshot_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := snapshot_valid_b
//    }.otherwise{//A is ss; B is ss
//      gate_a := snapshot_a
//      gate_b := snapshot_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := snapshot_valid_b
//    }
//  }
//
//  when(opcode(2) === 1.B){//take a new snapshot for input A
//    snapshot_a := snapshot_a
//    snapshot_valid_a := snapshot_valid_a
//  } .elsewhen(opcode(2) === 0.B){//hold
//    snapshot_a := io.in_a
//    snapshot_valid_a := io.validin_a
//  }
//
//  when(opcode(1) === 1.B){//take a new snapshot for input B
//    snapshot_a := snapshot_a
//    snapshot_valid_a := snapshot_valid_a
//  } .elsewhen(opcode(1) === 0.B){//hold
//    snapshot_a := io.in_a
//    snapshot_valid_a := io.validin_a
//  }
//
//
//  when(opcode(8) === 0.B && opcode(7) === 0.B){//Splitter;NOT
//    when(opcode(0) === 0.B){//invalidate the output port B
//      temp_valid_a :=
//      temp_valid_b := 0.B
//    }
//  }.otherwise{//AND;OR;XOR
//
//  }
//
//
//
//
//  when(opcode(1) === 0.B && opcode(0) === 0.B){ // invalidate both output
//    temp_valid_a := 0.B
//    temp_valid_b := 0.B
//    temp_result_b := io.in_b
//  } .elsewhen(opcode(1) === 0.B && opcode(0) === 1.B){ // no pass-through data
//    temp_valid_a := gate_valid_a && gate_valid_b
//    temp_valid_b := 0.B
//    temp_result_b := io.in_b
//  } .elsewhen(opcode(1) === 1.B && opcode(0) === 0.B){ // pass original A through, so it's io.in_a instead of gate_a
//    temp_valid_a := gate_valid_a && gate_valid_b
//    temp_valid_b := io.validin_a
//    temp_result_b := io.in_a
//  } .elsewhen(opcode(1) === 1.B && opcode(0) === 1.B){ // pass original B through, so it's io.in_b instead of gate_b
//    temp_valid_a := gate_valid_a && gate_valid_b
//    temp_valid_b := io.validin_b
//    temp_result_b := io.in_b
//  }
//
//
//
//  io.out_a := temp_result_a
//  io.out_b := temp_result_b
//  io.validout_a := temp_valid_a
//  io.validout_b := temp_valid_b
//}




////only 1 ss reg
//class ALU(width: Int = 64) extends Module {
//  var io = IO(new Bundle{
//    val opcode = Input(UInt(7.W))
//    val in_a = Input(UInt(width.W))
//    val in_b = Input(UInt(width.W))
//    val out_a = Output(UInt(width.W))
//    val out_b = Output(UInt(width.W))
//    //    val tagin_a = Input(UInt(2.W))
//    //    val tagin_b = Input(UInt(2.W))
//    //    val tagout_a = Output(UInt(2.W))
//    //    val tagout_b = Output(UInt(2.W))
//    val validin_a = Input(Bool())
//    val validin_b = Input(Bool())
//    val validout_a = Output(Bool())
//    val validout_b = Output(Bool())
//  })
//
//
//  val snapshot_a = RegInit(0.U(width.W))
//
//  val snapshot_valid_a = RegInit(false.B)
//  //  val snapshot_tag_a = RegInit(0.U(2.W))
//
//  val temp_result_a = RegInit(0.U(width.W))
//  val temp_result_b = RegInit(0.U(width.W))
//  //  val temp_tag_a = RegInit(0.U(2.W))
//  //  val temp_tag_b = RegInit(0.U(2.W))
//  val temp_valid_a = RegInit(0.B)
//  val temp_valid_b = RegInit(0.B)
//
//
//  val opcode = VecInit(io.opcode.asBools)// opcode = Vec(7, Bools())
//
//  val gate_a = WireDefault(0.U(width.W))//Wire(UInt(width.W))// intermediate value between io.in_a and the actual input that is going to be fed into AND gate
//  val gate_b = WireDefault(0.U(width.W))//Wire(UInt(width.W))// invert when needed
//
//
//
//  val gate_valid_a = WireDefault(0.B)
//  val gate_valid_b = WireDefault(0.B)
//
//  when(opcode(6) === 0.B){// opcode(6) = 0 means AND
//    when(opcode(5) === 1.B && opcode(4) === 1.B){
//      temp_result_a := ~(gate_a & gate_b)
//    }.otherwise{
//      temp_result_a := gate_a & gate_b
//    }
//  }. elsewhen(opcode(6) === 1.B){// opcode(6) = 1 means OR
//    when(opcode(5) === 1.B && opcode(4) === 1.B){
//      temp_result_a := ~(gate_a | gate_b)
//    }.otherwise{
//      temp_result_a := gate_a | gate_b
//    }
//  }
//
//  when(opcode(5) === 0.B && opcode(4) === 0.B){ // A&B
//    when(opcode(3) === 0.B){ // fresh A
//      gate_a := io.in_a
//      gate_b := io.in_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := io.validin_b
//    } .elsewhen(opcode(3) === 1.B){ // snapshot_reg A
//      gate_a := snapshot_a
//      gate_b := io.in_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := io.validin_b
//    }
//  }. elsewhen(opcode(5) === 0.B && opcode(4) === 1.B){ // ~A&B
//    when(opcode(3) === 0.B){ // fresh A
//      gate_a := ~io.in_a
//      gate_b := io.in_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := io.validin_b
//    } .elsewhen(opcode(3) === 1.B){ // snapshot_reg A
//      gate_a := ~snapshot_a
//      gate_b := io.in_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := io.validin_b
//    }
//  }. elsewhen(opcode(5) === 1.B && opcode(4) === 0.B){// A&~B
//    when(opcode(3) === 0.B){ // fresh A
//      gate_a := io.in_a
//      gate_b := ~io.in_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := io.validin_b
//    } .elsewhen(opcode(3) === 1.B){ // snapshot_reg A
//      gate_a := snapshot_a
//      gate_b := ~io.in_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := io.validin_b
//    }
//  }. elsewhen(opcode(5) === 1.B && opcode(4) === 1.B){// ~(A&B) is same with A&B
//    when(opcode(3) === 0.B){ // fresh A
//      gate_a := io.in_a
//      gate_b := io.in_b
//      gate_valid_a := io.validin_a
//      gate_valid_b := io.validin_b
//    } .elsewhen(opcode(3) === 1.B){ // snapshot_reg A
//      gate_a := snapshot_a
//      gate_b := io.in_b
//      gate_valid_a := snapshot_valid_a
//      gate_valid_b := io.validin_b
//    }
//  }
//
//  when(opcode(2) === 0.B){
//    snapshot_a := snapshot_a
//    snapshot_valid_a := snapshot_valid_a
//  } .elsewhen(opcode(2) === 1.B){
//    snapshot_a := io.in_a
//    snapshot_valid_a := io.validin_a
//  }
//
//  when(opcode(1) === 0.B && opcode(0) === 0.B){ // invalidate both output
//    temp_valid_a := 0.B
//    temp_valid_b := 0.B
//    temp_result_b := io.in_b
//  } .elsewhen(opcode(1) === 0.B && opcode(0) === 1.B){ // no pass-through data
//    temp_valid_a := gate_valid_a && gate_valid_b
//    temp_valid_b := 0.B
//    temp_result_b := io.in_b
//  } .elsewhen(opcode(1) === 1.B && opcode(0) === 0.B){ // pass original A through, so it's io.in_a instead of gate_a
//    temp_valid_a := gate_valid_a && gate_valid_b
//    temp_valid_b := io.validin_a
//    temp_result_b := io.in_a
//  } .elsewhen(opcode(1) === 1.B && opcode(0) === 1.B){ // pass original B through, so it's io.in_b instead of gate_b
//    temp_valid_a := gate_valid_a && gate_valid_b
//    temp_valid_b := io.validin_b
//    temp_result_b := io.in_b
//  }
//
//  io.out_a := temp_result_a
//  io.out_b := temp_result_b
//  io.validout_a := temp_valid_a
//  io.validout_b := temp_valid_b
//}






////deprecated
//class ALU(width: Int = 64) extends Module {
//  var io = IO(new Bundle{
//    val opcode = Input(UInt(7.W))
//    val in_a = Input(UInt(width.W))
//    val in_b = Input(UInt(width.W))
//    val out_a = Output(UInt(width.W))
//    val out_b = Output(UInt(width.W))
////    val tagin_a = Input(UInt(2.W))
////    val tagin_b = Input(UInt(2.W))
////    val tagout_a = Output(UInt(2.W))
////    val tagout_b = Output(UInt(2.W))
//    val validin_a = Input(Bool())
//    val validin_b = Input(Bool())
//    val validout_a = Output(Bool())
//    val validout_b = Output(Bool())
//  })
//
//
//  val snapshot_a = RegInit(0.U(width.W))
//
//  val snapshot_valid_a = RegInit(false.B)
////  val snapshot_tag_a = RegInit(0.U(2.W))
//
//  val temp_result_a = RegInit(0.U(width.W))
//  val temp_result_b = RegInit(0.U(width.W))
////  val temp_tag_a = RegInit(0.U(2.W))
////  val temp_tag_b = RegInit(0.U(2.W))
//  val temp_valid_a = RegInit(0.B)
//  val temp_valid_b = RegInit(0.B)
//
//  switch(io.opcode){
//    //opcode = 0 no-op
//    //opcode = 1~48 AND
//    //opcdoe = 49~96 OR
//    //opcode = 96~127 not used as for now, maybe make it XOR in the future
//
//    is(0.U) {
//      // Use multicasting of CLOS to invalidate multiple data. No need to use PE to invalidate input in all cases, it's inefficient!
//      temp_result_a := io.in_a//or 0????
//      temp_result_b := io.in_b
//      temp_valid_a := 0.B
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    //12 kinds of operations for "A & B"
//    is(1.U) {// use newest, and take snapshot of current input a; Pass input b through
//      temp_result_a := io.in_a & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(2.U) {// use newest, and take snapshot of current input a; Pass input a through
//      temp_result_a := io.in_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(3.U) {// use newest, and take snapshot of current input a; Pass nothing through
//      temp_result_a := io.in_a & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(4.U) {// use newest data, hold snapshot; pass input b through
//      temp_result_a := io.in_a & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(5.U) {// use newest data, hold snapshot; pass input a through
//      temp_result_a := io.in_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(6.U) {// use newest data, hold snapshot; pass nothing through
//      temp_result_a := io.in_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(7.U) {// use preserved data as input; discard snapshot; pass input b through
//      temp_result_a := snapshot_a & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(8.U) {// use preserved data as input; discard snapshot; pass input a through
//      temp_result_a := snapshot_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(9.U) {// use preserved data as input; discard snapshot; pass nothing through
//      temp_result_a := snapshot_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(10.U) {// use preserved data as input and still hold it; pass input b through
//      temp_result_a := snapshot_a & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(11.U) {// use preserved data as input and still hold it; pass input a through
//      temp_result_a := snapshot_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(12.U) {// use preserved data as input and still hold it; pass nothing through
//      temp_result_a := snapshot_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//
//    //12 kinds of operations for "A' & B"
//    is(13.U) {// use newest, and take snapshot of current input a; Pass input b through
//      temp_result_a := ~(io.in_a) & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(14.U) {// use newest, and take snapshot of current input a; Pass input a through
//      temp_result_a := ~(io.in_a) & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(15.U) {// use newest, and take snapshot of current input a; Pass nothing through
//      temp_result_a := ~(io.in_a) & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(16.U) {// use newest data, hold snapshot; pass input b through
//      temp_result_a := ~(io.in_a) & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(17.U) {// use newest data, hold snapshot; pass input a through
//      temp_result_a := ~(io.in_a) & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(18.U) {// use newest data, hold snapshot; pass nothing through
//      temp_result_a := ~(io.in_a) & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(19.U) {// use preserved data as input; discard snapshot; pass input b through
//      temp_result_a := ~snapshot_a & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(20.U) {// use preserved data as input; discard snapshot; pass input a through
//      temp_result_a := ~snapshot_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(21.U) {// use preserved data as input; discard snapshot; pass nothing through
//      temp_result_a := ~snapshot_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(22.U) {// use preserved data as input and still hold it; pass input b through
//      temp_result_a := ~snapshot_a & io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(23.U) {// use preserved data as input and still hold it; pass input a through
//      temp_result_a := ~snapshot_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(24.U) {// use preserved data as input and still hold it; pass nothing through
//      temp_result_a := ~snapshot_a & io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//
//    //12 kinds of operations for "A & B'"
//    is(25.U) {// use newest, and take snapshot of current input a; Pass input b through
//      temp_result_a := io.in_a & ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(26.U) {// use newest, and take snapshot of current input a; Pass input a through
//      temp_result_a := io.in_a & ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(27.U) {// use newest, and take snapshot of current input a; Pass nothing through
//      temp_result_a := io.in_a & ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(28.U) {// use newest data, hold snapshot; pass input b through
//      temp_result_a := io.in_a & ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(29.U) {// use newest data, hold snapshot; pass input a through
//      temp_result_a := io.in_a & ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(30.U) {// use newest data, hold snapshot; pass nothing through
//      temp_result_a := io.in_a & ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(31.U) {// use preserved data as input; discard snapshot; pass input b through
//      temp_result_a := snapshot_a & ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(32.U) {// use preserved data as input; discard snapshot; pass input a through
//      temp_result_a := snapshot_a & ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(33.U) {// use preserved data as input; discard snapshot; pass nothing through
//      temp_result_a := snapshot_a & ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(34.U) {// use preserved data as input and still hold it; pass input b through
//      temp_result_a := snapshot_a & ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(35.U) {// use preserved data as input and still hold it; pass input a through
//      temp_result_a := snapshot_a & ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(36.U) {// use preserved data as input and still hold it; pass nothing through
//      temp_result_a := snapshot_a & ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//
//    //12 kinds of operations for "~(A & B)"
//    is(37.U) {// use newest, and take snapshot of current input a; Pass input b through
//      temp_result_a := ~(io.in_a & io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(38.U) {// use newest, and take snapshot of current input a; Pass input a through
//      temp_result_a := ~(io.in_a & io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(39.U) {// use newest, and take snapshot of current input a; Pass nothing through
//      temp_result_a := ~(io.in_a & io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(40.U) {// use newest data, hold snapshot; pass input b through
//      temp_result_a := ~(io.in_a & io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(41.U) {// use newest data, hold snapshot; pass input a through
//      temp_result_a := ~(io.in_a & io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(42.U) {// use newest data, hold snapshot; pass nothing through
//      temp_result_a := ~(io.in_a & io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(43.U) {// use preserved data as input; discard snapshot; pass input b through
//      temp_result_a := ~(snapshot_a & io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(44.U) {// use preserved data as input; discard snapshot; pass input a through
//      temp_result_a := ~(snapshot_a & io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(45.U) {// use preserved data as input; discard snapshot; pass nothing through
//      temp_result_a := ~(snapshot_a & io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(46.U) {// use preserved data as input and still hold it; pass input b through
//      temp_result_a := ~(snapshot_a & io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(47.U) {// use preserved data as input and still hold it; pass input a through
//      temp_result_a := ~(snapshot_a & io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(48.U) {// use preserved data as input and still hold it; pass nothing through
//      temp_result_a := ~(snapshot_a & io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//
//    //12 kinds of operations for "A | B"
//    is(49.U) {// use newest, and take snapshot of current input a; Pass input b through
//      temp_result_a := io.in_a | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(50.U) {// use newest, and take snapshot of current input a; Pass input a through
//      temp_result_a := io.in_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(51.U) {// use newest, and take snapshot of current input a; Pass nothing through
//      temp_result_a := io.in_a | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(52.U) {// use newest data, hold snapshot; pass input b through
//      temp_result_a := io.in_a | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(53.U) {// use newest data, hold snapshot; pass input a through
//      temp_result_a := io.in_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(54.U) {// use newest data, hold snapshot; pass nothing through
//      temp_result_a := io.in_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(55.U) {// use preserved data as input; discard snapshot; pass input b through
//      temp_result_a := snapshot_a | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(56.U) {// use preserved data as input; discard snapshot; pass input a through
//      temp_result_a := snapshot_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(57.U) {// use preserved data as input; discard snapshot; pass nothing through
//      temp_result_a := snapshot_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(58.U) {// use preserved data as input and still hold it; pass input b through
//      temp_result_a := snapshot_a | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(59.U) {// use preserved data as input and still hold it; pass input a through
//      temp_result_a := snapshot_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(60.U) {// use preserved data as input and still hold it; pass nothing through
//      temp_result_a := snapshot_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//
//    //12 kinds of operations for "A' | B"
//    is(61.U) {// use newest, and take snapshot of current input a; Pass input b through
//      temp_result_a := ~(io.in_a) | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(62.U) {// use newest, and take snapshot of current input a; Pass input a through
//      temp_result_a := ~(io.in_a) | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(63.U) {// use newest, and take snapshot of current input a; Pass nothing through
//      temp_result_a := ~(io.in_a) | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(64.U) {// use newest data, hold snapshot; pass input b through
//      temp_result_a := ~(io.in_a) | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(65.U) {// use newest data, hold snapshot; pass input a through
//      temp_result_a := ~(io.in_a) | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(66.U) {// use newest data, hold snapshot; pass nothing through
//      temp_result_a := ~(io.in_a) | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(67.U) {// use preserved data as input; discard snapshot; pass input b through
//      temp_result_a := ~snapshot_a | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(68.U) {// use preserved data as input; discard snapshot; pass input a through
//      temp_result_a := ~snapshot_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(69.U) {// use preserved data as input; discard snapshot; pass nothing through
//      temp_result_a := ~snapshot_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(70.U) {// use preserved data as input and still hold it; pass input b through
//      temp_result_a := ~snapshot_a | io.in_b
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(71.U) {// use preserved data as input and still hold it; pass input a through
//      temp_result_a := ~snapshot_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(72.U) {// use preserved data as input and still hold it; pass nothing through
//      temp_result_a := ~snapshot_a | io.in_b
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//
//    //12 kinds of operations for "A | B'"
//    is(73.U) {// use newest, and take snapshot of current input a; Pass input b through
//      temp_result_a := io.in_a | ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(74.U) {// use newest, and take snapshot of current input a; Pass input a through
//      temp_result_a := io.in_a | ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(75.U) {// use newest, and take snapshot of current input a; Pass nothing through
//      temp_result_a := io.in_a | ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(76.U) {// use newest data, hold snapshot; pass input b through
//      temp_result_a := io.in_a | ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(77.U) {// use newest data, hold snapshot; pass input a through
//      temp_result_a := io.in_a | ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(78.U) {// use newest data, hold snapshot; pass nothing through
//      temp_result_a := io.in_a | ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(79.U) {// use preserved data as input; discard snapshot; pass input b through
//      temp_result_a := snapshot_a | ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(80.U) {// use preserved data as input; discard snapshot; pass input a through
//      temp_result_a := snapshot_a | ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(81.U) {// use preserved data as input; discard snapshot; pass nothing through
//      temp_result_a := snapshot_a | ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(82.U) {// use preserved data as input and still hold it; pass input b through
//      temp_result_a := snapshot_a | ~(io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(83.U) {// use preserved data as input and still hold it; pass input a through
//      temp_result_a := snapshot_a | ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(84.U) {// use preserved data as input and still hold it; pass nothing through
//      temp_result_a := snapshot_a | ~(io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//
//    //12 kinds of operations for "~(A | B)"
//    is(85.U) {// use newest, and take snapshot of current input a; Pass input b through
//      temp_result_a := ~(io.in_a | io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(86.U) {// use newest, and take snapshot of current input a; Pass input a through
//      temp_result_a := ~(io.in_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(87.U) {// use newest, and take snapshot of current input a; Pass nothing through
//      temp_result_a := ~(io.in_a | io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(88.U) {// use newest data, hold snapshot; pass input b through
//      temp_result_a := ~(io.in_a | io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(89.U) {// use newest data, hold snapshot; pass input a through
//      temp_result_a := ~(io.in_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(90.U) {// use newest data, hold snapshot; pass nothing through
//      temp_result_a := ~(io.in_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(91.U) {// use preserved data as input; discard snapshot; pass input b through
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(92.U) {// use preserved data as input; discard snapshot; pass input a through
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(93.U) {// use preserved data as input; discard snapshot; pass nothing through
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := io.in_a
//      snapshot_valid_a := io.validin_a
//    }
//    is(94.U) {// use preserved data as input and still hold it; pass input b through
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_b
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(95.U) {// use preserved data as input and still hold it; pass input a through
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(96.U) {// use preserved data as input and still hold it; pass nothing through
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//
//
//    // unused; leave for future
//    is(97.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(98.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(99.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(100.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(101.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(102.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(103.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(104.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(105.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(106.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(107.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(108.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(109.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(110.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(111.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(112.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(113.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(114.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(115.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(116.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(117.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(118.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(119.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(120.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(121.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(122.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(123.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(124.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(125.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(126.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//    is(127.U) {
//      temp_result_a := ~(snapshot_a | io.in_b)
//      temp_result_b := io.in_a
//      temp_valid_a := snapshot_valid_a & io.validin_b
//      temp_valid_b := 0.B
//
//      snapshot_a := snapshot_a
//      snapshot_valid_a := snapshot_valid_a
//    }
//  }
//
//
//  io.out_a := temp_result_a
//  io.out_b := temp_result_b
//  io.validout_a := temp_valid_a
//  io.validout_b := temp_valid_b
//}

















//class ALU(width: Int = 64) extends Module {
//  var io = IO(new Bundle{
//    val opcode = Input(UInt(5.W))
//    val in_a = Input(UInt(width.W))
//    val in_b = Input(UInt(width.W))
//    val out_a = Output(UInt(width.W))
//    val out_b = Output(UInt(width.W))
//    val tagin_a = Input(UInt(2.W))
//    val tagin_b = Input(UInt(2.W))
//    val tagout_a = Output(UInt(2.W))
//    val tagout_b = Output(UInt(2.W))
//    val validin_a = Input(Bool())
//    val validin_b = Input(Bool())
//    val validout_a = Output(Bool())
//    val validout_b = Output(Bool())
//  })
//
//  val opcode = io.opcode
//  val a = io.in_a
//  val b = io.in_b
////  val regClk3_a = RegNext(RegNext(RegNext(a)))// Freeze input_a for 3 clocks. This is for Initial Interval = 3
//  val regClk1_a = RegNext(a)// Freeze input_a for 1 clocks. This is for Initial Interval = 1
////  val regClk1_a_not = ~regClk1_a
////  val regClk1_b = RegNext(b)// also sometimes you may want to do regClk1_a&regClk1_b to have a delayed output when you have to wait for your brother who is handling width issue
//  val regClk1_valid_a = RegNext(io.validin_a)
//  val regClk1_valid_b = RegNext(io.validin_b)
//  val temp_result_a = RegInit(0.U(width.W))
//  val temp_result_b = RegInit(0.U(width.W))
//  val temp_valid_a = RegInit(0.B)
//  val temp_valid_b = RegInit(0.B)
//
////  temp_valid_a := io.validin_a////////记得改这里！让指令去修改valid bit
////  temp_valid_b := io.validin_b////////记得改这里！让指令去修改valid bit
//
//  switch(opcode){
//    is(0.U) {
//      // FUNCTION1: invalidate data
//
//      // FUNCTION2:
//      // use it when you have to freeze the two inputs (and their valid bit) for 1 cycle in order to delay your output
//      // when you have to keep pace with your brother who is late because of width issue
//      // this simply acts like a delay
//      // note: most of the other PE from one col have to do this when there's a width issue being handled by a member PE from that col
//      // NOTE: the DELAY SLOT!!!
//      // IT'S GOING TO OCCUPY the junior's space! So that junior get disappeared and the space the senior was supposed to be is now filled by trash
//      temp_result_a := a//or 0????
//      temp_result_b := b
//      temp_valid_a := 0.B
//      temp_valid_b := 0.B
//    }
//    is(1.U) {
//      temp_result_a := a & b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(2.U) {// we have to actively invalidate the pass-through if we don't need it
//      // imagine at the last level of PE, both inputs A and B are valid but we only need the A&B to be valid as an output
//      // not the B pass-through
//      temp_result_a := a & b
//      temp_result_b := b//or 0
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(3.U) {// it is reasonable to say that people are using this only at the last level of logic graph. Can we say temp_valid_b should always be 0
//      temp_result_a := ~(a & b)
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B   //io.validin_b
//    }
//    is(4.U) {
//      temp_result_a := a & ~b
//      temp_result_b := a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//    }
//    is(5.U) {
//      temp_result_a := a & ~b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(6.U) { // for invalidating pass-through, you only needs this. No need to pass input A and then invalidate A.
//      temp_result_a := a & ~b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(7.U) {
//      temp_result_a := a | b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(8.U) {
//      temp_result_a := a | b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(9.U) {// NOT gate before output, we assume this should only be used in the last level of logic
//      temp_result_a := ~(a | b)
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(10.U) {
//      temp_result_a := a | ~b
//      temp_result_b := a
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_a
//    }
//    is(11.U) {
//      temp_result_a := a | ~b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(12.U) {
//      temp_result_a := a | ~b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(13.U) {
//      temp_result_a := a ^ b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(14.U) {
//      temp_result_a := a ^ b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(15.U) {
//      temp_result_a := ~(a ^ b) // same with ~a^b
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(16.U) {
//      temp_result_a := ~(a ^ b)
//      temp_result_b := b
//      temp_valid_a := io.validin_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(17.U) {// used for the PE that is handling width issue
//      temp_result_a := regClk1_a & b
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(18.U) {// unlike simple a&b where a and b are symmetrically equal, here there are 2 instructions that pass a or b
//      temp_result_a := regClk1_a & b
//      temp_result_b := a
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//    }
//    is(19.U) {
//      temp_result_a := regClk1_a & b
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(20.U) {
//      // I presume this to only show up at the last level
//      // because there's no need to invert the output instead we can invert any data at the input of next level
//      // unless there's no next level, namely the last level
//      // so that temp_result_b is anyway useless
//      temp_result_a := ~(regClk1_a & b)
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(21.U) {
//      temp_result_a := regClk1_a & ~b
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(22.U) {
//      temp_result_a := regClk1_a & ~b
//      temp_result_b := a
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//    }
//    is(23.U) {// why there's no need to pass input a through and then invalidate it?
//      // 3 cases: you pass a, pass b, or nothing (implemented as "pass b and invalidate")
//      temp_result_a := regClk1_a & ~b
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(24.U) {
//      temp_result_a :=  ~regClk1_a & b
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(25.U) {
//      temp_result_a :=  ~regClk1_a & b
//      temp_result_b := a
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//    }
//    is(26.U) {
//      temp_result_a :=  ~regClk1_a & b
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(27.U) {
//      temp_result_a := regClk1_a | b
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
//    is(28.U) {
//      temp_result_a := regClk1_a | b
//      temp_result_b := a
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := io.validin_a
//    }
//    is(29.U) {
//      temp_result_a := regClk1_a | b
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(30.U) {
//      temp_result_a := ~(regClk1_a | b)
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := 0.B
//    }
//    is(31.U) {
//      temp_result_a := regClk1_a | ~b
//      temp_result_b := b
//      temp_valid_a := regClk1_valid_a & io.validin_b
//      temp_valid_b := io.validin_b
//    }
////    is(17.U) {
////      temp_result_a := regClk1_a | ~b
////      temp_result_b := a
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := io.validin_a
////    }
////    is(17.U) {
////      temp_result_a := regClk1_a | ~b
////      temp_result_b := b
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := 0.B
////    }
////    is(17.U) {
////      temp_result_a := ~regClk1_a | b
////      temp_result_b := b
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := io.validin_b
////    }
////    is(17.U) {
////      temp_result_a := ~regClk1_a | b
////      temp_result_b := a
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := io.validin_a
////    }
////    is(17.U) {
////      temp_result_a := ~regClk1_a | b
////      temp_result_b := b
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := 0.B
////    }
////    is(18.U) {
////      temp_result_a := regClk1_a ^ b
////      temp_result_b := b
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := io.validin_b
////    }
////    is(18.U) {
////      temp_result_a := regClk1_a ^ b
////      temp_result_b := a
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := io.validin_a
////    }
////    is(18.U) {
////      temp_result_a := regClk1_a ^ b
////      temp_result_b := b
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := 0.B
////    }
////    is(19.U) {
////      temp_result_a := ~(regClk1_a ^ b) // same with !a^b and !(a^b)
////      temp_result_b := b
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := io.validin_b
////    }
////    is(19.U) {
////      temp_result_a := ~(regClk1_a ^ b) // same with !a^b and !(a^b)
////      temp_result_b := a
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := io.validin_a
////    }
////    is(18.U) {
////      temp_result_a := regClk1_a ^ b
////      temp_result_b := b
////      temp_valid_a := regClk1_valid_a & io.validin_b
////      temp_valid_b := 0.B
////    }
//  }
//
//
//  io.out_a := temp_result_a
//  io.out_b := temp_result_b
//  io.validout_a := temp_valid_a
//  io.validout_b := temp_valid_b
//}


object ALUMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new ALU(64))
}
