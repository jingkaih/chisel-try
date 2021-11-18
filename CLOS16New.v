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
module CLOS16New(
  input         clock,
  input         reset,
  input  [63:0] io_input_0,
  input  [63:0] io_input_1,
  input  [63:0] io_input_2,
  input  [63:0] io_input_3,
  input  [63:0] io_input_4,
  input  [63:0] io_input_5,
  input  [63:0] io_input_6,
  input  [63:0] io_input_7,
  input  [63:0] io_input_8,
  input  [63:0] io_input_9,
  input  [63:0] io_input_10,
  input  [63:0] io_input_11,
  input  [63:0] io_input_12,
  input  [63:0] io_input_13,
  input  [63:0] io_input_14,
  input  [63:0] io_input_15,
  output [63:0] io_output_0,
  output [63:0] io_output_1,
  output [63:0] io_output_2,
  output [63:0] io_output_3,
  output [63:0] io_output_4,
  output [63:0] io_output_5,
  output [63:0] io_output_6,
  output [63:0] io_output_7,
  output [63:0] io_output_8,
  output [63:0] io_output_9,
  output [63:0] io_output_10,
  output [63:0] io_output_11,
  output [63:0] io_output_12,
  output [63:0] io_output_13,
  output [63:0] io_output_14,
  output [63:0] io_output_15,
  input  [63:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] ingress_0_io_input_0; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_0_io_input_1; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_0_io_input_2; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_0_io_input_3; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_0_io_output_0; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_0_io_output_1; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_0_io_output_2; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_0_io_output_3; // @[CLOS16New.scala 57:50]
  wire [7:0] ingress_0_io_ctrl; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_1_io_input_0; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_1_io_input_1; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_1_io_input_2; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_1_io_input_3; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_1_io_output_0; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_1_io_output_1; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_1_io_output_2; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_1_io_output_3; // @[CLOS16New.scala 57:50]
  wire [7:0] ingress_1_io_ctrl; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_2_io_input_0; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_2_io_input_1; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_2_io_input_2; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_2_io_input_3; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_2_io_output_0; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_2_io_output_1; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_2_io_output_2; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_2_io_output_3; // @[CLOS16New.scala 57:50]
  wire [7:0] ingress_2_io_ctrl; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_3_io_input_0; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_3_io_input_1; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_3_io_input_2; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_3_io_input_3; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_3_io_output_0; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_3_io_output_1; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_3_io_output_2; // @[CLOS16New.scala 57:50]
  wire [63:0] ingress_3_io_output_3; // @[CLOS16New.scala 57:50]
  wire [7:0] ingress_3_io_ctrl; // @[CLOS16New.scala 57:50]
  wire [63:0] egress_0_io_input_0; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_0_io_input_1; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_0_io_input_2; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_0_io_input_3; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_0_io_output_0; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_0_io_output_1; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_0_io_output_2; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_0_io_output_3; // @[CLOS16New.scala 58:49]
  wire [7:0] egress_0_io_ctrl; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_1_io_input_0; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_1_io_input_1; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_1_io_input_2; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_1_io_input_3; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_1_io_output_0; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_1_io_output_1; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_1_io_output_2; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_1_io_output_3; // @[CLOS16New.scala 58:49]
  wire [7:0] egress_1_io_ctrl; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_2_io_input_0; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_2_io_input_1; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_2_io_input_2; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_2_io_input_3; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_2_io_output_0; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_2_io_output_1; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_2_io_output_2; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_2_io_output_3; // @[CLOS16New.scala 58:49]
  wire [7:0] egress_2_io_ctrl; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_3_io_input_0; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_3_io_input_1; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_3_io_input_2; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_3_io_input_3; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_3_io_output_0; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_3_io_output_1; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_3_io_output_2; // @[CLOS16New.scala 58:49]
  wire [63:0] egress_3_io_output_3; // @[CLOS16New.scala 58:49]
  wire [7:0] egress_3_io_ctrl; // @[CLOS16New.scala 58:49]
  wire [63:0] middle_0_io_input_0; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_0_io_input_1; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_0_io_input_2; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_0_io_input_3; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_0_io_output_0; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_0_io_output_1; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_0_io_output_2; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_0_io_output_3; // @[CLOS16New.scala 59:49]
  wire [7:0] middle_0_io_ctrl; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_1_io_input_0; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_1_io_input_1; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_1_io_input_2; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_1_io_input_3; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_1_io_output_0; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_1_io_output_1; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_1_io_output_2; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_1_io_output_3; // @[CLOS16New.scala 59:49]
  wire [7:0] middle_1_io_ctrl; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_2_io_input_0; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_2_io_input_1; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_2_io_input_2; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_2_io_input_3; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_2_io_output_0; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_2_io_output_1; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_2_io_output_2; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_2_io_output_3; // @[CLOS16New.scala 59:49]
  wire [7:0] middle_2_io_ctrl; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_3_io_input_0; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_3_io_input_1; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_3_io_input_2; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_3_io_input_3; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_3_io_output_0; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_3_io_output_1; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_3_io_output_2; // @[CLOS16New.scala 59:49]
  wire [63:0] middle_3_io_output_3; // @[CLOS16New.scala 59:49]
  wire [7:0] middle_3_io_ctrl; // @[CLOS16New.scala 59:49]
  reg  configure_en; // @[CLOS16New.scala 31:29]
  reg [63:0] instruction_reg; // @[CLOS16New.scala 32:32]
  reg [31:0] ingressCtrlReg; // @[CLOS16New.scala 61:31]
  reg [31:0] middleCtrlReg; // @[CLOS16New.scala 62:30]
  reg [31:0] egressCtrlReg; // @[CLOS16New.scala 63:30]
  CLOScell4New ingress_0 ( // @[CLOS16New.scala 57:50]
    .io_input_0(ingress_0_io_input_0),
    .io_input_1(ingress_0_io_input_1),
    .io_input_2(ingress_0_io_input_2),
    .io_input_3(ingress_0_io_input_3),
    .io_output_0(ingress_0_io_output_0),
    .io_output_1(ingress_0_io_output_1),
    .io_output_2(ingress_0_io_output_2),
    .io_output_3(ingress_0_io_output_3),
    .io_ctrl(ingress_0_io_ctrl)
  );
  CLOScell4New ingress_1 ( // @[CLOS16New.scala 57:50]
    .io_input_0(ingress_1_io_input_0),
    .io_input_1(ingress_1_io_input_1),
    .io_input_2(ingress_1_io_input_2),
    .io_input_3(ingress_1_io_input_3),
    .io_output_0(ingress_1_io_output_0),
    .io_output_1(ingress_1_io_output_1),
    .io_output_2(ingress_1_io_output_2),
    .io_output_3(ingress_1_io_output_3),
    .io_ctrl(ingress_1_io_ctrl)
  );
  CLOScell4New ingress_2 ( // @[CLOS16New.scala 57:50]
    .io_input_0(ingress_2_io_input_0),
    .io_input_1(ingress_2_io_input_1),
    .io_input_2(ingress_2_io_input_2),
    .io_input_3(ingress_2_io_input_3),
    .io_output_0(ingress_2_io_output_0),
    .io_output_1(ingress_2_io_output_1),
    .io_output_2(ingress_2_io_output_2),
    .io_output_3(ingress_2_io_output_3),
    .io_ctrl(ingress_2_io_ctrl)
  );
  CLOScell4New ingress_3 ( // @[CLOS16New.scala 57:50]
    .io_input_0(ingress_3_io_input_0),
    .io_input_1(ingress_3_io_input_1),
    .io_input_2(ingress_3_io_input_2),
    .io_input_3(ingress_3_io_input_3),
    .io_output_0(ingress_3_io_output_0),
    .io_output_1(ingress_3_io_output_1),
    .io_output_2(ingress_3_io_output_2),
    .io_output_3(ingress_3_io_output_3),
    .io_ctrl(ingress_3_io_ctrl)
  );
  CLOScell4New egress_0 ( // @[CLOS16New.scala 58:49]
    .io_input_0(egress_0_io_input_0),
    .io_input_1(egress_0_io_input_1),
    .io_input_2(egress_0_io_input_2),
    .io_input_3(egress_0_io_input_3),
    .io_output_0(egress_0_io_output_0),
    .io_output_1(egress_0_io_output_1),
    .io_output_2(egress_0_io_output_2),
    .io_output_3(egress_0_io_output_3),
    .io_ctrl(egress_0_io_ctrl)
  );
  CLOScell4New egress_1 ( // @[CLOS16New.scala 58:49]
    .io_input_0(egress_1_io_input_0),
    .io_input_1(egress_1_io_input_1),
    .io_input_2(egress_1_io_input_2),
    .io_input_3(egress_1_io_input_3),
    .io_output_0(egress_1_io_output_0),
    .io_output_1(egress_1_io_output_1),
    .io_output_2(egress_1_io_output_2),
    .io_output_3(egress_1_io_output_3),
    .io_ctrl(egress_1_io_ctrl)
  );
  CLOScell4New egress_2 ( // @[CLOS16New.scala 58:49]
    .io_input_0(egress_2_io_input_0),
    .io_input_1(egress_2_io_input_1),
    .io_input_2(egress_2_io_input_2),
    .io_input_3(egress_2_io_input_3),
    .io_output_0(egress_2_io_output_0),
    .io_output_1(egress_2_io_output_1),
    .io_output_2(egress_2_io_output_2),
    .io_output_3(egress_2_io_output_3),
    .io_ctrl(egress_2_io_ctrl)
  );
  CLOScell4New egress_3 ( // @[CLOS16New.scala 58:49]
    .io_input_0(egress_3_io_input_0),
    .io_input_1(egress_3_io_input_1),
    .io_input_2(egress_3_io_input_2),
    .io_input_3(egress_3_io_input_3),
    .io_output_0(egress_3_io_output_0),
    .io_output_1(egress_3_io_output_1),
    .io_output_2(egress_3_io_output_2),
    .io_output_3(egress_3_io_output_3),
    .io_ctrl(egress_3_io_ctrl)
  );
  CLOScell4New middle_0 ( // @[CLOS16New.scala 59:49]
    .io_input_0(middle_0_io_input_0),
    .io_input_1(middle_0_io_input_1),
    .io_input_2(middle_0_io_input_2),
    .io_input_3(middle_0_io_input_3),
    .io_output_0(middle_0_io_output_0),
    .io_output_1(middle_0_io_output_1),
    .io_output_2(middle_0_io_output_2),
    .io_output_3(middle_0_io_output_3),
    .io_ctrl(middle_0_io_ctrl)
  );
  CLOScell4New middle_1 ( // @[CLOS16New.scala 59:49]
    .io_input_0(middle_1_io_input_0),
    .io_input_1(middle_1_io_input_1),
    .io_input_2(middle_1_io_input_2),
    .io_input_3(middle_1_io_input_3),
    .io_output_0(middle_1_io_output_0),
    .io_output_1(middle_1_io_output_1),
    .io_output_2(middle_1_io_output_2),
    .io_output_3(middle_1_io_output_3),
    .io_ctrl(middle_1_io_ctrl)
  );
  CLOScell4New middle_2 ( // @[CLOS16New.scala 59:49]
    .io_input_0(middle_2_io_input_0),
    .io_input_1(middle_2_io_input_1),
    .io_input_2(middle_2_io_input_2),
    .io_input_3(middle_2_io_input_3),
    .io_output_0(middle_2_io_output_0),
    .io_output_1(middle_2_io_output_1),
    .io_output_2(middle_2_io_output_2),
    .io_output_3(middle_2_io_output_3),
    .io_ctrl(middle_2_io_ctrl)
  );
  CLOScell4New middle_3 ( // @[CLOS16New.scala 59:49]
    .io_input_0(middle_3_io_input_0),
    .io_input_1(middle_3_io_input_1),
    .io_input_2(middle_3_io_input_2),
    .io_input_3(middle_3_io_input_3),
    .io_output_0(middle_3_io_output_0),
    .io_output_1(middle_3_io_output_1),
    .io_output_2(middle_3_io_output_2),
    .io_output_3(middle_3_io_output_3),
    .io_ctrl(middle_3_io_ctrl)
  );
  assign io_output_0 = egress_0_io_output_0; // @[CLOS16New.scala 80:24]
  assign io_output_1 = egress_0_io_output_1; // @[CLOS16New.scala 80:24]
  assign io_output_2 = egress_0_io_output_2; // @[CLOS16New.scala 80:24]
  assign io_output_3 = egress_0_io_output_3; // @[CLOS16New.scala 80:24]
  assign io_output_4 = egress_1_io_output_0; // @[CLOS16New.scala 80:24]
  assign io_output_5 = egress_1_io_output_1; // @[CLOS16New.scala 80:24]
  assign io_output_6 = egress_1_io_output_2; // @[CLOS16New.scala 80:24]
  assign io_output_7 = egress_1_io_output_3; // @[CLOS16New.scala 80:24]
  assign io_output_8 = egress_2_io_output_0; // @[CLOS16New.scala 80:24]
  assign io_output_9 = egress_2_io_output_1; // @[CLOS16New.scala 80:24]
  assign io_output_10 = egress_2_io_output_2; // @[CLOS16New.scala 80:24]
  assign io_output_11 = egress_2_io_output_3; // @[CLOS16New.scala 80:24]
  assign io_output_12 = egress_3_io_output_0; // @[CLOS16New.scala 80:24]
  assign io_output_13 = egress_3_io_output_1; // @[CLOS16New.scala 80:24]
  assign io_output_14 = egress_3_io_output_2; // @[CLOS16New.scala 80:24]
  assign io_output_15 = egress_3_io_output_3; // @[CLOS16New.scala 80:24]
  assign ingress_0_io_input_0 = io_input_0; // @[CLOS16New.scala 79:30]
  assign ingress_0_io_input_1 = io_input_1; // @[CLOS16New.scala 79:30]
  assign ingress_0_io_input_2 = io_input_2; // @[CLOS16New.scala 79:30]
  assign ingress_0_io_input_3 = io_input_3; // @[CLOS16New.scala 79:30]
  assign ingress_0_io_ctrl = ingressCtrlReg[31:24]; // @[CLOS16New.scala 66:43]
  assign ingress_1_io_input_0 = io_input_4; // @[CLOS16New.scala 79:30]
  assign ingress_1_io_input_1 = io_input_5; // @[CLOS16New.scala 79:30]
  assign ingress_1_io_input_2 = io_input_6; // @[CLOS16New.scala 79:30]
  assign ingress_1_io_input_3 = io_input_7; // @[CLOS16New.scala 79:30]
  assign ingress_1_io_ctrl = ingressCtrlReg[23:16]; // @[CLOS16New.scala 66:43]
  assign ingress_2_io_input_0 = io_input_8; // @[CLOS16New.scala 79:30]
  assign ingress_2_io_input_1 = io_input_9; // @[CLOS16New.scala 79:30]
  assign ingress_2_io_input_2 = io_input_10; // @[CLOS16New.scala 79:30]
  assign ingress_2_io_input_3 = io_input_11; // @[CLOS16New.scala 79:30]
  assign ingress_2_io_ctrl = ingressCtrlReg[15:8]; // @[CLOS16New.scala 66:43]
  assign ingress_3_io_input_0 = io_input_12; // @[CLOS16New.scala 79:30]
  assign ingress_3_io_input_1 = io_input_13; // @[CLOS16New.scala 79:30]
  assign ingress_3_io_input_2 = io_input_14; // @[CLOS16New.scala 79:30]
  assign ingress_3_io_input_3 = io_input_15; // @[CLOS16New.scala 79:30]
  assign ingress_3_io_ctrl = ingressCtrlReg[7:0]; // @[CLOS16New.scala 66:43]
  assign egress_0_io_input_0 = middle_0_io_output_0; // @[CLOS16New.scala 88:29]
  assign egress_0_io_input_1 = middle_1_io_output_0; // @[CLOS16New.scala 88:29]
  assign egress_0_io_input_2 = middle_2_io_output_0; // @[CLOS16New.scala 88:29]
  assign egress_0_io_input_3 = middle_3_io_output_0; // @[CLOS16New.scala 88:29]
  assign egress_0_io_ctrl = egressCtrlReg[31:24]; // @[CLOS16New.scala 68:41]
  assign egress_1_io_input_0 = middle_0_io_output_1; // @[CLOS16New.scala 88:29]
  assign egress_1_io_input_1 = middle_1_io_output_1; // @[CLOS16New.scala 88:29]
  assign egress_1_io_input_2 = middle_2_io_output_1; // @[CLOS16New.scala 88:29]
  assign egress_1_io_input_3 = middle_3_io_output_1; // @[CLOS16New.scala 88:29]
  assign egress_1_io_ctrl = egressCtrlReg[23:16]; // @[CLOS16New.scala 68:41]
  assign egress_2_io_input_0 = middle_0_io_output_2; // @[CLOS16New.scala 88:29]
  assign egress_2_io_input_1 = middle_1_io_output_2; // @[CLOS16New.scala 88:29]
  assign egress_2_io_input_2 = middle_2_io_output_2; // @[CLOS16New.scala 88:29]
  assign egress_2_io_input_3 = middle_3_io_output_2; // @[CLOS16New.scala 88:29]
  assign egress_2_io_ctrl = egressCtrlReg[15:8]; // @[CLOS16New.scala 68:41]
  assign egress_3_io_input_0 = middle_0_io_output_3; // @[CLOS16New.scala 88:29]
  assign egress_3_io_input_1 = middle_1_io_output_3; // @[CLOS16New.scala 88:29]
  assign egress_3_io_input_2 = middle_2_io_output_3; // @[CLOS16New.scala 88:29]
  assign egress_3_io_input_3 = middle_3_io_output_3; // @[CLOS16New.scala 88:29]
  assign egress_3_io_ctrl = egressCtrlReg[7:0]; // @[CLOS16New.scala 68:41]
  assign middle_0_io_input_0 = ingress_0_io_output_0; // @[CLOS16New.scala 87:29]
  assign middle_0_io_input_1 = ingress_1_io_output_0; // @[CLOS16New.scala 87:29]
  assign middle_0_io_input_2 = ingress_2_io_output_0; // @[CLOS16New.scala 87:29]
  assign middle_0_io_input_3 = ingress_3_io_output_0; // @[CLOS16New.scala 87:29]
  assign middle_0_io_ctrl = middleCtrlReg[31:24]; // @[CLOS16New.scala 67:41]
  assign middle_1_io_input_0 = ingress_0_io_output_1; // @[CLOS16New.scala 87:29]
  assign middle_1_io_input_1 = ingress_1_io_output_1; // @[CLOS16New.scala 87:29]
  assign middle_1_io_input_2 = ingress_2_io_output_1; // @[CLOS16New.scala 87:29]
  assign middle_1_io_input_3 = ingress_3_io_output_1; // @[CLOS16New.scala 87:29]
  assign middle_1_io_ctrl = middleCtrlReg[23:16]; // @[CLOS16New.scala 67:41]
  assign middle_2_io_input_0 = ingress_0_io_output_2; // @[CLOS16New.scala 87:29]
  assign middle_2_io_input_1 = ingress_1_io_output_2; // @[CLOS16New.scala 87:29]
  assign middle_2_io_input_2 = ingress_2_io_output_2; // @[CLOS16New.scala 87:29]
  assign middle_2_io_input_3 = ingress_3_io_output_2; // @[CLOS16New.scala 87:29]
  assign middle_2_io_ctrl = middleCtrlReg[15:8]; // @[CLOS16New.scala 67:41]
  assign middle_3_io_input_0 = ingress_0_io_output_3; // @[CLOS16New.scala 87:29]
  assign middle_3_io_input_1 = ingress_1_io_output_3; // @[CLOS16New.scala 87:29]
  assign middle_3_io_input_2 = ingress_2_io_output_3; // @[CLOS16New.scala 87:29]
  assign middle_3_io_input_3 = ingress_3_io_output_3; // @[CLOS16New.scala 87:29]
  assign middle_3_io_ctrl = middleCtrlReg[7:0]; // @[CLOS16New.scala 67:41]
  always @(posedge clock) begin
    if (reset) begin // @[CLOS16New.scala 31:29]
      configure_en <= 1'h0; // @[CLOS16New.scala 31:29]
    end else begin
      configure_en <= io_ctrl[63];
    end
    if (reset) begin // @[CLOS16New.scala 32:32]
      instruction_reg <= 64'h0; // @[CLOS16New.scala 32:32]
    end else if (io_ctrl[63]) begin // @[CLOS16New.scala 33:30]
      instruction_reg <= io_ctrl; // @[CLOS16New.scala 35:21]
    end
    if (reset) begin // @[CLOS16New.scala 61:31]
      ingressCtrlReg <= 32'h0; // @[CLOS16New.scala 61:31]
    end else if (configure_en & instruction_reg[58:57] == 2'h1) begin // @[CLOS16New.scala 93:56]
      ingressCtrlReg <= instruction_reg[56:25]; // @[CLOS16New.scala 97:20]
    end
    if (reset) begin // @[CLOS16New.scala 62:30]
      middleCtrlReg <= 32'h0; // @[CLOS16New.scala 62:30]
    end else if (!(configure_en & instruction_reg[58:57] == 2'h1)) begin // @[CLOS16New.scala 93:56]
      if (configure_en & instruction_reg[58:57] == 2'h2) begin // @[CLOS16New.scala 98:63]
        middleCtrlReg <= instruction_reg[56:25]; // @[CLOS16New.scala 102:19]
      end
    end
    if (reset) begin // @[CLOS16New.scala 63:30]
      egressCtrlReg <= 32'h0; // @[CLOS16New.scala 63:30]
    end else if (!(configure_en & instruction_reg[58:57] == 2'h1)) begin // @[CLOS16New.scala 93:56]
      if (!(configure_en & instruction_reg[58:57] == 2'h2)) begin // @[CLOS16New.scala 98:63]
        if (configure_en & instruction_reg[58:57] == 2'h3) begin // @[CLOS16New.scala 103:63]
          egressCtrlReg <= instruction_reg[56:25]; // @[CLOS16New.scala 107:19]
        end
      end
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
  configure_en = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  instruction_reg = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  ingressCtrlReg = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  middleCtrlReg = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  egressCtrlReg = _RAND_4[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
