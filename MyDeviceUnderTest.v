module MyDeviceUnderTest(
  input         clock,
  input         reset,
  input  [7:0]  io_imgIn,
  input  [7:0]  io_weight,
  input  [15:0] io_partialSumFromUp,
  output [15:0] io_partialSumToBelow,
  output [7:0]  io_imgForward
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] weightReg; // @[MyDeviceUnderTest.scala 32:22]
  reg [7:0] imgReg; // @[MyDeviceUnderTest.scala 35:19]
  reg [15:0] sumReg; // @[MyDeviceUnderTest.scala 39:23]
  wire [15:0] _sumReg_T = $signed(imgReg) * $signed(weightReg); // @[MyDeviceUnderTest.scala 41:20]
  wire [15:0] _sumReg_T_3 = $signed(_sumReg_T) + $signed(io_partialSumFromUp); // @[MyDeviceUnderTest.scala 41:32]
  assign io_partialSumToBelow = sumReg; // @[MyDeviceUnderTest.scala 43:24]
  assign io_imgForward = imgReg; // @[MyDeviceUnderTest.scala 37:17]
  always @(posedge clock) begin
    weightReg <= io_weight; // @[MyDeviceUnderTest.scala 33:13]
    imgReg <= io_imgIn; // @[MyDeviceUnderTest.scala 36:10]
    if (reset) begin // @[MyDeviceUnderTest.scala 39:23]
      sumReg <= 16'sh0; // @[MyDeviceUnderTest.scala 39:23]
    end else begin
      sumReg <= _sumReg_T_3; // @[MyDeviceUnderTest.scala 41:10]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  weightReg = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  imgReg = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  sumReg = _RAND_2[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
