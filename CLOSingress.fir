;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit CLOSingress : 
  module CrossBarCell : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_1 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_32 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_2 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_48 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_3 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_64 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_4 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_80 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_5 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_96 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_6 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_112 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_7 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_128 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_8 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_144 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_9 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_160 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_10 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_176 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_11 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_192 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_193 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_194 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_195 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_196 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_197 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_198 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_199 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_200 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_201 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_202 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_203 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_204 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_205 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_206 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_207 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_192 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_193 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_194 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_195 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_196 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_197 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_198 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_199 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_200 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_201 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_202 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_203 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_204 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_205 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_206 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_207 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_12 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_208 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_209 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_210 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_211 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_212 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_213 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_214 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_215 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_216 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_217 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_218 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_219 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_220 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_221 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_222 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_223 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_208 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_209 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_210 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_211 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_212 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_213 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_214 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_215 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_216 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_217 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_218 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_219 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_220 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_221 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_222 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_223 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_13 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_224 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_225 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_226 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_227 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_228 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_229 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_230 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_231 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_232 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_233 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_234 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_235 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_236 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_237 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_238 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_239 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_224 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_225 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_226 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_227 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_228 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_229 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_230 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_231 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_232 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_233 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_234 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_235 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_236 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_237 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_238 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_239 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_14 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CrossBarCell_240 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_241 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_242 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_243 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_244 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_245 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_246 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_247 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_248 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_249 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_250 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_251 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_252 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_253 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_254 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarCell_255 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>, flip fw_top : UInt<65>, fw_bottom : UInt<65>, fw_right : UInt<65>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitch.scala 14:15]
    when io.sel : @[CrossBarSwitch.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitch.scala 16:18]
      skip @[CrossBarSwitch.scala 15:17]
    else : @[CrossBarSwitch.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitch.scala 18:18]
      skip @[CrossBarSwitch.scala 17:16]
    
  module CrossBarSwitch_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<65>[4], fw_bottom : UInt<65>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<65>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_240 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_241 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_242 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_243 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_244 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_245 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_246 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_247 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_248 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_249 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_250 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_251 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_252 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_253 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_254 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_255 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_15 @[BuildingBlock.scala 17:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 19:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 19:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 19:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 19:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 19:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 21:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 21:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 22:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 22:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 22:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 22:11]
    
  module CLOSingress : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in64 : UInt<64>[64], flip validin64 : UInt<1>[64], out64 : UInt<64>[64], validout64 : UInt<1>[64], flip ctrl : UInt<128>}
    
    inst ingress1_0 of CLOScell4 @[BuildingBlockNew.scala 29:52]
    ingress1_0.clock <= clock
    ingress1_0.reset <= reset
    inst ingress1_1 of CLOScell4_1 @[BuildingBlockNew.scala 29:52]
    ingress1_1.clock <= clock
    ingress1_1.reset <= reset
    inst ingress1_2 of CLOScell4_2 @[BuildingBlockNew.scala 29:52]
    ingress1_2.clock <= clock
    ingress1_2.reset <= reset
    inst ingress1_3 of CLOScell4_3 @[BuildingBlockNew.scala 29:52]
    ingress1_3.clock <= clock
    ingress1_3.reset <= reset
    inst ingress1_4 of CLOScell4_4 @[BuildingBlockNew.scala 29:52]
    ingress1_4.clock <= clock
    ingress1_4.reset <= reset
    inst ingress1_5 of CLOScell4_5 @[BuildingBlockNew.scala 29:52]
    ingress1_5.clock <= clock
    ingress1_5.reset <= reset
    inst ingress1_6 of CLOScell4_6 @[BuildingBlockNew.scala 29:52]
    ingress1_6.clock <= clock
    ingress1_6.reset <= reset
    inst ingress1_7 of CLOScell4_7 @[BuildingBlockNew.scala 29:52]
    ingress1_7.clock <= clock
    ingress1_7.reset <= reset
    inst ingress1_8 of CLOScell4_8 @[BuildingBlockNew.scala 29:52]
    ingress1_8.clock <= clock
    ingress1_8.reset <= reset
    inst ingress1_9 of CLOScell4_9 @[BuildingBlockNew.scala 29:52]
    ingress1_9.clock <= clock
    ingress1_9.reset <= reset
    inst ingress1_10 of CLOScell4_10 @[BuildingBlockNew.scala 29:52]
    ingress1_10.clock <= clock
    ingress1_10.reset <= reset
    inst ingress1_11 of CLOScell4_11 @[BuildingBlockNew.scala 29:52]
    ingress1_11.clock <= clock
    ingress1_11.reset <= reset
    inst ingress1_12 of CLOScell4_12 @[BuildingBlockNew.scala 29:52]
    ingress1_12.clock <= clock
    ingress1_12.reset <= reset
    inst ingress1_13 of CLOScell4_13 @[BuildingBlockNew.scala 29:52]
    ingress1_13.clock <= clock
    ingress1_13.reset <= reset
    inst ingress1_14 of CLOScell4_14 @[BuildingBlockNew.scala 29:52]
    ingress1_14.clock <= clock
    ingress1_14.reset <= reset
    inst ingress1_15 of CLOScell4_15 @[BuildingBlockNew.scala 29:52]
    ingress1_15.clock <= clock
    ingress1_15.reset <= reset
    reg ctrl_reg : UInt<128>, clock with : (reset => (reset, UInt<128>("h00"))) @[BuildingBlockNew.scala 30:25]
    ctrl_reg <= io.ctrl @[BuildingBlockNew.scala 31:12]
    node _ingress1_0_io_in4_0_T = cat(io.validin64[0], io.in64[0]) @[Cat.scala 30:58]
    ingress1_0.io.in4[0] <= _ingress1_0_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_0_T = bits(ingress1_0.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[0] <= _io_out64_0_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_0_T = bits(ingress1_0.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[0] <= _io_validout64_0_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_0_io_in4_1_T = cat(io.validin64[1], io.in64[1]) @[Cat.scala 30:58]
    ingress1_0.io.in4[1] <= _ingress1_0_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_16_T = bits(ingress1_0.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[16] <= _io_out64_16_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_1_T = bits(ingress1_0.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[1] <= _io_validout64_1_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_0_io_in4_2_T = cat(io.validin64[2], io.in64[2]) @[Cat.scala 30:58]
    ingress1_0.io.in4[2] <= _ingress1_0_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_32_T = bits(ingress1_0.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[32] <= _io_out64_32_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_2_T = bits(ingress1_0.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[2] <= _io_validout64_2_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_0_io_in4_3_T = cat(io.validin64[3], io.in64[3]) @[Cat.scala 30:58]
    ingress1_0.io.in4[3] <= _ingress1_0_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_48_T = bits(ingress1_0.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[48] <= _io_out64_48_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_3_T = bits(ingress1_0.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[3] <= _io_validout64_3_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_1_io_in4_0_T = cat(io.validin64[4], io.in64[4]) @[Cat.scala 30:58]
    ingress1_1.io.in4[0] <= _ingress1_1_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_1_T = bits(ingress1_1.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[1] <= _io_out64_1_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_4_T = bits(ingress1_1.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[4] <= _io_validout64_4_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_1_io_in4_1_T = cat(io.validin64[5], io.in64[5]) @[Cat.scala 30:58]
    ingress1_1.io.in4[1] <= _ingress1_1_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_17_T = bits(ingress1_1.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[17] <= _io_out64_17_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_5_T = bits(ingress1_1.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[5] <= _io_validout64_5_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_1_io_in4_2_T = cat(io.validin64[6], io.in64[6]) @[Cat.scala 30:58]
    ingress1_1.io.in4[2] <= _ingress1_1_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_33_T = bits(ingress1_1.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[33] <= _io_out64_33_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_6_T = bits(ingress1_1.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[6] <= _io_validout64_6_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_1_io_in4_3_T = cat(io.validin64[7], io.in64[7]) @[Cat.scala 30:58]
    ingress1_1.io.in4[3] <= _ingress1_1_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_49_T = bits(ingress1_1.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[49] <= _io_out64_49_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_7_T = bits(ingress1_1.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[7] <= _io_validout64_7_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_2_io_in4_0_T = cat(io.validin64[8], io.in64[8]) @[Cat.scala 30:58]
    ingress1_2.io.in4[0] <= _ingress1_2_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_2_T = bits(ingress1_2.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[2] <= _io_out64_2_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_8_T = bits(ingress1_2.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[8] <= _io_validout64_8_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_2_io_in4_1_T = cat(io.validin64[9], io.in64[9]) @[Cat.scala 30:58]
    ingress1_2.io.in4[1] <= _ingress1_2_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_18_T = bits(ingress1_2.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[18] <= _io_out64_18_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_9_T = bits(ingress1_2.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[9] <= _io_validout64_9_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_2_io_in4_2_T = cat(io.validin64[10], io.in64[10]) @[Cat.scala 30:58]
    ingress1_2.io.in4[2] <= _ingress1_2_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_34_T = bits(ingress1_2.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[34] <= _io_out64_34_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_10_T = bits(ingress1_2.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[10] <= _io_validout64_10_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_2_io_in4_3_T = cat(io.validin64[11], io.in64[11]) @[Cat.scala 30:58]
    ingress1_2.io.in4[3] <= _ingress1_2_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_50_T = bits(ingress1_2.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[50] <= _io_out64_50_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_11_T = bits(ingress1_2.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[11] <= _io_validout64_11_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_3_io_in4_0_T = cat(io.validin64[12], io.in64[12]) @[Cat.scala 30:58]
    ingress1_3.io.in4[0] <= _ingress1_3_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_3_T = bits(ingress1_3.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[3] <= _io_out64_3_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_12_T = bits(ingress1_3.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[12] <= _io_validout64_12_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_3_io_in4_1_T = cat(io.validin64[13], io.in64[13]) @[Cat.scala 30:58]
    ingress1_3.io.in4[1] <= _ingress1_3_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_19_T = bits(ingress1_3.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[19] <= _io_out64_19_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_13_T = bits(ingress1_3.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[13] <= _io_validout64_13_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_3_io_in4_2_T = cat(io.validin64[14], io.in64[14]) @[Cat.scala 30:58]
    ingress1_3.io.in4[2] <= _ingress1_3_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_35_T = bits(ingress1_3.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[35] <= _io_out64_35_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_14_T = bits(ingress1_3.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[14] <= _io_validout64_14_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_3_io_in4_3_T = cat(io.validin64[15], io.in64[15]) @[Cat.scala 30:58]
    ingress1_3.io.in4[3] <= _ingress1_3_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_51_T = bits(ingress1_3.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[51] <= _io_out64_51_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_15_T = bits(ingress1_3.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[15] <= _io_validout64_15_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_4_io_in4_0_T = cat(io.validin64[16], io.in64[16]) @[Cat.scala 30:58]
    ingress1_4.io.in4[0] <= _ingress1_4_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_4_T = bits(ingress1_4.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[4] <= _io_out64_4_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_16_T = bits(ingress1_4.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[16] <= _io_validout64_16_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_4_io_in4_1_T = cat(io.validin64[17], io.in64[17]) @[Cat.scala 30:58]
    ingress1_4.io.in4[1] <= _ingress1_4_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_20_T = bits(ingress1_4.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[20] <= _io_out64_20_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_17_T = bits(ingress1_4.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[17] <= _io_validout64_17_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_4_io_in4_2_T = cat(io.validin64[18], io.in64[18]) @[Cat.scala 30:58]
    ingress1_4.io.in4[2] <= _ingress1_4_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_36_T = bits(ingress1_4.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[36] <= _io_out64_36_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_18_T = bits(ingress1_4.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[18] <= _io_validout64_18_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_4_io_in4_3_T = cat(io.validin64[19], io.in64[19]) @[Cat.scala 30:58]
    ingress1_4.io.in4[3] <= _ingress1_4_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_52_T = bits(ingress1_4.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[52] <= _io_out64_52_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_19_T = bits(ingress1_4.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[19] <= _io_validout64_19_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_5_io_in4_0_T = cat(io.validin64[20], io.in64[20]) @[Cat.scala 30:58]
    ingress1_5.io.in4[0] <= _ingress1_5_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_5_T = bits(ingress1_5.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[5] <= _io_out64_5_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_20_T = bits(ingress1_5.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[20] <= _io_validout64_20_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_5_io_in4_1_T = cat(io.validin64[21], io.in64[21]) @[Cat.scala 30:58]
    ingress1_5.io.in4[1] <= _ingress1_5_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_21_T = bits(ingress1_5.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[21] <= _io_out64_21_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_21_T = bits(ingress1_5.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[21] <= _io_validout64_21_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_5_io_in4_2_T = cat(io.validin64[22], io.in64[22]) @[Cat.scala 30:58]
    ingress1_5.io.in4[2] <= _ingress1_5_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_37_T = bits(ingress1_5.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[37] <= _io_out64_37_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_22_T = bits(ingress1_5.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[22] <= _io_validout64_22_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_5_io_in4_3_T = cat(io.validin64[23], io.in64[23]) @[Cat.scala 30:58]
    ingress1_5.io.in4[3] <= _ingress1_5_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_53_T = bits(ingress1_5.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[53] <= _io_out64_53_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_23_T = bits(ingress1_5.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[23] <= _io_validout64_23_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_6_io_in4_0_T = cat(io.validin64[24], io.in64[24]) @[Cat.scala 30:58]
    ingress1_6.io.in4[0] <= _ingress1_6_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_6_T = bits(ingress1_6.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[6] <= _io_out64_6_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_24_T = bits(ingress1_6.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[24] <= _io_validout64_24_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_6_io_in4_1_T = cat(io.validin64[25], io.in64[25]) @[Cat.scala 30:58]
    ingress1_6.io.in4[1] <= _ingress1_6_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_22_T = bits(ingress1_6.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[22] <= _io_out64_22_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_25_T = bits(ingress1_6.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[25] <= _io_validout64_25_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_6_io_in4_2_T = cat(io.validin64[26], io.in64[26]) @[Cat.scala 30:58]
    ingress1_6.io.in4[2] <= _ingress1_6_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_38_T = bits(ingress1_6.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[38] <= _io_out64_38_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_26_T = bits(ingress1_6.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[26] <= _io_validout64_26_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_6_io_in4_3_T = cat(io.validin64[27], io.in64[27]) @[Cat.scala 30:58]
    ingress1_6.io.in4[3] <= _ingress1_6_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_54_T = bits(ingress1_6.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[54] <= _io_out64_54_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_27_T = bits(ingress1_6.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[27] <= _io_validout64_27_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_7_io_in4_0_T = cat(io.validin64[28], io.in64[28]) @[Cat.scala 30:58]
    ingress1_7.io.in4[0] <= _ingress1_7_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_7_T = bits(ingress1_7.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[7] <= _io_out64_7_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_28_T = bits(ingress1_7.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[28] <= _io_validout64_28_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_7_io_in4_1_T = cat(io.validin64[29], io.in64[29]) @[Cat.scala 30:58]
    ingress1_7.io.in4[1] <= _ingress1_7_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_23_T = bits(ingress1_7.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[23] <= _io_out64_23_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_29_T = bits(ingress1_7.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[29] <= _io_validout64_29_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_7_io_in4_2_T = cat(io.validin64[30], io.in64[30]) @[Cat.scala 30:58]
    ingress1_7.io.in4[2] <= _ingress1_7_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_39_T = bits(ingress1_7.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[39] <= _io_out64_39_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_30_T = bits(ingress1_7.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[30] <= _io_validout64_30_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_7_io_in4_3_T = cat(io.validin64[31], io.in64[31]) @[Cat.scala 30:58]
    ingress1_7.io.in4[3] <= _ingress1_7_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_55_T = bits(ingress1_7.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[55] <= _io_out64_55_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_31_T = bits(ingress1_7.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[31] <= _io_validout64_31_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_8_io_in4_0_T = cat(io.validin64[32], io.in64[32]) @[Cat.scala 30:58]
    ingress1_8.io.in4[0] <= _ingress1_8_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_8_T = bits(ingress1_8.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[8] <= _io_out64_8_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_32_T = bits(ingress1_8.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[32] <= _io_validout64_32_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_8_io_in4_1_T = cat(io.validin64[33], io.in64[33]) @[Cat.scala 30:58]
    ingress1_8.io.in4[1] <= _ingress1_8_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_24_T = bits(ingress1_8.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[24] <= _io_out64_24_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_33_T = bits(ingress1_8.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[33] <= _io_validout64_33_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_8_io_in4_2_T = cat(io.validin64[34], io.in64[34]) @[Cat.scala 30:58]
    ingress1_8.io.in4[2] <= _ingress1_8_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_40_T = bits(ingress1_8.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[40] <= _io_out64_40_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_34_T = bits(ingress1_8.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[34] <= _io_validout64_34_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_8_io_in4_3_T = cat(io.validin64[35], io.in64[35]) @[Cat.scala 30:58]
    ingress1_8.io.in4[3] <= _ingress1_8_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_56_T = bits(ingress1_8.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[56] <= _io_out64_56_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_35_T = bits(ingress1_8.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[35] <= _io_validout64_35_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_9_io_in4_0_T = cat(io.validin64[36], io.in64[36]) @[Cat.scala 30:58]
    ingress1_9.io.in4[0] <= _ingress1_9_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_9_T = bits(ingress1_9.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[9] <= _io_out64_9_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_36_T = bits(ingress1_9.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[36] <= _io_validout64_36_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_9_io_in4_1_T = cat(io.validin64[37], io.in64[37]) @[Cat.scala 30:58]
    ingress1_9.io.in4[1] <= _ingress1_9_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_25_T = bits(ingress1_9.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[25] <= _io_out64_25_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_37_T = bits(ingress1_9.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[37] <= _io_validout64_37_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_9_io_in4_2_T = cat(io.validin64[38], io.in64[38]) @[Cat.scala 30:58]
    ingress1_9.io.in4[2] <= _ingress1_9_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_41_T = bits(ingress1_9.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[41] <= _io_out64_41_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_38_T = bits(ingress1_9.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[38] <= _io_validout64_38_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_9_io_in4_3_T = cat(io.validin64[39], io.in64[39]) @[Cat.scala 30:58]
    ingress1_9.io.in4[3] <= _ingress1_9_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_57_T = bits(ingress1_9.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[57] <= _io_out64_57_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_39_T = bits(ingress1_9.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[39] <= _io_validout64_39_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_10_io_in4_0_T = cat(io.validin64[40], io.in64[40]) @[Cat.scala 30:58]
    ingress1_10.io.in4[0] <= _ingress1_10_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_10_T = bits(ingress1_10.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[10] <= _io_out64_10_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_40_T = bits(ingress1_10.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[40] <= _io_validout64_40_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_10_io_in4_1_T = cat(io.validin64[41], io.in64[41]) @[Cat.scala 30:58]
    ingress1_10.io.in4[1] <= _ingress1_10_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_26_T = bits(ingress1_10.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[26] <= _io_out64_26_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_41_T = bits(ingress1_10.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[41] <= _io_validout64_41_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_10_io_in4_2_T = cat(io.validin64[42], io.in64[42]) @[Cat.scala 30:58]
    ingress1_10.io.in4[2] <= _ingress1_10_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_42_T = bits(ingress1_10.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[42] <= _io_out64_42_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_42_T = bits(ingress1_10.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[42] <= _io_validout64_42_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_10_io_in4_3_T = cat(io.validin64[43], io.in64[43]) @[Cat.scala 30:58]
    ingress1_10.io.in4[3] <= _ingress1_10_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_58_T = bits(ingress1_10.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[58] <= _io_out64_58_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_43_T = bits(ingress1_10.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[43] <= _io_validout64_43_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_11_io_in4_0_T = cat(io.validin64[44], io.in64[44]) @[Cat.scala 30:58]
    ingress1_11.io.in4[0] <= _ingress1_11_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_11_T = bits(ingress1_11.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[11] <= _io_out64_11_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_44_T = bits(ingress1_11.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[44] <= _io_validout64_44_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_11_io_in4_1_T = cat(io.validin64[45], io.in64[45]) @[Cat.scala 30:58]
    ingress1_11.io.in4[1] <= _ingress1_11_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_27_T = bits(ingress1_11.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[27] <= _io_out64_27_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_45_T = bits(ingress1_11.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[45] <= _io_validout64_45_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_11_io_in4_2_T = cat(io.validin64[46], io.in64[46]) @[Cat.scala 30:58]
    ingress1_11.io.in4[2] <= _ingress1_11_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_43_T = bits(ingress1_11.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[43] <= _io_out64_43_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_46_T = bits(ingress1_11.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[46] <= _io_validout64_46_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_11_io_in4_3_T = cat(io.validin64[47], io.in64[47]) @[Cat.scala 30:58]
    ingress1_11.io.in4[3] <= _ingress1_11_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_59_T = bits(ingress1_11.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[59] <= _io_out64_59_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_47_T = bits(ingress1_11.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[47] <= _io_validout64_47_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_12_io_in4_0_T = cat(io.validin64[48], io.in64[48]) @[Cat.scala 30:58]
    ingress1_12.io.in4[0] <= _ingress1_12_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_12_T = bits(ingress1_12.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[12] <= _io_out64_12_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_48_T = bits(ingress1_12.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[48] <= _io_validout64_48_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_12_io_in4_1_T = cat(io.validin64[49], io.in64[49]) @[Cat.scala 30:58]
    ingress1_12.io.in4[1] <= _ingress1_12_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_28_T = bits(ingress1_12.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[28] <= _io_out64_28_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_49_T = bits(ingress1_12.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[49] <= _io_validout64_49_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_12_io_in4_2_T = cat(io.validin64[50], io.in64[50]) @[Cat.scala 30:58]
    ingress1_12.io.in4[2] <= _ingress1_12_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_44_T = bits(ingress1_12.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[44] <= _io_out64_44_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_50_T = bits(ingress1_12.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[50] <= _io_validout64_50_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_12_io_in4_3_T = cat(io.validin64[51], io.in64[51]) @[Cat.scala 30:58]
    ingress1_12.io.in4[3] <= _ingress1_12_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_60_T = bits(ingress1_12.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[60] <= _io_out64_60_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_51_T = bits(ingress1_12.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[51] <= _io_validout64_51_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_13_io_in4_0_T = cat(io.validin64[52], io.in64[52]) @[Cat.scala 30:58]
    ingress1_13.io.in4[0] <= _ingress1_13_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_13_T = bits(ingress1_13.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[13] <= _io_out64_13_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_52_T = bits(ingress1_13.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[52] <= _io_validout64_52_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_13_io_in4_1_T = cat(io.validin64[53], io.in64[53]) @[Cat.scala 30:58]
    ingress1_13.io.in4[1] <= _ingress1_13_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_29_T = bits(ingress1_13.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[29] <= _io_out64_29_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_53_T = bits(ingress1_13.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[53] <= _io_validout64_53_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_13_io_in4_2_T = cat(io.validin64[54], io.in64[54]) @[Cat.scala 30:58]
    ingress1_13.io.in4[2] <= _ingress1_13_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_45_T = bits(ingress1_13.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[45] <= _io_out64_45_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_54_T = bits(ingress1_13.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[54] <= _io_validout64_54_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_13_io_in4_3_T = cat(io.validin64[55], io.in64[55]) @[Cat.scala 30:58]
    ingress1_13.io.in4[3] <= _ingress1_13_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_61_T = bits(ingress1_13.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[61] <= _io_out64_61_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_55_T = bits(ingress1_13.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[55] <= _io_validout64_55_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_14_io_in4_0_T = cat(io.validin64[56], io.in64[56]) @[Cat.scala 30:58]
    ingress1_14.io.in4[0] <= _ingress1_14_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_14_T = bits(ingress1_14.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[14] <= _io_out64_14_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_56_T = bits(ingress1_14.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[56] <= _io_validout64_56_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_14_io_in4_1_T = cat(io.validin64[57], io.in64[57]) @[Cat.scala 30:58]
    ingress1_14.io.in4[1] <= _ingress1_14_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_30_T = bits(ingress1_14.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[30] <= _io_out64_30_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_57_T = bits(ingress1_14.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[57] <= _io_validout64_57_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_14_io_in4_2_T = cat(io.validin64[58], io.in64[58]) @[Cat.scala 30:58]
    ingress1_14.io.in4[2] <= _ingress1_14_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_46_T = bits(ingress1_14.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[46] <= _io_out64_46_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_58_T = bits(ingress1_14.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[58] <= _io_validout64_58_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_14_io_in4_3_T = cat(io.validin64[59], io.in64[59]) @[Cat.scala 30:58]
    ingress1_14.io.in4[3] <= _ingress1_14_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_62_T = bits(ingress1_14.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[62] <= _io_out64_62_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_59_T = bits(ingress1_14.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[59] <= _io_validout64_59_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_15_io_in4_0_T = cat(io.validin64[60], io.in64[60]) @[Cat.scala 30:58]
    ingress1_15.io.in4[0] <= _ingress1_15_io_in4_0_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_15_T = bits(ingress1_15.io.out4[0], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[15] <= _io_out64_15_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_60_T = bits(ingress1_15.io.out4[0], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[60] <= _io_validout64_60_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_15_io_in4_1_T = cat(io.validin64[61], io.in64[61]) @[Cat.scala 30:58]
    ingress1_15.io.in4[1] <= _ingress1_15_io_in4_1_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_31_T = bits(ingress1_15.io.out4[1], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[31] <= _io_out64_31_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_61_T = bits(ingress1_15.io.out4[1], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[61] <= _io_validout64_61_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_15_io_in4_2_T = cat(io.validin64[62], io.in64[62]) @[Cat.scala 30:58]
    ingress1_15.io.in4[2] <= _ingress1_15_io_in4_2_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_47_T = bits(ingress1_15.io.out4[2], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[47] <= _io_out64_47_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_62_T = bits(ingress1_15.io.out4[2], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[62] <= _io_validout64_62_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_15_io_in4_3_T = cat(io.validin64[63], io.in64[63]) @[Cat.scala 30:58]
    ingress1_15.io.in4[3] <= _ingress1_15_io_in4_3_T @[BuildingBlockNew.scala 36:29]
    node _io_out64_63_T = bits(ingress1_15.io.out4[3], 63, 0) @[BuildingBlockNew.scala 37:49]
    io.out64[63] <= _io_out64_63_T @[BuildingBlockNew.scala 37:24]
    node _io_validout64_63_T = bits(ingress1_15.io.out4[3], 64, 64) @[BuildingBlockNew.scala 38:53]
    io.validout64[63] <= _io_validout64_63_T @[BuildingBlockNew.scala 38:28]
    node _ingress1_0_io_ctrl_T = bits(ctrl_reg, 127, 120) @[BuildingBlockNew.scala 42:36]
    ingress1_0.io.ctrl <= _ingress1_0_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_1_io_ctrl_T = bits(ctrl_reg, 119, 112) @[BuildingBlockNew.scala 42:36]
    ingress1_1.io.ctrl <= _ingress1_1_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_2_io_ctrl_T = bits(ctrl_reg, 111, 104) @[BuildingBlockNew.scala 42:36]
    ingress1_2.io.ctrl <= _ingress1_2_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_3_io_ctrl_T = bits(ctrl_reg, 103, 96) @[BuildingBlockNew.scala 42:36]
    ingress1_3.io.ctrl <= _ingress1_3_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_4_io_ctrl_T = bits(ctrl_reg, 95, 88) @[BuildingBlockNew.scala 42:36]
    ingress1_4.io.ctrl <= _ingress1_4_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_5_io_ctrl_T = bits(ctrl_reg, 87, 80) @[BuildingBlockNew.scala 42:36]
    ingress1_5.io.ctrl <= _ingress1_5_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_6_io_ctrl_T = bits(ctrl_reg, 79, 72) @[BuildingBlockNew.scala 42:36]
    ingress1_6.io.ctrl <= _ingress1_6_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_7_io_ctrl_T = bits(ctrl_reg, 71, 64) @[BuildingBlockNew.scala 42:36]
    ingress1_7.io.ctrl <= _ingress1_7_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_8_io_ctrl_T = bits(ctrl_reg, 63, 56) @[BuildingBlockNew.scala 42:36]
    ingress1_8.io.ctrl <= _ingress1_8_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_9_io_ctrl_T = bits(ctrl_reg, 55, 48) @[BuildingBlockNew.scala 42:36]
    ingress1_9.io.ctrl <= _ingress1_9_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_10_io_ctrl_T = bits(ctrl_reg, 47, 40) @[BuildingBlockNew.scala 42:36]
    ingress1_10.io.ctrl <= _ingress1_10_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_11_io_ctrl_T = bits(ctrl_reg, 39, 32) @[BuildingBlockNew.scala 42:36]
    ingress1_11.io.ctrl <= _ingress1_11_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_12_io_ctrl_T = bits(ctrl_reg, 31, 24) @[BuildingBlockNew.scala 42:36]
    ingress1_12.io.ctrl <= _ingress1_12_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_13_io_ctrl_T = bits(ctrl_reg, 23, 16) @[BuildingBlockNew.scala 42:36]
    ingress1_13.io.ctrl <= _ingress1_13_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_14_io_ctrl_T = bits(ctrl_reg, 15, 8) @[BuildingBlockNew.scala 42:36]
    ingress1_14.io.ctrl <= _ingress1_14_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    node _ingress1_15_io_ctrl_T = bits(ctrl_reg, 7, 0) @[BuildingBlockNew.scala 42:36]
    ingress1_15.io.ctrl <= _ingress1_15_io_ctrl_T @[BuildingBlockNew.scala 42:25]
    
