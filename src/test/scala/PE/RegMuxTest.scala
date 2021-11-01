package PE

import org.scalatest._
import chiseltest._
import chisel3._




class RegMuxTest extends FlatSpec with ChiselScalatestTester with Matchers {
  it should "work" in {
    test(new RegMux(width = 64)){ c =>
      c.io.in.poke(142.U)
      c.io.sel.poke(0.B)
      c.io.out.expect(142.U)
      c.clock.step(1)
      c.io.sel.poke(1.B)
      c.io.in.poke(35.U)
      c.io.out.expect(142.U)
    }
  }
}



//object RealTester extends App{
//  chisel3.testers.Driver(() => new MyDeviceUnderTest(8,8,16)) { c =>
//    new Tester(c)
//  }
//}