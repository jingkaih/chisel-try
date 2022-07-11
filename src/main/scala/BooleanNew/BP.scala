package BooleanNew
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

class BP(PEcolCnt: Int = 21, dataWidth: Int = 64, dataRAMaddrWidth: Int = 8, TagWidth: Int = 2, CounterWidth: Int = 3) extends Module{
  val io = IO(new Bundle{
    //    val d_in = Vec(32, Input(new PEDataBundle()))
    //    val d_out = Vec(32, Output(new PEDataBundle()))

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
    val beginRun = Input(Bool())
    //data memory interface (input)
    val wr_D_inBuf = Vec(64, Input(new MEMDataBundle(dataWidth)))//64*65 wide
    val wr_Tag_inBuf = Input(new MEMTagDataBundle(TagWidth, CounterWidth))// attached to wr_D_inBuf
    val wr_Addr_inBuf_en = Input(Bool())// write pointer increment enable
    //data memory interface (output)
    val rd_Addr_outBuf = Input(UInt(8.W))
    val rd_D_outBuf = Vec(64, Output(new MEMDataBundle(dataWidth)))
    val PC_out = Output(UInt(8.W))
  })

  val banks = Vec(64, new MEMDataBundle(dataWidth))
  // input data memory declaration
  val inputDataBuffer = SyncReadMem(256, banks)
  val inputTagBuffer = SyncReadMem(256, new MEMTagDataBundle(TagWidth, CounterWidth))
  // 16 Blocks declaration
  val array = for(i <- 0 until PEcolCnt) yield Module(new BuildingBlockNew(dataWidth, dataRAMaddrWidth, TagWidth, CounterWidth))
  // output data memory declaration
  val outputDataBuffer = SyncReadMem(256, banks)// each 65-wide, the MSB is valid bit
  val outputTagBuffer = SyncReadMem(256, new MEMTagDataBundle(TagWidth, CounterWidth))
  //input buffer(data+tag) write
  val wr_Addr_inBuf = RegInit(0.U(8.W))
  val wr_Addr_inBuf_1 = RegInit(0.U(8.W))


  when(io.wr_Addr_inBuf_en){
    inputDataBuffer.write(wr_Addr_inBuf, io.wr_D_inBuf)// continuously write data into data MEM every cycle when wr_Addr_en is 1
    inputTagBuffer.write(wr_Addr_inBuf_1, io.wr_Tag_inBuf)
    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
    wr_Addr_inBuf_1 := wr_Addr_inBuf_1 + 1.U
  }


  //output buffer read
//  val rd_D_outBuf = Vec(64, Reg(new MEMDataBundle()))
//  rd_D_outBuf := outputDataBuffer(io.rd_Addr_outBuf)
//  io.rd_D_outBuf := rd_D_outBuf
  io.rd_D_outBuf := outputDataBuffer.read(io.rd_Addr_outBuf)












  // depth issue handler
//  val rollBack_D_en = RegInit(false.B)// could last for multiple cycles in case there are multiple cycle output needs to be write back
//  val rollBack_D = Reg(Vec(32, new PEDataBundle(dataWidth)))
//  val rollBack_PC_en = RegInit(false.B)// only last for 1 cycle, and it's the first cycle of rollBack_D_en
//  val rollBack_PC = RegInit(0.U(8.W))// the first cycle of rollBack_D_en, you write this back; the last PC6 -> the first PC1
//  val rollBack_Addr_en = RegInit(false.B)
//  val rollBack_Addr = RegInit(0.U(8.W))// the last cycle of rollBack_D_en, you write this back
//  //  val rollBack_Addr = RegInit(0.U(8.W)) // equivalent to wr_Addr_outBuf, will replace current rd_Addr_inBuf
//  val hold = RegInit(true.B)
//  val wr_Addr_outBuf_hold = RegInit(0.U(8.W))


  //input buffer starts reading data
  val rd_Addr_inBuf = RegInit(0.U(8.W))
  val rd_Addr_inBuf_1 = RegInit(0.U(8.W))
  val rd_D_inBuf = Reg(Vec(64, new MEMDataBundle(dataWidth)))
  val rd_Tag_inBuf = Reg(new MEMTagDataBundle(TagWidth, CounterWidth))


  rd_D_inBuf := inputDataBuffer(rd_Addr_inBuf)
  rd_Tag_inBuf := inputTagBuffer(rd_Addr_inBuf_1)
  val beginRun_reg = RegNext(io.beginRun)
  when(beginRun_reg){
    rd_Addr_inBuf := rd_Addr_inBuf + 1.U
    rd_Addr_inBuf_1 := rd_Addr_inBuf_1 + 1.U
  }
//  when(io.beginRun){
//    when(!rollBack_Addr_en){
//      rd_Addr_inBuf := rd_Addr_inBuf + 1.U
//    } .otherwise{
//      rd_Addr_inBuf := rollBack_Addr// I roll back my addr to the Addr_out
//    }
//  }
//



  val wr_D_outBuf = Wire(Vec(64, new MEMDataBundle(dataWidth)))// wire or reg? popcount is wire tho
  val wr_D_outBuf_reg = RegNext(wr_D_outBuf)//wr_D_outBuf has to be reg 1 cycle so that to synchronize with wr_Addr_outBuf incrementer (becuase popcount will take an extra cycle)

  val wr_Tag_outBuf = Wire(new MEMTagDataBundle(TagWidth, CounterWidth))
  val wr_Tag_outBuf_reg = RegNext(wr_Tag_outBuf)

  val context_switch = Wire(Bool()) // last for only 1 clk, therefore cannot be used as roll back enable (which takes multiple cycles to read from outBuf)
  val roll_back = RegInit(0.B)
  when(wr_Tag_outBuf.Tag =/= wr_Tag_outBuf_reg.Tag){ // wr_Tag_outBuf
    context_switch := 1.B
  }. otherwise{
    context_switch := 0.B
  }
  when(context_switch){
    roll_back := 1.B
  }




//  val wr_TagOld_outBuf = RegInit(0.U(2.W))


  val Addr_out = Wire(UInt(8.W))// the actual addr stream out from the last building block, not always useful
  val Tag_out = Wire(new MEMTagDataBundle(TagWidth, CounterWidth))

//  wr_Addr_outBuf := Addr_out// self-increment
  wr_Tag_outBuf := Tag_out



  val allValidBits = WireInit(0.U(64.W))
  allValidBits := Cat(
    wr_D_outBuf( 0 ).validBit,
    wr_D_outBuf( 1 ).validBit,
    wr_D_outBuf( 2 ).validBit,
    wr_D_outBuf( 3 ).validBit,
    wr_D_outBuf( 4 ).validBit,
    wr_D_outBuf( 5 ).validBit,
    wr_D_outBuf( 6 ).validBit,
    wr_D_outBuf( 7 ).validBit,
    wr_D_outBuf( 8 ).validBit,
    wr_D_outBuf( 9 ).validBit,
    wr_D_outBuf( 10 ).validBit,
    wr_D_outBuf( 11 ).validBit,
    wr_D_outBuf( 12 ).validBit,
    wr_D_outBuf( 13 ).validBit,
    wr_D_outBuf( 14 ).validBit,
    wr_D_outBuf( 15 ).validBit,
    wr_D_outBuf( 16 ).validBit,
    wr_D_outBuf( 17 ).validBit,
    wr_D_outBuf( 18 ).validBit,
    wr_D_outBuf( 19 ).validBit,
    wr_D_outBuf( 20 ).validBit,
    wr_D_outBuf( 21 ).validBit,
    wr_D_outBuf( 22 ).validBit,
    wr_D_outBuf( 23 ).validBit,
    wr_D_outBuf( 24 ).validBit,
    wr_D_outBuf( 25 ).validBit,
    wr_D_outBuf( 26 ).validBit,
    wr_D_outBuf( 27 ).validBit,
    wr_D_outBuf( 28 ).validBit,
    wr_D_outBuf( 29 ).validBit,
    wr_D_outBuf( 30 ).validBit,
    wr_D_outBuf( 31 ).validBit,
    wr_D_outBuf( 32 ).validBit,
    wr_D_outBuf( 33 ).validBit,
    wr_D_outBuf( 34 ).validBit,
    wr_D_outBuf( 35 ).validBit,
    wr_D_outBuf( 36 ).validBit,
    wr_D_outBuf( 37 ).validBit,
    wr_D_outBuf( 38 ).validBit,
    wr_D_outBuf( 39 ).validBit,
    wr_D_outBuf( 40 ).validBit,
    wr_D_outBuf( 41 ).validBit,
    wr_D_outBuf( 42 ).validBit,
    wr_D_outBuf( 43 ).validBit,
    wr_D_outBuf( 44 ).validBit,
    wr_D_outBuf( 45 ).validBit,
    wr_D_outBuf( 46 ).validBit,
    wr_D_outBuf( 47 ).validBit,
    wr_D_outBuf( 48 ).validBit,
    wr_D_outBuf( 49 ).validBit,
    wr_D_outBuf( 50 ).validBit,
    wr_D_outBuf( 51 ).validBit,
    wr_D_outBuf( 52 ).validBit,
    wr_D_outBuf( 53 ).validBit,
    wr_D_outBuf( 54 ).validBit,
    wr_D_outBuf( 55 ).validBit,
    wr_D_outBuf( 56 ).validBit,
    wr_D_outBuf( 57 ).validBit,
    wr_D_outBuf( 58 ).validBit,
    wr_D_outBuf( 59 ).validBit,
    wr_D_outBuf( 60 ).validBit,
    wr_D_outBuf( 61 ).validBit,
    wr_D_outBuf( 62 ).validBit,
    wr_D_outBuf( 63 ).validBit
  )
  val allValidBitsPopCnt = RegInit(0.U(6.W))
  allValidBitsPopCnt := PopCount(allValidBits)
  //output buffer starts writing data
  val wr_Addr_outBuf = RegInit(0.U(8.W)) // the 1st incrementor
  val wr_Addr_outBuf_1 = RegInit(0.U(8.W)) // the 2nd incrementor, at same rate
//  val wr_AddrReg_outBuf = RegNext(wr_Addr_outBuf)
//  val wr_AddrFlwUp_outBuf = RegInit(0.U(8.W))// follow-up write pointer; update not in every cycle

  when(allValidBitsPopCnt =/= 0.U){
    wr_Addr_outBuf := wr_Addr_outBuf + 1.U
    wr_Addr_outBuf_1 := wr_Addr_outBuf_1 + 1.U
    outputDataBuffer.write(wr_Addr_outBuf, wr_D_outBuf_reg)
    outputTagBuffer.write(wr_Addr_outBuf_1, wr_Tag_outBuf_reg)
  }




//  val DSTWB = RegInit(false.B)//Flag of destined to be written back. Asserted when any popcount result of wr_D_outBuf who are from the same tag family is not equal to 1
//
//  wr_TagOld_outBuf := wr_Tag_outBuf
//
//  val context_switch = RegInit(true.B)
//  when(wr_TagOld_outBuf =/= wr_Tag_outBuf){
//    context_switch := true.B
//    wr_AddrFlwUp_outBuf := wr_AddrReg_outBuf
//  } .otherwise{
//    context_switch := false.B
//    wr_AddrFlwUp_outBuf := wr_AddrFlwUp_outBuf
//  }
//
//  when(context_switch){
//    when(allValidBitsPopCnt > 1.U){
//      DSTWB := true.B
//    } .otherwise{
//      DSTWB := false.B
//    }
//  } .otherwise{
//    when(allValidBitsPopCnt > 1.U){
//      DSTWB := true.B
//    }
//  }






  //MEM data bundle <-> PE data bundle
  val d_in = Wire(Vec(32, new PEDataBundle(dataWidth)))
  val d_out = Wire(Vec(32, new PEDataBundle(dataWidth)))
  for(i <- 0 until 32){
    d_in(i).a := rd_D_inBuf(i*2).data
    d_in(i).valid_a := rd_D_inBuf(i*2).validBit
    d_in(i).b := rd_D_inBuf(i*2+1).data
    d_in(i).valid_b := rd_D_inBuf(i*2+1).validBit
  }
  for(i <- 0 until 32){
    wr_D_outBuf(i*2).data := d_out(i).a
    wr_D_outBuf(i*2).validBit := d_out(i).valid_a
    wr_D_outBuf(i*2+1).data := d_out(i).b
    wr_D_outBuf(i*2+1).validBit := d_out(i).valid_b
  }






  val PCBegin = RegInit(0.U(8.W))
  val AddrBegin = RegInit(0.U(8.W))
  array(0).io.d_in := d_in
  array(0).io.Tag_in := rd_Tag_inBuf
  array(0).io.PC1_in := PCBegin
  array(0).io.Addr_in := AddrBegin

  when(io.beginRun) { // last for only 1 cycle
    PCBegin := PCBegin + 1.U
  }

  when(io.beginRun) { // last for only 1 cycle
    AddrBegin := AddrBegin + 1.U
  }






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
  array(0).io.run_in := beginRun_reg
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

  d_out := array(PEcolCnt-1).io.d_out
  Tag_out := array(PEcolCnt-1).io.Tag_out
  Addr_out := array(PEcolCnt-1).io.Addr_out
//  PC_out := array(PEcolCnt-1).io.PC6_out
  io.PC_out := array(PEcolCnt-1).io.PC6_out


}



//class BP(PEcolCnt: Int = 16) extends Module{
//  val io = IO(new Bundle{
////    val d_in = Vec(32, Input(new PEDataBundle()))
////    val d_out = Vec(32, Output(new PEDataBundle()))
//
//    //instruction memory
//    val wr_en_mem1 = Vec(PEcolCnt, Input(Bool()))
//    val wr_en_mem2 = Vec(PEcolCnt, Input(Bool()))
//    val wr_en_mem3 = Vec(PEcolCnt, Input(Bool()))
//    val wr_en_mem4 = Vec(PEcolCnt, Input(Bool()))
//    val wr_en_mem5 = Vec(PEcolCnt, Input(Bool()))
//    val wr_en_mem6 = Vec(PEcolCnt, Input(Bool()))
//    val wr_instr_mem1 = Vec(PEcolCnt, Input(UInt(224.W)))//change to 192!!
//    val wr_instr_mem2 = Vec(PEcolCnt, Input(UInt(128.W)))
//    val wr_instr_mem3 = Vec(PEcolCnt, Input(UInt(128.W)))
//    val wr_instr_mem4 = Vec(PEcolCnt, Input(UInt(128.W)))
//    val wr_instr_mem5 = Vec(PEcolCnt, Input(UInt(128.W)))
//    val wr_instr_mem6 = Vec(PEcolCnt, Input(UInt(128.W)))
//    val beginRun = Input(Bool())// later use this to replace io.run
//    //data memory interface (input)
//    val wr_D_inBuf = Vec(64, Input(new MEMDataBundle()))//64*65 wide
//    val wr_Addr_inBuf_en = Input(Bool())
//    //data memory interface (output)
////    val rd_Addr_outBuf = Input(UInt(8.W))
////    val rd_D_outBuf = Vec(64, Output(new MEMDataBundle()))
//
//  })
//  // input data memory declaration
//  val banks = Vec(64, new MEMDataBundle())
//  val inputBuffer = Mem(256, banks)
//  // process unit declaration
//  val array_0 = Module(new BuildingBlockNewFirst)
//  val array = for(i <- 1 until PEcolCnt) yield Module(new BuildingBlockNew)
//  // output data memory declaration
//  val outputBuffer = Mem(256, banks)// each 65-wide, the MSB is valid bit
//
//  //input buffer initialization (write to it)
//  val wr_Addr_inBuf = RegInit(0.U(8.W))
//  inputBuffer(wr_Addr_inBuf) := DontCare
//  when(io.wr_Addr_inBuf_en){
//    inputBuffer(wr_Addr_inBuf) := io.wr_D_inBuf// continuously write data into data MEM every cycle when wr_Addr_en is 1
//    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
//  }. otherwise{
//    wr_Addr_inBuf := wr_Addr_inBuf
//  }
//
////  //output buffer start reading
////  val rd_D_outBuf = Vec(64, Reg(new MEMDataBundle()))
////  rd_D_outBuf := outputBuffer(io.rd_Addr_outBuf)
////  io.rd_D_outBuf := rd_D_outBuf
//
//  // depth issue handler
//  val rollBack_en = RegInit(false.B)// last for 1 cycle
//  val rollBack_PC = RegInit(0.U(8.W))//the last PC6 -> the first PC1
////  val rollBack_Addr = RegInit(0.U(8.W)) // equivalent to wr_Addr_outBuf, will replace current rd_Addr_inBuf
//  val lock = RegInit(false.B)
//  val wr_Addr_outBuf_hold = RegInit(0.U(8.W))
//  //input buffer starts reading data
//  val rd_Addr_inBuf = RegInit(0.U(8.W))
//  val rd_D_inBuf = Vec(64, Reg(new MEMDataBundle()))
//
//  //output buffer starts receiving data
//  val wr_Addr_outBuf = RegInit(0.U(8.W))
//  val wr_D_outBuf = Vec(64, Reg(new MEMDataBundle()))
//
//  //MEM data bundle <-> PE data bundle
//  val d_in = Vec(32, Input(new PEDataBundle()))
//  val d_out = Vec(32, Input(new PEDataBundle()))
//  for(i <- 0 until 32){
//    d_in(i).a := rd_D_inBuf(i*2).data
//    d_in(i).valid_a := rd_D_inBuf(i*2).validBit
//    d_in(i).b := rd_D_inBuf(i*2+1).data
//    d_in(i).valid_b := rd_D_inBuf(i*2+1).validBit
//  }
//  for(i <- 0 until 32){
//    wr_D_outBuf(i*2).data := d_out(i).a
//    wr_D_outBuf(i*2).validBit := d_out(i).valid_a
//    wr_D_outBuf(i*2+1).data := d_out(i).b
//    wr_D_outBuf(i*2+1).validBit := d_out(i).valid_b
//  }
//
//
//
//  when(io.beginRun){
//    when(!rollBack_en){
//      rd_D_inBuf := inputBuffer(rd_Addr_inBuf)
//      rd_Addr_inBuf := rd_Addr_inBuf + 1.U
//    } .otherwise{
//      rd_Addr_inBuf := wr_Addr_outBuf// I roll back my addr to the Addr_out
//    }
//  }
//
//  array_0.io.d_in := Mux(rollBack_en ,d_out, d_in)
//  array_0.io.wr_en_mem1 := io.wr_en_mem1(0)
//  array_0.io.wr_en_mem2 := io.wr_en_mem2(0)
//  array_0.io.wr_en_mem3 := io.wr_en_mem3(0)
//  array_0.io.wr_en_mem4 := io.wr_en_mem4(0)
//  array_0.io.wr_en_mem5 := io.wr_en_mem5(0)
//  array_0.io.wr_en_mem6 := io.wr_en_mem6(0)
//  array_0.io.wr_instr_mem1 := io.wr_instr_mem1(0)
//  array_0.io.wr_instr_mem2 := io.wr_instr_mem2(0)
//  array_0.io.wr_instr_mem3 := io.wr_instr_mem3(0)
//  array_0.io.wr_instr_mem4 := io.wr_instr_mem4(0)
//  array_0.io.wr_instr_mem5 := io.wr_instr_mem5(0)
//  array_0.io.wr_instr_mem6 := io.wr_instr_mem6(0)
//  array_0.io.run_in := io.beginRun
//
//  array_0.io.PC1_in_en := rollBack_en
//  array_0.io.PC1_in := Mux(rollBack_en, rollBack_PC, 0.U)
//  array_0.io.Addr_in := Mux(rollBack_en, wr_Addr_outBuf, rd_Addr_inBuf)
//
//  array(1).io.d_in := array_0.io.d_out
//  array(1).io.wr_en_mem1 := io.wr_en_mem1(1)
//  array(1).io.wr_en_mem2 := io.wr_en_mem2(1)
//  array(1).io.wr_en_mem3 := io.wr_en_mem3(1)
//  array(1).io.wr_en_mem4 := io.wr_en_mem4(1)
//  array(1).io.wr_en_mem5 := io.wr_en_mem5(1)
//  array(1).io.wr_en_mem6 := io.wr_en_mem6(1)
//  array(1).io.wr_instr_mem1 := io.wr_instr_mem1(1)
//  array(1).io.wr_instr_mem2 := io.wr_instr_mem2(1)
//  array(1).io.wr_instr_mem3 := io.wr_instr_mem3(1)
//  array(1).io.wr_instr_mem4 := io.wr_instr_mem4(1)
//  array(1).io.wr_instr_mem5 := io.wr_instr_mem5(1)
//  array(1).io.wr_instr_mem6 := io.wr_instr_mem6(1)
//  array(1).io.run_in := array_0.io.run_out
//  array(1).io.PC1_in := array_0.io.PC6_out
//  array(1).io.Addr_in := array_0.io.Addr_out
//  for(i <- 2 until PEcolCnt){
//    array(i).io.d_in := array(i-1).io.d_out
//    array(i).io.wr_en_mem1 := io.wr_en_mem1(i)
//    array(i).io.wr_en_mem2 := io.wr_en_mem2(i)
//    array(i).io.wr_en_mem3 := io.wr_en_mem3(i)
//    array(i).io.wr_en_mem4 := io.wr_en_mem4(i)
//    array(i).io.wr_en_mem5 := io.wr_en_mem5(i)
//    array(i).io.wr_en_mem6 := io.wr_en_mem6(i)
//    array(i).io.wr_instr_mem1 := io.wr_instr_mem1(i)
//    array(i).io.wr_instr_mem2 := io.wr_instr_mem2(i)
//    array(i).io.wr_instr_mem3 := io.wr_instr_mem3(i)
//    array(i).io.wr_instr_mem4 := io.wr_instr_mem4(i)
//    array(i).io.wr_instr_mem5 := io.wr_instr_mem5(i)
//    array(i).io.wr_instr_mem6 := io.wr_instr_mem6(i)
//    array(i).io.run_in := array(i-1).io.run_out
//    array(i).io.PC1_in := array(i-1).io.PC6_out
//    array(i).io.Addr_in := array(i-1).io.Addr_out
//  }
//
//  d_out := array(PEcolCnt-1).io.d_out
//  wr_Addr_outBuf := array(PEcolCnt-1).io.Addr_out
//  rollBack_PC := array(PEcolCnt-1).io.PC6_out
//
//  val allValidBits = RegInit(0.U(64.W))
//  val allValidBitsPopCnt = RegInit(0.U(6.W))
////  allValidBits := Cat(d_out(0).valid_a, d_out(0).valid_a, d_out(1).valid_a, d_out(1).valid_a,)
//  allValidBits := Cat(
//    wr_D_outBuf( 0 ).validBit,
//    wr_D_outBuf( 1 ).validBit,
//    wr_D_outBuf( 2 ).validBit,
//    wr_D_outBuf( 3 ).validBit,
//    wr_D_outBuf( 4 ).validBit,
//    wr_D_outBuf( 5 ).validBit,
//    wr_D_outBuf( 6 ).validBit,
//    wr_D_outBuf( 7 ).validBit,
//    wr_D_outBuf( 8 ).validBit,
//    wr_D_outBuf( 9 ).validBit,
//    wr_D_outBuf( 10 ).validBit,
//    wr_D_outBuf( 11 ).validBit,
//    wr_D_outBuf( 12 ).validBit,
//    wr_D_outBuf( 13 ).validBit,
//    wr_D_outBuf( 14 ).validBit,
//    wr_D_outBuf( 15 ).validBit,
//    wr_D_outBuf( 16 ).validBit,
//    wr_D_outBuf( 17 ).validBit,
//    wr_D_outBuf( 18 ).validBit,
//    wr_D_outBuf( 19 ).validBit,
//    wr_D_outBuf( 20 ).validBit,
//    wr_D_outBuf( 21 ).validBit,
//    wr_D_outBuf( 22 ).validBit,
//    wr_D_outBuf( 23 ).validBit,
//    wr_D_outBuf( 24 ).validBit,
//    wr_D_outBuf( 25 ).validBit,
//    wr_D_outBuf( 26 ).validBit,
//    wr_D_outBuf( 27 ).validBit,
//    wr_D_outBuf( 28 ).validBit,
//    wr_D_outBuf( 29 ).validBit,
//    wr_D_outBuf( 30 ).validBit,
//    wr_D_outBuf( 31 ).validBit,
//    wr_D_outBuf( 32 ).validBit,
//    wr_D_outBuf( 33 ).validBit,
//    wr_D_outBuf( 34 ).validBit,
//    wr_D_outBuf( 35 ).validBit,
//    wr_D_outBuf( 36 ).validBit,
//    wr_D_outBuf( 37 ).validBit,
//    wr_D_outBuf( 38 ).validBit,
//    wr_D_outBuf( 39 ).validBit,
//    wr_D_outBuf( 40 ).validBit,
//    wr_D_outBuf( 41 ).validBit,
//    wr_D_outBuf( 42 ).validBit,
//    wr_D_outBuf( 44 ).validBit,
//    wr_D_outBuf( 45 ).validBit,
//    wr_D_outBuf( 46 ).validBit,
//    wr_D_outBuf( 47 ).validBit,
//    wr_D_outBuf( 48 ).validBit,
//    wr_D_outBuf( 49 ).validBit,
//    wr_D_outBuf( 50 ).validBit,
//    wr_D_outBuf( 51 ).validBit,
//    wr_D_outBuf( 52 ).validBit,
//    wr_D_outBuf( 53 ).validBit,
//    wr_D_outBuf( 54 ).validBit,
//    wr_D_outBuf( 55 ).validBit,
//    wr_D_outBuf( 56 ).validBit,
//    wr_D_outBuf( 57 ).validBit,
//    wr_D_outBuf( 58 ).validBit,
//    wr_D_outBuf( 59 ).validBit,
//    wr_D_outBuf( 60 ).validBit,
//    wr_D_outBuf( 61 ).validBit,
//    wr_D_outBuf( 62 ).validBit,
//    wr_D_outBuf( 63 ).validBit
//  )
//
//  allValidBitsPopCnt := PopCount(allValidBits)
//
////  when(wr_Addr_outBuf =/= 0.U) { // if Addr_out is not 0, which means there are data to be written into output buffer
//  when(array(PEcolCnt-1).io.run_out =/= 0.U) { // if run_out signal of the last building block is not 0, there are data to be written into output buffer
//    when(allValidBitsPopCnt === 1.U && lock =/= false.B) { // if there's only 1 output to be valid. We're good
//      // write to output buffer
//      // proceed
//        outputBuffer(wr_Addr_outBuf) := wr_D_outBuf
//    }. elsewhen(allValidBitsPopCnt === 0.U && lock =/= false.B){ // if there's no valid output. Width issue must have occurred. Output will be valid in the next cycle
//      // write to output buffer
//      // proceed
//        outputBuffer(wr_Addr_outBuf) := wr_D_outBuf
//    }. elsewhen(allValidBitsPopCnt =/= 0.U && allValidBitsPopCnt =/= 1.U && lock =/= false.B){ // if there are multiple valid outputs, depth issue is occurring, you must write back these data. The wrAddr and PC6 are carried along with the data
//        wr_Addr_outBuf_hold := wr_Addr_outBuf
//        lock := true.B
//        rollBack_en := true.B
////    }. elsewhen(allValidBitsPopCnt >= 32/*32???*/ && lock =/= false.B) {// width & depth both occurs
////
////    }
//    }. otherwise{ // when you have a lock
//      rollBack_en := false.B
//      when(wr_Addr_outBuf_hold === wr_Addr_outBuf){
//        lock := false.B
//
//      }
//    }
//
//    //
//  }
//
//}

object BPMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new BP())
}