;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit CLOS16New : 
  module CrossBarCell : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_1 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_2 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_3 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_4 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_5 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_6 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_7 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_8 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_9 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_10 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_11 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_12 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_13 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_14 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_15 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_25 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_26 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_27 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_28 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_29 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_30 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_31 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_16 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_17 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_18 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_19 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_20 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_21 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_22 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_23 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_24 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_25 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_26 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_27 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_28 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_29 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_30 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_31 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_1 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_32 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_33 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_34 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_35 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_36 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_37 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_38 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_39 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_40 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_41 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_42 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_43 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_44 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_45 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_46 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_47 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_32 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_33 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_34 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_35 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_36 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_37 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_38 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_39 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_40 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_41 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_42 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_43 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_44 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_45 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_46 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_47 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_2 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_48 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_49 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_50 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_51 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_52 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_53 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_54 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_55 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_56 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_57 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_58 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_59 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_60 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_61 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_62 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_63 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_48 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_49 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_50 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_51 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_52 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_53 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_54 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_55 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_56 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_57 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_58 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_59 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_60 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_61 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_62 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_63 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_3 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_64 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_65 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_66 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_67 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_68 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_69 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_70 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_71 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_72 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_73 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_74 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_75 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_76 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_77 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_78 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_79 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_64 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_65 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_66 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_67 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_68 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_69 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_70 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_71 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_72 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_73 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_74 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_75 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_76 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_77 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_78 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_79 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_4 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_80 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_81 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_82 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_83 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_84 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_85 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_86 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_87 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_88 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_89 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_90 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_91 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_92 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_93 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_94 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_95 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_80 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_81 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_82 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_83 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_84 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_85 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_86 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_87 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_88 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_89 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_90 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_91 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_92 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_93 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_94 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_95 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_5 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_96 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_97 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_98 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_99 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_100 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_101 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_102 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_103 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_104 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_105 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_106 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_107 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_108 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_109 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_110 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_111 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_96 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_97 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_98 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_99 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_100 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_101 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_102 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_103 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_104 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_105 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_106 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_107 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_108 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_109 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_110 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_111 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_6 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_112 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_113 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_114 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_115 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_116 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_117 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_118 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_119 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_120 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_121 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_122 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_123 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_124 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_125 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_126 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_127 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_112 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_113 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_114 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_115 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_116 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_117 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_118 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_119 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_120 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_121 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_122 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_123 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_124 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_125 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_126 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_127 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_7 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_128 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_129 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_130 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_131 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_132 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_133 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_134 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_135 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_136 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_137 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_138 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_139 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_140 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_141 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_142 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_143 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_128 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_129 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_130 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_131 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_132 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_133 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_134 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_135 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_136 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_137 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_138 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_139 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_140 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_141 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_142 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_143 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_8 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_144 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_145 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_146 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_147 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_148 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_149 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_150 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_151 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_152 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_153 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_154 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_155 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_156 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_157 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_158 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_159 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_144 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_145 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_146 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_147 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_148 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_149 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_150 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_151 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_152 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_153 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_154 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_155 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_156 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_157 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_158 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_159 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_9 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_160 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_161 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_162 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_163 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_164 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_165 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_166 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_167 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_168 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_169 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_170 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_171 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_172 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_173 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_174 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_175 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_160 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_161 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_162 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_163 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_164 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_165 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_166 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_167 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_168 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_169 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_170 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_171 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_172 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_173 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_174 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_175 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_10 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CrossBarCell_176 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_177 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_178 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_179 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_180 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_181 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_182 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_183 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_184 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_185 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_186 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_187 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_188 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_189 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_190 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarCell_191 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
    io.fw_right <= io.fw_left @[CrossBarSwitchNew.scala 14:15]
    when io.sel : @[CrossBarSwitchNew.scala 15:17]
      io.fw_bottom <= io.fw_left @[CrossBarSwitchNew.scala 16:18]
      skip @[CrossBarSwitchNew.scala 15:17]
    else : @[CrossBarSwitchNew.scala 17:16]
      io.fw_bottom <= io.fw_top @[CrossBarSwitchNew.scala 18:18]
      skip @[CrossBarSwitchNew.scala 17:16]
    
  module CrossBarSwitchNew_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    inst cells_2d_0 of CrossBarCell_176 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_177 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_178 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_179 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_180 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_181 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_182 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_183 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_184 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_185 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_186 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_187 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_188 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_189 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_190 @[CrossBarSwitchNew.scala 38:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_191 @[CrossBarSwitchNew.scala 38:53]
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
    cells_2d_0.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_0.io.fw_left <= io.fw_left[0] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_0_io_sel_T = bits(select_onehot_0, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_0.io.sel <= _cells_2d_0_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_1.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_1.io.fw_left <= cells_2d_0.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_1_io_sel_T = bits(select_onehot_1, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_1.io.sel <= _cells_2d_1_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_2.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_2.io.fw_left <= cells_2d_1.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_2_io_sel_T = bits(select_onehot_2, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_2.io.sel <= _cells_2d_2_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_3.io.fw_top <= UInt<1>("h00") @[CrossBarSwitchNew.scala 56:28]
    cells_2d_3.io.fw_left <= cells_2d_2.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_3_io_sel_T = bits(select_onehot_3, 0, 0) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_3.io.sel <= _cells_2d_3_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_4.io.fw_top <= cells_2d_0.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_4.io.fw_left <= io.fw_left[1] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_4_io_sel_T = bits(select_onehot_0, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_4.io.sel <= _cells_2d_4_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_5.io.fw_top <= cells_2d_1.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_5.io.fw_left <= cells_2d_4.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_5_io_sel_T = bits(select_onehot_1, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_5.io.sel <= _cells_2d_5_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_6.io.fw_top <= cells_2d_2.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_6.io.fw_left <= cells_2d_5.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_6_io_sel_T = bits(select_onehot_2, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_6.io.sel <= _cells_2d_6_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_7.io.fw_top <= cells_2d_3.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_7.io.fw_left <= cells_2d_6.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_7_io_sel_T = bits(select_onehot_3, 1, 1) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_7.io.sel <= _cells_2d_7_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_8.io.fw_top <= cells_2d_4.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_8.io.fw_left <= io.fw_left[2] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_8_io_sel_T = bits(select_onehot_0, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_8.io.sel <= _cells_2d_8_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_9.io.fw_top <= cells_2d_5.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_9.io.fw_left <= cells_2d_8.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_9_io_sel_T = bits(select_onehot_1, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_9.io.sel <= _cells_2d_9_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_10.io.fw_top <= cells_2d_6.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_10.io.fw_left <= cells_2d_9.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_10_io_sel_T = bits(select_onehot_2, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_10.io.sel <= _cells_2d_10_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_11.io.fw_top <= cells_2d_7.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_11.io.fw_left <= cells_2d_10.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_11_io_sel_T = bits(select_onehot_3, 2, 2) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_11.io.sel <= _cells_2d_11_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_12.io.fw_top <= cells_2d_8.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_12.io.fw_left <= io.fw_left[3] @[CrossBarSwitchNew.scala 63:29]
    node _cells_2d_12_io_sel_T = bits(select_onehot_0, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_12.io.sel <= _cells_2d_12_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_13.io.fw_top <= cells_2d_9.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_13.io.fw_left <= cells_2d_12.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_13_io_sel_T = bits(select_onehot_1, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_13.io.sel <= _cells_2d_13_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_14.io.fw_top <= cells_2d_10.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_14.io.fw_left <= cells_2d_13.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_14_io_sel_T = bits(select_onehot_2, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_14.io.sel <= _cells_2d_14_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    cells_2d_15.io.fw_top <= cells_2d_11.io.fw_bottom @[CrossBarSwitchNew.scala 59:28]
    cells_2d_15.io.fw_left <= cells_2d_14.io.fw_right @[CrossBarSwitchNew.scala 66:29]
    node _cells_2d_15_io_sel_T = bits(select_onehot_3, 3, 3) @[CrossBarSwitchNew.scala 70:44]
    cells_2d_15.io.sel <= _cells_2d_15_io_sel_T @[CrossBarSwitchNew.scala 70:25]
    io.fw_bottom[0] <= cells_2d_12.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[1] <= cells_2d_13.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[2] <= cells_2d_14.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    io.fw_bottom[3] <= cells_2d_15.io.fw_bottom @[CrossBarSwitchNew.scala 77:21]
    
  module CLOScell4New_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip input : UInt<64>[4], output : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitchNew of CrossBarSwitchNew_11 @[CLOS16New.scala 15:21]
    CrossBarSwitchNew.clock <= clock
    CrossBarSwitchNew.reset <= reset
    node _T = bits(io.ctrl, 7, 6) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[0] <= _T @[CLOS16New.scala 17:21]
    node _T_1 = bits(io.ctrl, 5, 4) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[1] <= _T_1 @[CLOS16New.scala 17:21]
    node _T_2 = bits(io.ctrl, 3, 2) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[2] <= _T_2 @[CLOS16New.scala 17:21]
    node _T_3 = bits(io.ctrl, 1, 0) @[CLOS16New.scala 17:31]
    CrossBarSwitchNew.io.select[3] <= _T_3 @[CLOS16New.scala 17:21]
    CrossBarSwitchNew.io.fw_left[0] <= io.input[0] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[1] <= io.input[1] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[2] <= io.input[2] @[CLOS16New.scala 19:17]
    CrossBarSwitchNew.io.fw_left[3] <= io.input[3] @[CLOS16New.scala 19:17]
    io.output[0] <= CrossBarSwitchNew.io.fw_bottom[0] @[CLOS16New.scala 20:12]
    io.output[1] <= CrossBarSwitchNew.io.fw_bottom[1] @[CLOS16New.scala 20:12]
    io.output[2] <= CrossBarSwitchNew.io.fw_bottom[2] @[CLOS16New.scala 20:12]
    io.output[3] <= CrossBarSwitchNew.io.fw_bottom[3] @[CLOS16New.scala 20:12]
    
  module CLOS16New : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip input : UInt<64>[16], output : UInt<64>[16], flip ctrl : UInt<64>}
    
    reg configure_en : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[CLOS16New.scala 31:29]
    reg instruction_reg : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[CLOS16New.scala 32:32]
    node _T = bits(io.ctrl, 63, 63) @[CLOS16New.scala 33:16]
    node _T_1 = eq(_T, UInt<1>("h01")) @[CLOS16New.scala 33:21]
    when _T_1 : @[CLOS16New.scala 33:30]
      configure_en <= UInt<1>("h01") @[CLOS16New.scala 34:18]
      instruction_reg <= io.ctrl @[CLOS16New.scala 35:21]
      skip @[CLOS16New.scala 33:30]
    else : @[CLOS16New.scala 36:15]
      configure_en <= UInt<1>("h00") @[CLOS16New.scala 37:18]
      instruction_reg <= instruction_reg @[CLOS16New.scala 38:21]
      skip @[CLOS16New.scala 36:15]
    inst ingress_0 of CLOScell4New @[CLOS16New.scala 57:50]
    ingress_0.clock <= clock
    ingress_0.reset <= reset
    inst ingress_1 of CLOScell4New_1 @[CLOS16New.scala 57:50]
    ingress_1.clock <= clock
    ingress_1.reset <= reset
    inst ingress_2 of CLOScell4New_2 @[CLOS16New.scala 57:50]
    ingress_2.clock <= clock
    ingress_2.reset <= reset
    inst ingress_3 of CLOScell4New_3 @[CLOS16New.scala 57:50]
    ingress_3.clock <= clock
    ingress_3.reset <= reset
    inst egress_0 of CLOScell4New_4 @[CLOS16New.scala 58:49]
    egress_0.clock <= clock
    egress_0.reset <= reset
    inst egress_1 of CLOScell4New_5 @[CLOS16New.scala 58:49]
    egress_1.clock <= clock
    egress_1.reset <= reset
    inst egress_2 of CLOScell4New_6 @[CLOS16New.scala 58:49]
    egress_2.clock <= clock
    egress_2.reset <= reset
    inst egress_3 of CLOScell4New_7 @[CLOS16New.scala 58:49]
    egress_3.clock <= clock
    egress_3.reset <= reset
    inst middle_0 of CLOScell4New_8 @[CLOS16New.scala 59:49]
    middle_0.clock <= clock
    middle_0.reset <= reset
    inst middle_1 of CLOScell4New_9 @[CLOS16New.scala 59:49]
    middle_1.clock <= clock
    middle_1.reset <= reset
    inst middle_2 of CLOScell4New_10 @[CLOS16New.scala 59:49]
    middle_2.clock <= clock
    middle_2.reset <= reset
    inst middle_3 of CLOScell4New_11 @[CLOS16New.scala 59:49]
    middle_3.clock <= clock
    middle_3.reset <= reset
    reg ingressCtrlReg : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[CLOS16New.scala 61:31]
    reg middleCtrlReg : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[CLOS16New.scala 62:30]
    reg egressCtrlReg : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[CLOS16New.scala 63:30]
    node _ingress_0_io_ctrl_T = bits(ingressCtrlReg, 31, 24) @[CLOS16New.scala 66:43]
    ingress_0.io.ctrl <= _ingress_0_io_ctrl_T @[CLOS16New.scala 66:26]
    node _middle_0_io_ctrl_T = bits(middleCtrlReg, 31, 24) @[CLOS16New.scala 67:41]
    middle_0.io.ctrl <= _middle_0_io_ctrl_T @[CLOS16New.scala 67:25]
    node _egress_0_io_ctrl_T = bits(egressCtrlReg, 31, 24) @[CLOS16New.scala 68:41]
    egress_0.io.ctrl <= _egress_0_io_ctrl_T @[CLOS16New.scala 68:25]
    node _ingress_1_io_ctrl_T = bits(ingressCtrlReg, 23, 16) @[CLOS16New.scala 66:43]
    ingress_1.io.ctrl <= _ingress_1_io_ctrl_T @[CLOS16New.scala 66:26]
    node _middle_1_io_ctrl_T = bits(middleCtrlReg, 23, 16) @[CLOS16New.scala 67:41]
    middle_1.io.ctrl <= _middle_1_io_ctrl_T @[CLOS16New.scala 67:25]
    node _egress_1_io_ctrl_T = bits(egressCtrlReg, 23, 16) @[CLOS16New.scala 68:41]
    egress_1.io.ctrl <= _egress_1_io_ctrl_T @[CLOS16New.scala 68:25]
    node _ingress_2_io_ctrl_T = bits(ingressCtrlReg, 15, 8) @[CLOS16New.scala 66:43]
    ingress_2.io.ctrl <= _ingress_2_io_ctrl_T @[CLOS16New.scala 66:26]
    node _middle_2_io_ctrl_T = bits(middleCtrlReg, 15, 8) @[CLOS16New.scala 67:41]
    middle_2.io.ctrl <= _middle_2_io_ctrl_T @[CLOS16New.scala 67:25]
    node _egress_2_io_ctrl_T = bits(egressCtrlReg, 15, 8) @[CLOS16New.scala 68:41]
    egress_2.io.ctrl <= _egress_2_io_ctrl_T @[CLOS16New.scala 68:25]
    node _ingress_3_io_ctrl_T = bits(ingressCtrlReg, 7, 0) @[CLOS16New.scala 66:43]
    ingress_3.io.ctrl <= _ingress_3_io_ctrl_T @[CLOS16New.scala 66:26]
    node _middle_3_io_ctrl_T = bits(middleCtrlReg, 7, 0) @[CLOS16New.scala 67:41]
    middle_3.io.ctrl <= _middle_3_io_ctrl_T @[CLOS16New.scala 67:25]
    node _egress_3_io_ctrl_T = bits(egressCtrlReg, 7, 0) @[CLOS16New.scala 68:41]
    egress_3.io.ctrl <= _egress_3_io_ctrl_T @[CLOS16New.scala 68:25]
    ingress_0.io.input[0] <= io.input[0] @[CLOS16New.scala 79:30]
    io.output[0] <= egress_0.io.output[0] @[CLOS16New.scala 80:24]
    ingress_0.io.input[1] <= io.input[1] @[CLOS16New.scala 79:30]
    io.output[1] <= egress_0.io.output[1] @[CLOS16New.scala 80:24]
    ingress_0.io.input[2] <= io.input[2] @[CLOS16New.scala 79:30]
    io.output[2] <= egress_0.io.output[2] @[CLOS16New.scala 80:24]
    ingress_0.io.input[3] <= io.input[3] @[CLOS16New.scala 79:30]
    io.output[3] <= egress_0.io.output[3] @[CLOS16New.scala 80:24]
    ingress_1.io.input[0] <= io.input[4] @[CLOS16New.scala 79:30]
    io.output[4] <= egress_1.io.output[0] @[CLOS16New.scala 80:24]
    ingress_1.io.input[1] <= io.input[5] @[CLOS16New.scala 79:30]
    io.output[5] <= egress_1.io.output[1] @[CLOS16New.scala 80:24]
    ingress_1.io.input[2] <= io.input[6] @[CLOS16New.scala 79:30]
    io.output[6] <= egress_1.io.output[2] @[CLOS16New.scala 80:24]
    ingress_1.io.input[3] <= io.input[7] @[CLOS16New.scala 79:30]
    io.output[7] <= egress_1.io.output[3] @[CLOS16New.scala 80:24]
    ingress_2.io.input[0] <= io.input[8] @[CLOS16New.scala 79:30]
    io.output[8] <= egress_2.io.output[0] @[CLOS16New.scala 80:24]
    ingress_2.io.input[1] <= io.input[9] @[CLOS16New.scala 79:30]
    io.output[9] <= egress_2.io.output[1] @[CLOS16New.scala 80:24]
    ingress_2.io.input[2] <= io.input[10] @[CLOS16New.scala 79:30]
    io.output[10] <= egress_2.io.output[2] @[CLOS16New.scala 80:24]
    ingress_2.io.input[3] <= io.input[11] @[CLOS16New.scala 79:30]
    io.output[11] <= egress_2.io.output[3] @[CLOS16New.scala 80:24]
    ingress_3.io.input[0] <= io.input[12] @[CLOS16New.scala 79:30]
    io.output[12] <= egress_3.io.output[0] @[CLOS16New.scala 80:24]
    ingress_3.io.input[1] <= io.input[13] @[CLOS16New.scala 79:30]
    io.output[13] <= egress_3.io.output[1] @[CLOS16New.scala 80:24]
    ingress_3.io.input[2] <= io.input[14] @[CLOS16New.scala 79:30]
    io.output[14] <= egress_3.io.output[2] @[CLOS16New.scala 80:24]
    ingress_3.io.input[3] <= io.input[15] @[CLOS16New.scala 79:30]
    io.output[15] <= egress_3.io.output[3] @[CLOS16New.scala 80:24]
    middle_0.io.input[0] <= ingress_0.io.output[0] @[CLOS16New.scala 87:29]
    egress_0.io.input[0] <= middle_0.io.output[0] @[CLOS16New.scala 88:29]
    middle_0.io.input[1] <= ingress_1.io.output[0] @[CLOS16New.scala 87:29]
    egress_1.io.input[0] <= middle_0.io.output[1] @[CLOS16New.scala 88:29]
    middle_0.io.input[2] <= ingress_2.io.output[0] @[CLOS16New.scala 87:29]
    egress_2.io.input[0] <= middle_0.io.output[2] @[CLOS16New.scala 88:29]
    middle_0.io.input[3] <= ingress_3.io.output[0] @[CLOS16New.scala 87:29]
    egress_3.io.input[0] <= middle_0.io.output[3] @[CLOS16New.scala 88:29]
    middle_1.io.input[0] <= ingress_0.io.output[1] @[CLOS16New.scala 87:29]
    egress_0.io.input[1] <= middle_1.io.output[0] @[CLOS16New.scala 88:29]
    middle_1.io.input[1] <= ingress_1.io.output[1] @[CLOS16New.scala 87:29]
    egress_1.io.input[1] <= middle_1.io.output[1] @[CLOS16New.scala 88:29]
    middle_1.io.input[2] <= ingress_2.io.output[1] @[CLOS16New.scala 87:29]
    egress_2.io.input[1] <= middle_1.io.output[2] @[CLOS16New.scala 88:29]
    middle_1.io.input[3] <= ingress_3.io.output[1] @[CLOS16New.scala 87:29]
    egress_3.io.input[1] <= middle_1.io.output[3] @[CLOS16New.scala 88:29]
    middle_2.io.input[0] <= ingress_0.io.output[2] @[CLOS16New.scala 87:29]
    egress_0.io.input[2] <= middle_2.io.output[0] @[CLOS16New.scala 88:29]
    middle_2.io.input[1] <= ingress_1.io.output[2] @[CLOS16New.scala 87:29]
    egress_1.io.input[2] <= middle_2.io.output[1] @[CLOS16New.scala 88:29]
    middle_2.io.input[2] <= ingress_2.io.output[2] @[CLOS16New.scala 87:29]
    egress_2.io.input[2] <= middle_2.io.output[2] @[CLOS16New.scala 88:29]
    middle_2.io.input[3] <= ingress_3.io.output[2] @[CLOS16New.scala 87:29]
    egress_3.io.input[2] <= middle_2.io.output[3] @[CLOS16New.scala 88:29]
    middle_3.io.input[0] <= ingress_0.io.output[3] @[CLOS16New.scala 87:29]
    egress_0.io.input[3] <= middle_3.io.output[0] @[CLOS16New.scala 88:29]
    middle_3.io.input[1] <= ingress_1.io.output[3] @[CLOS16New.scala 87:29]
    egress_1.io.input[3] <= middle_3.io.output[1] @[CLOS16New.scala 88:29]
    middle_3.io.input[2] <= ingress_2.io.output[3] @[CLOS16New.scala 87:29]
    egress_2.io.input[3] <= middle_3.io.output[2] @[CLOS16New.scala 88:29]
    middle_3.io.input[3] <= ingress_3.io.output[3] @[CLOS16New.scala 87:29]
    egress_3.io.input[3] <= middle_3.io.output[3] @[CLOS16New.scala 88:29]
    node _T_2 = bits(instruction_reg, 58, 57) @[CLOS16New.scala 93:39]
    node _T_3 = eq(_T_2, UInt<1>("h01")) @[CLOS16New.scala 93:47]
    node _T_4 = and(configure_en, _T_3) @[CLOS16New.scala 93:21]
    when _T_4 : @[CLOS16New.scala 93:56]
      node _ingressCtrlReg_T = bits(instruction_reg, 56, 25) @[CLOS16New.scala 97:38]
      ingressCtrlReg <= _ingressCtrlReg_T @[CLOS16New.scala 97:20]
      skip @[CLOS16New.scala 93:56]
    else : @[CLOS16New.scala 98:63]
      node _T_5 = bits(instruction_reg, 58, 57) @[CLOS16New.scala 98:46]
      node _T_6 = eq(_T_5, UInt<2>("h02")) @[CLOS16New.scala 98:54]
      node _T_7 = and(configure_en, _T_6) @[CLOS16New.scala 98:28]
      when _T_7 : @[CLOS16New.scala 98:63]
        node _middleCtrlReg_T = bits(instruction_reg, 56, 25) @[CLOS16New.scala 102:37]
        middleCtrlReg <= _middleCtrlReg_T @[CLOS16New.scala 102:19]
        skip @[CLOS16New.scala 98:63]
      else : @[CLOS16New.scala 103:63]
        node _T_8 = bits(instruction_reg, 58, 57) @[CLOS16New.scala 103:46]
        node _T_9 = eq(_T_8, UInt<2>("h03")) @[CLOS16New.scala 103:54]
        node _T_10 = and(configure_en, _T_9) @[CLOS16New.scala 103:28]
        when _T_10 : @[CLOS16New.scala 103:63]
          node _egressCtrlReg_T = bits(instruction_reg, 56, 25) @[CLOS16New.scala 107:37]
          egressCtrlReg <= _egressCtrlReg_T @[CLOS16New.scala 107:19]
          skip @[CLOS16New.scala 103:63]
    
