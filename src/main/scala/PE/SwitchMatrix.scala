package PE
import chisel3._
import chisel3.util.{is, switch}


class SwitchMatrix extends Module {
  var io = IO(new Bundle{
    val opcode = Input(UInt(3.W))
  })


}
