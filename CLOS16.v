module CrossBarCell(
  input  [63:0] io_fw_left,
  input  [63:0] io_fw_top,
  output [63:0] io_fw_bottom,
  output [63:0] io_fw_right,
  input         io_sel
);
  assign io_fw_bottom = io_sel ? io_fw_left : io_fw_top; // @[CrossBarSwitch.scala 15:17 CrossBarSwitch.scala 16:18 CrossBarSwitch.scala 18:18]
  assign io_fw_right = io_fw_left; // @[CrossBarSwitch.scala 14:15]
endmodule
module CrossBarSwitch(
  input         clock,
  input  [63:0] io_fw_left_0,
  input  [63:0] io_fw_left_1,
  input  [63:0] io_fw_left_2,
  input  [63:0] io_fw_left_3,
  output [63:0] io_fw_bottom_0,
  output [63:0] io_fw_bottom_1,
  output [63:0] io_fw_bottom_2,
  output [63:0] io_fw_bottom_3,
  input  [1:0]  io_select_0,
  input  [1:0]  io_select_1,
  input  [1:0]  io_select_2,
  input  [1:0]  io_select_3
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] cells_2d_0_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_0_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_0_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_0_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_0_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_1_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_1_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_1_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_1_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_1_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_2_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_2_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_2_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_2_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_2_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_3_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_3_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_3_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_3_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_3_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_4_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_4_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_4_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_4_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_4_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_5_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_5_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_5_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_5_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_5_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_6_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_6_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_6_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_6_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_6_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_7_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_7_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_7_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_7_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_7_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_8_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_8_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_8_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_8_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_8_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_9_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_9_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_9_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_9_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_9_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_10_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_10_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_10_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_10_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_10_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_11_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_11_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_11_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_11_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_11_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_12_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_12_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_12_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_12_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_12_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_13_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_13_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_13_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_13_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_13_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_14_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_14_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_14_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_14_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_14_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_15_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_15_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_15_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [63:0] cells_2d_15_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_15_io_sel; // @[CrossBarSwitch.scala 37:53]
  reg [63:0] fw_left_reg_0; // @[CrossBarSwitch.scala 33:28]
  reg [63:0] fw_left_reg_1; // @[CrossBarSwitch.scala 33:28]
  reg [63:0] fw_left_reg_2; // @[CrossBarSwitch.scala 33:28]
  reg [63:0] fw_left_reg_3; // @[CrossBarSwitch.scala 33:28]
  wire [3:0] select_onehot_0 = 4'h1 << io_select_0; // @[OneHot.scala 65:12]
  wire [3:0] select_onehot_1 = 4'h1 << io_select_1; // @[OneHot.scala 65:12]
  wire [3:0] select_onehot_2 = 4'h1 << io_select_2; // @[OneHot.scala 65:12]
  wire [3:0] select_onehot_3 = 4'h1 << io_select_3; // @[OneHot.scala 65:12]
  CrossBarCell cells_2d_0 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_0_io_fw_left),
    .io_fw_top(cells_2d_0_io_fw_top),
    .io_fw_bottom(cells_2d_0_io_fw_bottom),
    .io_fw_right(cells_2d_0_io_fw_right),
    .io_sel(cells_2d_0_io_sel)
  );
  CrossBarCell cells_2d_1 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_1_io_fw_left),
    .io_fw_top(cells_2d_1_io_fw_top),
    .io_fw_bottom(cells_2d_1_io_fw_bottom),
    .io_fw_right(cells_2d_1_io_fw_right),
    .io_sel(cells_2d_1_io_sel)
  );
  CrossBarCell cells_2d_2 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_2_io_fw_left),
    .io_fw_top(cells_2d_2_io_fw_top),
    .io_fw_bottom(cells_2d_2_io_fw_bottom),
    .io_fw_right(cells_2d_2_io_fw_right),
    .io_sel(cells_2d_2_io_sel)
  );
  CrossBarCell cells_2d_3 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_3_io_fw_left),
    .io_fw_top(cells_2d_3_io_fw_top),
    .io_fw_bottom(cells_2d_3_io_fw_bottom),
    .io_fw_right(cells_2d_3_io_fw_right),
    .io_sel(cells_2d_3_io_sel)
  );
  CrossBarCell cells_2d_4 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_4_io_fw_left),
    .io_fw_top(cells_2d_4_io_fw_top),
    .io_fw_bottom(cells_2d_4_io_fw_bottom),
    .io_fw_right(cells_2d_4_io_fw_right),
    .io_sel(cells_2d_4_io_sel)
  );
  CrossBarCell cells_2d_5 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_5_io_fw_left),
    .io_fw_top(cells_2d_5_io_fw_top),
    .io_fw_bottom(cells_2d_5_io_fw_bottom),
    .io_fw_right(cells_2d_5_io_fw_right),
    .io_sel(cells_2d_5_io_sel)
  );
  CrossBarCell cells_2d_6 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_6_io_fw_left),
    .io_fw_top(cells_2d_6_io_fw_top),
    .io_fw_bottom(cells_2d_6_io_fw_bottom),
    .io_fw_right(cells_2d_6_io_fw_right),
    .io_sel(cells_2d_6_io_sel)
  );
  CrossBarCell cells_2d_7 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_7_io_fw_left),
    .io_fw_top(cells_2d_7_io_fw_top),
    .io_fw_bottom(cells_2d_7_io_fw_bottom),
    .io_fw_right(cells_2d_7_io_fw_right),
    .io_sel(cells_2d_7_io_sel)
  );
  CrossBarCell cells_2d_8 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_8_io_fw_left),
    .io_fw_top(cells_2d_8_io_fw_top),
    .io_fw_bottom(cells_2d_8_io_fw_bottom),
    .io_fw_right(cells_2d_8_io_fw_right),
    .io_sel(cells_2d_8_io_sel)
  );
  CrossBarCell cells_2d_9 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_9_io_fw_left),
    .io_fw_top(cells_2d_9_io_fw_top),
    .io_fw_bottom(cells_2d_9_io_fw_bottom),
    .io_fw_right(cells_2d_9_io_fw_right),
    .io_sel(cells_2d_9_io_sel)
  );
  CrossBarCell cells_2d_10 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_10_io_fw_left),
    .io_fw_top(cells_2d_10_io_fw_top),
    .io_fw_bottom(cells_2d_10_io_fw_bottom),
    .io_fw_right(cells_2d_10_io_fw_right),
    .io_sel(cells_2d_10_io_sel)
  );
  CrossBarCell cells_2d_11 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_11_io_fw_left),
    .io_fw_top(cells_2d_11_io_fw_top),
    .io_fw_bottom(cells_2d_11_io_fw_bottom),
    .io_fw_right(cells_2d_11_io_fw_right),
    .io_sel(cells_2d_11_io_sel)
  );
  CrossBarCell cells_2d_12 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_12_io_fw_left),
    .io_fw_top(cells_2d_12_io_fw_top),
    .io_fw_bottom(cells_2d_12_io_fw_bottom),
    .io_fw_right(cells_2d_12_io_fw_right),
    .io_sel(cells_2d_12_io_sel)
  );
  CrossBarCell cells_2d_13 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_13_io_fw_left),
    .io_fw_top(cells_2d_13_io_fw_top),
    .io_fw_bottom(cells_2d_13_io_fw_bottom),
    .io_fw_right(cells_2d_13_io_fw_right),
    .io_sel(cells_2d_13_io_sel)
  );
  CrossBarCell cells_2d_14 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_14_io_fw_left),
    .io_fw_top(cells_2d_14_io_fw_top),
    .io_fw_bottom(cells_2d_14_io_fw_bottom),
    .io_fw_right(cells_2d_14_io_fw_right),
    .io_sel(cells_2d_14_io_sel)
  );
  CrossBarCell cells_2d_15 ( // @[CrossBarSwitch.scala 37:53]
    .io_fw_left(cells_2d_15_io_fw_left),
    .io_fw_top(cells_2d_15_io_fw_top),
    .io_fw_bottom(cells_2d_15_io_fw_bottom),
    .io_fw_right(cells_2d_15_io_fw_right),
    .io_sel(cells_2d_15_io_sel)
  );
  assign io_fw_bottom_0 = cells_2d_12_io_fw_bottom; // @[CrossBarSwitch.scala 77:21]
  assign io_fw_bottom_1 = cells_2d_13_io_fw_bottom; // @[CrossBarSwitch.scala 77:21]
  assign io_fw_bottom_2 = cells_2d_14_io_fw_bottom; // @[CrossBarSwitch.scala 77:21]
  assign io_fw_bottom_3 = cells_2d_15_io_fw_bottom; // @[CrossBarSwitch.scala 77:21]
  assign cells_2d_0_io_fw_left = fw_left_reg_0; // @[CrossBarSwitch.scala 62:29]
  assign cells_2d_0_io_fw_top = 64'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_0_io_sel = select_onehot_0[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_1_io_fw_left = cells_2d_0_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_1_io_fw_top = 64'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_1_io_sel = select_onehot_1[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_2_io_fw_left = cells_2d_1_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_2_io_fw_top = 64'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_2_io_sel = select_onehot_2[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_3_io_fw_left = cells_2d_2_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_3_io_fw_top = 64'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_3_io_sel = select_onehot_3[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_4_io_fw_left = fw_left_reg_1; // @[CrossBarSwitch.scala 62:29]
  assign cells_2d_4_io_fw_top = cells_2d_0_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_4_io_sel = select_onehot_0[1]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_5_io_fw_left = cells_2d_4_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_5_io_fw_top = cells_2d_1_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_5_io_sel = select_onehot_1[1]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_6_io_fw_left = cells_2d_5_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_6_io_fw_top = cells_2d_2_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_6_io_sel = select_onehot_2[1]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_7_io_fw_left = cells_2d_6_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_7_io_fw_top = cells_2d_3_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_7_io_sel = select_onehot_3[1]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_8_io_fw_left = fw_left_reg_2; // @[CrossBarSwitch.scala 62:29]
  assign cells_2d_8_io_fw_top = cells_2d_4_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_8_io_sel = select_onehot_0[2]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_9_io_fw_left = cells_2d_8_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_9_io_fw_top = cells_2d_5_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_9_io_sel = select_onehot_1[2]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_10_io_fw_left = cells_2d_9_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_10_io_fw_top = cells_2d_6_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_10_io_sel = select_onehot_2[2]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_11_io_fw_left = cells_2d_10_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_11_io_fw_top = cells_2d_7_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_11_io_sel = select_onehot_3[2]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_12_io_fw_left = fw_left_reg_3; // @[CrossBarSwitch.scala 62:29]
  assign cells_2d_12_io_fw_top = cells_2d_8_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_12_io_sel = select_onehot_0[3]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_13_io_fw_left = cells_2d_12_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_13_io_fw_top = cells_2d_9_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_13_io_sel = select_onehot_1[3]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_14_io_fw_left = cells_2d_13_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_14_io_fw_top = cells_2d_10_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_14_io_sel = select_onehot_2[3]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_15_io_fw_left = cells_2d_14_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_15_io_fw_top = cells_2d_11_io_fw_bottom; // @[CrossBarSwitch.scala 58:28]
  assign cells_2d_15_io_sel = select_onehot_3[3]; // @[CrossBarSwitch.scala 70:44]
  always @(posedge clock) begin
    fw_left_reg_0 <= io_fw_left_0; // @[CrossBarSwitch.scala 33:28]
    fw_left_reg_1 <= io_fw_left_1; // @[CrossBarSwitch.scala 33:28]
    fw_left_reg_2 <= io_fw_left_2; // @[CrossBarSwitch.scala 33:28]
    fw_left_reg_3 <= io_fw_left_3; // @[CrossBarSwitch.scala 33:28]
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
  _RAND_0 = {2{`RANDOM}};
  fw_left_reg_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  fw_left_reg_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  fw_left_reg_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  fw_left_reg_3 = _RAND_3[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CLOScell4(
  input         clock,
  input  [63:0] io_in4_0,
  input  [63:0] io_in4_1,
  input  [63:0] io_in4_2,
  input  [63:0] io_in4_3,
  output [63:0] io_out4_0,
  output [63:0] io_out4_1,
  output [63:0] io_out4_2,
  output [63:0] io_out4_3,
  input  [7:0]  io_ctrl
);
  wire  CrossBarSwitch_clock; // @[CLOS16.scala 11:21]
  wire [63:0] CrossBarSwitch_io_fw_left_0; // @[CLOS16.scala 11:21]
  wire [63:0] CrossBarSwitch_io_fw_left_1; // @[CLOS16.scala 11:21]
  wire [63:0] CrossBarSwitch_io_fw_left_2; // @[CLOS16.scala 11:21]
  wire [63:0] CrossBarSwitch_io_fw_left_3; // @[CLOS16.scala 11:21]
  wire [63:0] CrossBarSwitch_io_fw_bottom_0; // @[CLOS16.scala 11:21]
  wire [63:0] CrossBarSwitch_io_fw_bottom_1; // @[CLOS16.scala 11:21]
  wire [63:0] CrossBarSwitch_io_fw_bottom_2; // @[CLOS16.scala 11:21]
  wire [63:0] CrossBarSwitch_io_fw_bottom_3; // @[CLOS16.scala 11:21]
  wire [1:0] CrossBarSwitch_io_select_0; // @[CLOS16.scala 11:21]
  wire [1:0] CrossBarSwitch_io_select_1; // @[CLOS16.scala 11:21]
  wire [1:0] CrossBarSwitch_io_select_2; // @[CLOS16.scala 11:21]
  wire [1:0] CrossBarSwitch_io_select_3; // @[CLOS16.scala 11:21]
  CrossBarSwitch CrossBarSwitch ( // @[CLOS16.scala 11:21]
    .clock(CrossBarSwitch_clock),
    .io_fw_left_0(CrossBarSwitch_io_fw_left_0),
    .io_fw_left_1(CrossBarSwitch_io_fw_left_1),
    .io_fw_left_2(CrossBarSwitch_io_fw_left_2),
    .io_fw_left_3(CrossBarSwitch_io_fw_left_3),
    .io_fw_bottom_0(CrossBarSwitch_io_fw_bottom_0),
    .io_fw_bottom_1(CrossBarSwitch_io_fw_bottom_1),
    .io_fw_bottom_2(CrossBarSwitch_io_fw_bottom_2),
    .io_fw_bottom_3(CrossBarSwitch_io_fw_bottom_3),
    .io_select_0(CrossBarSwitch_io_select_0),
    .io_select_1(CrossBarSwitch_io_select_1),
    .io_select_2(CrossBarSwitch_io_select_2),
    .io_select_3(CrossBarSwitch_io_select_3)
  );
  assign io_out4_0 = CrossBarSwitch_io_fw_bottom_0; // @[CLOS16.scala 16:11]
  assign io_out4_1 = CrossBarSwitch_io_fw_bottom_1; // @[CLOS16.scala 16:11]
  assign io_out4_2 = CrossBarSwitch_io_fw_bottom_2; // @[CLOS16.scala 16:11]
  assign io_out4_3 = CrossBarSwitch_io_fw_bottom_3; // @[CLOS16.scala 16:11]
  assign CrossBarSwitch_clock = clock;
  assign CrossBarSwitch_io_fw_left_0 = io_in4_0; // @[CLOS16.scala 15:17]
  assign CrossBarSwitch_io_fw_left_1 = io_in4_1; // @[CLOS16.scala 15:17]
  assign CrossBarSwitch_io_fw_left_2 = io_in4_2; // @[CLOS16.scala 15:17]
  assign CrossBarSwitch_io_fw_left_3 = io_in4_3; // @[CLOS16.scala 15:17]
  assign CrossBarSwitch_io_select_0 = io_ctrl[7:6]; // @[CLOS16.scala 13:31]
  assign CrossBarSwitch_io_select_1 = io_ctrl[5:4]; // @[CLOS16.scala 13:31]
  assign CrossBarSwitch_io_select_2 = io_ctrl[3:2]; // @[CLOS16.scala 13:31]
  assign CrossBarSwitch_io_select_3 = io_ctrl[1:0]; // @[CLOS16.scala 13:31]
endmodule
module CLOS16(
  input         clock,
  input         reset,
  input  [63:0] io_in16_0,
  input  [63:0] io_in16_1,
  input  [63:0] io_in16_2,
  input  [63:0] io_in16_3,
  input  [63:0] io_in16_4,
  input  [63:0] io_in16_5,
  input  [63:0] io_in16_6,
  input  [63:0] io_in16_7,
  input  [63:0] io_in16_8,
  input  [63:0] io_in16_9,
  input  [63:0] io_in16_10,
  input  [63:0] io_in16_11,
  input  [63:0] io_in16_12,
  input  [63:0] io_in16_13,
  input  [63:0] io_in16_14,
  input  [63:0] io_in16_15,
  output [63:0] io_out16_0,
  output [63:0] io_out16_1,
  output [63:0] io_out16_2,
  output [63:0] io_out16_3,
  output [63:0] io_out16_4,
  output [63:0] io_out16_5,
  output [63:0] io_out16_6,
  output [63:0] io_out16_7,
  output [63:0] io_out16_8,
  output [63:0] io_out16_9,
  output [63:0] io_out16_10,
  output [63:0] io_out16_11,
  output [63:0] io_out16_12,
  output [63:0] io_out16_13,
  output [63:0] io_out16_14,
  output [63:0] io_out16_15,
  input         io_wr_en,
  input  [95:0] io_wr_instr,
  input         io_run
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [95:0] _RAND_1;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [95:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [95:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [95:0] IQ [0:99]; // @[CLOS16.scala 28:15]
  wire [95:0] IQ_instr_MPORT_data; // @[CLOS16.scala 28:15]
  wire [6:0] IQ_instr_MPORT_addr; // @[CLOS16.scala 28:15]
  wire [95:0] IQ_MPORT_data; // @[CLOS16.scala 28:15]
  wire [6:0] IQ_MPORT_addr; // @[CLOS16.scala 28:15]
  wire  IQ_MPORT_mask; // @[CLOS16.scala 28:15]
  wire  IQ_MPORT_en; // @[CLOS16.scala 28:15]
  wire  ingress_0_clock; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_0_io_in4_0; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_0_io_in4_1; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_0_io_in4_2; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_0_io_in4_3; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_0_io_out4_0; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_0_io_out4_1; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_0_io_out4_2; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_0_io_out4_3; // @[CLOS16.scala 40:50]
  wire [7:0] ingress_0_io_ctrl; // @[CLOS16.scala 40:50]
  wire  ingress_1_clock; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_1_io_in4_0; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_1_io_in4_1; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_1_io_in4_2; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_1_io_in4_3; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_1_io_out4_0; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_1_io_out4_1; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_1_io_out4_2; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_1_io_out4_3; // @[CLOS16.scala 40:50]
  wire [7:0] ingress_1_io_ctrl; // @[CLOS16.scala 40:50]
  wire  ingress_2_clock; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_2_io_in4_0; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_2_io_in4_1; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_2_io_in4_2; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_2_io_in4_3; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_2_io_out4_0; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_2_io_out4_1; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_2_io_out4_2; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_2_io_out4_3; // @[CLOS16.scala 40:50]
  wire [7:0] ingress_2_io_ctrl; // @[CLOS16.scala 40:50]
  wire  ingress_3_clock; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_3_io_in4_0; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_3_io_in4_1; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_3_io_in4_2; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_3_io_in4_3; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_3_io_out4_0; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_3_io_out4_1; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_3_io_out4_2; // @[CLOS16.scala 40:50]
  wire [63:0] ingress_3_io_out4_3; // @[CLOS16.scala 40:50]
  wire [7:0] ingress_3_io_ctrl; // @[CLOS16.scala 40:50]
  wire  egress_0_clock; // @[CLOS16.scala 41:49]
  wire [63:0] egress_0_io_in4_0; // @[CLOS16.scala 41:49]
  wire [63:0] egress_0_io_in4_1; // @[CLOS16.scala 41:49]
  wire [63:0] egress_0_io_in4_2; // @[CLOS16.scala 41:49]
  wire [63:0] egress_0_io_in4_3; // @[CLOS16.scala 41:49]
  wire [63:0] egress_0_io_out4_0; // @[CLOS16.scala 41:49]
  wire [63:0] egress_0_io_out4_1; // @[CLOS16.scala 41:49]
  wire [63:0] egress_0_io_out4_2; // @[CLOS16.scala 41:49]
  wire [63:0] egress_0_io_out4_3; // @[CLOS16.scala 41:49]
  wire [7:0] egress_0_io_ctrl; // @[CLOS16.scala 41:49]
  wire  egress_1_clock; // @[CLOS16.scala 41:49]
  wire [63:0] egress_1_io_in4_0; // @[CLOS16.scala 41:49]
  wire [63:0] egress_1_io_in4_1; // @[CLOS16.scala 41:49]
  wire [63:0] egress_1_io_in4_2; // @[CLOS16.scala 41:49]
  wire [63:0] egress_1_io_in4_3; // @[CLOS16.scala 41:49]
  wire [63:0] egress_1_io_out4_0; // @[CLOS16.scala 41:49]
  wire [63:0] egress_1_io_out4_1; // @[CLOS16.scala 41:49]
  wire [63:0] egress_1_io_out4_2; // @[CLOS16.scala 41:49]
  wire [63:0] egress_1_io_out4_3; // @[CLOS16.scala 41:49]
  wire [7:0] egress_1_io_ctrl; // @[CLOS16.scala 41:49]
  wire  egress_2_clock; // @[CLOS16.scala 41:49]
  wire [63:0] egress_2_io_in4_0; // @[CLOS16.scala 41:49]
  wire [63:0] egress_2_io_in4_1; // @[CLOS16.scala 41:49]
  wire [63:0] egress_2_io_in4_2; // @[CLOS16.scala 41:49]
  wire [63:0] egress_2_io_in4_3; // @[CLOS16.scala 41:49]
  wire [63:0] egress_2_io_out4_0; // @[CLOS16.scala 41:49]
  wire [63:0] egress_2_io_out4_1; // @[CLOS16.scala 41:49]
  wire [63:0] egress_2_io_out4_2; // @[CLOS16.scala 41:49]
  wire [63:0] egress_2_io_out4_3; // @[CLOS16.scala 41:49]
  wire [7:0] egress_2_io_ctrl; // @[CLOS16.scala 41:49]
  wire  egress_3_clock; // @[CLOS16.scala 41:49]
  wire [63:0] egress_3_io_in4_0; // @[CLOS16.scala 41:49]
  wire [63:0] egress_3_io_in4_1; // @[CLOS16.scala 41:49]
  wire [63:0] egress_3_io_in4_2; // @[CLOS16.scala 41:49]
  wire [63:0] egress_3_io_in4_3; // @[CLOS16.scala 41:49]
  wire [63:0] egress_3_io_out4_0; // @[CLOS16.scala 41:49]
  wire [63:0] egress_3_io_out4_1; // @[CLOS16.scala 41:49]
  wire [63:0] egress_3_io_out4_2; // @[CLOS16.scala 41:49]
  wire [63:0] egress_3_io_out4_3; // @[CLOS16.scala 41:49]
  wire [7:0] egress_3_io_ctrl; // @[CLOS16.scala 41:49]
  wire  middle_0_clock; // @[CLOS16.scala 42:49]
  wire [63:0] middle_0_io_in4_0; // @[CLOS16.scala 42:49]
  wire [63:0] middle_0_io_in4_1; // @[CLOS16.scala 42:49]
  wire [63:0] middle_0_io_in4_2; // @[CLOS16.scala 42:49]
  wire [63:0] middle_0_io_in4_3; // @[CLOS16.scala 42:49]
  wire [63:0] middle_0_io_out4_0; // @[CLOS16.scala 42:49]
  wire [63:0] middle_0_io_out4_1; // @[CLOS16.scala 42:49]
  wire [63:0] middle_0_io_out4_2; // @[CLOS16.scala 42:49]
  wire [63:0] middle_0_io_out4_3; // @[CLOS16.scala 42:49]
  wire [7:0] middle_0_io_ctrl; // @[CLOS16.scala 42:49]
  wire  middle_1_clock; // @[CLOS16.scala 42:49]
  wire [63:0] middle_1_io_in4_0; // @[CLOS16.scala 42:49]
  wire [63:0] middle_1_io_in4_1; // @[CLOS16.scala 42:49]
  wire [63:0] middle_1_io_in4_2; // @[CLOS16.scala 42:49]
  wire [63:0] middle_1_io_in4_3; // @[CLOS16.scala 42:49]
  wire [63:0] middle_1_io_out4_0; // @[CLOS16.scala 42:49]
  wire [63:0] middle_1_io_out4_1; // @[CLOS16.scala 42:49]
  wire [63:0] middle_1_io_out4_2; // @[CLOS16.scala 42:49]
  wire [63:0] middle_1_io_out4_3; // @[CLOS16.scala 42:49]
  wire [7:0] middle_1_io_ctrl; // @[CLOS16.scala 42:49]
  wire  middle_2_clock; // @[CLOS16.scala 42:49]
  wire [63:0] middle_2_io_in4_0; // @[CLOS16.scala 42:49]
  wire [63:0] middle_2_io_in4_1; // @[CLOS16.scala 42:49]
  wire [63:0] middle_2_io_in4_2; // @[CLOS16.scala 42:49]
  wire [63:0] middle_2_io_in4_3; // @[CLOS16.scala 42:49]
  wire [63:0] middle_2_io_out4_0; // @[CLOS16.scala 42:49]
  wire [63:0] middle_2_io_out4_1; // @[CLOS16.scala 42:49]
  wire [63:0] middle_2_io_out4_2; // @[CLOS16.scala 42:49]
  wire [63:0] middle_2_io_out4_3; // @[CLOS16.scala 42:49]
  wire [7:0] middle_2_io_ctrl; // @[CLOS16.scala 42:49]
  wire  middle_3_clock; // @[CLOS16.scala 42:49]
  wire [63:0] middle_3_io_in4_0; // @[CLOS16.scala 42:49]
  wire [63:0] middle_3_io_in4_1; // @[CLOS16.scala 42:49]
  wire [63:0] middle_3_io_in4_2; // @[CLOS16.scala 42:49]
  wire [63:0] middle_3_io_in4_3; // @[CLOS16.scala 42:49]
  wire [63:0] middle_3_io_out4_0; // @[CLOS16.scala 42:49]
  wire [63:0] middle_3_io_out4_1; // @[CLOS16.scala 42:49]
  wire [63:0] middle_3_io_out4_2; // @[CLOS16.scala 42:49]
  wire [63:0] middle_3_io_out4_3; // @[CLOS16.scala 42:49]
  wire [7:0] middle_3_io_ctrl; // @[CLOS16.scala 42:49]
  reg [6:0] PC; // @[CLOS16.scala 29:19]
  reg [6:0] wr_addr; // @[CLOS16.scala 30:24]
  reg [95:0] instr; // @[CLOS16.scala 31:22]
  wire [6:0] _PC_T_1 = PC + 7'h1; // @[CLOS16.scala 34:14]
  wire [6:0] _wr_addr_T_1 = wr_addr + 7'h1; // @[CLOS16.scala 37:24]
  wire [31:0] ingressCtrlReg = instr[95:64]; // @[CLOS16.scala 52:29]
  reg [31:0] middleCtrlReg; // @[CLOS16.scala 53:30]
  reg [31:0] egressCtrlReg_REG; // @[CLOS16.scala 54:38]
  reg [31:0] egressCtrlReg; // @[CLOS16.scala 54:30]
  CLOScell4 ingress_0 ( // @[CLOS16.scala 40:50]
    .clock(ingress_0_clock),
    .io_in4_0(ingress_0_io_in4_0),
    .io_in4_1(ingress_0_io_in4_1),
    .io_in4_2(ingress_0_io_in4_2),
    .io_in4_3(ingress_0_io_in4_3),
    .io_out4_0(ingress_0_io_out4_0),
    .io_out4_1(ingress_0_io_out4_1),
    .io_out4_2(ingress_0_io_out4_2),
    .io_out4_3(ingress_0_io_out4_3),
    .io_ctrl(ingress_0_io_ctrl)
  );
  CLOScell4 ingress_1 ( // @[CLOS16.scala 40:50]
    .clock(ingress_1_clock),
    .io_in4_0(ingress_1_io_in4_0),
    .io_in4_1(ingress_1_io_in4_1),
    .io_in4_2(ingress_1_io_in4_2),
    .io_in4_3(ingress_1_io_in4_3),
    .io_out4_0(ingress_1_io_out4_0),
    .io_out4_1(ingress_1_io_out4_1),
    .io_out4_2(ingress_1_io_out4_2),
    .io_out4_3(ingress_1_io_out4_3),
    .io_ctrl(ingress_1_io_ctrl)
  );
  CLOScell4 ingress_2 ( // @[CLOS16.scala 40:50]
    .clock(ingress_2_clock),
    .io_in4_0(ingress_2_io_in4_0),
    .io_in4_1(ingress_2_io_in4_1),
    .io_in4_2(ingress_2_io_in4_2),
    .io_in4_3(ingress_2_io_in4_3),
    .io_out4_0(ingress_2_io_out4_0),
    .io_out4_1(ingress_2_io_out4_1),
    .io_out4_2(ingress_2_io_out4_2),
    .io_out4_3(ingress_2_io_out4_3),
    .io_ctrl(ingress_2_io_ctrl)
  );
  CLOScell4 ingress_3 ( // @[CLOS16.scala 40:50]
    .clock(ingress_3_clock),
    .io_in4_0(ingress_3_io_in4_0),
    .io_in4_1(ingress_3_io_in4_1),
    .io_in4_2(ingress_3_io_in4_2),
    .io_in4_3(ingress_3_io_in4_3),
    .io_out4_0(ingress_3_io_out4_0),
    .io_out4_1(ingress_3_io_out4_1),
    .io_out4_2(ingress_3_io_out4_2),
    .io_out4_3(ingress_3_io_out4_3),
    .io_ctrl(ingress_3_io_ctrl)
  );
  CLOScell4 egress_0 ( // @[CLOS16.scala 41:49]
    .clock(egress_0_clock),
    .io_in4_0(egress_0_io_in4_0),
    .io_in4_1(egress_0_io_in4_1),
    .io_in4_2(egress_0_io_in4_2),
    .io_in4_3(egress_0_io_in4_3),
    .io_out4_0(egress_0_io_out4_0),
    .io_out4_1(egress_0_io_out4_1),
    .io_out4_2(egress_0_io_out4_2),
    .io_out4_3(egress_0_io_out4_3),
    .io_ctrl(egress_0_io_ctrl)
  );
  CLOScell4 egress_1 ( // @[CLOS16.scala 41:49]
    .clock(egress_1_clock),
    .io_in4_0(egress_1_io_in4_0),
    .io_in4_1(egress_1_io_in4_1),
    .io_in4_2(egress_1_io_in4_2),
    .io_in4_3(egress_1_io_in4_3),
    .io_out4_0(egress_1_io_out4_0),
    .io_out4_1(egress_1_io_out4_1),
    .io_out4_2(egress_1_io_out4_2),
    .io_out4_3(egress_1_io_out4_3),
    .io_ctrl(egress_1_io_ctrl)
  );
  CLOScell4 egress_2 ( // @[CLOS16.scala 41:49]
    .clock(egress_2_clock),
    .io_in4_0(egress_2_io_in4_0),
    .io_in4_1(egress_2_io_in4_1),
    .io_in4_2(egress_2_io_in4_2),
    .io_in4_3(egress_2_io_in4_3),
    .io_out4_0(egress_2_io_out4_0),
    .io_out4_1(egress_2_io_out4_1),
    .io_out4_2(egress_2_io_out4_2),
    .io_out4_3(egress_2_io_out4_3),
    .io_ctrl(egress_2_io_ctrl)
  );
  CLOScell4 egress_3 ( // @[CLOS16.scala 41:49]
    .clock(egress_3_clock),
    .io_in4_0(egress_3_io_in4_0),
    .io_in4_1(egress_3_io_in4_1),
    .io_in4_2(egress_3_io_in4_2),
    .io_in4_3(egress_3_io_in4_3),
    .io_out4_0(egress_3_io_out4_0),
    .io_out4_1(egress_3_io_out4_1),
    .io_out4_2(egress_3_io_out4_2),
    .io_out4_3(egress_3_io_out4_3),
    .io_ctrl(egress_3_io_ctrl)
  );
  CLOScell4 middle_0 ( // @[CLOS16.scala 42:49]
    .clock(middle_0_clock),
    .io_in4_0(middle_0_io_in4_0),
    .io_in4_1(middle_0_io_in4_1),
    .io_in4_2(middle_0_io_in4_2),
    .io_in4_3(middle_0_io_in4_3),
    .io_out4_0(middle_0_io_out4_0),
    .io_out4_1(middle_0_io_out4_1),
    .io_out4_2(middle_0_io_out4_2),
    .io_out4_3(middle_0_io_out4_3),
    .io_ctrl(middle_0_io_ctrl)
  );
  CLOScell4 middle_1 ( // @[CLOS16.scala 42:49]
    .clock(middle_1_clock),
    .io_in4_0(middle_1_io_in4_0),
    .io_in4_1(middle_1_io_in4_1),
    .io_in4_2(middle_1_io_in4_2),
    .io_in4_3(middle_1_io_in4_3),
    .io_out4_0(middle_1_io_out4_0),
    .io_out4_1(middle_1_io_out4_1),
    .io_out4_2(middle_1_io_out4_2),
    .io_out4_3(middle_1_io_out4_3),
    .io_ctrl(middle_1_io_ctrl)
  );
  CLOScell4 middle_2 ( // @[CLOS16.scala 42:49]
    .clock(middle_2_clock),
    .io_in4_0(middle_2_io_in4_0),
    .io_in4_1(middle_2_io_in4_1),
    .io_in4_2(middle_2_io_in4_2),
    .io_in4_3(middle_2_io_in4_3),
    .io_out4_0(middle_2_io_out4_0),
    .io_out4_1(middle_2_io_out4_1),
    .io_out4_2(middle_2_io_out4_2),
    .io_out4_3(middle_2_io_out4_3),
    .io_ctrl(middle_2_io_ctrl)
  );
  CLOScell4 middle_3 ( // @[CLOS16.scala 42:49]
    .clock(middle_3_clock),
    .io_in4_0(middle_3_io_in4_0),
    .io_in4_1(middle_3_io_in4_1),
    .io_in4_2(middle_3_io_in4_2),
    .io_in4_3(middle_3_io_in4_3),
    .io_out4_0(middle_3_io_out4_0),
    .io_out4_1(middle_3_io_out4_1),
    .io_out4_2(middle_3_io_out4_2),
    .io_out4_3(middle_3_io_out4_3),
    .io_ctrl(middle_3_io_ctrl)
  );
  assign IQ_instr_MPORT_addr = PC;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign IQ_instr_MPORT_data = IQ[IQ_instr_MPORT_addr]; // @[CLOS16.scala 28:15]
  `else
  assign IQ_instr_MPORT_data = IQ_instr_MPORT_addr >= 7'h64 ? _RAND_1[95:0] : IQ[IQ_instr_MPORT_addr]; // @[CLOS16.scala 28:15]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign IQ_MPORT_data = io_wr_instr;
  assign IQ_MPORT_addr = wr_addr;
  assign IQ_MPORT_mask = 1'h1;
  assign IQ_MPORT_en = io_run ? 1'h0 : io_wr_en;
  assign io_out16_0 = egress_0_io_out4_0; // @[CLOS16.scala 48:23]
  assign io_out16_1 = egress_0_io_out4_1; // @[CLOS16.scala 48:23]
  assign io_out16_2 = egress_0_io_out4_2; // @[CLOS16.scala 48:23]
  assign io_out16_3 = egress_0_io_out4_3; // @[CLOS16.scala 48:23]
  assign io_out16_4 = egress_1_io_out4_0; // @[CLOS16.scala 48:23]
  assign io_out16_5 = egress_1_io_out4_1; // @[CLOS16.scala 48:23]
  assign io_out16_6 = egress_1_io_out4_2; // @[CLOS16.scala 48:23]
  assign io_out16_7 = egress_1_io_out4_3; // @[CLOS16.scala 48:23]
  assign io_out16_8 = egress_2_io_out4_0; // @[CLOS16.scala 48:23]
  assign io_out16_9 = egress_2_io_out4_1; // @[CLOS16.scala 48:23]
  assign io_out16_10 = egress_2_io_out4_2; // @[CLOS16.scala 48:23]
  assign io_out16_11 = egress_2_io_out4_3; // @[CLOS16.scala 48:23]
  assign io_out16_12 = egress_3_io_out4_0; // @[CLOS16.scala 48:23]
  assign io_out16_13 = egress_3_io_out4_1; // @[CLOS16.scala 48:23]
  assign io_out16_14 = egress_3_io_out4_2; // @[CLOS16.scala 48:23]
  assign io_out16_15 = egress_3_io_out4_3; // @[CLOS16.scala 48:23]
  assign ingress_0_clock = clock;
  assign ingress_0_io_in4_0 = io_in16_0; // @[CLOS16.scala 47:28]
  assign ingress_0_io_in4_1 = io_in16_1; // @[CLOS16.scala 47:28]
  assign ingress_0_io_in4_2 = io_in16_2; // @[CLOS16.scala 47:28]
  assign ingress_0_io_in4_3 = io_in16_3; // @[CLOS16.scala 47:28]
  assign ingress_0_io_ctrl = ingressCtrlReg[31:24]; // @[CLOS16.scala 58:41]
  assign ingress_1_clock = clock;
  assign ingress_1_io_in4_0 = io_in16_4; // @[CLOS16.scala 47:28]
  assign ingress_1_io_in4_1 = io_in16_5; // @[CLOS16.scala 47:28]
  assign ingress_1_io_in4_2 = io_in16_6; // @[CLOS16.scala 47:28]
  assign ingress_1_io_in4_3 = io_in16_7; // @[CLOS16.scala 47:28]
  assign ingress_1_io_ctrl = ingressCtrlReg[23:16]; // @[CLOS16.scala 58:41]
  assign ingress_2_clock = clock;
  assign ingress_2_io_in4_0 = io_in16_8; // @[CLOS16.scala 47:28]
  assign ingress_2_io_in4_1 = io_in16_9; // @[CLOS16.scala 47:28]
  assign ingress_2_io_in4_2 = io_in16_10; // @[CLOS16.scala 47:28]
  assign ingress_2_io_in4_3 = io_in16_11; // @[CLOS16.scala 47:28]
  assign ingress_2_io_ctrl = ingressCtrlReg[15:8]; // @[CLOS16.scala 58:41]
  assign ingress_3_clock = clock;
  assign ingress_3_io_in4_0 = io_in16_12; // @[CLOS16.scala 47:28]
  assign ingress_3_io_in4_1 = io_in16_13; // @[CLOS16.scala 47:28]
  assign ingress_3_io_in4_2 = io_in16_14; // @[CLOS16.scala 47:28]
  assign ingress_3_io_in4_3 = io_in16_15; // @[CLOS16.scala 47:28]
  assign ingress_3_io_ctrl = ingressCtrlReg[7:0]; // @[CLOS16.scala 58:41]
  assign egress_0_clock = clock;
  assign egress_0_io_in4_0 = middle_0_io_out4_0; // @[CLOS16.scala 66:27]
  assign egress_0_io_in4_1 = middle_1_io_out4_0; // @[CLOS16.scala 66:27]
  assign egress_0_io_in4_2 = middle_2_io_out4_0; // @[CLOS16.scala 66:27]
  assign egress_0_io_in4_3 = middle_3_io_out4_0; // @[CLOS16.scala 66:27]
  assign egress_0_io_ctrl = egressCtrlReg[31:24]; // @[CLOS16.scala 60:39]
  assign egress_1_clock = clock;
  assign egress_1_io_in4_0 = middle_0_io_out4_1; // @[CLOS16.scala 66:27]
  assign egress_1_io_in4_1 = middle_1_io_out4_1; // @[CLOS16.scala 66:27]
  assign egress_1_io_in4_2 = middle_2_io_out4_1; // @[CLOS16.scala 66:27]
  assign egress_1_io_in4_3 = middle_3_io_out4_1; // @[CLOS16.scala 66:27]
  assign egress_1_io_ctrl = egressCtrlReg[23:16]; // @[CLOS16.scala 60:39]
  assign egress_2_clock = clock;
  assign egress_2_io_in4_0 = middle_0_io_out4_2; // @[CLOS16.scala 66:27]
  assign egress_2_io_in4_1 = middle_1_io_out4_2; // @[CLOS16.scala 66:27]
  assign egress_2_io_in4_2 = middle_2_io_out4_2; // @[CLOS16.scala 66:27]
  assign egress_2_io_in4_3 = middle_3_io_out4_2; // @[CLOS16.scala 66:27]
  assign egress_2_io_ctrl = egressCtrlReg[15:8]; // @[CLOS16.scala 60:39]
  assign egress_3_clock = clock;
  assign egress_3_io_in4_0 = middle_0_io_out4_3; // @[CLOS16.scala 66:27]
  assign egress_3_io_in4_1 = middle_1_io_out4_3; // @[CLOS16.scala 66:27]
  assign egress_3_io_in4_2 = middle_2_io_out4_3; // @[CLOS16.scala 66:27]
  assign egress_3_io_in4_3 = middle_3_io_out4_3; // @[CLOS16.scala 66:27]
  assign egress_3_io_ctrl = egressCtrlReg[7:0]; // @[CLOS16.scala 60:39]
  assign middle_0_clock = clock;
  assign middle_0_io_in4_0 = ingress_0_io_out4_0; // @[CLOS16.scala 65:27]
  assign middle_0_io_in4_1 = ingress_1_io_out4_0; // @[CLOS16.scala 65:27]
  assign middle_0_io_in4_2 = ingress_2_io_out4_0; // @[CLOS16.scala 65:27]
  assign middle_0_io_in4_3 = ingress_3_io_out4_0; // @[CLOS16.scala 65:27]
  assign middle_0_io_ctrl = middleCtrlReg[31:24]; // @[CLOS16.scala 59:39]
  assign middle_1_clock = clock;
  assign middle_1_io_in4_0 = ingress_0_io_out4_1; // @[CLOS16.scala 65:27]
  assign middle_1_io_in4_1 = ingress_1_io_out4_1; // @[CLOS16.scala 65:27]
  assign middle_1_io_in4_2 = ingress_2_io_out4_1; // @[CLOS16.scala 65:27]
  assign middle_1_io_in4_3 = ingress_3_io_out4_1; // @[CLOS16.scala 65:27]
  assign middle_1_io_ctrl = middleCtrlReg[23:16]; // @[CLOS16.scala 59:39]
  assign middle_2_clock = clock;
  assign middle_2_io_in4_0 = ingress_0_io_out4_2; // @[CLOS16.scala 65:27]
  assign middle_2_io_in4_1 = ingress_1_io_out4_2; // @[CLOS16.scala 65:27]
  assign middle_2_io_in4_2 = ingress_2_io_out4_2; // @[CLOS16.scala 65:27]
  assign middle_2_io_in4_3 = ingress_3_io_out4_2; // @[CLOS16.scala 65:27]
  assign middle_2_io_ctrl = middleCtrlReg[15:8]; // @[CLOS16.scala 59:39]
  assign middle_3_clock = clock;
  assign middle_3_io_in4_0 = ingress_0_io_out4_3; // @[CLOS16.scala 65:27]
  assign middle_3_io_in4_1 = ingress_1_io_out4_3; // @[CLOS16.scala 65:27]
  assign middle_3_io_in4_2 = ingress_2_io_out4_3; // @[CLOS16.scala 65:27]
  assign middle_3_io_in4_3 = ingress_3_io_out4_3; // @[CLOS16.scala 65:27]
  assign middle_3_io_ctrl = middleCtrlReg[7:0]; // @[CLOS16.scala 59:39]
  always @(posedge clock) begin
    if(IQ_MPORT_en & IQ_MPORT_mask) begin
      IQ[IQ_MPORT_addr] <= IQ_MPORT_data; // @[CLOS16.scala 28:15]
    end
    if (reset) begin // @[CLOS16.scala 29:19]
      PC <= 7'h0; // @[CLOS16.scala 29:19]
    end else if (io_run) begin // @[CLOS16.scala 33:15]
      PC <= _PC_T_1; // @[CLOS16.scala 34:8]
    end
    if (reset) begin // @[CLOS16.scala 30:24]
      wr_addr <= 7'h0; // @[CLOS16.scala 30:24]
    end else if (!(io_run)) begin // @[CLOS16.scala 33:15]
      if (io_wr_en) begin // @[CLOS16.scala 36:23]
        wr_addr <= _wr_addr_T_1; // @[CLOS16.scala 37:13]
      end
    end
    if (reset) begin // @[CLOS16.scala 31:22]
      instr <= 96'h0; // @[CLOS16.scala 31:22]
    end else if (io_run) begin // @[CLOS16.scala 33:15]
      instr <= IQ_instr_MPORT_data; // @[CLOS16.scala 35:11]
    end
    middleCtrlReg <= instr[63:32]; // @[CLOS16.scala 53:36]
    egressCtrlReg_REG <= instr[31:0]; // @[CLOS16.scala 54:44]
    egressCtrlReg <= egressCtrlReg_REG; // @[CLOS16.scala 54:30]
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {3{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {3{`RANDOM}};
  for (initvar = 0; initvar < 100; initvar = initvar+1)
    IQ[initvar] = _RAND_0[95:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  PC = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  wr_addr = _RAND_3[6:0];
  _RAND_4 = {3{`RANDOM}};
  instr = _RAND_4[95:0];
  _RAND_5 = {1{`RANDOM}};
  middleCtrlReg = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  egressCtrlReg_REG = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  egressCtrlReg = _RAND_7[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
