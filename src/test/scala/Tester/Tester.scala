package Tester

import chisel3._
import mypack.MyDeviceUnderTest
import chisel3.tester._
import org.scalatest.FreeSpec




//class Tester(dut: MyDeviceUnderTest) extends (dut){
//  poke(dut.io.a, 0.U(2.W))
//  poke(dut.io.b, 1.U(2.W))
//  step(1)
//  println("Result is: "+peek(dut.io.out).toString)
//}

//object RealTester extends App{
//  chisel3.iotesters.Driver(() => new MyDeviceUnderTest(8,8,16)) { c =>
//    new Tester(c)
//  }
//}