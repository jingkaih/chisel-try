module CrossBarCell(
  input  [63:0] io_fw_left,
  input  [63:0] io_fw_top,
  output [63:0] io_fw_bottom,
  output [63:0] io_fw_right,
  input         io_sel
);
  assign io_fw_bottom = io_sel ? io_fw_left : io_fw_top; // @[CrossBarSwitchNew.scala 15:17 CrossBarSwitchNew.scala 16:18 CrossBarSwitchNew.scala 18:18]
  assign io_fw_right = io_fw_left; // @[CrossBarSwitchNew.scala 14:15]
endmodule
module CrossBarSwitchNew(
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
  wire [63:0] cells_2d_0_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_0_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_0_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_0_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_0_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_1_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_1_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_1_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_1_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_1_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_2_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_2_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_2_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_2_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_2_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_3_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_3_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_3_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_3_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_3_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_4_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_4_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_4_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_4_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_4_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_5_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_5_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_5_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_5_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_5_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_6_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_6_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_6_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_6_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_6_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_7_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_7_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_7_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_7_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_7_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_8_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_8_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_8_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_8_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_8_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_9_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_9_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_9_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_9_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_9_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_10_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_10_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_10_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_10_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_10_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_11_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_11_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_11_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_11_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_11_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_12_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_12_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_12_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_12_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_12_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_13_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_13_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_13_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_13_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_13_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_14_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_14_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_14_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_14_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_14_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_15_io_fw_left; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_15_io_fw_top; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_15_io_fw_bottom; // @[CrossBarSwitchNew.scala 38:53]
  wire [63:0] cells_2d_15_io_fw_right; // @[CrossBarSwitchNew.scala 38:53]
  wire  cells_2d_15_io_sel; // @[CrossBarSwitchNew.scala 38:53]
  wire [3:0] select_onehot_0 = 4'h1 << io_select_0; // @[OneHot.scala 65:12]
  wire [3:0] select_onehot_1 = 4'h1 << io_select_1; // @[OneHot.scala 65:12]
  wire [3:0] select_onehot_2 = 4'h1 << io_select_2; // @[OneHot.scala 65:12]
  wire [3:0] select_onehot_3 = 4'h1 << io_select_3; // @[OneHot.scala 65:12]
  CrossBarCell cells_2d_0 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_0_io_fw_left),
    .io_fw_top(cells_2d_0_io_fw_top),
    .io_fw_bottom(cells_2d_0_io_fw_bottom),
    .io_fw_right(cells_2d_0_io_fw_right),
    .io_sel(cells_2d_0_io_sel)
  );
  CrossBarCell cells_2d_1 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_1_io_fw_left),
    .io_fw_top(cells_2d_1_io_fw_top),
    .io_fw_bottom(cells_2d_1_io_fw_bottom),
    .io_fw_right(cells_2d_1_io_fw_right),
    .io_sel(cells_2d_1_io_sel)
  );
  CrossBarCell cells_2d_2 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_2_io_fw_left),
    .io_fw_top(cells_2d_2_io_fw_top),
    .io_fw_bottom(cells_2d_2_io_fw_bottom),
    .io_fw_right(cells_2d_2_io_fw_right),
    .io_sel(cells_2d_2_io_sel)
  );
  CrossBarCell cells_2d_3 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_3_io_fw_left),
    .io_fw_top(cells_2d_3_io_fw_top),
    .io_fw_bottom(cells_2d_3_io_fw_bottom),
    .io_fw_right(cells_2d_3_io_fw_right),
    .io_sel(cells_2d_3_io_sel)
  );
  CrossBarCell cells_2d_4 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_4_io_fw_left),
    .io_fw_top(cells_2d_4_io_fw_top),
    .io_fw_bottom(cells_2d_4_io_fw_bottom),
    .io_fw_right(cells_2d_4_io_fw_right),
    .io_sel(cells_2d_4_io_sel)
  );
  CrossBarCell cells_2d_5 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_5_io_fw_left),
    .io_fw_top(cells_2d_5_io_fw_top),
    .io_fw_bottom(cells_2d_5_io_fw_bottom),
    .io_fw_right(cells_2d_5_io_fw_right),
    .io_sel(cells_2d_5_io_sel)
  );
  CrossBarCell cells_2d_6 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_6_io_fw_left),
    .io_fw_top(cells_2d_6_io_fw_top),
    .io_fw_bottom(cells_2d_6_io_fw_bottom),
    .io_fw_right(cells_2d_6_io_fw_right),
    .io_sel(cells_2d_6_io_sel)
  );
  CrossBarCell cells_2d_7 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_7_io_fw_left),
    .io_fw_top(cells_2d_7_io_fw_top),
    .io_fw_bottom(cells_2d_7_io_fw_bottom),
    .io_fw_right(cells_2d_7_io_fw_right),
    .io_sel(cells_2d_7_io_sel)
  );
  CrossBarCell cells_2d_8 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_8_io_fw_left),
    .io_fw_top(cells_2d_8_io_fw_top),
    .io_fw_bottom(cells_2d_8_io_fw_bottom),
    .io_fw_right(cells_2d_8_io_fw_right),
    .io_sel(cells_2d_8_io_sel)
  );
  CrossBarCell cells_2d_9 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_9_io_fw_left),
    .io_fw_top(cells_2d_9_io_fw_top),
    .io_fw_bottom(cells_2d_9_io_fw_bottom),
    .io_fw_right(cells_2d_9_io_fw_right),
    .io_sel(cells_2d_9_io_sel)
  );
  CrossBarCell cells_2d_10 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_10_io_fw_left),
    .io_fw_top(cells_2d_10_io_fw_top),
    .io_fw_bottom(cells_2d_10_io_fw_bottom),
    .io_fw_right(cells_2d_10_io_fw_right),
    .io_sel(cells_2d_10_io_sel)
  );
  CrossBarCell cells_2d_11 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_11_io_fw_left),
    .io_fw_top(cells_2d_11_io_fw_top),
    .io_fw_bottom(cells_2d_11_io_fw_bottom),
    .io_fw_right(cells_2d_11_io_fw_right),
    .io_sel(cells_2d_11_io_sel)
  );
  CrossBarCell cells_2d_12 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_12_io_fw_left),
    .io_fw_top(cells_2d_12_io_fw_top),
    .io_fw_bottom(cells_2d_12_io_fw_bottom),
    .io_fw_right(cells_2d_12_io_fw_right),
    .io_sel(cells_2d_12_io_sel)
  );
  CrossBarCell cells_2d_13 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_13_io_fw_left),
    .io_fw_top(cells_2d_13_io_fw_top),
    .io_fw_bottom(cells_2d_13_io_fw_bottom),
    .io_fw_right(cells_2d_13_io_fw_right),
    .io_sel(cells_2d_13_io_sel)
  );
  CrossBarCell cells_2d_14 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_14_io_fw_left),
    .io_fw_top(cells_2d_14_io_fw_top),
    .io_fw_bottom(cells_2d_14_io_fw_bottom),
    .io_fw_right(cells_2d_14_io_fw_right),
    .io_sel(cells_2d_14_io_sel)
  );
  CrossBarCell cells_2d_15 ( // @[CrossBarSwitchNew.scala 38:53]
    .io_fw_left(cells_2d_15_io_fw_left),
    .io_fw_top(cells_2d_15_io_fw_top),
    .io_fw_bottom(cells_2d_15_io_fw_bottom),
    .io_fw_right(cells_2d_15_io_fw_right),
    .io_sel(cells_2d_15_io_sel)
  );
  assign io_fw_bottom_0 = cells_2d_12_io_fw_bottom; // @[CrossBarSwitchNew.scala 77:21]
  assign io_fw_bottom_1 = cells_2d_13_io_fw_bottom; // @[CrossBarSwitchNew.scala 77:21]
  assign io_fw_bottom_2 = cells_2d_14_io_fw_bottom; // @[CrossBarSwitchNew.scala 77:21]
  assign io_fw_bottom_3 = cells_2d_15_io_fw_bottom; // @[CrossBarSwitchNew.scala 77:21]
  assign cells_2d_0_io_fw_left = io_fw_left_0; // @[CrossBarSwitchNew.scala 63:29]
  assign cells_2d_0_io_fw_top = 64'h0; // @[CrossBarSwitchNew.scala 56:28]
  assign cells_2d_0_io_sel = select_onehot_0[0]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_1_io_fw_left = cells_2d_0_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_1_io_fw_top = 64'h0; // @[CrossBarSwitchNew.scala 56:28]
  assign cells_2d_1_io_sel = select_onehot_1[0]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_2_io_fw_left = cells_2d_1_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_2_io_fw_top = 64'h0; // @[CrossBarSwitchNew.scala 56:28]
  assign cells_2d_2_io_sel = select_onehot_2[0]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_3_io_fw_left = cells_2d_2_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_3_io_fw_top = 64'h0; // @[CrossBarSwitchNew.scala 56:28]
  assign cells_2d_3_io_sel = select_onehot_3[0]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_4_io_fw_left = io_fw_left_1; // @[CrossBarSwitchNew.scala 63:29]
  assign cells_2d_4_io_fw_top = cells_2d_0_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_4_io_sel = select_onehot_0[1]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_5_io_fw_left = cells_2d_4_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_5_io_fw_top = cells_2d_1_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_5_io_sel = select_onehot_1[1]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_6_io_fw_left = cells_2d_5_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_6_io_fw_top = cells_2d_2_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_6_io_sel = select_onehot_2[1]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_7_io_fw_left = cells_2d_6_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_7_io_fw_top = cells_2d_3_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_7_io_sel = select_onehot_3[1]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_8_io_fw_left = io_fw_left_2; // @[CrossBarSwitchNew.scala 63:29]
  assign cells_2d_8_io_fw_top = cells_2d_4_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_8_io_sel = select_onehot_0[2]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_9_io_fw_left = cells_2d_8_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_9_io_fw_top = cells_2d_5_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_9_io_sel = select_onehot_1[2]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_10_io_fw_left = cells_2d_9_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_10_io_fw_top = cells_2d_6_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_10_io_sel = select_onehot_2[2]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_11_io_fw_left = cells_2d_10_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_11_io_fw_top = cells_2d_7_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_11_io_sel = select_onehot_3[2]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_12_io_fw_left = io_fw_left_3; // @[CrossBarSwitchNew.scala 63:29]
  assign cells_2d_12_io_fw_top = cells_2d_8_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_12_io_sel = select_onehot_0[3]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_13_io_fw_left = cells_2d_12_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_13_io_fw_top = cells_2d_9_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_13_io_sel = select_onehot_1[3]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_14_io_fw_left = cells_2d_13_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_14_io_fw_top = cells_2d_10_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_14_io_sel = select_onehot_2[3]; // @[CrossBarSwitchNew.scala 70:44]
  assign cells_2d_15_io_fw_left = cells_2d_14_io_fw_right; // @[CrossBarSwitchNew.scala 66:29]
  assign cells_2d_15_io_fw_top = cells_2d_11_io_fw_bottom; // @[CrossBarSwitchNew.scala 59:28]
  assign cells_2d_15_io_sel = select_onehot_3[3]; // @[CrossBarSwitchNew.scala 70:44]
endmodule
module CLOScell4New(
  input         clock,
  input         reset,
  input  [63:0] io_input_0,
  input  [63:0] io_input_1,
  input  [63:0] io_input_2,
  input  [63:0] io_input_3,
  output [63:0] io_output_0,
  output [63:0] io_output_1,
  output [63:0] io_output_2,
  output [63:0] io_output_3,
  input  [7:0]  io_ctrl
);
  wire [63:0] CrossBarSwitchNew_io_fw_left_0; // @[CLOS16New.scala 15:21]
  wire [63:0] CrossBarSwitchNew_io_fw_left_1; // @[CLOS16New.scala 15:21]
  wire [63:0] CrossBarSwitchNew_io_fw_left_2; // @[CLOS16New.scala 15:21]
  wire [63:0] CrossBarSwitchNew_io_fw_left_3; // @[CLOS16New.scala 15:21]
  wire [63:0] CrossBarSwitchNew_io_fw_bottom_0; // @[CLOS16New.scala 15:21]
  wire [63:0] CrossBarSwitchNew_io_fw_bottom_1; // @[CLOS16New.scala 15:21]
  wire [63:0] CrossBarSwitchNew_io_fw_bottom_2; // @[CLOS16New.scala 15:21]
  wire [63:0] CrossBarSwitchNew_io_fw_bottom_3; // @[CLOS16New.scala 15:21]
  wire [1:0] CrossBarSwitchNew_io_select_0; // @[CLOS16New.scala 15:21]
  wire [1:0] CrossBarSwitchNew_io_select_1; // @[CLOS16New.scala 15:21]
  wire [1:0] CrossBarSwitchNew_io_select_2; // @[CLOS16New.scala 15:21]
  wire [1:0] CrossBarSwitchNew_io_select_3; // @[CLOS16New.scala 15:21]
  CrossBarSwitchNew CrossBarSwitchNew ( // @[CLOS16New.scala 15:21]
    .io_fw_left_0(CrossBarSwitchNew_io_fw_left_0),
    .io_fw_left_1(CrossBarSwitchNew_io_fw_left_1),
    .io_fw_left_2(CrossBarSwitchNew_io_fw_left_2),
    .io_fw_left_3(CrossBarSwitchNew_io_fw_left_3),
    .io_fw_bottom_0(CrossBarSwitchNew_io_fw_bottom_0),
    .io_fw_bottom_1(CrossBarSwitchNew_io_fw_bottom_1),
    .io_fw_bottom_2(CrossBarSwitchNew_io_fw_bottom_2),
    .io_fw_bottom_3(CrossBarSwitchNew_io_fw_bottom_3),
    .io_select_0(CrossBarSwitchNew_io_select_0),
    .io_select_1(CrossBarSwitchNew_io_select_1),
    .io_select_2(CrossBarSwitchNew_io_select_2),
    .io_select_3(CrossBarSwitchNew_io_select_3)
  );
  assign io_output_0 = CrossBarSwitchNew_io_fw_bottom_0; // @[CLOS16New.scala 20:12]
  assign io_output_1 = CrossBarSwitchNew_io_fw_bottom_1; // @[CLOS16New.scala 20:12]
  assign io_output_2 = CrossBarSwitchNew_io_fw_bottom_2; // @[CLOS16New.scala 20:12]
  assign io_output_3 = CrossBarSwitchNew_io_fw_bottom_3; // @[CLOS16New.scala 20:12]
  assign CrossBarSwitchNew_io_fw_left_0 = io_input_0; // @[CLOS16New.scala 19:17]
  assign CrossBarSwitchNew_io_fw_left_1 = io_input_1; // @[CLOS16New.scala 19:17]
  assign CrossBarSwitchNew_io_fw_left_2 = io_input_2; // @[CLOS16New.scala 19:17]
  assign CrossBarSwitchNew_io_fw_left_3 = io_input_3; // @[CLOS16New.scala 19:17]
  assign CrossBarSwitchNew_io_select_0 = io_ctrl[7:6]; // @[CLOS16New.scala 17:31]
  assign CrossBarSwitchNew_io_select_1 = io_ctrl[5:4]; // @[CLOS16New.scala 17:31]
  assign CrossBarSwitchNew_io_select_2 = io_ctrl[3:2]; // @[CLOS16New.scala 17:31]
  assign CrossBarSwitchNew_io_select_3 = io_ctrl[1:0]; // @[CLOS16New.scala 17:31]
endmodule
