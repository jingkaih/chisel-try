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

class BP(PEcolCnt: Int = 16, dataWidth: Int = 64, dataRAMaddrWidth: Int = 8, TagWidth: Int = 2, CounterWidth: Int = 3) extends Module{
  val io = IO(new Bundle{
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
//    val rd_Addr_outBuf = Input(UInt(8.W))
    val rd_D_outBuf = Vec(64, Output(new MEMDataBundle(dataWidth)))
//    val PC_out = Output(UInt(8.W))
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

  //inputBuffer write
  when(io.wr_Addr_inBuf_en){
    inputDataBuffer.write(wr_Addr_inBuf, io.wr_D_inBuf)// continuously write data into data MEM every cycle when wr_Addr_en is 1
    inputTagBuffer.write(wr_Addr_inBuf_1, io.wr_Tag_inBuf)
    wr_Addr_inBuf := wr_Addr_inBuf + 1.U
    wr_Addr_inBuf_1 := wr_Addr_inBuf_1 + 1.U
  }

  // *********************************************************************************
  //declare input buffer incrementer
  val rd_Addr_inBuf = RegInit(0.U(8.W))
  val rd_Addr_inBuf_1 = RegInit(0.U(8.W))
  val rd_D_inBuf = Reg(Vec(64, new MEMDataBundle(dataWidth)))
  val rd_Tag_inBuf = Reg(new MEMTagDataBundle(TagWidth, CounterWidth))

  //declare the actual input that is fed into the array
  //when not rollback, this is connected to the inBuf
  //when rollback, this is connected to the outbuf
  //RoundCnt will be decremented by 1 every clk
  val rd_D_inBuf_RndCnt_decre = Reg(Vec(64, new MEMDataBundle(dataWidth)))
  val rd_Tag_inBuf_RndCnt_decre = Reg(new MEMTagDataBundle(TagWidth, CounterWidth))
  // *********************************************************************************
  //rd_Addr_inBuf is a incrementor. It keeps incrementing after beginRun
  //If this is the case, then we don't have rollback mechanism in the inBuf
  //A significantly large amount of trash PI have be stored (WASTEFUL!!)
  // Therefore, we make the Tag 00 PI a stall signal
  // When a Tag 00 is deteced in the inBuf side, the rd_Addr_inBuf stops incrementing until roll_back duration ends, such that we
  // can use only TWO LINES of Tag 00 PI to mimic a whole Tag 00 graph. This single line has to be
  // 1. Tag = 00
  // 2. RoundCnt = 1
  // 3. allValidBit = 0

  val rd_D_outBuf = Reg(Vec(64, new MEMDataBundle(dataWidth)))
  val rd_Tag_outBuf = Reg(new MEMTagDataBundle(TagWidth, CounterWidth))
  val rd_Addr_outBuf = RegInit(0.U(8.W))
  val rd_Addr_outBuf_1 = RegInit(0.U(8.W))
  val rd_Addr_outBuf_pointer = RegInit(0.U(8.W))
  val rd_Addr_outBuf_pointer_1 = RegInit(0.U(8.W))

  rd_D_inBuf := inputDataBuffer(rd_Addr_inBuf)
  rd_Tag_inBuf := inputTagBuffer(rd_Addr_inBuf_1)
  val beginRun_reg = RegNext(io.beginRun)
  val inBuf_lock = RegInit(false.B)
  when(io.beginRun){
    //The order matters
    // 1st priority: Unlock and resume the incrementing
    // 2nd priority: Lock and stop the incrementing
    // 3rd priority: when there's no lock, proceed as usual
    when((rd_Addr_outBuf_pointer === rd_Addr_outBuf - 1.U) && inBuf_lock === true.B){// similar condition as roll_back's end but 1 clk eariler
      rd_Addr_inBuf := rd_Addr_inBuf + 1.U
      rd_Addr_inBuf_1 := rd_Addr_inBuf_1 + 1.U
      inBuf_lock := false.B
    }.elsewhen(rd_Tag_inBuf.Tag === 0.U || inBuf_lock === true.B){//We also have a Tag scanner at the inBuf side
      rd_Addr_inBuf := rd_Addr_inBuf
      rd_Addr_inBuf_1 := rd_Addr_inBuf_1
      inBuf_lock := true.B
    }.elsewhen(inBuf_lock === false.B) {
      rd_Addr_inBuf := rd_Addr_inBuf + 1.U
      rd_Addr_inBuf_1 := rd_Addr_inBuf_1 + 1.U
      inBuf_lock := false.B
    }.otherwise { // is this neccessary?
      rd_Addr_inBuf := rd_Addr_inBuf
      rd_Addr_inBuf_1 := rd_Addr_inBuf_1
      inBuf_lock := inBuf_lock
    }
  } .otherwise{ // is this neccessary?
    rd_Addr_inBuf := rd_Addr_inBuf
    rd_Addr_inBuf_1 := rd_Addr_inBuf_1
    inBuf_lock := inBuf_lock
  }

  // *********************************************************************************
  // declare the context switch and rollback
  // CS: asserted when the current Tag out is different from the last cycle's
  // RB: asserted when not only CS, but also RoundCnt > 0 still
  // RB_initial: the first cycle of RB
  val wr_D_outBuf = Wire(Vec(64, new MEMDataBundle(dataWidth)))// wire or reg? popcount is wire tho
  val wr_D_outBuf_reg = RegNext(wr_D_outBuf)//wr_D_outBuf has to be reg 1 cycle so that to synchronize with wr_Addr_outBuf incrementer (becuase popcount will take an extra cycle)

  val wr_Tag_outBuf = Wire(new MEMTagDataBundle(TagWidth, CounterWidth))
  val wr_Tag_outBuf_reg = RegNext(wr_Tag_outBuf)

  val context_switch = Wire(Bool())// last for only 1 clk, therefore cannot be used as roll back enable (which takes multiple cycles to read from outBuf)
  val roll_back = RegInit(false.B)// last for multiple clk
  val roll_back_initial = RegInit(false.B) // last for 1 clk
  when(wr_Tag_outBuf.Tag =/= wr_Tag_outBuf_reg.Tag){
    context_switch := true.B
  }. otherwise{
    context_switch := false.B
  }



  val wr_Addr_outBuf = RegInit(0.U(8.W)) // the 1st incrementor
  val wr_Addr_outBuf_1 = RegInit(0.U(8.W)) // the 2nd incrementor, at same rate
  val wr_Addr_outBuf_pointer = RegInit(0.U(8.W)) //points to the next location at which THE ultimate output will appear; Only if allValidBitsPopCnt =/=0.U and RoundCnt === 0, we update this because the current wr_D_outBuf is the final result
  val wr_Addr_outBuf_pointer_1 = RegInit(0.U(8.W))
  //This wr_Addr_outBuf_pointer is also used as part of the roll back mechanism
  //The intermediate results are stored beyond this location but temporarily
  //once roll back
  // 1. start fetching data (intermediate result) from outBuf between location wr_Addr_outBuf_pointer (smaller) and wr_Addr_outBuf (greater)
  // 1.1 bring this data to the front
  // 2. and roll wr_Addr_outBuf back to wr_Addr_outBuf_pointer; in roll_back duration, set wr_Addr_outBuf in every clk (i.e., freeze it at wr_Addr_outBuf_pointer)
  //when can we start incrementing it again? the time allValidBitsPopCnt =/= 0.U again
  // 3. roll back PC as well. To PCout??
  // 4. rollback rd_Addr_inBuf and rd_Addr_inBuf_1 to Addrout??

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

  //feed back data path part 1
  when(rd_Addr_outBuf_pointer === rd_Addr_outBuf) {
    roll_back := false.B //false.B
  } .elsewhen((context_switch && allValidBitsPopCnt =/= 0.U && wr_Tag_outBuf_reg.RoundCnt =/= 0.U) || roll_back === true.B){
    //notice if there's only context_switch && wr_Tag_outBuf_reg.RoundCnt =/= 0.U,
    //then when we context switch from tag00 graph (trash PIs) to a valid graph, it will also mistakenly trigger RB
    roll_back := true.B //true.B
  }

  when(context_switch && allValidBitsPopCnt =/= 0.U && wr_Tag_outBuf_reg.RoundCnt =/= 0.U){
    roll_back_initial := true.B
  }. otherwise{
    roll_back_initial := false.B
  }

  // 1.1 bring this data to the front
  when(roll_back === false.B) {
    //array_in is from the outBuf
    rd_D_inBuf_RndCnt_decre := rd_D_inBuf
    rd_Tag_inBuf_RndCnt_decre.Tag := rd_Tag_inBuf.Tag
    rd_Tag_inBuf_RndCnt_decre.RoundCnt := rd_Tag_inBuf.RoundCnt - 1.U
  }.otherwise{
    //array_in is from the inBuf
    rd_D_inBuf_RndCnt_decre := rd_D_outBuf
    rd_Tag_inBuf_RndCnt_decre.Tag := rd_Tag_outBuf.Tag
    rd_Tag_inBuf_RndCnt_decre.RoundCnt := rd_Tag_outBuf.RoundCnt - 1.U
  }


  val Addr_out = Wire(UInt(8.W))// the actual addr stream out from the last building block, not always useful
  val Tag_out = Wire(new MEMTagDataBundle(TagWidth, CounterWidth))
  val PC_out = Wire(UInt(8.W))
//  wr_Addr_outBuf := Addr_out// self-increment
  wr_Tag_outBuf := Tag_out







  when(roll_back){
    //2.
    wr_Addr_outBuf := wr_Addr_outBuf_pointer
    wr_Addr_outBuf_1 := wr_Addr_outBuf_pointer_1
  }.elsewhen(allValidBitsPopCnt =/= 0.U){
    wr_Addr_outBuf := wr_Addr_outBuf + 1.U // increment to the next empty location
    wr_Addr_outBuf_1 := wr_Addr_outBuf_1 + 1.U
    outputDataBuffer.write(wr_Addr_outBuf, wr_D_outBuf_reg)
    outputTagBuffer.write(wr_Addr_outBuf_1, wr_Tag_outBuf_reg)
  }.otherwise{
    wr_Addr_outBuf := wr_Addr_outBuf
    wr_Addr_outBuf_1 := wr_Addr_outBuf_1
  }

  when(allValidBitsPopCnt =/= 0.U && wr_Tag_outBuf_reg.RoundCnt === 0.U){//notice roundCnt of trash PIs is 0 but the allValidBitsPopCnt will also be 0, No harm
    //to understand it, pls compare its condition with wr_Addr_outBuf's incrementing condition
    wr_Addr_outBuf_pointer := wr_Addr_outBuf_pointer + 1.U// always point to the next location that is ready to store a final result
    wr_Addr_outBuf_pointer_1 := wr_Addr_outBuf_pointer_1 + 1.U
  }


  //1.
  // read Addr and read Addr pointer both take the snapshot of the current write Addr
  // this happens 1 cycle earlier: when(context_switch && allValidBitsPopCnt =/= 0.U && wr_Tag_outBuf_reg.RoundCnt =/= 0.U) { // this is same as the rollback enable condition, but it will initate operation in the bracket for only 1 clk
  when(roll_back_initial){// this is later than the above line
    //the below statements happen 1 clk before the statements in when(roll_back){}
    rd_Addr_outBuf := wr_Addr_outBuf// the end point
    rd_Addr_outBuf_1 := wr_Addr_outBuf_1
    rd_Addr_outBuf_pointer := wr_Addr_outBuf_pointer// the start point; when roll back, rd_Addr_outBuf-pointer get self incremented and when it reaches rd_Addr_outBuf_pointer, roll_back becomes 0
    rd_Addr_outBuf_pointer_1 := wr_Addr_outBuf_pointer_1
  }

  when(roll_back){
    //feed back data path part 2
    rd_D_outBuf := outputDataBuffer.read(rd_Addr_outBuf_pointer)
    rd_Tag_outBuf := outputTagBuffer.read(rd_Addr_outBuf_pointer_1)
    rd_Addr_outBuf_pointer := rd_Addr_outBuf_pointer + 1.U
    rd_Addr_outBuf_pointer_1 := rd_Addr_outBuf_pointer_1 + 1.U
  }



  io.rd_D_outBuf := rd_D_outBuf






  //MEM data bundle <-> PE data bundle
  val d_in = Wire(Vec(32, new PEDataBundle(dataWidth)))
  val d_out = Wire(Vec(32, new PEDataBundle(dataWidth)))
  for(i <- 0 until 32){
    d_in(i).a := rd_D_inBuf_RndCnt_decre(i*2).data
    d_in(i).valid_a := rd_D_inBuf_RndCnt_decre(i*2).validBit
    d_in(i).b := rd_D_inBuf_RndCnt_decre(i*2+1).data
    d_in(i).valid_b := rd_D_inBuf_RndCnt_decre(i*2+1).validBit
  }
  for(i <- 0 until 32){
    wr_D_outBuf(i*2).data := d_out(i).a
    wr_D_outBuf(i*2).validBit := d_out(i).valid_a
    wr_D_outBuf(i*2+1).data := d_out(i).b
    wr_D_outBuf(i*2+1).validBit := d_out(i).valid_b
  }


  val PCBegin = RegInit(0.U(8.W))
  val AddrBegin = RegInit(0.U(8.W))
  when(beginRun_reg) {
    when(!roll_back_initial){ //when(!roll_back_initial){ // last for only 1 cycle
      PCBegin := PCBegin + 1.U
    } .otherwise {
      PCBegin := PC_out + 1.U
    }
  }
  when(beginRun_reg) {
    when(!roll_back_initial){ //when(!roll_back_initial){ // last for only 1 cycle
      AddrBegin := AddrBegin + 1.U
    } .otherwise {
      AddrBegin := Addr_out + 1.U
    }
  }

  array(0).io.d_in := d_in
  array(0).io.Tag_in := rd_Tag_inBuf_RndCnt_decre

  //below needs to be modified
  array(0).io.PC1_in := PCBegin
  array(0).io.Addr_in := AddrBegin



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
  PC_out := array(PEcolCnt-1).io.PC6_out
//  io.PC_out := array(PEcolCnt-1).io.PC6_out


}


object BPMain extends App {
  println("Hello World, I will now generate the Verilog file!")
  (new chisel3.stage.ChiselStage).emitVerilog(new BP())
}