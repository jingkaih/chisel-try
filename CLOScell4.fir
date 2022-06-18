;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit CLOScell4 : 
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
    input reset : UInt<1>
    output io : {flip in4 : UInt<65>[4], out4 : UInt<65>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch @[BuildingBlock.scala 18:21]
    CrossBarSwitch.clock <= clock
    CrossBarSwitch.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[BuildingBlock.scala 20:31]
    CrossBarSwitch.io.select[0] <= _T @[BuildingBlock.scala 20:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[BuildingBlock.scala 20:31]
    CrossBarSwitch.io.select[1] <= _T_1 @[BuildingBlock.scala 20:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[BuildingBlock.scala 20:31]
    CrossBarSwitch.io.select[2] <= _T_2 @[BuildingBlock.scala 20:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[BuildingBlock.scala 20:31]
    CrossBarSwitch.io.select[3] <= _T_3 @[BuildingBlock.scala 20:21]
    CrossBarSwitch.io.fw_left[0] <= io.in4[0] @[BuildingBlock.scala 22:17]
    CrossBarSwitch.io.fw_left[1] <= io.in4[1] @[BuildingBlock.scala 22:17]
    CrossBarSwitch.io.fw_left[2] <= io.in4[2] @[BuildingBlock.scala 22:17]
    CrossBarSwitch.io.fw_left[3] <= io.in4[3] @[BuildingBlock.scala 22:17]
    io.out4[0] <= CrossBarSwitch.io.fw_bottom[0] @[BuildingBlock.scala 23:11]
    io.out4[1] <= CrossBarSwitch.io.fw_bottom[1] @[BuildingBlock.scala 23:11]
    io.out4[2] <= CrossBarSwitch.io.fw_bottom[2] @[BuildingBlock.scala 23:11]
    io.out4[3] <= CrossBarSwitch.io.fw_bottom[3] @[BuildingBlock.scala 23:11]
    
