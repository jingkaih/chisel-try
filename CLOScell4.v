module CrossBarCell(
  input  [64:0] io_fw_left,
  input  [64:0] io_fw_top,
  output [64:0] io_fw_bottom,
  output [64:0] io_fw_right,
  input         io_sel
);
  assign io_fw_bottom = io_sel ? io_fw_left : io_fw_top; // @[CrossBarSwitch.scala 15:17 CrossBarSwitch.scala 16:18 CrossBarSwitch.scala 18:18]
  assign io_fw_right = io_fw_left; // @[CrossBarSwitch.scala 14:15]
endmodule
module CrossBarSwitch(
  input         clock,
  input  [64:0] io_fw_left_0,
  input  [64:0] io_fw_left_1,
  input  [64:0] io_fw_left_2,
  input  [64:0] io_fw_left_3,
  output [64:0] io_fw_bottom_0,
  output [64:0] io_fw_bottom_1,
  output [64:0] io_fw_bottom_2,
  output [64:0] io_fw_bottom_3,
  input  [1:0]  io_select_0,
  input  [1:0]  io_select_1,
  input  [1:0]  io_select_2,
  input  [1:0]  io_select_3
);
`ifdef RANDOMIZE_REG_INIT
  reg [95:0] _RAND_0;
  reg [95:0] _RAND_1;
  reg [95:0] _RAND_2;
  reg [95:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [64:0] cells_2d_0_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_0_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_0_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_0_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_0_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_1_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_1_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_1_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_1_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_1_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_2_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_2_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_2_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_2_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_2_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_3_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_3_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_3_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_3_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_3_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_4_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_4_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_4_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_4_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_4_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_5_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_5_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_5_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_5_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_5_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_6_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_6_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_6_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_6_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_6_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_7_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_7_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_7_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_7_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_7_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_8_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_8_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_8_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_8_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_8_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_9_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_9_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_9_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_9_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_9_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_10_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_10_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_10_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_10_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_10_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_11_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_11_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_11_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_11_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_11_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_12_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_12_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_12_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_12_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_12_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_13_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_13_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_13_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_13_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_13_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_14_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_14_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_14_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_14_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_14_io_sel; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_15_io_fw_left; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_15_io_fw_top; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_15_io_fw_bottom; // @[CrossBarSwitch.scala 37:53]
  wire [64:0] cells_2d_15_io_fw_right; // @[CrossBarSwitch.scala 37:53]
  wire  cells_2d_15_io_sel; // @[CrossBarSwitch.scala 37:53]
  reg [64:0] fw_left_reg_0; // @[CrossBarSwitch.scala 33:28]
  reg [64:0] fw_left_reg_1; // @[CrossBarSwitch.scala 33:28]
  reg [64:0] fw_left_reg_2; // @[CrossBarSwitch.scala 33:28]
  reg [64:0] fw_left_reg_3; // @[CrossBarSwitch.scala 33:28]
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
  assign cells_2d_0_io_fw_top = 65'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_0_io_sel = select_onehot_0[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_1_io_fw_left = cells_2d_0_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_1_io_fw_top = 65'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_1_io_sel = select_onehot_1[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_2_io_fw_left = cells_2d_1_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_2_io_fw_top = 65'h0; // @[CrossBarSwitch.scala 55:28]
  assign cells_2d_2_io_sel = select_onehot_2[0]; // @[CrossBarSwitch.scala 70:44]
  assign cells_2d_3_io_fw_left = cells_2d_2_io_fw_right; // @[CrossBarSwitch.scala 66:29]
  assign cells_2d_3_io_fw_top = 65'h0; // @[CrossBarSwitch.scala 55:28]
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
  _RAND_0 = {3{`RANDOM}};
  fw_left_reg_0 = _RAND_0[64:0];
  _RAND_1 = {3{`RANDOM}};
  fw_left_reg_1 = _RAND_1[64:0];
  _RAND_2 = {3{`RANDOM}};
  fw_left_reg_2 = _RAND_2[64:0];
  _RAND_3 = {3{`RANDOM}};
  fw_left_reg_3 = _RAND_3[64:0];
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
  input         reset,
  input  [64:0] io_in4_0,
  input  [64:0] io_in4_1,
  input  [64:0] io_in4_2,
  input  [64:0] io_in4_3,
  output [64:0] io_out4_0,
  output [64:0] io_out4_1,
  output [64:0] io_out4_2,
  output [64:0] io_out4_3,
  input  [7:0]  io_ctrl
);
  wire  CrossBarSwitch_clock; // @[BuildingBlock.scala 18:21]
  wire [64:0] CrossBarSwitch_io_fw_left_0; // @[BuildingBlock.scala 18:21]
  wire [64:0] CrossBarSwitch_io_fw_left_1; // @[BuildingBlock.scala 18:21]
  wire [64:0] CrossBarSwitch_io_fw_left_2; // @[BuildingBlock.scala 18:21]
  wire [64:0] CrossBarSwitch_io_fw_left_3; // @[BuildingBlock.scala 18:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_0; // @[BuildingBlock.scala 18:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_1; // @[BuildingBlock.scala 18:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_2; // @[BuildingBlock.scala 18:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_3; // @[BuildingBlock.scala 18:21]
  wire [1:0] CrossBarSwitch_io_select_0; // @[BuildingBlock.scala 18:21]
  wire [1:0] CrossBarSwitch_io_select_1; // @[BuildingBlock.scala 18:21]
  wire [1:0] CrossBarSwitch_io_select_2; // @[BuildingBlock.scala 18:21]
  wire [1:0] CrossBarSwitch_io_select_3; // @[BuildingBlock.scala 18:21]
  CrossBarSwitch CrossBarSwitch ( // @[BuildingBlock.scala 18:21]
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
  assign io_out4_0 = CrossBarSwitch_io_fw_bottom_0; // @[BuildingBlock.scala 23:11]
  assign io_out4_1 = CrossBarSwitch_io_fw_bottom_1; // @[BuildingBlock.scala 23:11]
  assign io_out4_2 = CrossBarSwitch_io_fw_bottom_2; // @[BuildingBlock.scala 23:11]
  assign io_out4_3 = CrossBarSwitch_io_fw_bottom_3; // @[BuildingBlock.scala 23:11]
  assign CrossBarSwitch_clock = clock;
  assign CrossBarSwitch_io_fw_left_0 = io_in4_0; // @[BuildingBlock.scala 22:17]
  assign CrossBarSwitch_io_fw_left_1 = io_in4_1; // @[BuildingBlock.scala 22:17]
  assign CrossBarSwitch_io_fw_left_2 = io_in4_2; // @[BuildingBlock.scala 22:17]
  assign CrossBarSwitch_io_fw_left_3 = io_in4_3; // @[BuildingBlock.scala 22:17]
  assign CrossBarSwitch_io_select_0 = io_ctrl[7:6]; // @[BuildingBlock.scala 20:31]
  assign CrossBarSwitch_io_select_1 = io_ctrl[5:4]; // @[BuildingBlock.scala 20:31]
  assign CrossBarSwitch_io_select_2 = io_ctrl[3:2]; // @[BuildingBlock.scala 20:31]
  assign CrossBarSwitch_io_select_3 = io_ctrl[1:0]; // @[BuildingBlock.scala 20:31]
endmodule
