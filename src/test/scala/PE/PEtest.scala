package PE
import chisel3._
import chisel3.tester._
import chisel3.tester.RawTester.test
class PEtest {
  test(new PE(8)){c =>
    val width = 8
    val a = 254.U(width.W)
    val b = 254.U(width.W)
    c.io.in_a.poke(a)
    c.io.in_b.poke(b)
    c.io.opcode.poke(4.U)
    print(c.io.out.peek())
  }
  println("SUCCESS")
}



//import chisel3.iotesters.PeekPokeTester
//import org.scalatest._
//
//class HelloSpec extends FlatSpec with Matchers {
//
//  "Hello" should "pass" in {
//    chisel3.iotesters.Driver(() => new Hello()) { c =>
//      new PeekPokeTester(c) {
//
//        var ledStatus = -1
//        println("Start the blinking LED")
//        for (i <- 0 until 100) {
//          step(10000)
//          val ledNow = peek(c.io.led).toInt
//          val s = if (ledNow == 0) "o" else "*"
//          if (ledStatus != ledNow) {
//            System.out.println(s)
//            ledStatus = ledNow
//          }
//        }
//        println("\nEnd the blinking LED")
//      }
//    } should be (true)
//  }
//
//}