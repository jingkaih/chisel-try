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
  wire  CrossBarSwitch_clock; // @[BuildingBlock.scala 17:21]
  wire [64:0] CrossBarSwitch_io_fw_left_0; // @[BuildingBlock.scala 17:21]
  wire [64:0] CrossBarSwitch_io_fw_left_1; // @[BuildingBlock.scala 17:21]
  wire [64:0] CrossBarSwitch_io_fw_left_2; // @[BuildingBlock.scala 17:21]
  wire [64:0] CrossBarSwitch_io_fw_left_3; // @[BuildingBlock.scala 17:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_0; // @[BuildingBlock.scala 17:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_1; // @[BuildingBlock.scala 17:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_2; // @[BuildingBlock.scala 17:21]
  wire [64:0] CrossBarSwitch_io_fw_bottom_3; // @[BuildingBlock.scala 17:21]
  wire [1:0] CrossBarSwitch_io_select_0; // @[BuildingBlock.scala 17:21]
  wire [1:0] CrossBarSwitch_io_select_1; // @[BuildingBlock.scala 17:21]
  wire [1:0] CrossBarSwitch_io_select_2; // @[BuildingBlock.scala 17:21]
  wire [1:0] CrossBarSwitch_io_select_3; // @[BuildingBlock.scala 17:21]
  CrossBarSwitch CrossBarSwitch ( // @[BuildingBlock.scala 17:21]
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
  assign io_out4_0 = CrossBarSwitch_io_fw_bottom_0; // @[BuildingBlock.scala 22:11]
  assign io_out4_1 = CrossBarSwitch_io_fw_bottom_1; // @[BuildingBlock.scala 22:11]
  assign io_out4_2 = CrossBarSwitch_io_fw_bottom_2; // @[BuildingBlock.scala 22:11]
  assign io_out4_3 = CrossBarSwitch_io_fw_bottom_3; // @[BuildingBlock.scala 22:11]
  assign CrossBarSwitch_clock = clock;
  assign CrossBarSwitch_io_fw_left_0 = io_in4_0; // @[BuildingBlock.scala 21:17]
  assign CrossBarSwitch_io_fw_left_1 = io_in4_1; // @[BuildingBlock.scala 21:17]
  assign CrossBarSwitch_io_fw_left_2 = io_in4_2; // @[BuildingBlock.scala 21:17]
  assign CrossBarSwitch_io_fw_left_3 = io_in4_3; // @[BuildingBlock.scala 21:17]
  assign CrossBarSwitch_io_select_0 = io_ctrl[7:6]; // @[BuildingBlock.scala 19:31]
  assign CrossBarSwitch_io_select_1 = io_ctrl[5:4]; // @[BuildingBlock.scala 19:31]
  assign CrossBarSwitch_io_select_2 = io_ctrl[3:2]; // @[BuildingBlock.scala 19:31]
  assign CrossBarSwitch_io_select_3 = io_ctrl[1:0]; // @[BuildingBlock.scala 19:31]
endmodule
module CLOSingress(
  input          clock,
  input          reset,
  input  [63:0]  io_in64_0,
  input  [63:0]  io_in64_1,
  input  [63:0]  io_in64_2,
  input  [63:0]  io_in64_3,
  input  [63:0]  io_in64_4,
  input  [63:0]  io_in64_5,
  input  [63:0]  io_in64_6,
  input  [63:0]  io_in64_7,
  input  [63:0]  io_in64_8,
  input  [63:0]  io_in64_9,
  input  [63:0]  io_in64_10,
  input  [63:0]  io_in64_11,
  input  [63:0]  io_in64_12,
  input  [63:0]  io_in64_13,
  input  [63:0]  io_in64_14,
  input  [63:0]  io_in64_15,
  input  [63:0]  io_in64_16,
  input  [63:0]  io_in64_17,
  input  [63:0]  io_in64_18,
  input  [63:0]  io_in64_19,
  input  [63:0]  io_in64_20,
  input  [63:0]  io_in64_21,
  input  [63:0]  io_in64_22,
  input  [63:0]  io_in64_23,
  input  [63:0]  io_in64_24,
  input  [63:0]  io_in64_25,
  input  [63:0]  io_in64_26,
  input  [63:0]  io_in64_27,
  input  [63:0]  io_in64_28,
  input  [63:0]  io_in64_29,
  input  [63:0]  io_in64_30,
  input  [63:0]  io_in64_31,
  input  [63:0]  io_in64_32,
  input  [63:0]  io_in64_33,
  input  [63:0]  io_in64_34,
  input  [63:0]  io_in64_35,
  input  [63:0]  io_in64_36,
  input  [63:0]  io_in64_37,
  input  [63:0]  io_in64_38,
  input  [63:0]  io_in64_39,
  input  [63:0]  io_in64_40,
  input  [63:0]  io_in64_41,
  input  [63:0]  io_in64_42,
  input  [63:0]  io_in64_43,
  input  [63:0]  io_in64_44,
  input  [63:0]  io_in64_45,
  input  [63:0]  io_in64_46,
  input  [63:0]  io_in64_47,
  input  [63:0]  io_in64_48,
  input  [63:0]  io_in64_49,
  input  [63:0]  io_in64_50,
  input  [63:0]  io_in64_51,
  input  [63:0]  io_in64_52,
  input  [63:0]  io_in64_53,
  input  [63:0]  io_in64_54,
  input  [63:0]  io_in64_55,
  input  [63:0]  io_in64_56,
  input  [63:0]  io_in64_57,
  input  [63:0]  io_in64_58,
  input  [63:0]  io_in64_59,
  input  [63:0]  io_in64_60,
  input  [63:0]  io_in64_61,
  input  [63:0]  io_in64_62,
  input  [63:0]  io_in64_63,
  input          io_validin64_0,
  input          io_validin64_1,
  input          io_validin64_2,
  input          io_validin64_3,
  input          io_validin64_4,
  input          io_validin64_5,
  input          io_validin64_6,
  input          io_validin64_7,
  input          io_validin64_8,
  input          io_validin64_9,
  input          io_validin64_10,
  input          io_validin64_11,
  input          io_validin64_12,
  input          io_validin64_13,
  input          io_validin64_14,
  input          io_validin64_15,
  input          io_validin64_16,
  input          io_validin64_17,
  input          io_validin64_18,
  input          io_validin64_19,
  input          io_validin64_20,
  input          io_validin64_21,
  input          io_validin64_22,
  input          io_validin64_23,
  input          io_validin64_24,
  input          io_validin64_25,
  input          io_validin64_26,
  input          io_validin64_27,
  input          io_validin64_28,
  input          io_validin64_29,
  input          io_validin64_30,
  input          io_validin64_31,
  input          io_validin64_32,
  input          io_validin64_33,
  input          io_validin64_34,
  input          io_validin64_35,
  input          io_validin64_36,
  input          io_validin64_37,
  input          io_validin64_38,
  input          io_validin64_39,
  input          io_validin64_40,
  input          io_validin64_41,
  input          io_validin64_42,
  input          io_validin64_43,
  input          io_validin64_44,
  input          io_validin64_45,
  input          io_validin64_46,
  input          io_validin64_47,
  input          io_validin64_48,
  input          io_validin64_49,
  input          io_validin64_50,
  input          io_validin64_51,
  input          io_validin64_52,
  input          io_validin64_53,
  input          io_validin64_54,
  input          io_validin64_55,
  input          io_validin64_56,
  input          io_validin64_57,
  input          io_validin64_58,
  input          io_validin64_59,
  input          io_validin64_60,
  input          io_validin64_61,
  input          io_validin64_62,
  input          io_validin64_63,
  output [63:0]  io_out64_0,
  output [63:0]  io_out64_1,
  output [63:0]  io_out64_2,
  output [63:0]  io_out64_3,
  output [63:0]  io_out64_4,
  output [63:0]  io_out64_5,
  output [63:0]  io_out64_6,
  output [63:0]  io_out64_7,
  output [63:0]  io_out64_8,
  output [63:0]  io_out64_9,
  output [63:0]  io_out64_10,
  output [63:0]  io_out64_11,
  output [63:0]  io_out64_12,
  output [63:0]  io_out64_13,
  output [63:0]  io_out64_14,
  output [63:0]  io_out64_15,
  output [63:0]  io_out64_16,
  output [63:0]  io_out64_17,
  output [63:0]  io_out64_18,
  output [63:0]  io_out64_19,
  output [63:0]  io_out64_20,
  output [63:0]  io_out64_21,
  output [63:0]  io_out64_22,
  output [63:0]  io_out64_23,
  output [63:0]  io_out64_24,
  output [63:0]  io_out64_25,
  output [63:0]  io_out64_26,
  output [63:0]  io_out64_27,
  output [63:0]  io_out64_28,
  output [63:0]  io_out64_29,
  output [63:0]  io_out64_30,
  output [63:0]  io_out64_31,
  output [63:0]  io_out64_32,
  output [63:0]  io_out64_33,
  output [63:0]  io_out64_34,
  output [63:0]  io_out64_35,
  output [63:0]  io_out64_36,
  output [63:0]  io_out64_37,
  output [63:0]  io_out64_38,
  output [63:0]  io_out64_39,
  output [63:0]  io_out64_40,
  output [63:0]  io_out64_41,
  output [63:0]  io_out64_42,
  output [63:0]  io_out64_43,
  output [63:0]  io_out64_44,
  output [63:0]  io_out64_45,
  output [63:0]  io_out64_46,
  output [63:0]  io_out64_47,
  output [63:0]  io_out64_48,
  output [63:0]  io_out64_49,
  output [63:0]  io_out64_50,
  output [63:0]  io_out64_51,
  output [63:0]  io_out64_52,
  output [63:0]  io_out64_53,
  output [63:0]  io_out64_54,
  output [63:0]  io_out64_55,
  output [63:0]  io_out64_56,
  output [63:0]  io_out64_57,
  output [63:0]  io_out64_58,
  output [63:0]  io_out64_59,
  output [63:0]  io_out64_60,
  output [63:0]  io_out64_61,
  output [63:0]  io_out64_62,
  output [63:0]  io_out64_63,
  output         io_validout64_0,
  output         io_validout64_1,
  output         io_validout64_2,
  output         io_validout64_3,
  output         io_validout64_4,
  output         io_validout64_5,
  output         io_validout64_6,
  output         io_validout64_7,
  output         io_validout64_8,
  output         io_validout64_9,
  output         io_validout64_10,
  output         io_validout64_11,
  output         io_validout64_12,
  output         io_validout64_13,
  output         io_validout64_14,
  output         io_validout64_15,
  output         io_validout64_16,
  output         io_validout64_17,
  output         io_validout64_18,
  output         io_validout64_19,
  output         io_validout64_20,
  output         io_validout64_21,
  output         io_validout64_22,
  output         io_validout64_23,
  output         io_validout64_24,
  output         io_validout64_25,
  output         io_validout64_26,
  output         io_validout64_27,
  output         io_validout64_28,
  output         io_validout64_29,
  output         io_validout64_30,
  output         io_validout64_31,
  output         io_validout64_32,
  output         io_validout64_33,
  output         io_validout64_34,
  output         io_validout64_35,
  output         io_validout64_36,
  output         io_validout64_37,
  output         io_validout64_38,
  output         io_validout64_39,
  output         io_validout64_40,
  output         io_validout64_41,
  output         io_validout64_42,
  output         io_validout64_43,
  output         io_validout64_44,
  output         io_validout64_45,
  output         io_validout64_46,
  output         io_validout64_47,
  output         io_validout64_48,
  output         io_validout64_49,
  output         io_validout64_50,
  output         io_validout64_51,
  output         io_validout64_52,
  output         io_validout64_53,
  output         io_validout64_54,
  output         io_validout64_55,
  output         io_validout64_56,
  output         io_validout64_57,
  output         io_validout64_58,
  output         io_validout64_59,
  output         io_validout64_60,
  output         io_validout64_61,
  output         io_validout64_62,
  output         io_validout64_63,
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  ingress1_0_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_0_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_0_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_0_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_0_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_0_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_0_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_0_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_0_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_0_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_1_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_1_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_1_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_1_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_1_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_1_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_1_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_1_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_1_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_1_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_2_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_2_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_2_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_2_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_2_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_2_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_2_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_2_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_2_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_2_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_3_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_3_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_3_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_3_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_3_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_3_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_3_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_3_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_3_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_3_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_4_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_4_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_4_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_4_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_4_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_4_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_4_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_4_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_4_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_4_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_5_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_5_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_5_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_5_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_5_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_5_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_5_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_5_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_5_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_5_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_6_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_6_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_6_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_6_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_6_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_6_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_6_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_6_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_6_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_6_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_7_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_7_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_7_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_7_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_7_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_7_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_7_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_7_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_7_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_7_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_8_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_8_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_8_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_8_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_8_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_8_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_8_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_8_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_8_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_8_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_9_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_9_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_9_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_9_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_9_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_9_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_9_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_9_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_9_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_9_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_10_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_10_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_10_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_10_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_10_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_10_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_10_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_10_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_10_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_10_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_11_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_11_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_11_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_11_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_11_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_11_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_11_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_11_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_11_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_11_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_12_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_12_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_12_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_12_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_12_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_12_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_12_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_12_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_12_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_12_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_13_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_13_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_13_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_13_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_13_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_13_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_13_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_13_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_13_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_13_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_14_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_14_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_14_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_14_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_14_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_14_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_14_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_14_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_14_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_14_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  wire  ingress1_15_clock; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_15_io_in4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_15_io_in4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_15_io_in4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_15_io_in4_3; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_15_io_out4_0; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_15_io_out4_1; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_15_io_out4_2; // @[BuildingBlockNew.scala 29:52]
  wire [64:0] ingress1_15_io_out4_3; // @[BuildingBlockNew.scala 29:52]
  wire [7:0] ingress1_15_io_ctrl; // @[BuildingBlockNew.scala 29:52]
  reg [127:0] ctrl_reg; // @[BuildingBlockNew.scala 30:25]
  CLOScell4 ingress1_0 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_0_clock),
    .io_in4_0(ingress1_0_io_in4_0),
    .io_in4_1(ingress1_0_io_in4_1),
    .io_in4_2(ingress1_0_io_in4_2),
    .io_in4_3(ingress1_0_io_in4_3),
    .io_out4_0(ingress1_0_io_out4_0),
    .io_out4_1(ingress1_0_io_out4_1),
    .io_out4_2(ingress1_0_io_out4_2),
    .io_out4_3(ingress1_0_io_out4_3),
    .io_ctrl(ingress1_0_io_ctrl)
  );
  CLOScell4 ingress1_1 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_1_clock),
    .io_in4_0(ingress1_1_io_in4_0),
    .io_in4_1(ingress1_1_io_in4_1),
    .io_in4_2(ingress1_1_io_in4_2),
    .io_in4_3(ingress1_1_io_in4_3),
    .io_out4_0(ingress1_1_io_out4_0),
    .io_out4_1(ingress1_1_io_out4_1),
    .io_out4_2(ingress1_1_io_out4_2),
    .io_out4_3(ingress1_1_io_out4_3),
    .io_ctrl(ingress1_1_io_ctrl)
  );
  CLOScell4 ingress1_2 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_2_clock),
    .io_in4_0(ingress1_2_io_in4_0),
    .io_in4_1(ingress1_2_io_in4_1),
    .io_in4_2(ingress1_2_io_in4_2),
    .io_in4_3(ingress1_2_io_in4_3),
    .io_out4_0(ingress1_2_io_out4_0),
    .io_out4_1(ingress1_2_io_out4_1),
    .io_out4_2(ingress1_2_io_out4_2),
    .io_out4_3(ingress1_2_io_out4_3),
    .io_ctrl(ingress1_2_io_ctrl)
  );
  CLOScell4 ingress1_3 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_3_clock),
    .io_in4_0(ingress1_3_io_in4_0),
    .io_in4_1(ingress1_3_io_in4_1),
    .io_in4_2(ingress1_3_io_in4_2),
    .io_in4_3(ingress1_3_io_in4_3),
    .io_out4_0(ingress1_3_io_out4_0),
    .io_out4_1(ingress1_3_io_out4_1),
    .io_out4_2(ingress1_3_io_out4_2),
    .io_out4_3(ingress1_3_io_out4_3),
    .io_ctrl(ingress1_3_io_ctrl)
  );
  CLOScell4 ingress1_4 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_4_clock),
    .io_in4_0(ingress1_4_io_in4_0),
    .io_in4_1(ingress1_4_io_in4_1),
    .io_in4_2(ingress1_4_io_in4_2),
    .io_in4_3(ingress1_4_io_in4_3),
    .io_out4_0(ingress1_4_io_out4_0),
    .io_out4_1(ingress1_4_io_out4_1),
    .io_out4_2(ingress1_4_io_out4_2),
    .io_out4_3(ingress1_4_io_out4_3),
    .io_ctrl(ingress1_4_io_ctrl)
  );
  CLOScell4 ingress1_5 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_5_clock),
    .io_in4_0(ingress1_5_io_in4_0),
    .io_in4_1(ingress1_5_io_in4_1),
    .io_in4_2(ingress1_5_io_in4_2),
    .io_in4_3(ingress1_5_io_in4_3),
    .io_out4_0(ingress1_5_io_out4_0),
    .io_out4_1(ingress1_5_io_out4_1),
    .io_out4_2(ingress1_5_io_out4_2),
    .io_out4_3(ingress1_5_io_out4_3),
    .io_ctrl(ingress1_5_io_ctrl)
  );
  CLOScell4 ingress1_6 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_6_clock),
    .io_in4_0(ingress1_6_io_in4_0),
    .io_in4_1(ingress1_6_io_in4_1),
    .io_in4_2(ingress1_6_io_in4_2),
    .io_in4_3(ingress1_6_io_in4_3),
    .io_out4_0(ingress1_6_io_out4_0),
    .io_out4_1(ingress1_6_io_out4_1),
    .io_out4_2(ingress1_6_io_out4_2),
    .io_out4_3(ingress1_6_io_out4_3),
    .io_ctrl(ingress1_6_io_ctrl)
  );
  CLOScell4 ingress1_7 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_7_clock),
    .io_in4_0(ingress1_7_io_in4_0),
    .io_in4_1(ingress1_7_io_in4_1),
    .io_in4_2(ingress1_7_io_in4_2),
    .io_in4_3(ingress1_7_io_in4_3),
    .io_out4_0(ingress1_7_io_out4_0),
    .io_out4_1(ingress1_7_io_out4_1),
    .io_out4_2(ingress1_7_io_out4_2),
    .io_out4_3(ingress1_7_io_out4_3),
    .io_ctrl(ingress1_7_io_ctrl)
  );
  CLOScell4 ingress1_8 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_8_clock),
    .io_in4_0(ingress1_8_io_in4_0),
    .io_in4_1(ingress1_8_io_in4_1),
    .io_in4_2(ingress1_8_io_in4_2),
    .io_in4_3(ingress1_8_io_in4_3),
    .io_out4_0(ingress1_8_io_out4_0),
    .io_out4_1(ingress1_8_io_out4_1),
    .io_out4_2(ingress1_8_io_out4_2),
    .io_out4_3(ingress1_8_io_out4_3),
    .io_ctrl(ingress1_8_io_ctrl)
  );
  CLOScell4 ingress1_9 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_9_clock),
    .io_in4_0(ingress1_9_io_in4_0),
    .io_in4_1(ingress1_9_io_in4_1),
    .io_in4_2(ingress1_9_io_in4_2),
    .io_in4_3(ingress1_9_io_in4_3),
    .io_out4_0(ingress1_9_io_out4_0),
    .io_out4_1(ingress1_9_io_out4_1),
    .io_out4_2(ingress1_9_io_out4_2),
    .io_out4_3(ingress1_9_io_out4_3),
    .io_ctrl(ingress1_9_io_ctrl)
  );
  CLOScell4 ingress1_10 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_10_clock),
    .io_in4_0(ingress1_10_io_in4_0),
    .io_in4_1(ingress1_10_io_in4_1),
    .io_in4_2(ingress1_10_io_in4_2),
    .io_in4_3(ingress1_10_io_in4_3),
    .io_out4_0(ingress1_10_io_out4_0),
    .io_out4_1(ingress1_10_io_out4_1),
    .io_out4_2(ingress1_10_io_out4_2),
    .io_out4_3(ingress1_10_io_out4_3),
    .io_ctrl(ingress1_10_io_ctrl)
  );
  CLOScell4 ingress1_11 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_11_clock),
    .io_in4_0(ingress1_11_io_in4_0),
    .io_in4_1(ingress1_11_io_in4_1),
    .io_in4_2(ingress1_11_io_in4_2),
    .io_in4_3(ingress1_11_io_in4_3),
    .io_out4_0(ingress1_11_io_out4_0),
    .io_out4_1(ingress1_11_io_out4_1),
    .io_out4_2(ingress1_11_io_out4_2),
    .io_out4_3(ingress1_11_io_out4_3),
    .io_ctrl(ingress1_11_io_ctrl)
  );
  CLOScell4 ingress1_12 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_12_clock),
    .io_in4_0(ingress1_12_io_in4_0),
    .io_in4_1(ingress1_12_io_in4_1),
    .io_in4_2(ingress1_12_io_in4_2),
    .io_in4_3(ingress1_12_io_in4_3),
    .io_out4_0(ingress1_12_io_out4_0),
    .io_out4_1(ingress1_12_io_out4_1),
    .io_out4_2(ingress1_12_io_out4_2),
    .io_out4_3(ingress1_12_io_out4_3),
    .io_ctrl(ingress1_12_io_ctrl)
  );
  CLOScell4 ingress1_13 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_13_clock),
    .io_in4_0(ingress1_13_io_in4_0),
    .io_in4_1(ingress1_13_io_in4_1),
    .io_in4_2(ingress1_13_io_in4_2),
    .io_in4_3(ingress1_13_io_in4_3),
    .io_out4_0(ingress1_13_io_out4_0),
    .io_out4_1(ingress1_13_io_out4_1),
    .io_out4_2(ingress1_13_io_out4_2),
    .io_out4_3(ingress1_13_io_out4_3),
    .io_ctrl(ingress1_13_io_ctrl)
  );
  CLOScell4 ingress1_14 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_14_clock),
    .io_in4_0(ingress1_14_io_in4_0),
    .io_in4_1(ingress1_14_io_in4_1),
    .io_in4_2(ingress1_14_io_in4_2),
    .io_in4_3(ingress1_14_io_in4_3),
    .io_out4_0(ingress1_14_io_out4_0),
    .io_out4_1(ingress1_14_io_out4_1),
    .io_out4_2(ingress1_14_io_out4_2),
    .io_out4_3(ingress1_14_io_out4_3),
    .io_ctrl(ingress1_14_io_ctrl)
  );
  CLOScell4 ingress1_15 ( // @[BuildingBlockNew.scala 29:52]
    .clock(ingress1_15_clock),
    .io_in4_0(ingress1_15_io_in4_0),
    .io_in4_1(ingress1_15_io_in4_1),
    .io_in4_2(ingress1_15_io_in4_2),
    .io_in4_3(ingress1_15_io_in4_3),
    .io_out4_0(ingress1_15_io_out4_0),
    .io_out4_1(ingress1_15_io_out4_1),
    .io_out4_2(ingress1_15_io_out4_2),
    .io_out4_3(ingress1_15_io_out4_3),
    .io_ctrl(ingress1_15_io_ctrl)
  );
  assign io_out64_0 = ingress1_0_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_1 = ingress1_1_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_2 = ingress1_2_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_3 = ingress1_3_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_4 = ingress1_4_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_5 = ingress1_5_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_6 = ingress1_6_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_7 = ingress1_7_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_8 = ingress1_8_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_9 = ingress1_9_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_10 = ingress1_10_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_11 = ingress1_11_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_12 = ingress1_12_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_13 = ingress1_13_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_14 = ingress1_14_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_15 = ingress1_15_io_out4_0[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_16 = ingress1_0_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_17 = ingress1_1_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_18 = ingress1_2_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_19 = ingress1_3_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_20 = ingress1_4_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_21 = ingress1_5_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_22 = ingress1_6_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_23 = ingress1_7_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_24 = ingress1_8_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_25 = ingress1_9_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_26 = ingress1_10_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_27 = ingress1_11_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_28 = ingress1_12_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_29 = ingress1_13_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_30 = ingress1_14_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_31 = ingress1_15_io_out4_1[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_32 = ingress1_0_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_33 = ingress1_1_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_34 = ingress1_2_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_35 = ingress1_3_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_36 = ingress1_4_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_37 = ingress1_5_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_38 = ingress1_6_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_39 = ingress1_7_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_40 = ingress1_8_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_41 = ingress1_9_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_42 = ingress1_10_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_43 = ingress1_11_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_44 = ingress1_12_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_45 = ingress1_13_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_46 = ingress1_14_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_47 = ingress1_15_io_out4_2[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_48 = ingress1_0_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_49 = ingress1_1_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_50 = ingress1_2_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_51 = ingress1_3_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_52 = ingress1_4_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_53 = ingress1_5_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_54 = ingress1_6_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_55 = ingress1_7_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_56 = ingress1_8_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_57 = ingress1_9_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_58 = ingress1_10_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_59 = ingress1_11_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_60 = ingress1_12_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_61 = ingress1_13_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_62 = ingress1_14_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_out64_63 = ingress1_15_io_out4_3[63:0]; // @[BuildingBlockNew.scala 37:49]
  assign io_validout64_0 = ingress1_0_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_1 = ingress1_0_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_2 = ingress1_0_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_3 = ingress1_0_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_4 = ingress1_1_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_5 = ingress1_1_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_6 = ingress1_1_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_7 = ingress1_1_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_8 = ingress1_2_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_9 = ingress1_2_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_10 = ingress1_2_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_11 = ingress1_2_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_12 = ingress1_3_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_13 = ingress1_3_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_14 = ingress1_3_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_15 = ingress1_3_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_16 = ingress1_4_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_17 = ingress1_4_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_18 = ingress1_4_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_19 = ingress1_4_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_20 = ingress1_5_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_21 = ingress1_5_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_22 = ingress1_5_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_23 = ingress1_5_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_24 = ingress1_6_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_25 = ingress1_6_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_26 = ingress1_6_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_27 = ingress1_6_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_28 = ingress1_7_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_29 = ingress1_7_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_30 = ingress1_7_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_31 = ingress1_7_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_32 = ingress1_8_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_33 = ingress1_8_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_34 = ingress1_8_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_35 = ingress1_8_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_36 = ingress1_9_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_37 = ingress1_9_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_38 = ingress1_9_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_39 = ingress1_9_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_40 = ingress1_10_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_41 = ingress1_10_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_42 = ingress1_10_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_43 = ingress1_10_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_44 = ingress1_11_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_45 = ingress1_11_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_46 = ingress1_11_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_47 = ingress1_11_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_48 = ingress1_12_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_49 = ingress1_12_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_50 = ingress1_12_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_51 = ingress1_12_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_52 = ingress1_13_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_53 = ingress1_13_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_54 = ingress1_13_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_55 = ingress1_13_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_56 = ingress1_14_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_57 = ingress1_14_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_58 = ingress1_14_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_59 = ingress1_14_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_60 = ingress1_15_io_out4_0[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_61 = ingress1_15_io_out4_1[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_62 = ingress1_15_io_out4_2[64]; // @[BuildingBlockNew.scala 38:53]
  assign io_validout64_63 = ingress1_15_io_out4_3[64]; // @[BuildingBlockNew.scala 38:53]
  assign ingress1_0_clock = clock;
  assign ingress1_0_io_in4_0 = {io_validin64_0,io_in64_0}; // @[Cat.scala 30:58]
  assign ingress1_0_io_in4_1 = {io_validin64_1,io_in64_1}; // @[Cat.scala 30:58]
  assign ingress1_0_io_in4_2 = {io_validin64_2,io_in64_2}; // @[Cat.scala 30:58]
  assign ingress1_0_io_in4_3 = {io_validin64_3,io_in64_3}; // @[Cat.scala 30:58]
  assign ingress1_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_1_clock = clock;
  assign ingress1_1_io_in4_0 = {io_validin64_4,io_in64_4}; // @[Cat.scala 30:58]
  assign ingress1_1_io_in4_1 = {io_validin64_5,io_in64_5}; // @[Cat.scala 30:58]
  assign ingress1_1_io_in4_2 = {io_validin64_6,io_in64_6}; // @[Cat.scala 30:58]
  assign ingress1_1_io_in4_3 = {io_validin64_7,io_in64_7}; // @[Cat.scala 30:58]
  assign ingress1_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_2_clock = clock;
  assign ingress1_2_io_in4_0 = {io_validin64_8,io_in64_8}; // @[Cat.scala 30:58]
  assign ingress1_2_io_in4_1 = {io_validin64_9,io_in64_9}; // @[Cat.scala 30:58]
  assign ingress1_2_io_in4_2 = {io_validin64_10,io_in64_10}; // @[Cat.scala 30:58]
  assign ingress1_2_io_in4_3 = {io_validin64_11,io_in64_11}; // @[Cat.scala 30:58]
  assign ingress1_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_3_clock = clock;
  assign ingress1_3_io_in4_0 = {io_validin64_12,io_in64_12}; // @[Cat.scala 30:58]
  assign ingress1_3_io_in4_1 = {io_validin64_13,io_in64_13}; // @[Cat.scala 30:58]
  assign ingress1_3_io_in4_2 = {io_validin64_14,io_in64_14}; // @[Cat.scala 30:58]
  assign ingress1_3_io_in4_3 = {io_validin64_15,io_in64_15}; // @[Cat.scala 30:58]
  assign ingress1_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_4_clock = clock;
  assign ingress1_4_io_in4_0 = {io_validin64_16,io_in64_16}; // @[Cat.scala 30:58]
  assign ingress1_4_io_in4_1 = {io_validin64_17,io_in64_17}; // @[Cat.scala 30:58]
  assign ingress1_4_io_in4_2 = {io_validin64_18,io_in64_18}; // @[Cat.scala 30:58]
  assign ingress1_4_io_in4_3 = {io_validin64_19,io_in64_19}; // @[Cat.scala 30:58]
  assign ingress1_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_5_clock = clock;
  assign ingress1_5_io_in4_0 = {io_validin64_20,io_in64_20}; // @[Cat.scala 30:58]
  assign ingress1_5_io_in4_1 = {io_validin64_21,io_in64_21}; // @[Cat.scala 30:58]
  assign ingress1_5_io_in4_2 = {io_validin64_22,io_in64_22}; // @[Cat.scala 30:58]
  assign ingress1_5_io_in4_3 = {io_validin64_23,io_in64_23}; // @[Cat.scala 30:58]
  assign ingress1_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_6_clock = clock;
  assign ingress1_6_io_in4_0 = {io_validin64_24,io_in64_24}; // @[Cat.scala 30:58]
  assign ingress1_6_io_in4_1 = {io_validin64_25,io_in64_25}; // @[Cat.scala 30:58]
  assign ingress1_6_io_in4_2 = {io_validin64_26,io_in64_26}; // @[Cat.scala 30:58]
  assign ingress1_6_io_in4_3 = {io_validin64_27,io_in64_27}; // @[Cat.scala 30:58]
  assign ingress1_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_7_clock = clock;
  assign ingress1_7_io_in4_0 = {io_validin64_28,io_in64_28}; // @[Cat.scala 30:58]
  assign ingress1_7_io_in4_1 = {io_validin64_29,io_in64_29}; // @[Cat.scala 30:58]
  assign ingress1_7_io_in4_2 = {io_validin64_30,io_in64_30}; // @[Cat.scala 30:58]
  assign ingress1_7_io_in4_3 = {io_validin64_31,io_in64_31}; // @[Cat.scala 30:58]
  assign ingress1_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_8_clock = clock;
  assign ingress1_8_io_in4_0 = {io_validin64_32,io_in64_32}; // @[Cat.scala 30:58]
  assign ingress1_8_io_in4_1 = {io_validin64_33,io_in64_33}; // @[Cat.scala 30:58]
  assign ingress1_8_io_in4_2 = {io_validin64_34,io_in64_34}; // @[Cat.scala 30:58]
  assign ingress1_8_io_in4_3 = {io_validin64_35,io_in64_35}; // @[Cat.scala 30:58]
  assign ingress1_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_9_clock = clock;
  assign ingress1_9_io_in4_0 = {io_validin64_36,io_in64_36}; // @[Cat.scala 30:58]
  assign ingress1_9_io_in4_1 = {io_validin64_37,io_in64_37}; // @[Cat.scala 30:58]
  assign ingress1_9_io_in4_2 = {io_validin64_38,io_in64_38}; // @[Cat.scala 30:58]
  assign ingress1_9_io_in4_3 = {io_validin64_39,io_in64_39}; // @[Cat.scala 30:58]
  assign ingress1_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_10_clock = clock;
  assign ingress1_10_io_in4_0 = {io_validin64_40,io_in64_40}; // @[Cat.scala 30:58]
  assign ingress1_10_io_in4_1 = {io_validin64_41,io_in64_41}; // @[Cat.scala 30:58]
  assign ingress1_10_io_in4_2 = {io_validin64_42,io_in64_42}; // @[Cat.scala 30:58]
  assign ingress1_10_io_in4_3 = {io_validin64_43,io_in64_43}; // @[Cat.scala 30:58]
  assign ingress1_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_11_clock = clock;
  assign ingress1_11_io_in4_0 = {io_validin64_44,io_in64_44}; // @[Cat.scala 30:58]
  assign ingress1_11_io_in4_1 = {io_validin64_45,io_in64_45}; // @[Cat.scala 30:58]
  assign ingress1_11_io_in4_2 = {io_validin64_46,io_in64_46}; // @[Cat.scala 30:58]
  assign ingress1_11_io_in4_3 = {io_validin64_47,io_in64_47}; // @[Cat.scala 30:58]
  assign ingress1_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_12_clock = clock;
  assign ingress1_12_io_in4_0 = {io_validin64_48,io_in64_48}; // @[Cat.scala 30:58]
  assign ingress1_12_io_in4_1 = {io_validin64_49,io_in64_49}; // @[Cat.scala 30:58]
  assign ingress1_12_io_in4_2 = {io_validin64_50,io_in64_50}; // @[Cat.scala 30:58]
  assign ingress1_12_io_in4_3 = {io_validin64_51,io_in64_51}; // @[Cat.scala 30:58]
  assign ingress1_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_13_clock = clock;
  assign ingress1_13_io_in4_0 = {io_validin64_52,io_in64_52}; // @[Cat.scala 30:58]
  assign ingress1_13_io_in4_1 = {io_validin64_53,io_in64_53}; // @[Cat.scala 30:58]
  assign ingress1_13_io_in4_2 = {io_validin64_54,io_in64_54}; // @[Cat.scala 30:58]
  assign ingress1_13_io_in4_3 = {io_validin64_55,io_in64_55}; // @[Cat.scala 30:58]
  assign ingress1_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_14_clock = clock;
  assign ingress1_14_io_in4_0 = {io_validin64_56,io_in64_56}; // @[Cat.scala 30:58]
  assign ingress1_14_io_in4_1 = {io_validin64_57,io_in64_57}; // @[Cat.scala 30:58]
  assign ingress1_14_io_in4_2 = {io_validin64_58,io_in64_58}; // @[Cat.scala 30:58]
  assign ingress1_14_io_in4_3 = {io_validin64_59,io_in64_59}; // @[Cat.scala 30:58]
  assign ingress1_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlockNew.scala 42:36]
  assign ingress1_15_clock = clock;
  assign ingress1_15_io_in4_0 = {io_validin64_60,io_in64_60}; // @[Cat.scala 30:58]
  assign ingress1_15_io_in4_1 = {io_validin64_61,io_in64_61}; // @[Cat.scala 30:58]
  assign ingress1_15_io_in4_2 = {io_validin64_62,io_in64_62}; // @[Cat.scala 30:58]
  assign ingress1_15_io_in4_3 = {io_validin64_63,io_in64_63}; // @[Cat.scala 30:58]
  assign ingress1_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlockNew.scala 42:36]
  always @(posedge clock) begin
    if (reset) begin // @[BuildingBlockNew.scala 30:25]
      ctrl_reg <= 128'h0; // @[BuildingBlockNew.scala 30:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlockNew.scala 31:12]
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
  _RAND_0 = {4{`RANDOM}};
  ctrl_reg = _RAND_0[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
