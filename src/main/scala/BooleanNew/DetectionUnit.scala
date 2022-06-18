package BooleanNew
import chisel3._
import chisel3.util._

//class DetectionUnit(dataWidth: Int = 4) extends Module{
//  val io = IO(new Bundle{
//    val beginRun = Input(Bool())
//    //data memory interface (input)
//    val wr_D_inBuf = Vec(3, Input(new MEMDataBundle(dataWidth)))//64*65 wide
//    val wr_Tag_inBuf = Input(UInt(2.W))// attached to wr_D_inBuf
//    val wr_Addr_inBuf_en = Input(Bool())// write pointer increment enable
//    val rd_Addr_outBuf = Input(UInt(8.W))
//    val rd_D_outBuf = Vec(3, Output(new MEMDataBundle(dataWidth)))
//    val context_switch = Output(Bool())
//    val wr_AddrFlwUp_outBuf = Output(UInt(8.W))
//  })
//  val banks = Vec(3, new MEMDataBundle(dataWidth))
//  // input data memory declaration
//  val inputDataBuffer = SyncReadMem(256, banks)
//  val inputTagBuffer = SyncReadMem(256, UInt(2.W))
//
//  val outputDataBuffer = SyncReadMem(256, banks)
//  val outputTagBuffer = SyncReadMem(256, UInt(2.W))
//  //input buffer(data+tag) write
//  val wr_Addr_inBuf = RegInit(0.U(8.W))
//
//
//  when(io.wr_Addr_inBuf_en){
////    inputDataBuffer(wr_Addr_inBuf) := io.wr_D_inBuf// continuously write data into data MEM every cycle when wr_Addr_en is 1
////    inputTagBuffer(wr_Addr_inBuf) := io.wr_Tag_inBuf
////    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
//    inputDataBuffer.write(wr_Addr_inBuf, io.wr_D_inBuf)
//    inputTagBuffer.write(wr_Addr_inBuf, io.wr_Tag_inBuf)
//    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
//  }. otherwise{
//    wr_Addr_inBuf := wr_Addr_inBuf
//  }
//  // output buffer read
//  io.rd_D_outBuf := outputDataBuffer.read(io.rd_Addr_outBuf)
//
//
//
///////////////////////////////////////////////////////////
//  val rd_Addr_inBuf = RegInit(0.U(8.W))
////  val rd_D_inBuf = Vec(3, Reg(new MEMDataBundle(dataWidth)))
//  val rd_D_inBuf = Reg(Vec(3, new MEMDataBundle(dataWidth)))
//  val rd_Tag_inBuf = RegInit(0.U(2.W))
//  when(io.beginRun){
//    rd_D_inBuf := inputDataBuffer.read(rd_Addr_inBuf)
//    rd_Tag_inBuf := inputTagBuffer.read(rd_Addr_inBuf)
//    rd_Addr_inBuf := rd_Addr_inBuf + 1.U
//  } .otherwise{
//    rd_Addr_inBuf := rd_Addr_inBuf
//  }
//  //output buffer starts writing data
////  val wr_Addr_outBuf = RegInit(0.U(8.W))
////  val wr_AddrFlwUp_outBuf = RegInit(0.U(8.W))// follow-up write pointer; update not in every cycle
//  val wr_Addr_outBuf = Reg(UInt(8.W))
//  val wr_AddrFlwUp_outBuf = Reg(UInt(8.W))// follow-up write pointer; update not in every cycle
////  val wr_D_outBuf = Vec(3, Reg(new MEMDataBundle(dataWidth)))// wire? popcount is wire tho
//  val wr_D_outBuf = Reg(Vec(3, new MEMDataBundle(dataWidth)))
//  val wr_Tag_outBuf = RegInit(0.U(2.W))
//  val wr_TagOld_outBuf = RegInit(0.U(2.W))
////  val Addr_out = Wire(UInt(8.W))// the actual addr stream out from the last building block, not always useful
////  val Tag_out = Wire(UInt(2.W))
////  wr_Addr_outBuf := Addr_out// self-increment
////  wr_Tag_outBuf := Tag_out
//  outputDataBuffer.write(wr_Addr_outBuf, wr_D_outBuf)
//  outputTagBuffer.write(wr_Addr_outBuf, wr_Tag_outBuf)
//
//
//    val allValidBits = Wire(UInt(3.W))
//    allValidBits := Cat(
//      wr_D_outBuf( 0 ).validBit,
//      wr_D_outBuf( 1 ).validBit,
//      wr_D_outBuf( 2 ).validBit
//    )
//    val allValidBitsPopCnt = RegInit(0.U(2.W))
//    allValidBitsPopCnt := PopCount(allValidBits)
//    val DSTWB = RegInit(false.B)//Flag of destined to be written back. Asserted when any popcount result of wr_D_outBuf who are from the same tag family is not equal to 1
//
//    wr_TagOld_outBuf := wr_Tag_outBuf
//
//
//  val context_switch = Wire(Bool())
//  when(wr_TagOld_outBuf =/= wr_Tag_outBuf){
//    context_switch := true.B
//    wr_AddrFlwUp_outBuf := wr_Addr_outBuf
//  } .otherwise{
//    context_switch := false.B
//    wr_AddrFlwUp_outBuf := wr_AddrFlwUp_outBuf
//  }
//
//  io.context_switch := context_switch
//  io.wr_AddrFlwUp_outBuf := wr_AddrFlwUp_outBuf
////  when(context_switch){
////
////  }
//
//
//
//
//
//
//
//
//  val run1 = io.beginRun
//  val run2 = RegNext(run1)
//  val run3 = RegNext(run2)
//  val run4 = RegNext(run3)
//  val run5 = RegNext(run4)
//  val run6 = RegNext(run5)
//
//  val addr1 = rd_Addr_inBuf
//  val addr2 = RegNext(addr1)
//  val addr3 = RegNext(addr2)
//  val addr4 = RegNext(addr3)
//  val addr5 = RegNext(addr4)
//  val addr6 = RegNext(addr5)
//
//  wr_Addr_outBuf := addr6
//
//  val tag1 = rd_Tag_inBuf
//  val tag2 = RegNext(tag1)
//  val tag3 = RegNext(tag2)
//  val tag4 = RegNext(tag3)
//  val tag5 = RegNext(tag4)
//  val tag6 = RegNext(tag5)
//
//  wr_Tag_outBuf := tag6
//
//
//  val D1 = rd_D_inBuf
//  val D2 = RegNext(D1)
//  val D3 = RegNext(D2)
//  val D4 = RegNext(D3)
//  val D5 = RegNext(D4)
//  val D6 = RegNext(D5)
//
//  wr_D_outBuf := D6
//
//}

// use this for OpenRAM
//object DetectionUnitMain extends App {
//  println("Hello World, I will now generate the Verilog file!")
//  (new chisel3.stage.ChiselStage).emitVerilog(new DetectionUnit(), Array("--repl-seq-mem", "-c:DetectionUnit:-o:Buffer.mem.conf"))
//}


class DetectionUnit(dataWidth: Int = 4) extends Module{
  val io = IO(new Bundle{
    val beginRun = Input(Bool())
    //data memory interface (input)
    val wr_D_inBuf = Vec(3, Input(new MEMDataBundle(dataWidth)))//64*65 wide
    val wr_Tag_inBuf = Input(UInt(2.W))// attached to wr_D_inBuf
    val wr_Addr_inBuf_en = Input(Bool())// write pointer increment enable
    val rd_Addr_outBuf = Input(UInt(8.W))
    val rd_D_outBuf = Vec(3, Output(new MEMDataBundle(dataWidth)))
    val context_switch = Output(Bool())
    val wr_AddrFlwUp_outBuf = Output(UInt(8.W))
    val validcnt = Output(UInt(2.W))
    val DSTWB = Output(Bool())
  })
  val banks = Vec(3, new MEMDataBundle(dataWidth))
  // input data memory declaration
  val inputDataBuffer = SyncReadMem(256, banks)
  val inputTagBuffer = SyncReadMem(256, UInt(2.W))

  val outputDataBuffer = SyncReadMem(256, banks)
  val outputTagBuffer = SyncReadMem(256, UInt(2.W))
  //input buffer(data+tag) write
  val wr_Addr_inBuf = RegInit(0.U(8.W))
  val wr_Addr_inBuf_1 = RegInit(0.U(8.W))
//  val mem = SyncReadMem(1024, UInt(width.W))
//  io.dataOut := DontCare
//  when(io.enable) {
//    val rdwrPort = mem(io.addr)
//    when (io.write) { rdwrPort := io.dataIn }
//      .otherwise    { io.dataOut := rdwrPort }
//  }

  inputDataBuffer.write(wr_Addr_inBuf, io.wr_D_inBuf)
  inputTagBuffer.write(wr_Addr_inBuf_1, io.wr_Tag_inBuf)
  when(io.wr_Addr_inBuf_en){
    //    inputDataBuffer(wr_Addr_inBuf) := io.wr_D_inBuf// continuously write data into data MEM every cycle when wr_Addr_en is 1
    //    inputTagBuffer(wr_Addr_inBuf) := io.wr_Tag_inBuf
    //    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
    wr_Addr_inBuf_1 := wr_Addr_inBuf_1 + 1.U
  }
  // output buffer read
  io.rd_D_outBuf := outputDataBuffer.read(io.rd_Addr_outBuf)



  /////////////////////////////////////////////////////////
  val rd_Addr_inBuf = RegInit(0.U(8.W))
  val rd_Addr_inBuf_1 = RegInit(0.U(8.W))
  //  val rd_D_inBuf = Vec(3, Reg(new MEMDataBundle(dataWidth)))
  val rd_D_inBuf = Reg(Vec(3, new MEMDataBundle(dataWidth)))
  val rd_Tag_inBuf = RegInit(0.U(2.W))


  rd_D_inBuf := inputDataBuffer.read(rd_Addr_inBuf)
  rd_Tag_inBuf := inputTagBuffer.read(rd_Addr_inBuf_1)
  when(io.beginRun){
    rd_Addr_inBuf := rd_Addr_inBuf + 1.U
    rd_Addr_inBuf_1 := rd_Addr_inBuf_1 + 1.U
  }
  //output buffer starts writing data
  //  val wr_Addr_outBuf = RegInit(0.U(8.W))
  //  val wr_AddrFlwUp_outBuf = RegInit(0.U(8.W))// follow-up write pointer; update not in every cycle
  val wr_Addr_outBuf = RegInit(0.U(8.W))
  val wr_AddrReg_outBuf = RegNext(wr_Addr_outBuf)
  val wr_AddrFlwUp_outBuf = RegInit(0.U(8.W))// follow-up write pointer; update not in every cycle

  //  val wr_D_outBuf = Vec(3, Reg(new MEMDataBundle(dataWidth)))// wire? popcount is wire tho
  val wr_D_outBuf = Reg(Vec(3, new MEMDataBundle(dataWidth)))
  val wr_Tag_outBuf = RegInit(0.U(2.W))
  val wr_TagOld_outBuf = RegInit(0.U(2.W))
  //  val Addr_out = Wire(UInt(8.W))// the actual addr stream out from the last building block, not always useful
  //  val Tag_out = Wire(UInt(2.W))
  //  wr_Addr_outBuf := Addr_out// self-increment
  //  wr_Tag_outBuf := Tag_out
  outputDataBuffer.write(wr_Addr_outBuf, wr_D_outBuf)
  outputTagBuffer.write(wr_Addr_outBuf, wr_Tag_outBuf)

  val allValidBits = Wire(UInt(3.W))
  allValidBits := Cat(
    wr_D_outBuf( 0 ).validBit,
    wr_D_outBuf( 1 ).validBit,
    wr_D_outBuf( 2 ).validBit
  )
  val allValidBitsPopCnt = RegInit(0.U(2.W))
  allValidBitsPopCnt := PopCount(allValidBits)

  val DSTWB = RegInit(false.B)//Flag of destined to be written back. Asserted when any popcount result of wr_D_outBuf who are from the same tag family is not equal to 1

  wr_TagOld_outBuf := wr_Tag_outBuf


  val context_switch = RegInit(true.B)
  when(wr_TagOld_outBuf =/= wr_Tag_outBuf){
    context_switch := true.B
    wr_AddrFlwUp_outBuf := wr_AddrReg_outBuf
//    when(allValidBitsPopCnt > 1.U){
//      DSTWB := true.B
//    } .otherwise{
//      DSTWB := false.B
//    }
  } .otherwise{
    context_switch := false.B
    wr_AddrFlwUp_outBuf := wr_AddrFlwUp_outBuf
//    when(allValidBitsPopCnt > 1.U){
//      DSTWB := true.B
//    }
  }

  when(context_switch){
    when(allValidBitsPopCnt > 1.U){
      DSTWB := true.B
    } .otherwise{
      DSTWB := false.B
    }
  } .otherwise{
    when(allValidBitsPopCnt > 1.U){
      DSTWB := true.B
    }
  }

//  when(context_switch){
//    when(DSTWB === true.B){
//
//    }
//
//  }


  io.validcnt := allValidBitsPopCnt
  io.DSTWB := DSTWB
  io.context_switch := context_switch
  io.wr_AddrFlwUp_outBuf := wr_AddrFlwUp_outBuf
  //  when(context_switch){
  //
  //  }



  val run1 = io.beginRun
  val run2 = RegNext(run1)
  val run3 = RegNext(run2)
  val run4 = RegNext(run3)
  val run5 = RegNext(run4)
  val run6 = RegNext(run5)

  val addr1 = rd_Addr_inBuf// 1 clk earlier than rd_D_inBuf
  val addr2 = RegNext(addr1)
  val addr3 = RegNext(addr2)
  val addr4 = RegNext(addr3)
  val addr5 = RegNext(addr4)
  val addr6 = RegNext(addr5)

  wr_Addr_outBuf := addr6

  val tag1 = rd_Tag_inBuf
  val tag2 = RegNext(tag1)
  val tag3 = RegNext(tag2)
  val tag4 = RegNext(tag3)
  val tag5 = RegNext(tag4)
//  val tag6 = RegNext(tag5)

  wr_Tag_outBuf := tag5

  val D1 = rd_D_inBuf
  val D2 = RegNext(D1)
  val D3 = RegNext(D2)
  val D4 = RegNext(D3)
  val D5 = RegNext(D4)
//  val D6 = RegNext(D5)

  wr_D_outBuf := D5

}




//class DetectionUnit(dataWidth: Int = 4) extends Module{
//  val io = IO(new Bundle{
//    val beginRun = Input(Bool())
//    //data memory interface (input)
////    val wr_D_inBuf = Vec(3, Input(new MEMDataBundle(dataWidth)))//64*65 wide
//    val wr_D_inBuf = Vec(3, Input(UInt(4.W)))
//    val wr_Tag_inBuf = Input(UInt(2.W))// attached to wr_D_inBuf
//    val wr_Addr_inBuf_en = Input(Bool())// write pointer increment enable
//    val rd_Addr_outBuf = Input(UInt(8.W))
//    val rd_D_outBuf = Vec(3, Output(UInt(4.W)))
//    val context_switch = Output(Bool())
//    val wr_AddrFlwUp_outBuf = Output(UInt(8.W))
//  })
//  val banks = Vec(3, UInt(4.W))
//  // input data memory declaration
//  val inputDataBuffer = SyncReadMem(256, banks)
//  val inputTagBuffer = SyncReadMem(256, UInt(2.W))
//
//  val outputDataBuffer = SyncReadMem(256, banks)
//  val outputTagBuffer = SyncReadMem(256, UInt(2.W))
//  //input buffer(data+tag) write
//  val wr_Addr_inBuf = RegInit(0.U(8.W))
//
//  //  val mem = SyncReadMem(1024, UInt(width.W))
//  //  io.dataOut := DontCare
//  //  when(io.enable) {
//  //    val rdwrPort = mem(io.addr)
//  //    when (io.write) { rdwrPort := io.dataIn }
//  //      .otherwise    { io.dataOut := rdwrPort }
//  //  }
//
//  inputDataBuffer.write(wr_Addr_inBuf, io.wr_D_inBuf)
//  inputTagBuffer.write(wr_Addr_inBuf, io.wr_Tag_inBuf)
//  when(io.wr_Addr_inBuf_en){
//    //    inputDataBuffer(wr_Addr_inBuf) := io.wr_D_inBuf// continuously write data into data MEM every cycle when wr_Addr_en is 1
//    //    inputTagBuffer(wr_Addr_inBuf) := io.wr_Tag_inBuf
//    //    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
//
//
////    inputDataBuffer.write(wr_Addr_inBuf, io.wr_D_inBuf)
////    inputTagBuffer.write(wr_Addr_inBuf, io.wr_Tag_inBuf)
//    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
//  }. otherwise{
//    wr_Addr_inBuf := wr_Addr_inBuf
//  }
//  // output buffer read
//  io.rd_D_outBuf := outputDataBuffer.read(io.rd_Addr_outBuf)
//
//
//
//  /////////////////////////////////////////////////////////
//  val rd_Addr_inBuf = RegInit(0.U(8.W))
//  //  val rd_D_inBuf = Vec(3, Reg(new MEMDataBundle(dataWidth)))
//  val rd_D_inBuf = Reg(Vec(3, UInt(4.W)))
//  val rd_Tag_inBuf = RegInit(0.U(2.W))
//
//  rd_D_inBuf := inputDataBuffer.read(rd_Addr_inBuf)
//  rd_Tag_inBuf := inputTagBuffer.read(rd_Addr_inBuf)
//  when(io.beginRun){
////    rd_D_inBuf := inputDataBuffer.read(rd_Addr_inBuf)
////    rd_Tag_inBuf := inputTagBuffer.read(rd_Addr_inBuf)
//    rd_Addr_inBuf := rd_Addr_inBuf + 1.U
//  } .otherwise{
//    rd_Addr_inBuf := rd_Addr_inBuf
//  }
//  //output buffer starts writing data
//  //  val wr_Addr_outBuf = RegInit(0.U(8.W))
//  //  val wr_AddrFlwUp_outBuf = RegInit(0.U(8.W))// follow-up write pointer; update not in every cycle
//  val wr_Addr_outBuf = Reg(UInt(8.W))
//  val wr_AddrFlwUp_outBuf = Reg(UInt(8.W))// follow-up write pointer; update not in every cycle
//  //  val wr_D_outBuf = Vec(3, Reg(new MEMDataBundle(dataWidth)))// wire? popcount is wire tho
//  val wr_D_outBuf = Reg(Vec(3, UInt(4.W)))
//  val wr_Tag_outBuf = RegInit(0.U(2.W))
//  val wr_TagOld_outBuf = RegInit(0.U(2.W))
//  //  val Addr_out = Wire(UInt(8.W))// the actual addr stream out from the last building block, not always useful
//  //  val Tag_out = Wire(UInt(2.W))
//  //  wr_Addr_outBuf := Addr_out// self-increment
//  //  wr_Tag_outBuf := Tag_out
//  outputDataBuffer.write(wr_Addr_outBuf, wr_D_outBuf)
//  outputTagBuffer.write(wr_Addr_outBuf, wr_Tag_outBuf)
//
////  val allValidBits = Wire(UInt(3.W))
////  allValidBits := Cat(
////    wr_D_outBuf( 0 ).validBit,
////    wr_D_outBuf( 1 ).validBit,
////    wr_D_outBuf( 2 ).validBit
////  )
////  val allValidBitsPopCnt = RegInit(0.U(2.W))
////  allValidBitsPopCnt := PopCount(allValidBits)
////  val DSTWB = RegInit(false.B)//Flag of destined to be written back. Asserted when any popcount result of wr_D_outBuf who are from the same tag family is not equal to 1
//
//  wr_TagOld_outBuf := wr_Tag_outBuf
//
//
//  val context_switch = Wire(Bool())
//  when(wr_TagOld_outBuf =/= wr_Tag_outBuf){
//    context_switch := true.B
//    wr_AddrFlwUp_outBuf := wr_Addr_outBuf
//  } .otherwise{
//    context_switch := false.B
//    wr_AddrFlwUp_outBuf := wr_AddrFlwUp_outBuf
//  }
//
//  io.context_switch := context_switch
//  io.wr_AddrFlwUp_outBuf := wr_AddrFlwUp_outBuf
//  //  when(context_switch){
//  //
//  //
//
//  val run1 = io.beginRun
//  val run2 = RegNext(run1)
//  val run3 = RegNext(run2)
//  val run4 = RegNext(run3)
//  val run5 = RegNext(run4)
//  val run6 = RegNext(run5)
//
//  val addr1 = rd_Addr_inBuf
//  val addr2 = RegNext(addr1)
//  val addr3 = RegNext(addr2)
//  val addr4 = RegNext(addr3)
//  val addr5 = RegNext(addr4)
//  val addr6 = RegNext(addr5)
//
//  wr_Addr_outBuf := addr6
//
//  val tag1 = rd_Tag_inBuf
//  val tag2 = RegNext(tag1)
//  val tag3 = RegNext(tag2)
//  val tag4 = RegNext(tag3)
//  val tag5 = RegNext(tag4)
//  val tag6 = RegNext(tag5)
//
//  wr_Tag_outBuf := tag6
//
//
//  val D1 = rd_D_inBuf
//  val D2 = RegNext(D1)
//  val D3 = RegNext(D2)
//  val D4 = RegNext(D3)
//  val D5 = RegNext(D4)
//  val D6 = RegNext(D5)
//
//  wr_D_outBuf := D6
//
//}



object DetectionUnitMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new DetectionUnit())
}