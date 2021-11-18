;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit CLOS16 : 
  module CrossBarCell : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_1 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_2 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_3 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_4 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_5 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_6 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_7 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_8 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_9 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_10 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_11 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_12 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_13 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_14 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_15 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_25 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_26 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_27 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_28 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_29 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_30 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_31 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_16 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_17 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_18 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_19 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_20 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_21 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_22 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_23 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_24 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_25 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_26 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_27 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_28 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_29 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_30 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_31 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_1 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_32 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_33 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_34 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_35 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_36 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_37 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_38 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_39 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_40 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_41 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_42 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_43 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_44 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_45 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_46 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_47 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_32 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_33 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_34 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_35 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_36 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_37 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_38 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_39 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_40 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_41 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_42 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_43 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_44 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_45 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_46 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_47 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_2 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_48 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_49 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_50 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_51 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_52 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_53 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_54 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_55 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_56 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_57 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_58 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_59 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_60 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_61 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_62 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_63 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_48 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_49 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_50 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_51 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_52 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_53 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_54 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_55 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_56 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_57 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_58 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_59 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_60 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_61 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_62 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_63 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_3 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_64 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_65 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_66 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_67 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_68 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_69 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_70 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_71 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_72 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_73 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_74 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_75 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_76 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_77 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_78 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_79 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_64 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_65 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_66 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_67 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_68 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_69 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_70 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_71 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_72 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_73 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_74 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_75 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_76 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_77 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_78 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_79 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_4 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_80 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_81 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_82 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_83 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_84 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_85 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_86 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_87 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_88 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_89 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_90 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_91 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_92 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_93 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_94 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_95 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_80 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_81 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_82 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_83 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_84 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_85 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_86 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_87 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_88 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_89 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_90 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_91 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_92 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_93 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_94 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_95 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_5 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_96 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_97 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_98 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_99 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_100 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_101 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_102 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_103 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_104 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_105 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_106 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_107 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_108 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_109 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_110 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_111 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_96 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_97 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_98 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_99 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_100 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_101 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_102 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_103 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_104 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_105 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_106 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_107 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_108 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_109 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_110 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_111 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_6 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_112 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_113 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_114 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_115 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_116 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_117 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_118 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_119 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_120 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_121 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_122 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_123 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_124 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_125 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_126 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_127 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_112 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_113 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_114 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_115 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_116 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_117 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_118 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_119 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_120 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_121 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_122 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_123 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_124 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_125 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_126 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_127 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_7 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_128 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_129 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_130 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_131 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_132 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_133 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_134 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_135 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_136 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_137 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_138 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_139 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_140 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_141 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_142 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_143 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_128 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_129 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_130 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_131 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_132 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_133 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_134 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_135 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_136 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_137 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_138 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_139 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_140 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_141 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_142 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_143 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_8 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_144 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_145 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_146 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_147 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_148 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_149 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_150 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_151 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_152 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_153 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_154 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_155 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_156 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_157 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_158 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_159 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_144 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_145 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_146 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_147 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_148 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_149 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_150 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_151 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_152 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_153 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_154 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_155 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_156 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_157 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_158 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_159 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_9 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_160 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_161 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_162 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_163 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_164 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_165 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_166 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_167 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_168 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_169 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_170 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_171 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_172 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_173 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_174 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_175 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_160 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_161 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_162 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_163 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_164 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_165 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_166 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_167 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_168 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_169 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_170 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_171 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_172 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_173 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_174 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_175 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_10 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CrossBarCell_176 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_177 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_178 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_179 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_180 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_181 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_182 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_183 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_184 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_185 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_186 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_187 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_188 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_189 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_190 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_191 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_176 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_177 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_178 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_179 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_180 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_181 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_182 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_183 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_184 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_185 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_186 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_187 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_188 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_189 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_190 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_191 @[CrossBarSwitch.scala 37:53]
    cells_2d_15.clock <= clock
    cells_2d_15.reset <= reset
    node select_onehot_shiftAmount = bits(io.select[0], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T = dshl(UInt<1>("h01"), select_onehot_shiftAmount) @[OneHot.scala 65:12]
    node select_onehot_0 = bits(_select_onehot_T, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_1 = bits(io.select[1], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_1 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_1) @[OneHot.scala 65:12]
    node select_onehot_1 = bits(_select_onehot_T_1, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_2 = bits(io.select[2], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_2 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_2) @[OneHot.scala 65:12]
    node select_onehot_2 = bits(_select_onehot_T_2, 3, 0) @[OneHot.scala 65:27]
    node select_onehot_shiftAmount_3 = bits(io.select[3], 1, 0) @[OneHot.scala 64:49]
    node _select_onehot_T_3 = dshl(UInt<1>("h01"), select_onehot_shiftAmount_3) @[OneHot.scala 65:12]
    node select_onehot_3 = bits(_select_onehot_T_3, 3, 0) @[OneHot.scala 65:27]
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_0.io.fw_left <= fw_left_reg[0] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitch.scala 55:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitch.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_4.io.fw_left <= fw_left_reg[1] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitch.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_8.io.fw_left <= fw_left_reg[2] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitch.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_12.io.fw_left <= fw_left_reg[3] @[CrossBarSwitch.scala 62:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitch.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitch.scala 58:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitch.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitch.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitch.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitch.scala 77:21]
    
  module CLOScell4_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_11 @[CLOS16.scala 11:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[0] <= _T @[CLOS16.scala 13:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[CLOS16.scala 13:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[CLOS16.scala 13:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16.scala 13:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[CLOS16.scala 13:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[CLOS16.scala 15:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[CLOS16.scala 15:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[CLOS16.scala 16:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[CLOS16.scala 16:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[CLOS16.scala 16:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[CLOS16.scala 16:11]
    
  module CLOS16 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in16 : UInt<64>[16], out16 : UInt<64>[16], flip wr_en : UInt<1>, flip wr_instr : UInt<96>, flip run : UInt<1>}
    
    cmem IQ : UInt<96>[100] @[CLOS16.scala 28:15]
    reg PC : UInt<7>, clock with : (reset => (reset, UInt<7>("h00"))) @[CLOS16.scala 29:19]
    reg wr_addr : UInt<7>, clock with : (reset => (reset, UInt<7>("h00"))) @[CLOS16.scala 30:24]
    reg instr : UInt<96>, clock with : (reset => (reset, UInt<96>("h00"))) @[CLOS16.scala 31:22]
    when io.run : @[CLOS16.scala 33:15]
      node _PC_T = add(PC, UInt<1>("h01")) @[CLOS16.scala 34:14]
      node _PC_T_1 = tail(_PC_T, 1) @[CLOS16.scala 34:14]
      PC <= _PC_T_1 @[CLOS16.scala 34:8]
      infer mport instr_MPORT = IQ[PC], clock @[CLOS16.scala 35:16]
      instr <= instr_MPORT @[CLOS16.scala 35:11]
      skip @[CLOS16.scala 33:15]
    else : @[CLOS16.scala 36:23]
      when io.wr_en : @[CLOS16.scala 36:23]
        node _wr_addr_T = add(wr_addr, UInt<1>("h01")) @[CLOS16.scala 37:24]
        node _wr_addr_T_1 = tail(_wr_addr_T, 1) @[CLOS16.scala 37:24]
        wr_addr <= _wr_addr_T_1 @[CLOS16.scala 37:13]
        infer mport MPORT = IQ[wr_addr], clock @[CLOS16.scala 38:7]
        MPORT <= io.wr_instr @[CLOS16.scala 38:17]
        skip @[CLOS16.scala 36:23]
    inst ingress_0 of CLOScell4 @[CLOS16.scala 40:50]
    ingress_0.clock <= clock
    ingress_0.reset <= reset
    inst ingress_1 of CLOScell4_1 @[CLOS16.scala 40:50]
    ingress_1.clock <= clock
    ingress_1.reset <= reset
    inst ingress_2 of CLOScell4_2 @[CLOS16.scala 40:50]
    ingress_2.clock <= clock
    ingress_2.reset <= reset
    inst ingress_3 of CLOScell4_3 @[CLOS16.scala 40:50]
    ingress_3.clock <= clock
    ingress_3.reset <= reset
    inst egress_0 of CLOScell4_4 @[CLOS16.scala 41:49]
    egress_0.clock <= clock
    egress_0.reset <= reset
    inst egress_1 of CLOScell4_5 @[CLOS16.scala 41:49]
    egress_1.clock <= clock
    egress_1.reset <= reset
    inst egress_2 of CLOScell4_6 @[CLOS16.scala 41:49]
    egress_2.clock <= clock
    egress_2.reset <= reset
    inst egress_3 of CLOScell4_7 @[CLOS16.scala 41:49]
    egress_3.clock <= clock
    egress_3.reset <= reset
    inst middle_0 of CLOScell4_8 @[CLOS16.scala 42:49]
    middle_0.clock <= clock
    middle_0.reset <= reset
    inst middle_1 of CLOScell4_9 @[CLOS16.scala 42:49]
    middle_1.clock <= clock
    middle_1.reset <= reset
    inst middle_2 of CLOScell4_10 @[CLOS16.scala 42:49]
    middle_2.clock <= clock
    middle_2.reset <= reset
    inst middle_3 of CLOScell4_11 @[CLOS16.scala 42:49]
    middle_3.clock <= clock
    middle_3.reset <= reset
    ingress_0.io.in4[0] <= io.in16[0] @[CLOS16.scala 47:28]
    io.out16[0] <= egress_0.io.out4[0] @[CLOS16.scala 48:23]
    ingress_0.io.in4[1] <= io.in16[1] @[CLOS16.scala 47:28]
    io.out16[1] <= egress_0.io.out4[1] @[CLOS16.scala 48:23]
    ingress_0.io.in4[2] <= io.in16[2] @[CLOS16.scala 47:28]
    io.out16[2] <= egress_0.io.out4[2] @[CLOS16.scala 48:23]
    ingress_0.io.in4[3] <= io.in16[3] @[CLOS16.scala 47:28]
    io.out16[3] <= egress_0.io.out4[3] @[CLOS16.scala 48:23]
    ingress_1.io.in4[0] <= io.in16[4] @[CLOS16.scala 47:28]
    io.out16[4] <= egress_1.io.out4[0] @[CLOS16.scala 48:23]
    ingress_1.io.in4[1] <= io.in16[5] @[CLOS16.scala 47:28]
    io.out16[5] <= egress_1.io.out4[1] @[CLOS16.scala 48:23]
    ingress_1.io.in4[2] <= io.in16[6] @[CLOS16.scala 47:28]
    io.out16[6] <= egress_1.io.out4[2] @[CLOS16.scala 48:23]
    ingress_1.io.in4[3] <= io.in16[7] @[CLOS16.scala 47:28]
    io.out16[7] <= egress_1.io.out4[3] @[CLOS16.scala 48:23]
    ingress_2.io.in4[0] <= io.in16[8] @[CLOS16.scala 47:28]
    io.out16[8] <= egress_2.io.out4[0] @[CLOS16.scala 48:23]
    ingress_2.io.in4[1] <= io.in16[9] @[CLOS16.scala 47:28]
    io.out16[9] <= egress_2.io.out4[1] @[CLOS16.scala 48:23]
    ingress_2.io.in4[2] <= io.in16[10] @[CLOS16.scala 47:28]
    io.out16[10] <= egress_2.io.out4[2] @[CLOS16.scala 48:23]
    ingress_2.io.in4[3] <= io.in16[11] @[CLOS16.scala 47:28]
    io.out16[11] <= egress_2.io.out4[3] @[CLOS16.scala 48:23]
    ingress_3.io.in4[0] <= io.in16[12] @[CLOS16.scala 47:28]
    io.out16[12] <= egress_3.io.out4[0] @[CLOS16.scala 48:23]
    ingress_3.io.in4[1] <= io.in16[13] @[CLOS16.scala 47:28]
    io.out16[13] <= egress_3.io.out4[1] @[CLOS16.scala 48:23]
    ingress_3.io.in4[2] <= io.in16[14] @[CLOS16.scala 47:28]
    io.out16[14] <= egress_3.io.out4[2] @[CLOS16.scala 48:23]
    ingress_3.io.in4[3] <= io.in16[15] @[CLOS16.scala 47:28]
    io.out16[15] <= egress_3.io.out4[3] @[CLOS16.scala 48:23]
    node ingressCtrlReg = bits(instr, 95, 64) @[CLOS16.scala 52:29]
    node _middleCtrlReg_T = bits(instr, 63, 32) @[CLOS16.scala 53:36]
    reg middleCtrlReg : UInt, clock @[CLOS16.scala 53:30]
    middleCtrlReg <= _middleCtrlReg_T @[CLOS16.scala 53:30]
    node _egressCtrlReg_T = bits(instr, 31, 0) @[CLOS16.scala 54:44]
    reg egressCtrlReg_REG : UInt, clock @[CLOS16.scala 54:38]
    egressCtrlReg_REG <= _egressCtrlReg_T @[CLOS16.scala 54:38]
    reg egressCtrlReg : UInt, clock @[CLOS16.scala 54:30]
    egressCtrlReg <= egressCtrlReg_REG @[CLOS16.scala 54:30]
    node _ingress_0_io_ctrl_T = bits(ingressCtrlReg, 31, 24) @[CLOS16.scala 58:41]
    ingress_0.io.ctrl <= _ingress_0_io_ctrl_T @[CLOS16.scala 58:24]
    node _middle_0_io_ctrl_T = bits(middleCtrlReg, 31, 24) @[CLOS16.scala 59:39]
    middle_0.io.ctrl <= _middle_0_io_ctrl_T @[CLOS16.scala 59:23]
    node _egress_0_io_ctrl_T = bits(egressCtrlReg, 31, 24) @[CLOS16.scala 60:39]
    egress_0.io.ctrl <= _egress_0_io_ctrl_T @[CLOS16.scala 60:23]
    node _ingress_1_io_ctrl_T = bits(ingressCtrlReg, 23, 16) @[CLOS16.scala 58:41]
    ingress_1.io.ctrl <= _ingress_1_io_ctrl_T @[CLOS16.scala 58:24]
    node _middle_1_io_ctrl_T = bits(middleCtrlReg, 23, 16) @[CLOS16.scala 59:39]
    middle_1.io.ctrl <= _middle_1_io_ctrl_T @[CLOS16.scala 59:23]
    node _egress_1_io_ctrl_T = bits(egressCtrlReg, 23, 16) @[CLOS16.scala 60:39]
    egress_1.io.ctrl <= _egress_1_io_ctrl_T @[CLOS16.scala 60:23]
    node _ingress_2_io_ctrl_T = bits(ingressCtrlReg, 15, 8) @[CLOS16.scala 58:41]
    ingress_2.io.ctrl <= _ingress_2_io_ctrl_T @[CLOS16.scala 58:24]
    node _middle_2_io_ctrl_T = bits(middleCtrlReg, 15, 8) @[CLOS16.scala 59:39]
    middle_2.io.ctrl <= _middle_2_io_ctrl_T @[CLOS16.scala 59:23]
    node _egress_2_io_ctrl_T = bits(egressCtrlReg, 15, 8) @[CLOS16.scala 60:39]
    egress_2.io.ctrl <= _egress_2_io_ctrl_T @[CLOS16.scala 60:23]
    node _ingress_3_io_ctrl_T = bits(ingressCtrlReg, 7, 0) @[CLOS16.scala 58:41]
    ingress_3.io.ctrl <= _ingress_3_io_ctrl_T @[CLOS16.scala 58:24]
    node _middle_3_io_ctrl_T = bits(middleCtrlReg, 7, 0) @[CLOS16.scala 59:39]
    middle_3.io.ctrl <= _middle_3_io_ctrl_T @[CLOS16.scala 59:23]
    node _egress_3_io_ctrl_T = bits(egressCtrlReg, 7, 0) @[CLOS16.scala 60:39]
    egress_3.io.ctrl <= _egress_3_io_ctrl_T @[CLOS16.scala 60:23]
    middle_0.io.in4[0] <= ingress_0.io.out4[0] @[CLOS16.scala 65:27]
    egress_0.io.in4[0] <= middle_0.io.out4[0] @[CLOS16.scala 66:27]
    middle_0.io.in4[1] <= ingress_1.io.out4[0] @[CLOS16.scala 65:27]
    egress_1.io.in4[0] <= middle_0.io.out4[1] @[CLOS16.scala 66:27]
    middle_0.io.in4[2] <= ingress_2.io.out4[0] @[CLOS16.scala 65:27]
    egress_2.io.in4[0] <= middle_0.io.out4[2] @[CLOS16.scala 66:27]
    middle_0.io.in4[3] <= ingress_3.io.out4[0] @[CLOS16.scala 65:27]
    egress_3.io.in4[0] <= middle_0.io.out4[3] @[CLOS16.scala 66:27]
    middle_1.io.in4[0] <= ingress_0.io.out4[1] @[CLOS16.scala 65:27]
    egress_0.io.in4[1] <= middle_1.io.out4[0] @[CLOS16.scala 66:27]
    middle_1.io.in4[1] <= ingress_1.io.out4[1] @[CLOS16.scala 65:27]
    egress_1.io.in4[1] <= middle_1.io.out4[1] @[CLOS16.scala 66:27]
    middle_1.io.in4[2] <= ingress_2.io.out4[1] @[CLOS16.scala 65:27]
    egress_2.io.in4[1] <= middle_1.io.out4[2] @[CLOS16.scala 66:27]
    middle_1.io.in4[3] <= ingress_3.io.out4[1] @[CLOS16.scala 65:27]
    egress_3.io.in4[1] <= middle_1.io.out4[3] @[CLOS16.scala 66:27]
    middle_2.io.in4[0] <= ingress_0.io.out4[2] @[CLOS16.scala 65:27]
    egress_0.io.in4[2] <= middle_2.io.out4[0] @[CLOS16.scala 66:27]
    middle_2.io.in4[1] <= ingress_1.io.out4[2] @[CLOS16.scala 65:27]
    egress_1.io.in4[2] <= middle_2.io.out4[1] @[CLOS16.scala 66:27]
    middle_2.io.in4[2] <= ingress_2.io.out4[2] @[CLOS16.scala 65:27]
    egress_2.io.in4[2] <= middle_2.io.out4[2] @[CLOS16.scala 66:27]
    middle_2.io.in4[3] <= ingress_3.io.out4[2] @[CLOS16.scala 65:27]
    egress_3.io.in4[2] <= middle_2.io.out4[3] @[CLOS16.scala 66:27]
    middle_3.io.in4[0] <= ingress_0.io.out4[3] @[CLOS16.scala 65:27]
    egress_0.io.in4[3] <= middle_3.io.out4[0] @[CLOS16.scala 66:27]
    middle_3.io.in4[1] <= ingress_1.io.out4[3] @[CLOS16.scala 65:27]
    egress_1.io.in4[3] <= middle_3.io.out4[1] @[CLOS16.scala 66:27]
    middle_3.io.in4[2] <= ingress_2.io.out4[3] @[CLOS16.scala 65:27]
    egress_2.io.in4[3] <= middle_3.io.out4[2] @[CLOS16.scala 66:27]
    middle_3.io.in4[3] <= ingress_3.io.out4[3] @[CLOS16.scala 65:27]
    egress_3.io.in4[3] <= middle_3.io.out4[3] @[CLOS16.scala 66:27]
    
