//package Boolean6
//import chisel3._
//import chisel3.util._
//
//class ALU(width: Int = 64) extends Module {
//  var io = IO(new Bundle{
//    val opcode = Input(UInt(5.W))
//    val in_a = Input(UInt(width.W))
//    val in_b = Input(UInt(width.W))
//    val out_a = Output(UInt(width.W))
//    val out_b = Output(UInt(width.W))
//    val in_a_tag = Input(UInt(2.W))
//    val in_b_tag = Input(UInt(2.W))
//    val out_a_tag = Output(UInt(2.W))
//    val out_b_tag = Output(UInt(2.W))
//    val validin_a = Input(Bool())
//    val validin_b = Input(Bool())
//    val validout_a = Output(Bool())
//    val validout_b = Output(Bool())
//  })
//
//  val opcode = io.opcode
//  val a = io.in_a
//  val b = io.in_b
//  val reg_a = RegInit(0.U(width.W))
//  val reg_b = RegInit(0.U(width.W))
//
//  val regClk1_valid_a = RegNext(io.validin_a)
//  val regClk1_valid_b = RegNext(io.validin_b)
//  val temp_result_a = RegInit(0.U(width.W))
//  val temp_result_b = RegInit(0.U(width.W))
//  val temp_valid_a = RegInit(0.B)
//  val temp_valid_b = RegInit(0.B)
//
//  //  temp_valid_a := io.validin_a////////记得改这里！让指令去修改valid bit
//  //  temp_valid_b := io.validin_b////////记得改这里！让指令去修改valid bit
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
//    //    is(17.U) {
//    //      temp_result_a := regClk1_a | ~b
//    //      temp_result_b := a
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := io.validin_a
//    //    }
//    //    is(17.U) {
//    //      temp_result_a := regClk1_a | ~b
//    //      temp_result_b := b
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := 0.B
//    //    }
//    //    is(17.U) {
//    //      temp_result_a := ~regClk1_a | b
//    //      temp_result_b := b
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := io.validin_b
//    //    }
//    //    is(17.U) {
//    //      temp_result_a := ~regClk1_a | b
//    //      temp_result_b := a
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := io.validin_a
//    //    }
//    //    is(17.U) {
//    //      temp_result_a := ~regClk1_a | b
//    //      temp_result_b := b
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := 0.B
//    //    }
//    //    is(18.U) {
//    //      temp_result_a := regClk1_a ^ b
//    //      temp_result_b := b
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := io.validin_b
//    //    }
//    //    is(18.U) {
//    //      temp_result_a := regClk1_a ^ b
//    //      temp_result_b := a
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := io.validin_a
//    //    }
//    //    is(18.U) {
//    //      temp_result_a := regClk1_a ^ b
//    //      temp_result_b := b
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := 0.B
//    //    }
//    //    is(19.U) {
//    //      temp_result_a := ~(regClk1_a ^ b) // same with !a^b and !(a^b)
//    //      temp_result_b := b
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := io.validin_b
//    //    }
//    //    is(19.U) {
//    //      temp_result_a := ~(regClk1_a ^ b) // same with !a^b and !(a^b)
//    //      temp_result_b := a
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := io.validin_a
//    //    }
//    //    is(18.U) {
//    //      temp_result_a := regClk1_a ^ b
//    //      temp_result_b := b
//    //      temp_valid_a := regClk1_valid_a & io.validin_b
//    //      temp_valid_b := 0.B
//    //    }
//  }
//
//
//  io.out_a := temp_result_a
//  io.out_b := temp_result_b
//  io.validout_a := temp_valid_a
//  io.validout_b := temp_valid_b
//}
//
//
//object ALUMain extends App {
//  println("Hello World, I will now generate the Verilog file!")
//  (new chisel3.stage.ChiselStage).emitVerilog(new ALU(64))
//}
//
