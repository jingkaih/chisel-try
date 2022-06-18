module ALU(
  input         clock,
  input         reset,
  input  [6:0]  io_opcode,
  input  [63:0] io_in_a,
  input  [63:0] io_in_b,
  output [63:0] io_out_a,
  output [63:0] io_out_b,
  input         io_validin_a,
  input         io_validin_b,
  output        io_validout_a,
  output        io_validout_b
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] snapshot_a; // @[ALU.scala 23:27]
  reg  snapshot_valid_a; // @[ALU.scala 25:33]
  reg [63:0] temp_result_a; // @[ALU.scala 28:30]
  reg [63:0] temp_result_b; // @[ALU.scala 29:30]
  reg  temp_valid_a; // @[ALU.scala 32:29]
  reg  temp_valid_b; // @[ALU.scala 33:29]
  wire  _T = 7'h0 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_1 = 7'h1 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T = io_in_a & io_in_b; // @[ALU.scala 53:32]
  wire  _temp_valid_a_T = io_validin_a & io_validin_b; // @[ALU.scala 55:36]
  wire  _T_2 = 7'h2 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_3 = 7'h3 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_4 = 7'h4 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_5 = 7'h5 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_6 = 7'h6 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_7 = 7'h7 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_6 = snapshot_a & io_in_b; // @[ALU.scala 107:35]
  wire  _temp_valid_a_T_6 = snapshot_valid_a & io_validin_b; // @[ALU.scala 109:40]
  wire  _T_8 = 7'h8 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_9 = 7'h9 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_10 = 7'ha == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_11 = 7'hb == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_12 = 7'hc == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_13 = 7'hd == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_12 = ~io_in_a; // @[ALU.scala 163:24]
  wire [63:0] _temp_result_a_T_13 = _temp_result_a_T_12 & io_in_b; // @[ALU.scala 163:35]
  wire  _T_14 = 7'he == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_15 = 7'hf == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_16 = 7'h10 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_17 = 7'h11 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_18 = 7'h12 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_19 = 7'h13 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_24 = ~snapshot_a; // @[ALU.scala 217:24]
  wire [63:0] _temp_result_a_T_25 = _temp_result_a_T_24 & io_in_b; // @[ALU.scala 217:36]
  wire  _T_20 = 7'h14 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_21 = 7'h15 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_22 = 7'h16 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_23 = 7'h17 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_24 = 7'h18 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_25 = 7'h19 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_36 = ~io_in_b; // @[ALU.scala 273:34]
  wire [63:0] _temp_result_a_T_37 = io_in_a & _temp_result_a_T_36; // @[ALU.scala 273:32]
  wire  _T_26 = 7'h1a == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_27 = 7'h1b == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_28 = 7'h1c == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_29 = 7'h1d == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_30 = 7'h1e == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_31 = 7'h1f == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_49 = snapshot_a & _temp_result_a_T_36; // @[ALU.scala 327:35]
  wire  _T_32 = 7'h20 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_33 = 7'h21 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_34 = 7'h22 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_35 = 7'h23 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_36 = 7'h24 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_37 = 7'h25 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_61 = ~_temp_result_a_T; // @[ALU.scala 383:24]
  wire  _T_38 = 7'h26 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_39 = 7'h27 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_40 = 7'h28 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_41 = 7'h29 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_42 = 7'h2a == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_43 = 7'h2b == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_73 = ~_temp_result_a_T_6; // @[ALU.scala 437:24]
  wire  _T_44 = 7'h2c == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_45 = 7'h2d == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_46 = 7'h2e == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_47 = 7'h2f == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_48 = 7'h30 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_49 = 7'h31 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_84 = io_in_a | io_in_b; // @[ALU.scala 493:32]
  wire  _T_50 = 7'h32 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_51 = 7'h33 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_52 = 7'h34 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_53 = 7'h35 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_54 = 7'h36 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_55 = 7'h37 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_90 = snapshot_a | io_in_b; // @[ALU.scala 547:35]
  wire  _T_56 = 7'h38 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_57 = 7'h39 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_58 = 7'h3a == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_59 = 7'h3b == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_60 = 7'h3c == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_61 = 7'h3d == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_97 = _temp_result_a_T_12 | io_in_b; // @[ALU.scala 603:35]
  wire  _T_62 = 7'h3e == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_63 = 7'h3f == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_64 = 7'h40 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_65 = 7'h41 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_66 = 7'h42 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_67 = 7'h43 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_109 = _temp_result_a_T_24 | io_in_b; // @[ALU.scala 657:36]
  wire  _T_68 = 7'h44 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_69 = 7'h45 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_70 = 7'h46 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_71 = 7'h47 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_72 = 7'h48 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_73 = 7'h49 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_121 = io_in_a | _temp_result_a_T_36; // @[ALU.scala 713:32]
  wire  _T_74 = 7'h4a == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_75 = 7'h4b == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_76 = 7'h4c == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_77 = 7'h4d == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_78 = 7'h4e == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_79 = 7'h4f == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_133 = snapshot_a | _temp_result_a_T_36; // @[ALU.scala 767:35]
  wire  _T_80 = 7'h50 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_81 = 7'h51 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_82 = 7'h52 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_83 = 7'h53 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_84 = 7'h54 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_85 = 7'h55 == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_145 = ~_temp_result_a_T_84; // @[ALU.scala 823:24]
  wire  _T_86 = 7'h56 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_87 = 7'h57 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_88 = 7'h58 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_89 = 7'h59 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_90 = 7'h5a == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_91 = 7'h5b == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _temp_result_a_T_157 = ~_temp_result_a_T_90; // @[ALU.scala 877:24]
  wire  _T_92 = 7'h5c == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_93 = 7'h5d == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_94 = 7'h5e == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_95 = 7'h5f == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_96 = 7'h60 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_97 = 7'h61 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_98 = 7'h62 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_99 = 7'h63 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_100 = 7'h64 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_101 = 7'h65 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_102 = 7'h66 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_103 = 7'h67 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_104 = 7'h68 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_105 = 7'h69 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_106 = 7'h6a == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_107 = 7'h6b == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_108 = 7'h6c == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_109 = 7'h6d == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_110 = 7'h6e == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_111 = 7'h6f == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_112 = 7'h70 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_113 = 7'h71 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_114 = 7'h72 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_115 = 7'h73 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_116 = 7'h74 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_117 = 7'h75 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_118 = 7'h76 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_119 = 7'h77 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_120 = 7'h78 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_121 = 7'h79 == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_122 = 7'h7a == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_123 = 7'h7b == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_124 = 7'h7c == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_125 = 7'h7d == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_126 = 7'h7e == io_opcode; // @[Conditional.scala 37:30]
  wire  _T_127 = 7'h7f == io_opcode; // @[Conditional.scala 37:30]
  wire [63:0] _GEN_0 = _T_127 ? _temp_result_a_T_157 : temp_result_a; // @[Conditional.scala 39:67 ALU.scala 1204:21 ALU.scala 28:30]
  wire [63:0] _GEN_1 = _T_127 ? io_in_a : temp_result_b; // @[Conditional.scala 39:67 ALU.scala 1205:21 ALU.scala 29:30]
  wire  _GEN_2 = _T_127 ? _temp_valid_a_T_6 : temp_valid_a; // @[Conditional.scala 39:67 ALU.scala 1206:20 ALU.scala 32:29]
  wire  _GEN_3 = _T_127 ? 1'h0 : temp_valid_b; // @[Conditional.scala 39:67 ALU.scala 1207:20 ALU.scala 33:29]
  wire [63:0] _GEN_6 = _T_126 ? _temp_result_a_T_157 : _GEN_0; // @[Conditional.scala 39:67 ALU.scala 1195:21]
  wire [63:0] _GEN_7 = _T_126 ? io_in_a : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 1196:21]
  wire  _GEN_8 = _T_126 ? _temp_valid_a_T_6 : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 1197:20]
  wire  _GEN_9 = _T_126 ? 1'h0 : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 1198:20]
  wire [63:0] _GEN_12 = _T_125 ? _temp_result_a_T_157 : _GEN_6; // @[Conditional.scala 39:67 ALU.scala 1186:21]
  wire [63:0] _GEN_13 = _T_125 ? io_in_a : _GEN_7; // @[Conditional.scala 39:67 ALU.scala 1187:21]
  wire  _GEN_14 = _T_125 ? _temp_valid_a_T_6 : _GEN_8; // @[Conditional.scala 39:67 ALU.scala 1188:20]
  wire  _GEN_15 = _T_125 ? 1'h0 : _GEN_9; // @[Conditional.scala 39:67 ALU.scala 1189:20]
  wire [63:0] _GEN_18 = _T_124 ? _temp_result_a_T_157 : _GEN_12; // @[Conditional.scala 39:67 ALU.scala 1177:21]
  wire [63:0] _GEN_19 = _T_124 ? io_in_a : _GEN_13; // @[Conditional.scala 39:67 ALU.scala 1178:21]
  wire  _GEN_20 = _T_124 ? _temp_valid_a_T_6 : _GEN_14; // @[Conditional.scala 39:67 ALU.scala 1179:20]
  wire  _GEN_21 = _T_124 ? 1'h0 : _GEN_15; // @[Conditional.scala 39:67 ALU.scala 1180:20]
  wire [63:0] _GEN_24 = _T_123 ? _temp_result_a_T_157 : _GEN_18; // @[Conditional.scala 39:67 ALU.scala 1168:21]
  wire [63:0] _GEN_25 = _T_123 ? io_in_a : _GEN_19; // @[Conditional.scala 39:67 ALU.scala 1169:21]
  wire  _GEN_26 = _T_123 ? _temp_valid_a_T_6 : _GEN_20; // @[Conditional.scala 39:67 ALU.scala 1170:20]
  wire  _GEN_27 = _T_123 ? 1'h0 : _GEN_21; // @[Conditional.scala 39:67 ALU.scala 1171:20]
  wire [63:0] _GEN_30 = _T_122 ? _temp_result_a_T_157 : _GEN_24; // @[Conditional.scala 39:67 ALU.scala 1159:21]
  wire [63:0] _GEN_31 = _T_122 ? io_in_a : _GEN_25; // @[Conditional.scala 39:67 ALU.scala 1160:21]
  wire  _GEN_32 = _T_122 ? _temp_valid_a_T_6 : _GEN_26; // @[Conditional.scala 39:67 ALU.scala 1161:20]
  wire  _GEN_33 = _T_122 ? 1'h0 : _GEN_27; // @[Conditional.scala 39:67 ALU.scala 1162:20]
  wire [63:0] _GEN_36 = _T_121 ? _temp_result_a_T_157 : _GEN_30; // @[Conditional.scala 39:67 ALU.scala 1150:21]
  wire [63:0] _GEN_37 = _T_121 ? io_in_a : _GEN_31; // @[Conditional.scala 39:67 ALU.scala 1151:21]
  wire  _GEN_38 = _T_121 ? _temp_valid_a_T_6 : _GEN_32; // @[Conditional.scala 39:67 ALU.scala 1152:20]
  wire  _GEN_39 = _T_121 ? 1'h0 : _GEN_33; // @[Conditional.scala 39:67 ALU.scala 1153:20]
  wire [63:0] _GEN_42 = _T_120 ? _temp_result_a_T_157 : _GEN_36; // @[Conditional.scala 39:67 ALU.scala 1141:21]
  wire [63:0] _GEN_43 = _T_120 ? io_in_a : _GEN_37; // @[Conditional.scala 39:67 ALU.scala 1142:21]
  wire  _GEN_44 = _T_120 ? _temp_valid_a_T_6 : _GEN_38; // @[Conditional.scala 39:67 ALU.scala 1143:20]
  wire  _GEN_45 = _T_120 ? 1'h0 : _GEN_39; // @[Conditional.scala 39:67 ALU.scala 1144:20]
  wire [63:0] _GEN_48 = _T_119 ? _temp_result_a_T_157 : _GEN_42; // @[Conditional.scala 39:67 ALU.scala 1132:21]
  wire [63:0] _GEN_49 = _T_119 ? io_in_a : _GEN_43; // @[Conditional.scala 39:67 ALU.scala 1133:21]
  wire  _GEN_50 = _T_119 ? _temp_valid_a_T_6 : _GEN_44; // @[Conditional.scala 39:67 ALU.scala 1134:20]
  wire  _GEN_51 = _T_119 ? 1'h0 : _GEN_45; // @[Conditional.scala 39:67 ALU.scala 1135:20]
  wire [63:0] _GEN_54 = _T_118 ? _temp_result_a_T_157 : _GEN_48; // @[Conditional.scala 39:67 ALU.scala 1123:21]
  wire [63:0] _GEN_55 = _T_118 ? io_in_a : _GEN_49; // @[Conditional.scala 39:67 ALU.scala 1124:21]
  wire  _GEN_56 = _T_118 ? _temp_valid_a_T_6 : _GEN_50; // @[Conditional.scala 39:67 ALU.scala 1125:20]
  wire  _GEN_57 = _T_118 ? 1'h0 : _GEN_51; // @[Conditional.scala 39:67 ALU.scala 1126:20]
  wire [63:0] _GEN_60 = _T_117 ? _temp_result_a_T_157 : _GEN_54; // @[Conditional.scala 39:67 ALU.scala 1114:21]
  wire [63:0] _GEN_61 = _T_117 ? io_in_a : _GEN_55; // @[Conditional.scala 39:67 ALU.scala 1115:21]
  wire  _GEN_62 = _T_117 ? _temp_valid_a_T_6 : _GEN_56; // @[Conditional.scala 39:67 ALU.scala 1116:20]
  wire  _GEN_63 = _T_117 ? 1'h0 : _GEN_57; // @[Conditional.scala 39:67 ALU.scala 1117:20]
  wire [63:0] _GEN_66 = _T_116 ? _temp_result_a_T_157 : _GEN_60; // @[Conditional.scala 39:67 ALU.scala 1105:21]
  wire [63:0] _GEN_67 = _T_116 ? io_in_a : _GEN_61; // @[Conditional.scala 39:67 ALU.scala 1106:21]
  wire  _GEN_68 = _T_116 ? _temp_valid_a_T_6 : _GEN_62; // @[Conditional.scala 39:67 ALU.scala 1107:20]
  wire  _GEN_69 = _T_116 ? 1'h0 : _GEN_63; // @[Conditional.scala 39:67 ALU.scala 1108:20]
  wire [63:0] _GEN_72 = _T_115 ? _temp_result_a_T_157 : _GEN_66; // @[Conditional.scala 39:67 ALU.scala 1096:21]
  wire [63:0] _GEN_73 = _T_115 ? io_in_a : _GEN_67; // @[Conditional.scala 39:67 ALU.scala 1097:21]
  wire  _GEN_74 = _T_115 ? _temp_valid_a_T_6 : _GEN_68; // @[Conditional.scala 39:67 ALU.scala 1098:20]
  wire  _GEN_75 = _T_115 ? 1'h0 : _GEN_69; // @[Conditional.scala 39:67 ALU.scala 1099:20]
  wire [63:0] _GEN_78 = _T_114 ? _temp_result_a_T_157 : _GEN_72; // @[Conditional.scala 39:67 ALU.scala 1087:21]
  wire [63:0] _GEN_79 = _T_114 ? io_in_a : _GEN_73; // @[Conditional.scala 39:67 ALU.scala 1088:21]
  wire  _GEN_80 = _T_114 ? _temp_valid_a_T_6 : _GEN_74; // @[Conditional.scala 39:67 ALU.scala 1089:20]
  wire  _GEN_81 = _T_114 ? 1'h0 : _GEN_75; // @[Conditional.scala 39:67 ALU.scala 1090:20]
  wire [63:0] _GEN_84 = _T_113 ? _temp_result_a_T_157 : _GEN_78; // @[Conditional.scala 39:67 ALU.scala 1078:21]
  wire [63:0] _GEN_85 = _T_113 ? io_in_a : _GEN_79; // @[Conditional.scala 39:67 ALU.scala 1079:21]
  wire  _GEN_86 = _T_113 ? _temp_valid_a_T_6 : _GEN_80; // @[Conditional.scala 39:67 ALU.scala 1080:20]
  wire  _GEN_87 = _T_113 ? 1'h0 : _GEN_81; // @[Conditional.scala 39:67 ALU.scala 1081:20]
  wire [63:0] _GEN_90 = _T_112 ? _temp_result_a_T_157 : _GEN_84; // @[Conditional.scala 39:67 ALU.scala 1069:21]
  wire [63:0] _GEN_91 = _T_112 ? io_in_a : _GEN_85; // @[Conditional.scala 39:67 ALU.scala 1070:21]
  wire  _GEN_92 = _T_112 ? _temp_valid_a_T_6 : _GEN_86; // @[Conditional.scala 39:67 ALU.scala 1071:20]
  wire  _GEN_93 = _T_112 ? 1'h0 : _GEN_87; // @[Conditional.scala 39:67 ALU.scala 1072:20]
  wire [63:0] _GEN_96 = _T_111 ? _temp_result_a_T_157 : _GEN_90; // @[Conditional.scala 39:67 ALU.scala 1060:21]
  wire [63:0] _GEN_97 = _T_111 ? io_in_a : _GEN_91; // @[Conditional.scala 39:67 ALU.scala 1061:21]
  wire  _GEN_98 = _T_111 ? _temp_valid_a_T_6 : _GEN_92; // @[Conditional.scala 39:67 ALU.scala 1062:20]
  wire  _GEN_99 = _T_111 ? 1'h0 : _GEN_93; // @[Conditional.scala 39:67 ALU.scala 1063:20]
  wire [63:0] _GEN_102 = _T_110 ? _temp_result_a_T_157 : _GEN_96; // @[Conditional.scala 39:67 ALU.scala 1051:21]
  wire [63:0] _GEN_103 = _T_110 ? io_in_a : _GEN_97; // @[Conditional.scala 39:67 ALU.scala 1052:21]
  wire  _GEN_104 = _T_110 ? _temp_valid_a_T_6 : _GEN_98; // @[Conditional.scala 39:67 ALU.scala 1053:20]
  wire  _GEN_105 = _T_110 ? 1'h0 : _GEN_99; // @[Conditional.scala 39:67 ALU.scala 1054:20]
  wire [63:0] _GEN_108 = _T_109 ? _temp_result_a_T_157 : _GEN_102; // @[Conditional.scala 39:67 ALU.scala 1042:21]
  wire [63:0] _GEN_109 = _T_109 ? io_in_a : _GEN_103; // @[Conditional.scala 39:67 ALU.scala 1043:21]
  wire  _GEN_110 = _T_109 ? _temp_valid_a_T_6 : _GEN_104; // @[Conditional.scala 39:67 ALU.scala 1044:20]
  wire  _GEN_111 = _T_109 ? 1'h0 : _GEN_105; // @[Conditional.scala 39:67 ALU.scala 1045:20]
  wire [63:0] _GEN_114 = _T_108 ? _temp_result_a_T_157 : _GEN_108; // @[Conditional.scala 39:67 ALU.scala 1033:21]
  wire [63:0] _GEN_115 = _T_108 ? io_in_a : _GEN_109; // @[Conditional.scala 39:67 ALU.scala 1034:21]
  wire  _GEN_116 = _T_108 ? _temp_valid_a_T_6 : _GEN_110; // @[Conditional.scala 39:67 ALU.scala 1035:20]
  wire  _GEN_117 = _T_108 ? 1'h0 : _GEN_111; // @[Conditional.scala 39:67 ALU.scala 1036:20]
  wire [63:0] _GEN_120 = _T_107 ? _temp_result_a_T_157 : _GEN_114; // @[Conditional.scala 39:67 ALU.scala 1024:21]
  wire [63:0] _GEN_121 = _T_107 ? io_in_a : _GEN_115; // @[Conditional.scala 39:67 ALU.scala 1025:21]
  wire  _GEN_122 = _T_107 ? _temp_valid_a_T_6 : _GEN_116; // @[Conditional.scala 39:67 ALU.scala 1026:20]
  wire  _GEN_123 = _T_107 ? 1'h0 : _GEN_117; // @[Conditional.scala 39:67 ALU.scala 1027:20]
  wire [63:0] _GEN_126 = _T_106 ? _temp_result_a_T_157 : _GEN_120; // @[Conditional.scala 39:67 ALU.scala 1015:21]
  wire [63:0] _GEN_127 = _T_106 ? io_in_a : _GEN_121; // @[Conditional.scala 39:67 ALU.scala 1016:21]
  wire  _GEN_128 = _T_106 ? _temp_valid_a_T_6 : _GEN_122; // @[Conditional.scala 39:67 ALU.scala 1017:20]
  wire  _GEN_129 = _T_106 ? 1'h0 : _GEN_123; // @[Conditional.scala 39:67 ALU.scala 1018:20]
  wire [63:0] _GEN_132 = _T_105 ? _temp_result_a_T_157 : _GEN_126; // @[Conditional.scala 39:67 ALU.scala 1006:21]
  wire [63:0] _GEN_133 = _T_105 ? io_in_a : _GEN_127; // @[Conditional.scala 39:67 ALU.scala 1007:21]
  wire  _GEN_134 = _T_105 ? _temp_valid_a_T_6 : _GEN_128; // @[Conditional.scala 39:67 ALU.scala 1008:20]
  wire  _GEN_135 = _T_105 ? 1'h0 : _GEN_129; // @[Conditional.scala 39:67 ALU.scala 1009:20]
  wire [63:0] _GEN_138 = _T_104 ? _temp_result_a_T_157 : _GEN_132; // @[Conditional.scala 39:67 ALU.scala 997:21]
  wire [63:0] _GEN_139 = _T_104 ? io_in_a : _GEN_133; // @[Conditional.scala 39:67 ALU.scala 998:21]
  wire  _GEN_140 = _T_104 ? _temp_valid_a_T_6 : _GEN_134; // @[Conditional.scala 39:67 ALU.scala 999:20]
  wire  _GEN_141 = _T_104 ? 1'h0 : _GEN_135; // @[Conditional.scala 39:67 ALU.scala 1000:20]
  wire [63:0] _GEN_144 = _T_103 ? _temp_result_a_T_157 : _GEN_138; // @[Conditional.scala 39:67 ALU.scala 988:21]
  wire [63:0] _GEN_145 = _T_103 ? io_in_a : _GEN_139; // @[Conditional.scala 39:67 ALU.scala 989:21]
  wire  _GEN_146 = _T_103 ? _temp_valid_a_T_6 : _GEN_140; // @[Conditional.scala 39:67 ALU.scala 990:20]
  wire  _GEN_147 = _T_103 ? 1'h0 : _GEN_141; // @[Conditional.scala 39:67 ALU.scala 991:20]
  wire [63:0] _GEN_150 = _T_102 ? _temp_result_a_T_157 : _GEN_144; // @[Conditional.scala 39:67 ALU.scala 979:21]
  wire [63:0] _GEN_151 = _T_102 ? io_in_a : _GEN_145; // @[Conditional.scala 39:67 ALU.scala 980:21]
  wire  _GEN_152 = _T_102 ? _temp_valid_a_T_6 : _GEN_146; // @[Conditional.scala 39:67 ALU.scala 981:20]
  wire  _GEN_153 = _T_102 ? 1'h0 : _GEN_147; // @[Conditional.scala 39:67 ALU.scala 982:20]
  wire [63:0] _GEN_156 = _T_101 ? _temp_result_a_T_157 : _GEN_150; // @[Conditional.scala 39:67 ALU.scala 970:21]
  wire [63:0] _GEN_157 = _T_101 ? io_in_a : _GEN_151; // @[Conditional.scala 39:67 ALU.scala 971:21]
  wire  _GEN_158 = _T_101 ? _temp_valid_a_T_6 : _GEN_152; // @[Conditional.scala 39:67 ALU.scala 972:20]
  wire  _GEN_159 = _T_101 ? 1'h0 : _GEN_153; // @[Conditional.scala 39:67 ALU.scala 973:20]
  wire [63:0] _GEN_162 = _T_100 ? _temp_result_a_T_157 : _GEN_156; // @[Conditional.scala 39:67 ALU.scala 961:21]
  wire [63:0] _GEN_163 = _T_100 ? io_in_a : _GEN_157; // @[Conditional.scala 39:67 ALU.scala 962:21]
  wire  _GEN_164 = _T_100 ? _temp_valid_a_T_6 : _GEN_158; // @[Conditional.scala 39:67 ALU.scala 963:20]
  wire  _GEN_165 = _T_100 ? 1'h0 : _GEN_159; // @[Conditional.scala 39:67 ALU.scala 964:20]
  wire [63:0] _GEN_168 = _T_99 ? _temp_result_a_T_157 : _GEN_162; // @[Conditional.scala 39:67 ALU.scala 952:21]
  wire [63:0] _GEN_169 = _T_99 ? io_in_a : _GEN_163; // @[Conditional.scala 39:67 ALU.scala 953:21]
  wire  _GEN_170 = _T_99 ? _temp_valid_a_T_6 : _GEN_164; // @[Conditional.scala 39:67 ALU.scala 954:20]
  wire  _GEN_171 = _T_99 ? 1'h0 : _GEN_165; // @[Conditional.scala 39:67 ALU.scala 955:20]
  wire [63:0] _GEN_174 = _T_98 ? _temp_result_a_T_157 : _GEN_168; // @[Conditional.scala 39:67 ALU.scala 943:21]
  wire [63:0] _GEN_175 = _T_98 ? io_in_a : _GEN_169; // @[Conditional.scala 39:67 ALU.scala 944:21]
  wire  _GEN_176 = _T_98 ? _temp_valid_a_T_6 : _GEN_170; // @[Conditional.scala 39:67 ALU.scala 945:20]
  wire  _GEN_177 = _T_98 ? 1'h0 : _GEN_171; // @[Conditional.scala 39:67 ALU.scala 946:20]
  wire [63:0] _GEN_180 = _T_97 ? _temp_result_a_T_157 : _GEN_174; // @[Conditional.scala 39:67 ALU.scala 934:21]
  wire [63:0] _GEN_181 = _T_97 ? io_in_a : _GEN_175; // @[Conditional.scala 39:67 ALU.scala 935:21]
  wire  _GEN_182 = _T_97 ? _temp_valid_a_T_6 : _GEN_176; // @[Conditional.scala 39:67 ALU.scala 936:20]
  wire  _GEN_183 = _T_97 ? 1'h0 : _GEN_177; // @[Conditional.scala 39:67 ALU.scala 937:20]
  wire [63:0] _GEN_186 = _T_96 ? _temp_result_a_T_157 : _GEN_180; // @[Conditional.scala 39:67 ALU.scala 922:21]
  wire [63:0] _GEN_187 = _T_96 ? io_in_a : _GEN_181; // @[Conditional.scala 39:67 ALU.scala 923:21]
  wire  _GEN_188 = _T_96 ? _temp_valid_a_T_6 : _GEN_182; // @[Conditional.scala 39:67 ALU.scala 924:20]
  wire  _GEN_189 = _T_96 ? 1'h0 : _GEN_183; // @[Conditional.scala 39:67 ALU.scala 925:20]
  wire [63:0] _GEN_192 = _T_95 ? _temp_result_a_T_157 : _GEN_186; // @[Conditional.scala 39:67 ALU.scala 913:21]
  wire [63:0] _GEN_193 = _T_95 ? io_in_a : _GEN_187; // @[Conditional.scala 39:67 ALU.scala 914:21]
  wire  _GEN_194 = _T_95 ? _temp_valid_a_T_6 : _GEN_188; // @[Conditional.scala 39:67 ALU.scala 915:20]
  wire  _GEN_195 = _T_95 ? io_validin_a : _GEN_189; // @[Conditional.scala 39:67 ALU.scala 916:20]
  wire [63:0] _GEN_198 = _T_94 ? _temp_result_a_T_157 : _GEN_192; // @[Conditional.scala 39:67 ALU.scala 904:21]
  wire [63:0] _GEN_199 = _T_94 ? io_in_b : _GEN_193; // @[Conditional.scala 39:67 ALU.scala 905:21]
  wire  _GEN_200 = _T_94 ? _temp_valid_a_T_6 : _GEN_194; // @[Conditional.scala 39:67 ALU.scala 906:20]
  wire  _GEN_201 = _T_94 ? io_validin_b : _GEN_195; // @[Conditional.scala 39:67 ALU.scala 907:20]
  wire [63:0] _GEN_204 = _T_93 ? _temp_result_a_T_157 : _GEN_198; // @[Conditional.scala 39:67 ALU.scala 895:21]
  wire [63:0] _GEN_205 = _T_93 ? io_in_a : _GEN_199; // @[Conditional.scala 39:67 ALU.scala 896:21]
  wire  _GEN_206 = _T_93 ? _temp_valid_a_T_6 : _GEN_200; // @[Conditional.scala 39:67 ALU.scala 897:20]
  wire  _GEN_207 = _T_93 ? 1'h0 : _GEN_201; // @[Conditional.scala 39:67 ALU.scala 898:20]
  wire [63:0] _GEN_208 = _T_93 ? io_in_a : snapshot_a; // @[Conditional.scala 39:67 ALU.scala 900:18]
  wire  _GEN_209 = _T_93 ? io_validin_a : snapshot_valid_a; // @[Conditional.scala 39:67 ALU.scala 901:24]
  wire [63:0] _GEN_210 = _T_92 ? _temp_result_a_T_157 : _GEN_204; // @[Conditional.scala 39:67 ALU.scala 886:21]
  wire [63:0] _GEN_211 = _T_92 ? io_in_a : _GEN_205; // @[Conditional.scala 39:67 ALU.scala 887:21]
  wire  _GEN_212 = _T_92 ? _temp_valid_a_T_6 : _GEN_206; // @[Conditional.scala 39:67 ALU.scala 888:20]
  wire  _GEN_213 = _T_92 ? io_validin_a : _GEN_207; // @[Conditional.scala 39:67 ALU.scala 889:20]
  wire [63:0] _GEN_214 = _T_92 ? io_in_a : _GEN_208; // @[Conditional.scala 39:67 ALU.scala 891:18]
  wire  _GEN_215 = _T_92 ? io_validin_a : _GEN_209; // @[Conditional.scala 39:67 ALU.scala 892:24]
  wire [63:0] _GEN_216 = _T_91 ? _temp_result_a_T_157 : _GEN_210; // @[Conditional.scala 39:67 ALU.scala 877:21]
  wire [63:0] _GEN_217 = _T_91 ? io_in_b : _GEN_211; // @[Conditional.scala 39:67 ALU.scala 878:21]
  wire  _GEN_218 = _T_91 ? _temp_valid_a_T_6 : _GEN_212; // @[Conditional.scala 39:67 ALU.scala 879:20]
  wire  _GEN_219 = _T_91 ? io_validin_b : _GEN_213; // @[Conditional.scala 39:67 ALU.scala 880:20]
  wire [63:0] _GEN_220 = _T_91 ? io_in_a : _GEN_214; // @[Conditional.scala 39:67 ALU.scala 882:18]
  wire  _GEN_221 = _T_91 ? io_validin_a : _GEN_215; // @[Conditional.scala 39:67 ALU.scala 883:24]
  wire [63:0] _GEN_222 = _T_90 ? _temp_result_a_T_145 : _GEN_216; // @[Conditional.scala 39:67 ALU.scala 868:21]
  wire [63:0] _GEN_223 = _T_90 ? io_in_a : _GEN_217; // @[Conditional.scala 39:67 ALU.scala 869:21]
  wire  _GEN_224 = _T_90 ? _temp_valid_a_T : _GEN_218; // @[Conditional.scala 39:67 ALU.scala 870:20]
  wire  _GEN_225 = _T_90 ? 1'h0 : _GEN_219; // @[Conditional.scala 39:67 ALU.scala 871:20]
  wire [63:0] _GEN_226 = _T_90 ? snapshot_a : _GEN_220; // @[Conditional.scala 39:67 ALU.scala 873:18]
  wire  _GEN_227 = _T_90 ? snapshot_valid_a : _GEN_221; // @[Conditional.scala 39:67 ALU.scala 874:24]
  wire [63:0] _GEN_228 = _T_89 ? _temp_result_a_T_145 : _GEN_222; // @[Conditional.scala 39:67 ALU.scala 859:21]
  wire [63:0] _GEN_229 = _T_89 ? io_in_a : _GEN_223; // @[Conditional.scala 39:67 ALU.scala 860:21]
  wire  _GEN_230 = _T_89 ? _temp_valid_a_T : _GEN_224; // @[Conditional.scala 39:67 ALU.scala 861:20]
  wire  _GEN_231 = _T_89 ? io_validin_a : _GEN_225; // @[Conditional.scala 39:67 ALU.scala 862:20]
  wire [63:0] _GEN_232 = _T_89 ? snapshot_a : _GEN_226; // @[Conditional.scala 39:67 ALU.scala 864:18]
  wire  _GEN_233 = _T_89 ? snapshot_valid_a : _GEN_227; // @[Conditional.scala 39:67 ALU.scala 865:24]
  wire [63:0] _GEN_234 = _T_88 ? _temp_result_a_T_145 : _GEN_228; // @[Conditional.scala 39:67 ALU.scala 850:21]
  wire [63:0] _GEN_235 = _T_88 ? io_in_b : _GEN_229; // @[Conditional.scala 39:67 ALU.scala 851:21]
  wire  _GEN_236 = _T_88 ? _temp_valid_a_T : _GEN_230; // @[Conditional.scala 39:67 ALU.scala 852:20]
  wire  _GEN_237 = _T_88 ? io_validin_b : _GEN_231; // @[Conditional.scala 39:67 ALU.scala 853:20]
  wire [63:0] _GEN_238 = _T_88 ? snapshot_a : _GEN_232; // @[Conditional.scala 39:67 ALU.scala 855:18]
  wire  _GEN_239 = _T_88 ? snapshot_valid_a : _GEN_233; // @[Conditional.scala 39:67 ALU.scala 856:24]
  wire [63:0] _GEN_240 = _T_87 ? _temp_result_a_T_145 : _GEN_234; // @[Conditional.scala 39:67 ALU.scala 841:21]
  wire [63:0] _GEN_241 = _T_87 ? io_in_b : _GEN_235; // @[Conditional.scala 39:67 ALU.scala 842:21]
  wire  _GEN_242 = _T_87 ? _temp_valid_a_T : _GEN_236; // @[Conditional.scala 39:67 ALU.scala 843:20]
  wire  _GEN_243 = _T_87 ? 1'h0 : _GEN_237; // @[Conditional.scala 39:67 ALU.scala 844:20]
  wire [63:0] _GEN_244 = _T_87 ? io_in_a : _GEN_238; // @[Conditional.scala 39:67 ALU.scala 846:18]
  wire  _GEN_245 = _T_87 ? io_validin_a : _GEN_239; // @[Conditional.scala 39:67 ALU.scala 847:24]
  wire [63:0] _GEN_246 = _T_86 ? _temp_result_a_T_145 : _GEN_240; // @[Conditional.scala 39:67 ALU.scala 832:21]
  wire [63:0] _GEN_247 = _T_86 ? io_in_a : _GEN_241; // @[Conditional.scala 39:67 ALU.scala 833:21]
  wire  _GEN_248 = _T_86 ? _temp_valid_a_T : _GEN_242; // @[Conditional.scala 39:67 ALU.scala 834:20]
  wire  _GEN_249 = _T_86 ? io_validin_a : _GEN_243; // @[Conditional.scala 39:67 ALU.scala 835:20]
  wire [63:0] _GEN_250 = _T_86 ? io_in_a : _GEN_244; // @[Conditional.scala 39:67 ALU.scala 837:18]
  wire  _GEN_251 = _T_86 ? io_validin_a : _GEN_245; // @[Conditional.scala 39:67 ALU.scala 838:24]
  wire [63:0] _GEN_252 = _T_85 ? _temp_result_a_T_145 : _GEN_246; // @[Conditional.scala 39:67 ALU.scala 823:21]
  wire [63:0] _GEN_253 = _T_85 ? io_in_b : _GEN_247; // @[Conditional.scala 39:67 ALU.scala 824:21]
  wire  _GEN_254 = _T_85 ? _temp_valid_a_T : _GEN_248; // @[Conditional.scala 39:67 ALU.scala 825:20]
  wire  _GEN_255 = _T_85 ? io_validin_b : _GEN_249; // @[Conditional.scala 39:67 ALU.scala 826:20]
  wire [63:0] _GEN_256 = _T_85 ? io_in_a : _GEN_250; // @[Conditional.scala 39:67 ALU.scala 828:18]
  wire  _GEN_257 = _T_85 ? io_validin_a : _GEN_251; // @[Conditional.scala 39:67 ALU.scala 829:24]
  wire [63:0] _GEN_258 = _T_84 ? _temp_result_a_T_133 : _GEN_252; // @[Conditional.scala 39:67 ALU.scala 812:21]
  wire [63:0] _GEN_259 = _T_84 ? io_in_a : _GEN_253; // @[Conditional.scala 39:67 ALU.scala 813:21]
  wire  _GEN_260 = _T_84 ? _temp_valid_a_T_6 : _GEN_254; // @[Conditional.scala 39:67 ALU.scala 814:20]
  wire  _GEN_261 = _T_84 ? 1'h0 : _GEN_255; // @[Conditional.scala 39:67 ALU.scala 815:20]
  wire [63:0] _GEN_262 = _T_84 ? snapshot_a : _GEN_256; // @[Conditional.scala 39:67 ALU.scala 817:18]
  wire  _GEN_263 = _T_84 ? snapshot_valid_a : _GEN_257; // @[Conditional.scala 39:67 ALU.scala 818:24]
  wire [63:0] _GEN_264 = _T_83 ? _temp_result_a_T_133 : _GEN_258; // @[Conditional.scala 39:67 ALU.scala 803:21]
  wire [63:0] _GEN_265 = _T_83 ? io_in_a : _GEN_259; // @[Conditional.scala 39:67 ALU.scala 804:21]
  wire  _GEN_266 = _T_83 ? _temp_valid_a_T_6 : _GEN_260; // @[Conditional.scala 39:67 ALU.scala 805:20]
  wire  _GEN_267 = _T_83 ? io_validin_a : _GEN_261; // @[Conditional.scala 39:67 ALU.scala 806:20]
  wire [63:0] _GEN_268 = _T_83 ? snapshot_a : _GEN_262; // @[Conditional.scala 39:67 ALU.scala 808:18]
  wire  _GEN_269 = _T_83 ? snapshot_valid_a : _GEN_263; // @[Conditional.scala 39:67 ALU.scala 809:24]
  wire [63:0] _GEN_270 = _T_82 ? _temp_result_a_T_133 : _GEN_264; // @[Conditional.scala 39:67 ALU.scala 794:21]
  wire [63:0] _GEN_271 = _T_82 ? io_in_b : _GEN_265; // @[Conditional.scala 39:67 ALU.scala 795:21]
  wire  _GEN_272 = _T_82 ? _temp_valid_a_T_6 : _GEN_266; // @[Conditional.scala 39:67 ALU.scala 796:20]
  wire  _GEN_273 = _T_82 ? io_validin_b : _GEN_267; // @[Conditional.scala 39:67 ALU.scala 797:20]
  wire [63:0] _GEN_274 = _T_82 ? snapshot_a : _GEN_268; // @[Conditional.scala 39:67 ALU.scala 799:18]
  wire  _GEN_275 = _T_82 ? snapshot_valid_a : _GEN_269; // @[Conditional.scala 39:67 ALU.scala 800:24]
  wire [63:0] _GEN_276 = _T_81 ? _temp_result_a_T_133 : _GEN_270; // @[Conditional.scala 39:67 ALU.scala 785:21]
  wire [63:0] _GEN_277 = _T_81 ? io_in_a : _GEN_271; // @[Conditional.scala 39:67 ALU.scala 786:21]
  wire  _GEN_278 = _T_81 ? _temp_valid_a_T_6 : _GEN_272; // @[Conditional.scala 39:67 ALU.scala 787:20]
  wire  _GEN_279 = _T_81 ? 1'h0 : _GEN_273; // @[Conditional.scala 39:67 ALU.scala 788:20]
  wire [63:0] _GEN_280 = _T_81 ? io_in_a : _GEN_274; // @[Conditional.scala 39:67 ALU.scala 790:18]
  wire  _GEN_281 = _T_81 ? io_validin_a : _GEN_275; // @[Conditional.scala 39:67 ALU.scala 791:24]
  wire [63:0] _GEN_282 = _T_80 ? _temp_result_a_T_133 : _GEN_276; // @[Conditional.scala 39:67 ALU.scala 776:21]
  wire [63:0] _GEN_283 = _T_80 ? io_in_a : _GEN_277; // @[Conditional.scala 39:67 ALU.scala 777:21]
  wire  _GEN_284 = _T_80 ? _temp_valid_a_T_6 : _GEN_278; // @[Conditional.scala 39:67 ALU.scala 778:20]
  wire  _GEN_285 = _T_80 ? io_validin_a : _GEN_279; // @[Conditional.scala 39:67 ALU.scala 779:20]
  wire [63:0] _GEN_286 = _T_80 ? io_in_a : _GEN_280; // @[Conditional.scala 39:67 ALU.scala 781:18]
  wire  _GEN_287 = _T_80 ? io_validin_a : _GEN_281; // @[Conditional.scala 39:67 ALU.scala 782:24]
  wire [63:0] _GEN_288 = _T_79 ? _temp_result_a_T_133 : _GEN_282; // @[Conditional.scala 39:67 ALU.scala 767:21]
  wire [63:0] _GEN_289 = _T_79 ? io_in_b : _GEN_283; // @[Conditional.scala 39:67 ALU.scala 768:21]
  wire  _GEN_290 = _T_79 ? _temp_valid_a_T_6 : _GEN_284; // @[Conditional.scala 39:67 ALU.scala 769:20]
  wire  _GEN_291 = _T_79 ? io_validin_b : _GEN_285; // @[Conditional.scala 39:67 ALU.scala 770:20]
  wire [63:0] _GEN_292 = _T_79 ? io_in_a : _GEN_286; // @[Conditional.scala 39:67 ALU.scala 772:18]
  wire  _GEN_293 = _T_79 ? io_validin_a : _GEN_287; // @[Conditional.scala 39:67 ALU.scala 773:24]
  wire [63:0] _GEN_294 = _T_78 ? _temp_result_a_T_121 : _GEN_288; // @[Conditional.scala 39:67 ALU.scala 758:21]
  wire [63:0] _GEN_295 = _T_78 ? io_in_a : _GEN_289; // @[Conditional.scala 39:67 ALU.scala 759:21]
  wire  _GEN_296 = _T_78 ? _temp_valid_a_T : _GEN_290; // @[Conditional.scala 39:67 ALU.scala 760:20]
  wire  _GEN_297 = _T_78 ? 1'h0 : _GEN_291; // @[Conditional.scala 39:67 ALU.scala 761:20]
  wire [63:0] _GEN_298 = _T_78 ? snapshot_a : _GEN_292; // @[Conditional.scala 39:67 ALU.scala 763:18]
  wire  _GEN_299 = _T_78 ? snapshot_valid_a : _GEN_293; // @[Conditional.scala 39:67 ALU.scala 764:24]
  wire [63:0] _GEN_300 = _T_77 ? _temp_result_a_T_121 : _GEN_294; // @[Conditional.scala 39:67 ALU.scala 749:21]
  wire [63:0] _GEN_301 = _T_77 ? io_in_a : _GEN_295; // @[Conditional.scala 39:67 ALU.scala 750:21]
  wire  _GEN_302 = _T_77 ? _temp_valid_a_T : _GEN_296; // @[Conditional.scala 39:67 ALU.scala 751:20]
  wire  _GEN_303 = _T_77 ? io_validin_a : _GEN_297; // @[Conditional.scala 39:67 ALU.scala 752:20]
  wire [63:0] _GEN_304 = _T_77 ? snapshot_a : _GEN_298; // @[Conditional.scala 39:67 ALU.scala 754:18]
  wire  _GEN_305 = _T_77 ? snapshot_valid_a : _GEN_299; // @[Conditional.scala 39:67 ALU.scala 755:24]
  wire [63:0] _GEN_306 = _T_76 ? _temp_result_a_T_121 : _GEN_300; // @[Conditional.scala 39:67 ALU.scala 740:21]
  wire [63:0] _GEN_307 = _T_76 ? io_in_b : _GEN_301; // @[Conditional.scala 39:67 ALU.scala 741:21]
  wire  _GEN_308 = _T_76 ? _temp_valid_a_T : _GEN_302; // @[Conditional.scala 39:67 ALU.scala 742:20]
  wire  _GEN_309 = _T_76 ? io_validin_b : _GEN_303; // @[Conditional.scala 39:67 ALU.scala 743:20]
  wire [63:0] _GEN_310 = _T_76 ? snapshot_a : _GEN_304; // @[Conditional.scala 39:67 ALU.scala 745:18]
  wire  _GEN_311 = _T_76 ? snapshot_valid_a : _GEN_305; // @[Conditional.scala 39:67 ALU.scala 746:24]
  wire [63:0] _GEN_312 = _T_75 ? _temp_result_a_T_121 : _GEN_306; // @[Conditional.scala 39:67 ALU.scala 731:21]
  wire [63:0] _GEN_313 = _T_75 ? io_in_b : _GEN_307; // @[Conditional.scala 39:67 ALU.scala 732:21]
  wire  _GEN_314 = _T_75 ? _temp_valid_a_T : _GEN_308; // @[Conditional.scala 39:67 ALU.scala 733:20]
  wire  _GEN_315 = _T_75 ? 1'h0 : _GEN_309; // @[Conditional.scala 39:67 ALU.scala 734:20]
  wire [63:0] _GEN_316 = _T_75 ? io_in_a : _GEN_310; // @[Conditional.scala 39:67 ALU.scala 736:18]
  wire  _GEN_317 = _T_75 ? io_validin_a : _GEN_311; // @[Conditional.scala 39:67 ALU.scala 737:24]
  wire [63:0] _GEN_318 = _T_74 ? _temp_result_a_T_121 : _GEN_312; // @[Conditional.scala 39:67 ALU.scala 722:21]
  wire [63:0] _GEN_319 = _T_74 ? io_in_a : _GEN_313; // @[Conditional.scala 39:67 ALU.scala 723:21]
  wire  _GEN_320 = _T_74 ? _temp_valid_a_T : _GEN_314; // @[Conditional.scala 39:67 ALU.scala 724:20]
  wire  _GEN_321 = _T_74 ? io_validin_a : _GEN_315; // @[Conditional.scala 39:67 ALU.scala 725:20]
  wire [63:0] _GEN_322 = _T_74 ? io_in_a : _GEN_316; // @[Conditional.scala 39:67 ALU.scala 727:18]
  wire  _GEN_323 = _T_74 ? io_validin_a : _GEN_317; // @[Conditional.scala 39:67 ALU.scala 728:24]
  wire [63:0] _GEN_324 = _T_73 ? _temp_result_a_T_121 : _GEN_318; // @[Conditional.scala 39:67 ALU.scala 713:21]
  wire [63:0] _GEN_325 = _T_73 ? io_in_b : _GEN_319; // @[Conditional.scala 39:67 ALU.scala 714:21]
  wire  _GEN_326 = _T_73 ? _temp_valid_a_T : _GEN_320; // @[Conditional.scala 39:67 ALU.scala 715:20]
  wire  _GEN_327 = _T_73 ? io_validin_b : _GEN_321; // @[Conditional.scala 39:67 ALU.scala 716:20]
  wire [63:0] _GEN_328 = _T_73 ? io_in_a : _GEN_322; // @[Conditional.scala 39:67 ALU.scala 718:18]
  wire  _GEN_329 = _T_73 ? io_validin_a : _GEN_323; // @[Conditional.scala 39:67 ALU.scala 719:24]
  wire [63:0] _GEN_330 = _T_72 ? _temp_result_a_T_109 : _GEN_324; // @[Conditional.scala 39:67 ALU.scala 702:21]
  wire [63:0] _GEN_331 = _T_72 ? io_in_a : _GEN_325; // @[Conditional.scala 39:67 ALU.scala 703:21]
  wire  _GEN_332 = _T_72 ? _temp_valid_a_T_6 : _GEN_326; // @[Conditional.scala 39:67 ALU.scala 704:20]
  wire  _GEN_333 = _T_72 ? 1'h0 : _GEN_327; // @[Conditional.scala 39:67 ALU.scala 705:20]
  wire [63:0] _GEN_334 = _T_72 ? snapshot_a : _GEN_328; // @[Conditional.scala 39:67 ALU.scala 707:18]
  wire  _GEN_335 = _T_72 ? snapshot_valid_a : _GEN_329; // @[Conditional.scala 39:67 ALU.scala 708:24]
  wire [63:0] _GEN_336 = _T_71 ? _temp_result_a_T_109 : _GEN_330; // @[Conditional.scala 39:67 ALU.scala 693:21]
  wire [63:0] _GEN_337 = _T_71 ? io_in_a : _GEN_331; // @[Conditional.scala 39:67 ALU.scala 694:21]
  wire  _GEN_338 = _T_71 ? _temp_valid_a_T_6 : _GEN_332; // @[Conditional.scala 39:67 ALU.scala 695:20]
  wire  _GEN_339 = _T_71 ? io_validin_a : _GEN_333; // @[Conditional.scala 39:67 ALU.scala 696:20]
  wire [63:0] _GEN_340 = _T_71 ? snapshot_a : _GEN_334; // @[Conditional.scala 39:67 ALU.scala 698:18]
  wire  _GEN_341 = _T_71 ? snapshot_valid_a : _GEN_335; // @[Conditional.scala 39:67 ALU.scala 699:24]
  wire [63:0] _GEN_342 = _T_70 ? _temp_result_a_T_109 : _GEN_336; // @[Conditional.scala 39:67 ALU.scala 684:21]
  wire [63:0] _GEN_343 = _T_70 ? io_in_b : _GEN_337; // @[Conditional.scala 39:67 ALU.scala 685:21]
  wire  _GEN_344 = _T_70 ? _temp_valid_a_T_6 : _GEN_338; // @[Conditional.scala 39:67 ALU.scala 686:20]
  wire  _GEN_345 = _T_70 ? io_validin_b : _GEN_339; // @[Conditional.scala 39:67 ALU.scala 687:20]
  wire [63:0] _GEN_346 = _T_70 ? snapshot_a : _GEN_340; // @[Conditional.scala 39:67 ALU.scala 689:18]
  wire  _GEN_347 = _T_70 ? snapshot_valid_a : _GEN_341; // @[Conditional.scala 39:67 ALU.scala 690:24]
  wire [63:0] _GEN_348 = _T_69 ? _temp_result_a_T_109 : _GEN_342; // @[Conditional.scala 39:67 ALU.scala 675:21]
  wire [63:0] _GEN_349 = _T_69 ? io_in_a : _GEN_343; // @[Conditional.scala 39:67 ALU.scala 676:21]
  wire  _GEN_350 = _T_69 ? _temp_valid_a_T_6 : _GEN_344; // @[Conditional.scala 39:67 ALU.scala 677:20]
  wire  _GEN_351 = _T_69 ? 1'h0 : _GEN_345; // @[Conditional.scala 39:67 ALU.scala 678:20]
  wire [63:0] _GEN_352 = _T_69 ? io_in_a : _GEN_346; // @[Conditional.scala 39:67 ALU.scala 680:18]
  wire  _GEN_353 = _T_69 ? io_validin_a : _GEN_347; // @[Conditional.scala 39:67 ALU.scala 681:24]
  wire [63:0] _GEN_354 = _T_68 ? _temp_result_a_T_109 : _GEN_348; // @[Conditional.scala 39:67 ALU.scala 666:21]
  wire [63:0] _GEN_355 = _T_68 ? io_in_a : _GEN_349; // @[Conditional.scala 39:67 ALU.scala 667:21]
  wire  _GEN_356 = _T_68 ? _temp_valid_a_T_6 : _GEN_350; // @[Conditional.scala 39:67 ALU.scala 668:20]
  wire  _GEN_357 = _T_68 ? io_validin_a : _GEN_351; // @[Conditional.scala 39:67 ALU.scala 669:20]
  wire [63:0] _GEN_358 = _T_68 ? io_in_a : _GEN_352; // @[Conditional.scala 39:67 ALU.scala 671:18]
  wire  _GEN_359 = _T_68 ? io_validin_a : _GEN_353; // @[Conditional.scala 39:67 ALU.scala 672:24]
  wire [63:0] _GEN_360 = _T_67 ? _temp_result_a_T_109 : _GEN_354; // @[Conditional.scala 39:67 ALU.scala 657:21]
  wire [63:0] _GEN_361 = _T_67 ? io_in_b : _GEN_355; // @[Conditional.scala 39:67 ALU.scala 658:21]
  wire  _GEN_362 = _T_67 ? _temp_valid_a_T_6 : _GEN_356; // @[Conditional.scala 39:67 ALU.scala 659:20]
  wire  _GEN_363 = _T_67 ? io_validin_b : _GEN_357; // @[Conditional.scala 39:67 ALU.scala 660:20]
  wire [63:0] _GEN_364 = _T_67 ? io_in_a : _GEN_358; // @[Conditional.scala 39:67 ALU.scala 662:18]
  wire  _GEN_365 = _T_67 ? io_validin_a : _GEN_359; // @[Conditional.scala 39:67 ALU.scala 663:24]
  wire [63:0] _GEN_366 = _T_66 ? _temp_result_a_T_97 : _GEN_360; // @[Conditional.scala 39:67 ALU.scala 648:21]
  wire [63:0] _GEN_367 = _T_66 ? io_in_a : _GEN_361; // @[Conditional.scala 39:67 ALU.scala 649:21]
  wire  _GEN_368 = _T_66 ? _temp_valid_a_T : _GEN_362; // @[Conditional.scala 39:67 ALU.scala 650:20]
  wire  _GEN_369 = _T_66 ? 1'h0 : _GEN_363; // @[Conditional.scala 39:67 ALU.scala 651:20]
  wire [63:0] _GEN_370 = _T_66 ? snapshot_a : _GEN_364; // @[Conditional.scala 39:67 ALU.scala 653:18]
  wire  _GEN_371 = _T_66 ? snapshot_valid_a : _GEN_365; // @[Conditional.scala 39:67 ALU.scala 654:24]
  wire [63:0] _GEN_372 = _T_65 ? _temp_result_a_T_97 : _GEN_366; // @[Conditional.scala 39:67 ALU.scala 639:21]
  wire [63:0] _GEN_373 = _T_65 ? io_in_a : _GEN_367; // @[Conditional.scala 39:67 ALU.scala 640:21]
  wire  _GEN_374 = _T_65 ? _temp_valid_a_T : _GEN_368; // @[Conditional.scala 39:67 ALU.scala 641:20]
  wire  _GEN_375 = _T_65 ? io_validin_a : _GEN_369; // @[Conditional.scala 39:67 ALU.scala 642:20]
  wire [63:0] _GEN_376 = _T_65 ? snapshot_a : _GEN_370; // @[Conditional.scala 39:67 ALU.scala 644:18]
  wire  _GEN_377 = _T_65 ? snapshot_valid_a : _GEN_371; // @[Conditional.scala 39:67 ALU.scala 645:24]
  wire [63:0] _GEN_378 = _T_64 ? _temp_result_a_T_97 : _GEN_372; // @[Conditional.scala 39:67 ALU.scala 630:21]
  wire [63:0] _GEN_379 = _T_64 ? io_in_b : _GEN_373; // @[Conditional.scala 39:67 ALU.scala 631:21]
  wire  _GEN_380 = _T_64 ? _temp_valid_a_T : _GEN_374; // @[Conditional.scala 39:67 ALU.scala 632:20]
  wire  _GEN_381 = _T_64 ? io_validin_b : _GEN_375; // @[Conditional.scala 39:67 ALU.scala 633:20]
  wire [63:0] _GEN_382 = _T_64 ? snapshot_a : _GEN_376; // @[Conditional.scala 39:67 ALU.scala 635:18]
  wire  _GEN_383 = _T_64 ? snapshot_valid_a : _GEN_377; // @[Conditional.scala 39:67 ALU.scala 636:24]
  wire [63:0] _GEN_384 = _T_63 ? _temp_result_a_T_97 : _GEN_378; // @[Conditional.scala 39:67 ALU.scala 621:21]
  wire [63:0] _GEN_385 = _T_63 ? io_in_b : _GEN_379; // @[Conditional.scala 39:67 ALU.scala 622:21]
  wire  _GEN_386 = _T_63 ? _temp_valid_a_T : _GEN_380; // @[Conditional.scala 39:67 ALU.scala 623:20]
  wire  _GEN_387 = _T_63 ? 1'h0 : _GEN_381; // @[Conditional.scala 39:67 ALU.scala 624:20]
  wire [63:0] _GEN_388 = _T_63 ? io_in_a : _GEN_382; // @[Conditional.scala 39:67 ALU.scala 626:18]
  wire  _GEN_389 = _T_63 ? io_validin_a : _GEN_383; // @[Conditional.scala 39:67 ALU.scala 627:24]
  wire [63:0] _GEN_390 = _T_62 ? _temp_result_a_T_97 : _GEN_384; // @[Conditional.scala 39:67 ALU.scala 612:21]
  wire [63:0] _GEN_391 = _T_62 ? io_in_a : _GEN_385; // @[Conditional.scala 39:67 ALU.scala 613:21]
  wire  _GEN_392 = _T_62 ? _temp_valid_a_T : _GEN_386; // @[Conditional.scala 39:67 ALU.scala 614:20]
  wire  _GEN_393 = _T_62 ? io_validin_a : _GEN_387; // @[Conditional.scala 39:67 ALU.scala 615:20]
  wire [63:0] _GEN_394 = _T_62 ? io_in_a : _GEN_388; // @[Conditional.scala 39:67 ALU.scala 617:18]
  wire  _GEN_395 = _T_62 ? io_validin_a : _GEN_389; // @[Conditional.scala 39:67 ALU.scala 618:24]
  wire [63:0] _GEN_396 = _T_61 ? _temp_result_a_T_97 : _GEN_390; // @[Conditional.scala 39:67 ALU.scala 603:21]
  wire [63:0] _GEN_397 = _T_61 ? io_in_b : _GEN_391; // @[Conditional.scala 39:67 ALU.scala 604:21]
  wire  _GEN_398 = _T_61 ? _temp_valid_a_T : _GEN_392; // @[Conditional.scala 39:67 ALU.scala 605:20]
  wire  _GEN_399 = _T_61 ? io_validin_b : _GEN_393; // @[Conditional.scala 39:67 ALU.scala 606:20]
  wire [63:0] _GEN_400 = _T_61 ? io_in_a : _GEN_394; // @[Conditional.scala 39:67 ALU.scala 608:18]
  wire  _GEN_401 = _T_61 ? io_validin_a : _GEN_395; // @[Conditional.scala 39:67 ALU.scala 609:24]
  wire [63:0] _GEN_402 = _T_60 ? _temp_result_a_T_90 : _GEN_396; // @[Conditional.scala 39:67 ALU.scala 592:21]
  wire [63:0] _GEN_403 = _T_60 ? io_in_a : _GEN_397; // @[Conditional.scala 39:67 ALU.scala 593:21]
  wire  _GEN_404 = _T_60 ? _temp_valid_a_T_6 : _GEN_398; // @[Conditional.scala 39:67 ALU.scala 594:20]
  wire  _GEN_405 = _T_60 ? 1'h0 : _GEN_399; // @[Conditional.scala 39:67 ALU.scala 595:20]
  wire [63:0] _GEN_406 = _T_60 ? snapshot_a : _GEN_400; // @[Conditional.scala 39:67 ALU.scala 597:18]
  wire  _GEN_407 = _T_60 ? snapshot_valid_a : _GEN_401; // @[Conditional.scala 39:67 ALU.scala 598:24]
  wire [63:0] _GEN_408 = _T_59 ? _temp_result_a_T_90 : _GEN_402; // @[Conditional.scala 39:67 ALU.scala 583:21]
  wire [63:0] _GEN_409 = _T_59 ? io_in_a : _GEN_403; // @[Conditional.scala 39:67 ALU.scala 584:21]
  wire  _GEN_410 = _T_59 ? _temp_valid_a_T_6 : _GEN_404; // @[Conditional.scala 39:67 ALU.scala 585:20]
  wire  _GEN_411 = _T_59 ? io_validin_a : _GEN_405; // @[Conditional.scala 39:67 ALU.scala 586:20]
  wire [63:0] _GEN_412 = _T_59 ? snapshot_a : _GEN_406; // @[Conditional.scala 39:67 ALU.scala 588:18]
  wire  _GEN_413 = _T_59 ? snapshot_valid_a : _GEN_407; // @[Conditional.scala 39:67 ALU.scala 589:24]
  wire [63:0] _GEN_414 = _T_58 ? _temp_result_a_T_90 : _GEN_408; // @[Conditional.scala 39:67 ALU.scala 574:21]
  wire [63:0] _GEN_415 = _T_58 ? io_in_b : _GEN_409; // @[Conditional.scala 39:67 ALU.scala 575:21]
  wire  _GEN_416 = _T_58 ? _temp_valid_a_T_6 : _GEN_410; // @[Conditional.scala 39:67 ALU.scala 576:20]
  wire  _GEN_417 = _T_58 ? io_validin_b : _GEN_411; // @[Conditional.scala 39:67 ALU.scala 577:20]
  wire [63:0] _GEN_418 = _T_58 ? snapshot_a : _GEN_412; // @[Conditional.scala 39:67 ALU.scala 579:18]
  wire  _GEN_419 = _T_58 ? snapshot_valid_a : _GEN_413; // @[Conditional.scala 39:67 ALU.scala 580:24]
  wire [63:0] _GEN_420 = _T_57 ? _temp_result_a_T_90 : _GEN_414; // @[Conditional.scala 39:67 ALU.scala 565:21]
  wire [63:0] _GEN_421 = _T_57 ? io_in_a : _GEN_415; // @[Conditional.scala 39:67 ALU.scala 566:21]
  wire  _GEN_422 = _T_57 ? _temp_valid_a_T_6 : _GEN_416; // @[Conditional.scala 39:67 ALU.scala 567:20]
  wire  _GEN_423 = _T_57 ? 1'h0 : _GEN_417; // @[Conditional.scala 39:67 ALU.scala 568:20]
  wire [63:0] _GEN_424 = _T_57 ? io_in_a : _GEN_418; // @[Conditional.scala 39:67 ALU.scala 570:18]
  wire  _GEN_425 = _T_57 ? io_validin_a : _GEN_419; // @[Conditional.scala 39:67 ALU.scala 571:24]
  wire [63:0] _GEN_426 = _T_56 ? _temp_result_a_T_90 : _GEN_420; // @[Conditional.scala 39:67 ALU.scala 556:21]
  wire [63:0] _GEN_427 = _T_56 ? io_in_a : _GEN_421; // @[Conditional.scala 39:67 ALU.scala 557:21]
  wire  _GEN_428 = _T_56 ? _temp_valid_a_T_6 : _GEN_422; // @[Conditional.scala 39:67 ALU.scala 558:20]
  wire  _GEN_429 = _T_56 ? io_validin_a : _GEN_423; // @[Conditional.scala 39:67 ALU.scala 559:20]
  wire [63:0] _GEN_430 = _T_56 ? io_in_a : _GEN_424; // @[Conditional.scala 39:67 ALU.scala 561:18]
  wire  _GEN_431 = _T_56 ? io_validin_a : _GEN_425; // @[Conditional.scala 39:67 ALU.scala 562:24]
  wire [63:0] _GEN_432 = _T_55 ? _temp_result_a_T_90 : _GEN_426; // @[Conditional.scala 39:67 ALU.scala 547:21]
  wire [63:0] _GEN_433 = _T_55 ? io_in_b : _GEN_427; // @[Conditional.scala 39:67 ALU.scala 548:21]
  wire  _GEN_434 = _T_55 ? _temp_valid_a_T_6 : _GEN_428; // @[Conditional.scala 39:67 ALU.scala 549:20]
  wire  _GEN_435 = _T_55 ? io_validin_b : _GEN_429; // @[Conditional.scala 39:67 ALU.scala 550:20]
  wire [63:0] _GEN_436 = _T_55 ? io_in_a : _GEN_430; // @[Conditional.scala 39:67 ALU.scala 552:18]
  wire  _GEN_437 = _T_55 ? io_validin_a : _GEN_431; // @[Conditional.scala 39:67 ALU.scala 553:24]
  wire [63:0] _GEN_438 = _T_54 ? _temp_result_a_T_84 : _GEN_432; // @[Conditional.scala 39:67 ALU.scala 538:21]
  wire [63:0] _GEN_439 = _T_54 ? io_in_a : _GEN_433; // @[Conditional.scala 39:67 ALU.scala 539:21]
  wire  _GEN_440 = _T_54 ? _temp_valid_a_T : _GEN_434; // @[Conditional.scala 39:67 ALU.scala 540:20]
  wire  _GEN_441 = _T_54 ? 1'h0 : _GEN_435; // @[Conditional.scala 39:67 ALU.scala 541:20]
  wire [63:0] _GEN_442 = _T_54 ? snapshot_a : _GEN_436; // @[Conditional.scala 39:67 ALU.scala 543:18]
  wire  _GEN_443 = _T_54 ? snapshot_valid_a : _GEN_437; // @[Conditional.scala 39:67 ALU.scala 544:24]
  wire [63:0] _GEN_444 = _T_53 ? _temp_result_a_T_84 : _GEN_438; // @[Conditional.scala 39:67 ALU.scala 529:21]
  wire [63:0] _GEN_445 = _T_53 ? io_in_a : _GEN_439; // @[Conditional.scala 39:67 ALU.scala 530:21]
  wire  _GEN_446 = _T_53 ? _temp_valid_a_T : _GEN_440; // @[Conditional.scala 39:67 ALU.scala 531:20]
  wire  _GEN_447 = _T_53 ? io_validin_a : _GEN_441; // @[Conditional.scala 39:67 ALU.scala 532:20]
  wire [63:0] _GEN_448 = _T_53 ? snapshot_a : _GEN_442; // @[Conditional.scala 39:67 ALU.scala 534:18]
  wire  _GEN_449 = _T_53 ? snapshot_valid_a : _GEN_443; // @[Conditional.scala 39:67 ALU.scala 535:24]
  wire [63:0] _GEN_450 = _T_52 ? _temp_result_a_T_84 : _GEN_444; // @[Conditional.scala 39:67 ALU.scala 520:21]
  wire [63:0] _GEN_451 = _T_52 ? io_in_b : _GEN_445; // @[Conditional.scala 39:67 ALU.scala 521:21]
  wire  _GEN_452 = _T_52 ? _temp_valid_a_T : _GEN_446; // @[Conditional.scala 39:67 ALU.scala 522:20]
  wire  _GEN_453 = _T_52 ? io_validin_b : _GEN_447; // @[Conditional.scala 39:67 ALU.scala 523:20]
  wire [63:0] _GEN_454 = _T_52 ? snapshot_a : _GEN_448; // @[Conditional.scala 39:67 ALU.scala 525:18]
  wire  _GEN_455 = _T_52 ? snapshot_valid_a : _GEN_449; // @[Conditional.scala 39:67 ALU.scala 526:24]
  wire [63:0] _GEN_456 = _T_51 ? _temp_result_a_T_84 : _GEN_450; // @[Conditional.scala 39:67 ALU.scala 511:21]
  wire [63:0] _GEN_457 = _T_51 ? io_in_b : _GEN_451; // @[Conditional.scala 39:67 ALU.scala 512:21]
  wire  _GEN_458 = _T_51 ? _temp_valid_a_T : _GEN_452; // @[Conditional.scala 39:67 ALU.scala 513:20]
  wire  _GEN_459 = _T_51 ? 1'h0 : _GEN_453; // @[Conditional.scala 39:67 ALU.scala 514:20]
  wire [63:0] _GEN_460 = _T_51 ? io_in_a : _GEN_454; // @[Conditional.scala 39:67 ALU.scala 516:18]
  wire  _GEN_461 = _T_51 ? io_validin_a : _GEN_455; // @[Conditional.scala 39:67 ALU.scala 517:24]
  wire [63:0] _GEN_462 = _T_50 ? _temp_result_a_T_84 : _GEN_456; // @[Conditional.scala 39:67 ALU.scala 502:21]
  wire [63:0] _GEN_463 = _T_50 ? io_in_a : _GEN_457; // @[Conditional.scala 39:67 ALU.scala 503:21]
  wire  _GEN_464 = _T_50 ? _temp_valid_a_T : _GEN_458; // @[Conditional.scala 39:67 ALU.scala 504:20]
  wire  _GEN_465 = _T_50 ? io_validin_a : _GEN_459; // @[Conditional.scala 39:67 ALU.scala 505:20]
  wire [63:0] _GEN_466 = _T_50 ? io_in_a : _GEN_460; // @[Conditional.scala 39:67 ALU.scala 507:18]
  wire  _GEN_467 = _T_50 ? io_validin_a : _GEN_461; // @[Conditional.scala 39:67 ALU.scala 508:24]
  wire [63:0] _GEN_468 = _T_49 ? _temp_result_a_T_84 : _GEN_462; // @[Conditional.scala 39:67 ALU.scala 493:21]
  wire [63:0] _GEN_469 = _T_49 ? io_in_b : _GEN_463; // @[Conditional.scala 39:67 ALU.scala 494:21]
  wire  _GEN_470 = _T_49 ? _temp_valid_a_T : _GEN_464; // @[Conditional.scala 39:67 ALU.scala 495:20]
  wire  _GEN_471 = _T_49 ? io_validin_b : _GEN_465; // @[Conditional.scala 39:67 ALU.scala 496:20]
  wire [63:0] _GEN_472 = _T_49 ? io_in_a : _GEN_466; // @[Conditional.scala 39:67 ALU.scala 498:18]
  wire  _GEN_473 = _T_49 ? io_validin_a : _GEN_467; // @[Conditional.scala 39:67 ALU.scala 499:24]
  wire [63:0] _GEN_474 = _T_48 ? _temp_result_a_T_73 : _GEN_468; // @[Conditional.scala 39:67 ALU.scala 482:21]
  wire [63:0] _GEN_475 = _T_48 ? io_in_a : _GEN_469; // @[Conditional.scala 39:67 ALU.scala 483:21]
  wire  _GEN_476 = _T_48 ? _temp_valid_a_T_6 : _GEN_470; // @[Conditional.scala 39:67 ALU.scala 484:20]
  wire  _GEN_477 = _T_48 ? 1'h0 : _GEN_471; // @[Conditional.scala 39:67 ALU.scala 485:20]
  wire [63:0] _GEN_478 = _T_48 ? snapshot_a : _GEN_472; // @[Conditional.scala 39:67 ALU.scala 487:18]
  wire  _GEN_479 = _T_48 ? snapshot_valid_a : _GEN_473; // @[Conditional.scala 39:67 ALU.scala 488:24]
  wire [63:0] _GEN_480 = _T_47 ? _temp_result_a_T_73 : _GEN_474; // @[Conditional.scala 39:67 ALU.scala 473:21]
  wire [63:0] _GEN_481 = _T_47 ? io_in_a : _GEN_475; // @[Conditional.scala 39:67 ALU.scala 474:21]
  wire  _GEN_482 = _T_47 ? _temp_valid_a_T_6 : _GEN_476; // @[Conditional.scala 39:67 ALU.scala 475:20]
  wire  _GEN_483 = _T_47 ? io_validin_a : _GEN_477; // @[Conditional.scala 39:67 ALU.scala 476:20]
  wire [63:0] _GEN_484 = _T_47 ? snapshot_a : _GEN_478; // @[Conditional.scala 39:67 ALU.scala 478:18]
  wire  _GEN_485 = _T_47 ? snapshot_valid_a : _GEN_479; // @[Conditional.scala 39:67 ALU.scala 479:24]
  wire [63:0] _GEN_486 = _T_46 ? _temp_result_a_T_73 : _GEN_480; // @[Conditional.scala 39:67 ALU.scala 464:21]
  wire [63:0] _GEN_487 = _T_46 ? io_in_b : _GEN_481; // @[Conditional.scala 39:67 ALU.scala 465:21]
  wire  _GEN_488 = _T_46 ? _temp_valid_a_T_6 : _GEN_482; // @[Conditional.scala 39:67 ALU.scala 466:20]
  wire  _GEN_489 = _T_46 ? io_validin_b : _GEN_483; // @[Conditional.scala 39:67 ALU.scala 467:20]
  wire [63:0] _GEN_490 = _T_46 ? snapshot_a : _GEN_484; // @[Conditional.scala 39:67 ALU.scala 469:18]
  wire  _GEN_491 = _T_46 ? snapshot_valid_a : _GEN_485; // @[Conditional.scala 39:67 ALU.scala 470:24]
  wire [63:0] _GEN_492 = _T_45 ? _temp_result_a_T_73 : _GEN_486; // @[Conditional.scala 39:67 ALU.scala 455:21]
  wire [63:0] _GEN_493 = _T_45 ? io_in_a : _GEN_487; // @[Conditional.scala 39:67 ALU.scala 456:21]
  wire  _GEN_494 = _T_45 ? _temp_valid_a_T_6 : _GEN_488; // @[Conditional.scala 39:67 ALU.scala 457:20]
  wire  _GEN_495 = _T_45 ? 1'h0 : _GEN_489; // @[Conditional.scala 39:67 ALU.scala 458:20]
  wire [63:0] _GEN_496 = _T_45 ? io_in_a : _GEN_490; // @[Conditional.scala 39:67 ALU.scala 460:18]
  wire  _GEN_497 = _T_45 ? io_validin_a : _GEN_491; // @[Conditional.scala 39:67 ALU.scala 461:24]
  wire [63:0] _GEN_498 = _T_44 ? _temp_result_a_T_73 : _GEN_492; // @[Conditional.scala 39:67 ALU.scala 446:21]
  wire [63:0] _GEN_499 = _T_44 ? io_in_a : _GEN_493; // @[Conditional.scala 39:67 ALU.scala 447:21]
  wire  _GEN_500 = _T_44 ? _temp_valid_a_T_6 : _GEN_494; // @[Conditional.scala 39:67 ALU.scala 448:20]
  wire  _GEN_501 = _T_44 ? io_validin_a : _GEN_495; // @[Conditional.scala 39:67 ALU.scala 449:20]
  wire [63:0] _GEN_502 = _T_44 ? io_in_a : _GEN_496; // @[Conditional.scala 39:67 ALU.scala 451:18]
  wire  _GEN_503 = _T_44 ? io_validin_a : _GEN_497; // @[Conditional.scala 39:67 ALU.scala 452:24]
  wire [63:0] _GEN_504 = _T_43 ? _temp_result_a_T_73 : _GEN_498; // @[Conditional.scala 39:67 ALU.scala 437:21]
  wire [63:0] _GEN_505 = _T_43 ? io_in_b : _GEN_499; // @[Conditional.scala 39:67 ALU.scala 438:21]
  wire  _GEN_506 = _T_43 ? _temp_valid_a_T_6 : _GEN_500; // @[Conditional.scala 39:67 ALU.scala 439:20]
  wire  _GEN_507 = _T_43 ? io_validin_b : _GEN_501; // @[Conditional.scala 39:67 ALU.scala 440:20]
  wire [63:0] _GEN_508 = _T_43 ? io_in_a : _GEN_502; // @[Conditional.scala 39:67 ALU.scala 442:18]
  wire  _GEN_509 = _T_43 ? io_validin_a : _GEN_503; // @[Conditional.scala 39:67 ALU.scala 443:24]
  wire [63:0] _GEN_510 = _T_42 ? _temp_result_a_T_61 : _GEN_504; // @[Conditional.scala 39:67 ALU.scala 428:21]
  wire [63:0] _GEN_511 = _T_42 ? io_in_a : _GEN_505; // @[Conditional.scala 39:67 ALU.scala 429:21]
  wire  _GEN_512 = _T_42 ? _temp_valid_a_T : _GEN_506; // @[Conditional.scala 39:67 ALU.scala 430:20]
  wire  _GEN_513 = _T_42 ? 1'h0 : _GEN_507; // @[Conditional.scala 39:67 ALU.scala 431:20]
  wire [63:0] _GEN_514 = _T_42 ? snapshot_a : _GEN_508; // @[Conditional.scala 39:67 ALU.scala 433:18]
  wire  _GEN_515 = _T_42 ? snapshot_valid_a : _GEN_509; // @[Conditional.scala 39:67 ALU.scala 434:24]
  wire [63:0] _GEN_516 = _T_41 ? _temp_result_a_T_61 : _GEN_510; // @[Conditional.scala 39:67 ALU.scala 419:21]
  wire [63:0] _GEN_517 = _T_41 ? io_in_a : _GEN_511; // @[Conditional.scala 39:67 ALU.scala 420:21]
  wire  _GEN_518 = _T_41 ? _temp_valid_a_T : _GEN_512; // @[Conditional.scala 39:67 ALU.scala 421:20]
  wire  _GEN_519 = _T_41 ? io_validin_a : _GEN_513; // @[Conditional.scala 39:67 ALU.scala 422:20]
  wire [63:0] _GEN_520 = _T_41 ? snapshot_a : _GEN_514; // @[Conditional.scala 39:67 ALU.scala 424:18]
  wire  _GEN_521 = _T_41 ? snapshot_valid_a : _GEN_515; // @[Conditional.scala 39:67 ALU.scala 425:24]
  wire [63:0] _GEN_522 = _T_40 ? _temp_result_a_T_61 : _GEN_516; // @[Conditional.scala 39:67 ALU.scala 410:21]
  wire [63:0] _GEN_523 = _T_40 ? io_in_b : _GEN_517; // @[Conditional.scala 39:67 ALU.scala 411:21]
  wire  _GEN_524 = _T_40 ? _temp_valid_a_T : _GEN_518; // @[Conditional.scala 39:67 ALU.scala 412:20]
  wire  _GEN_525 = _T_40 ? io_validin_b : _GEN_519; // @[Conditional.scala 39:67 ALU.scala 413:20]
  wire [63:0] _GEN_526 = _T_40 ? snapshot_a : _GEN_520; // @[Conditional.scala 39:67 ALU.scala 415:18]
  wire  _GEN_527 = _T_40 ? snapshot_valid_a : _GEN_521; // @[Conditional.scala 39:67 ALU.scala 416:24]
  wire [63:0] _GEN_528 = _T_39 ? _temp_result_a_T_61 : _GEN_522; // @[Conditional.scala 39:67 ALU.scala 401:21]
  wire [63:0] _GEN_529 = _T_39 ? io_in_b : _GEN_523; // @[Conditional.scala 39:67 ALU.scala 402:21]
  wire  _GEN_530 = _T_39 ? _temp_valid_a_T : _GEN_524; // @[Conditional.scala 39:67 ALU.scala 403:20]
  wire  _GEN_531 = _T_39 ? 1'h0 : _GEN_525; // @[Conditional.scala 39:67 ALU.scala 404:20]
  wire [63:0] _GEN_532 = _T_39 ? io_in_a : _GEN_526; // @[Conditional.scala 39:67 ALU.scala 406:18]
  wire  _GEN_533 = _T_39 ? io_validin_a : _GEN_527; // @[Conditional.scala 39:67 ALU.scala 407:24]
  wire [63:0] _GEN_534 = _T_38 ? _temp_result_a_T_61 : _GEN_528; // @[Conditional.scala 39:67 ALU.scala 392:21]
  wire [63:0] _GEN_535 = _T_38 ? io_in_a : _GEN_529; // @[Conditional.scala 39:67 ALU.scala 393:21]
  wire  _GEN_536 = _T_38 ? _temp_valid_a_T : _GEN_530; // @[Conditional.scala 39:67 ALU.scala 394:20]
  wire  _GEN_537 = _T_38 ? io_validin_a : _GEN_531; // @[Conditional.scala 39:67 ALU.scala 395:20]
  wire [63:0] _GEN_538 = _T_38 ? io_in_a : _GEN_532; // @[Conditional.scala 39:67 ALU.scala 397:18]
  wire  _GEN_539 = _T_38 ? io_validin_a : _GEN_533; // @[Conditional.scala 39:67 ALU.scala 398:24]
  wire [63:0] _GEN_540 = _T_37 ? _temp_result_a_T_61 : _GEN_534; // @[Conditional.scala 39:67 ALU.scala 383:21]
  wire [63:0] _GEN_541 = _T_37 ? io_in_b : _GEN_535; // @[Conditional.scala 39:67 ALU.scala 384:21]
  wire  _GEN_542 = _T_37 ? _temp_valid_a_T : _GEN_536; // @[Conditional.scala 39:67 ALU.scala 385:20]
  wire  _GEN_543 = _T_37 ? io_validin_b : _GEN_537; // @[Conditional.scala 39:67 ALU.scala 386:20]
  wire [63:0] _GEN_544 = _T_37 ? io_in_a : _GEN_538; // @[Conditional.scala 39:67 ALU.scala 388:18]
  wire  _GEN_545 = _T_37 ? io_validin_a : _GEN_539; // @[Conditional.scala 39:67 ALU.scala 389:24]
  wire [63:0] _GEN_546 = _T_36 ? _temp_result_a_T_49 : _GEN_540; // @[Conditional.scala 39:67 ALU.scala 372:21]
  wire [63:0] _GEN_547 = _T_36 ? io_in_a : _GEN_541; // @[Conditional.scala 39:67 ALU.scala 373:21]
  wire  _GEN_548 = _T_36 ? _temp_valid_a_T_6 : _GEN_542; // @[Conditional.scala 39:67 ALU.scala 374:20]
  wire  _GEN_549 = _T_36 ? 1'h0 : _GEN_543; // @[Conditional.scala 39:67 ALU.scala 375:20]
  wire [63:0] _GEN_550 = _T_36 ? snapshot_a : _GEN_544; // @[Conditional.scala 39:67 ALU.scala 377:18]
  wire  _GEN_551 = _T_36 ? snapshot_valid_a : _GEN_545; // @[Conditional.scala 39:67 ALU.scala 378:24]
  wire [63:0] _GEN_552 = _T_35 ? _temp_result_a_T_49 : _GEN_546; // @[Conditional.scala 39:67 ALU.scala 363:21]
  wire [63:0] _GEN_553 = _T_35 ? io_in_a : _GEN_547; // @[Conditional.scala 39:67 ALU.scala 364:21]
  wire  _GEN_554 = _T_35 ? _temp_valid_a_T_6 : _GEN_548; // @[Conditional.scala 39:67 ALU.scala 365:20]
  wire  _GEN_555 = _T_35 ? io_validin_a : _GEN_549; // @[Conditional.scala 39:67 ALU.scala 366:20]
  wire [63:0] _GEN_556 = _T_35 ? snapshot_a : _GEN_550; // @[Conditional.scala 39:67 ALU.scala 368:18]
  wire  _GEN_557 = _T_35 ? snapshot_valid_a : _GEN_551; // @[Conditional.scala 39:67 ALU.scala 369:24]
  wire [63:0] _GEN_558 = _T_34 ? _temp_result_a_T_49 : _GEN_552; // @[Conditional.scala 39:67 ALU.scala 354:21]
  wire [63:0] _GEN_559 = _T_34 ? io_in_b : _GEN_553; // @[Conditional.scala 39:67 ALU.scala 355:21]
  wire  _GEN_560 = _T_34 ? _temp_valid_a_T_6 : _GEN_554; // @[Conditional.scala 39:67 ALU.scala 356:20]
  wire  _GEN_561 = _T_34 ? io_validin_b : _GEN_555; // @[Conditional.scala 39:67 ALU.scala 357:20]
  wire [63:0] _GEN_562 = _T_34 ? snapshot_a : _GEN_556; // @[Conditional.scala 39:67 ALU.scala 359:18]
  wire  _GEN_563 = _T_34 ? snapshot_valid_a : _GEN_557; // @[Conditional.scala 39:67 ALU.scala 360:24]
  wire [63:0] _GEN_564 = _T_33 ? _temp_result_a_T_49 : _GEN_558; // @[Conditional.scala 39:67 ALU.scala 345:21]
  wire [63:0] _GEN_565 = _T_33 ? io_in_a : _GEN_559; // @[Conditional.scala 39:67 ALU.scala 346:21]
  wire  _GEN_566 = _T_33 ? _temp_valid_a_T_6 : _GEN_560; // @[Conditional.scala 39:67 ALU.scala 347:20]
  wire  _GEN_567 = _T_33 ? 1'h0 : _GEN_561; // @[Conditional.scala 39:67 ALU.scala 348:20]
  wire [63:0] _GEN_568 = _T_33 ? io_in_a : _GEN_562; // @[Conditional.scala 39:67 ALU.scala 350:18]
  wire  _GEN_569 = _T_33 ? io_validin_a : _GEN_563; // @[Conditional.scala 39:67 ALU.scala 351:24]
  wire [63:0] _GEN_570 = _T_32 ? _temp_result_a_T_49 : _GEN_564; // @[Conditional.scala 39:67 ALU.scala 336:21]
  wire [63:0] _GEN_571 = _T_32 ? io_in_a : _GEN_565; // @[Conditional.scala 39:67 ALU.scala 337:21]
  wire  _GEN_572 = _T_32 ? _temp_valid_a_T_6 : _GEN_566; // @[Conditional.scala 39:67 ALU.scala 338:20]
  wire  _GEN_573 = _T_32 ? io_validin_a : _GEN_567; // @[Conditional.scala 39:67 ALU.scala 339:20]
  wire [63:0] _GEN_574 = _T_32 ? io_in_a : _GEN_568; // @[Conditional.scala 39:67 ALU.scala 341:18]
  wire  _GEN_575 = _T_32 ? io_validin_a : _GEN_569; // @[Conditional.scala 39:67 ALU.scala 342:24]
  wire [63:0] _GEN_576 = _T_31 ? _temp_result_a_T_49 : _GEN_570; // @[Conditional.scala 39:67 ALU.scala 327:21]
  wire [63:0] _GEN_577 = _T_31 ? io_in_b : _GEN_571; // @[Conditional.scala 39:67 ALU.scala 328:21]
  wire  _GEN_578 = _T_31 ? _temp_valid_a_T_6 : _GEN_572; // @[Conditional.scala 39:67 ALU.scala 329:20]
  wire  _GEN_579 = _T_31 ? io_validin_b : _GEN_573; // @[Conditional.scala 39:67 ALU.scala 330:20]
  wire [63:0] _GEN_580 = _T_31 ? io_in_a : _GEN_574; // @[Conditional.scala 39:67 ALU.scala 332:18]
  wire  _GEN_581 = _T_31 ? io_validin_a : _GEN_575; // @[Conditional.scala 39:67 ALU.scala 333:24]
  wire [63:0] _GEN_582 = _T_30 ? _temp_result_a_T_37 : _GEN_576; // @[Conditional.scala 39:67 ALU.scala 318:21]
  wire [63:0] _GEN_583 = _T_30 ? io_in_a : _GEN_577; // @[Conditional.scala 39:67 ALU.scala 319:21]
  wire  _GEN_584 = _T_30 ? _temp_valid_a_T : _GEN_578; // @[Conditional.scala 39:67 ALU.scala 320:20]
  wire  _GEN_585 = _T_30 ? 1'h0 : _GEN_579; // @[Conditional.scala 39:67 ALU.scala 321:20]
  wire [63:0] _GEN_586 = _T_30 ? snapshot_a : _GEN_580; // @[Conditional.scala 39:67 ALU.scala 323:18]
  wire  _GEN_587 = _T_30 ? snapshot_valid_a : _GEN_581; // @[Conditional.scala 39:67 ALU.scala 324:24]
  wire [63:0] _GEN_588 = _T_29 ? _temp_result_a_T_37 : _GEN_582; // @[Conditional.scala 39:67 ALU.scala 309:21]
  wire [63:0] _GEN_589 = _T_29 ? io_in_a : _GEN_583; // @[Conditional.scala 39:67 ALU.scala 310:21]
  wire  _GEN_590 = _T_29 ? _temp_valid_a_T : _GEN_584; // @[Conditional.scala 39:67 ALU.scala 311:20]
  wire  _GEN_591 = _T_29 ? io_validin_a : _GEN_585; // @[Conditional.scala 39:67 ALU.scala 312:20]
  wire [63:0] _GEN_592 = _T_29 ? snapshot_a : _GEN_586; // @[Conditional.scala 39:67 ALU.scala 314:18]
  wire  _GEN_593 = _T_29 ? snapshot_valid_a : _GEN_587; // @[Conditional.scala 39:67 ALU.scala 315:24]
  wire [63:0] _GEN_594 = _T_28 ? _temp_result_a_T_37 : _GEN_588; // @[Conditional.scala 39:67 ALU.scala 300:21]
  wire [63:0] _GEN_595 = _T_28 ? io_in_b : _GEN_589; // @[Conditional.scala 39:67 ALU.scala 301:21]
  wire  _GEN_596 = _T_28 ? _temp_valid_a_T : _GEN_590; // @[Conditional.scala 39:67 ALU.scala 302:20]
  wire  _GEN_597 = _T_28 ? io_validin_b : _GEN_591; // @[Conditional.scala 39:67 ALU.scala 303:20]
  wire [63:0] _GEN_598 = _T_28 ? snapshot_a : _GEN_592; // @[Conditional.scala 39:67 ALU.scala 305:18]
  wire  _GEN_599 = _T_28 ? snapshot_valid_a : _GEN_593; // @[Conditional.scala 39:67 ALU.scala 306:24]
  wire [63:0] _GEN_600 = _T_27 ? _temp_result_a_T_37 : _GEN_594; // @[Conditional.scala 39:67 ALU.scala 291:21]
  wire [63:0] _GEN_601 = _T_27 ? io_in_b : _GEN_595; // @[Conditional.scala 39:67 ALU.scala 292:21]
  wire  _GEN_602 = _T_27 ? _temp_valid_a_T : _GEN_596; // @[Conditional.scala 39:67 ALU.scala 293:20]
  wire  _GEN_603 = _T_27 ? 1'h0 : _GEN_597; // @[Conditional.scala 39:67 ALU.scala 294:20]
  wire [63:0] _GEN_604 = _T_27 ? io_in_a : _GEN_598; // @[Conditional.scala 39:67 ALU.scala 296:18]
  wire  _GEN_605 = _T_27 ? io_validin_a : _GEN_599; // @[Conditional.scala 39:67 ALU.scala 297:24]
  wire [63:0] _GEN_606 = _T_26 ? _temp_result_a_T_37 : _GEN_600; // @[Conditional.scala 39:67 ALU.scala 282:21]
  wire [63:0] _GEN_607 = _T_26 ? io_in_a : _GEN_601; // @[Conditional.scala 39:67 ALU.scala 283:21]
  wire  _GEN_608 = _T_26 ? _temp_valid_a_T : _GEN_602; // @[Conditional.scala 39:67 ALU.scala 284:20]
  wire  _GEN_609 = _T_26 ? io_validin_a : _GEN_603; // @[Conditional.scala 39:67 ALU.scala 285:20]
  wire [63:0] _GEN_610 = _T_26 ? io_in_a : _GEN_604; // @[Conditional.scala 39:67 ALU.scala 287:18]
  wire  _GEN_611 = _T_26 ? io_validin_a : _GEN_605; // @[Conditional.scala 39:67 ALU.scala 288:24]
  wire [63:0] _GEN_612 = _T_25 ? _temp_result_a_T_37 : _GEN_606; // @[Conditional.scala 39:67 ALU.scala 273:21]
  wire [63:0] _GEN_613 = _T_25 ? io_in_b : _GEN_607; // @[Conditional.scala 39:67 ALU.scala 274:21]
  wire  _GEN_614 = _T_25 ? _temp_valid_a_T : _GEN_608; // @[Conditional.scala 39:67 ALU.scala 275:20]
  wire  _GEN_615 = _T_25 ? io_validin_b : _GEN_609; // @[Conditional.scala 39:67 ALU.scala 276:20]
  wire [63:0] _GEN_616 = _T_25 ? io_in_a : _GEN_610; // @[Conditional.scala 39:67 ALU.scala 278:18]
  wire  _GEN_617 = _T_25 ? io_validin_a : _GEN_611; // @[Conditional.scala 39:67 ALU.scala 279:24]
  wire [63:0] _GEN_618 = _T_24 ? _temp_result_a_T_25 : _GEN_612; // @[Conditional.scala 39:67 ALU.scala 262:21]
  wire [63:0] _GEN_619 = _T_24 ? io_in_a : _GEN_613; // @[Conditional.scala 39:67 ALU.scala 263:21]
  wire  _GEN_620 = _T_24 ? _temp_valid_a_T_6 : _GEN_614; // @[Conditional.scala 39:67 ALU.scala 264:20]
  wire  _GEN_621 = _T_24 ? 1'h0 : _GEN_615; // @[Conditional.scala 39:67 ALU.scala 265:20]
  wire [63:0] _GEN_622 = _T_24 ? snapshot_a : _GEN_616; // @[Conditional.scala 39:67 ALU.scala 267:18]
  wire  _GEN_623 = _T_24 ? snapshot_valid_a : _GEN_617; // @[Conditional.scala 39:67 ALU.scala 268:24]
  wire [63:0] _GEN_624 = _T_23 ? _temp_result_a_T_25 : _GEN_618; // @[Conditional.scala 39:67 ALU.scala 253:21]
  wire [63:0] _GEN_625 = _T_23 ? io_in_a : _GEN_619; // @[Conditional.scala 39:67 ALU.scala 254:21]
  wire  _GEN_626 = _T_23 ? _temp_valid_a_T_6 : _GEN_620; // @[Conditional.scala 39:67 ALU.scala 255:20]
  wire  _GEN_627 = _T_23 ? io_validin_a : _GEN_621; // @[Conditional.scala 39:67 ALU.scala 256:20]
  wire [63:0] _GEN_628 = _T_23 ? snapshot_a : _GEN_622; // @[Conditional.scala 39:67 ALU.scala 258:18]
  wire  _GEN_629 = _T_23 ? snapshot_valid_a : _GEN_623; // @[Conditional.scala 39:67 ALU.scala 259:24]
  wire [63:0] _GEN_630 = _T_22 ? _temp_result_a_T_25 : _GEN_624; // @[Conditional.scala 39:67 ALU.scala 244:21]
  wire [63:0] _GEN_631 = _T_22 ? io_in_b : _GEN_625; // @[Conditional.scala 39:67 ALU.scala 245:21]
  wire  _GEN_632 = _T_22 ? _temp_valid_a_T_6 : _GEN_626; // @[Conditional.scala 39:67 ALU.scala 246:20]
  wire  _GEN_633 = _T_22 ? io_validin_b : _GEN_627; // @[Conditional.scala 39:67 ALU.scala 247:20]
  wire [63:0] _GEN_634 = _T_22 ? snapshot_a : _GEN_628; // @[Conditional.scala 39:67 ALU.scala 249:18]
  wire  _GEN_635 = _T_22 ? snapshot_valid_a : _GEN_629; // @[Conditional.scala 39:67 ALU.scala 250:24]
  wire [63:0] _GEN_636 = _T_21 ? _temp_result_a_T_25 : _GEN_630; // @[Conditional.scala 39:67 ALU.scala 235:21]
  wire [63:0] _GEN_637 = _T_21 ? io_in_a : _GEN_631; // @[Conditional.scala 39:67 ALU.scala 236:21]
  wire  _GEN_638 = _T_21 ? _temp_valid_a_T_6 : _GEN_632; // @[Conditional.scala 39:67 ALU.scala 237:20]
  wire  _GEN_639 = _T_21 ? 1'h0 : _GEN_633; // @[Conditional.scala 39:67 ALU.scala 238:20]
  wire [63:0] _GEN_640 = _T_21 ? io_in_a : _GEN_634; // @[Conditional.scala 39:67 ALU.scala 240:18]
  wire  _GEN_641 = _T_21 ? io_validin_a : _GEN_635; // @[Conditional.scala 39:67 ALU.scala 241:24]
  wire [63:0] _GEN_642 = _T_20 ? _temp_result_a_T_25 : _GEN_636; // @[Conditional.scala 39:67 ALU.scala 226:21]
  wire [63:0] _GEN_643 = _T_20 ? io_in_a : _GEN_637; // @[Conditional.scala 39:67 ALU.scala 227:21]
  wire  _GEN_644 = _T_20 ? _temp_valid_a_T_6 : _GEN_638; // @[Conditional.scala 39:67 ALU.scala 228:20]
  wire  _GEN_645 = _T_20 ? io_validin_a : _GEN_639; // @[Conditional.scala 39:67 ALU.scala 229:20]
  wire [63:0] _GEN_646 = _T_20 ? io_in_a : _GEN_640; // @[Conditional.scala 39:67 ALU.scala 231:18]
  wire  _GEN_647 = _T_20 ? io_validin_a : _GEN_641; // @[Conditional.scala 39:67 ALU.scala 232:24]
  wire [63:0] _GEN_648 = _T_19 ? _temp_result_a_T_25 : _GEN_642; // @[Conditional.scala 39:67 ALU.scala 217:21]
  wire [63:0] _GEN_649 = _T_19 ? io_in_b : _GEN_643; // @[Conditional.scala 39:67 ALU.scala 218:21]
  wire  _GEN_650 = _T_19 ? _temp_valid_a_T_6 : _GEN_644; // @[Conditional.scala 39:67 ALU.scala 219:20]
  wire  _GEN_651 = _T_19 ? io_validin_b : _GEN_645; // @[Conditional.scala 39:67 ALU.scala 220:20]
  wire [63:0] _GEN_652 = _T_19 ? io_in_a : _GEN_646; // @[Conditional.scala 39:67 ALU.scala 222:18]
  wire  _GEN_653 = _T_19 ? io_validin_a : _GEN_647; // @[Conditional.scala 39:67 ALU.scala 223:24]
  wire [63:0] _GEN_654 = _T_18 ? _temp_result_a_T_13 : _GEN_648; // @[Conditional.scala 39:67 ALU.scala 208:21]
  wire [63:0] _GEN_655 = _T_18 ? io_in_a : _GEN_649; // @[Conditional.scala 39:67 ALU.scala 209:21]
  wire  _GEN_656 = _T_18 ? _temp_valid_a_T : _GEN_650; // @[Conditional.scala 39:67 ALU.scala 210:20]
  wire  _GEN_657 = _T_18 ? 1'h0 : _GEN_651; // @[Conditional.scala 39:67 ALU.scala 211:20]
  wire [63:0] _GEN_658 = _T_18 ? snapshot_a : _GEN_652; // @[Conditional.scala 39:67 ALU.scala 213:18]
  wire  _GEN_659 = _T_18 ? snapshot_valid_a : _GEN_653; // @[Conditional.scala 39:67 ALU.scala 214:24]
  wire [63:0] _GEN_660 = _T_17 ? _temp_result_a_T_13 : _GEN_654; // @[Conditional.scala 39:67 ALU.scala 199:21]
  wire [63:0] _GEN_661 = _T_17 ? io_in_a : _GEN_655; // @[Conditional.scala 39:67 ALU.scala 200:21]
  wire  _GEN_662 = _T_17 ? _temp_valid_a_T : _GEN_656; // @[Conditional.scala 39:67 ALU.scala 201:20]
  wire  _GEN_663 = _T_17 ? io_validin_a : _GEN_657; // @[Conditional.scala 39:67 ALU.scala 202:20]
  wire [63:0] _GEN_664 = _T_17 ? snapshot_a : _GEN_658; // @[Conditional.scala 39:67 ALU.scala 204:18]
  wire  _GEN_665 = _T_17 ? snapshot_valid_a : _GEN_659; // @[Conditional.scala 39:67 ALU.scala 205:24]
  wire [63:0] _GEN_666 = _T_16 ? _temp_result_a_T_13 : _GEN_660; // @[Conditional.scala 39:67 ALU.scala 190:21]
  wire [63:0] _GEN_667 = _T_16 ? io_in_b : _GEN_661; // @[Conditional.scala 39:67 ALU.scala 191:21]
  wire  _GEN_668 = _T_16 ? _temp_valid_a_T : _GEN_662; // @[Conditional.scala 39:67 ALU.scala 192:20]
  wire  _GEN_669 = _T_16 ? io_validin_b : _GEN_663; // @[Conditional.scala 39:67 ALU.scala 193:20]
  wire [63:0] _GEN_670 = _T_16 ? snapshot_a : _GEN_664; // @[Conditional.scala 39:67 ALU.scala 195:18]
  wire  _GEN_671 = _T_16 ? snapshot_valid_a : _GEN_665; // @[Conditional.scala 39:67 ALU.scala 196:24]
  wire [63:0] _GEN_672 = _T_15 ? _temp_result_a_T_13 : _GEN_666; // @[Conditional.scala 39:67 ALU.scala 181:21]
  wire [63:0] _GEN_673 = _T_15 ? io_in_b : _GEN_667; // @[Conditional.scala 39:67 ALU.scala 182:21]
  wire  _GEN_674 = _T_15 ? _temp_valid_a_T : _GEN_668; // @[Conditional.scala 39:67 ALU.scala 183:20]
  wire  _GEN_675 = _T_15 ? 1'h0 : _GEN_669; // @[Conditional.scala 39:67 ALU.scala 184:20]
  wire [63:0] _GEN_676 = _T_15 ? io_in_a : _GEN_670; // @[Conditional.scala 39:67 ALU.scala 186:18]
  wire  _GEN_677 = _T_15 ? io_validin_a : _GEN_671; // @[Conditional.scala 39:67 ALU.scala 187:24]
  wire [63:0] _GEN_678 = _T_14 ? _temp_result_a_T_13 : _GEN_672; // @[Conditional.scala 39:67 ALU.scala 172:21]
  wire [63:0] _GEN_679 = _T_14 ? io_in_a : _GEN_673; // @[Conditional.scala 39:67 ALU.scala 173:21]
  wire  _GEN_680 = _T_14 ? _temp_valid_a_T : _GEN_674; // @[Conditional.scala 39:67 ALU.scala 174:20]
  wire  _GEN_681 = _T_14 ? io_validin_a : _GEN_675; // @[Conditional.scala 39:67 ALU.scala 175:20]
  wire [63:0] _GEN_682 = _T_14 ? io_in_a : _GEN_676; // @[Conditional.scala 39:67 ALU.scala 177:18]
  wire  _GEN_683 = _T_14 ? io_validin_a : _GEN_677; // @[Conditional.scala 39:67 ALU.scala 178:24]
  wire [63:0] _GEN_684 = _T_13 ? _temp_result_a_T_13 : _GEN_678; // @[Conditional.scala 39:67 ALU.scala 163:21]
  wire [63:0] _GEN_685 = _T_13 ? io_in_b : _GEN_679; // @[Conditional.scala 39:67 ALU.scala 164:21]
  wire  _GEN_686 = _T_13 ? _temp_valid_a_T : _GEN_680; // @[Conditional.scala 39:67 ALU.scala 165:20]
  wire  _GEN_687 = _T_13 ? io_validin_b : _GEN_681; // @[Conditional.scala 39:67 ALU.scala 166:20]
  wire [63:0] _GEN_688 = _T_13 ? io_in_a : _GEN_682; // @[Conditional.scala 39:67 ALU.scala 168:18]
  wire  _GEN_689 = _T_13 ? io_validin_a : _GEN_683; // @[Conditional.scala 39:67 ALU.scala 169:24]
  wire [63:0] _GEN_690 = _T_12 ? _temp_result_a_T_6 : _GEN_684; // @[Conditional.scala 39:67 ALU.scala 152:21]
  wire [63:0] _GEN_691 = _T_12 ? io_in_a : _GEN_685; // @[Conditional.scala 39:67 ALU.scala 153:21]
  wire  _GEN_692 = _T_12 ? _temp_valid_a_T_6 : _GEN_686; // @[Conditional.scala 39:67 ALU.scala 154:20]
  wire  _GEN_693 = _T_12 ? 1'h0 : _GEN_687; // @[Conditional.scala 39:67 ALU.scala 155:20]
  wire [63:0] _GEN_694 = _T_12 ? snapshot_a : _GEN_688; // @[Conditional.scala 39:67 ALU.scala 157:18]
  wire  _GEN_695 = _T_12 ? snapshot_valid_a : _GEN_689; // @[Conditional.scala 39:67 ALU.scala 158:24]
  wire [63:0] _GEN_696 = _T_11 ? _temp_result_a_T_6 : _GEN_690; // @[Conditional.scala 39:67 ALU.scala 143:21]
  wire [63:0] _GEN_697 = _T_11 ? io_in_a : _GEN_691; // @[Conditional.scala 39:67 ALU.scala 144:21]
  wire  _GEN_698 = _T_11 ? _temp_valid_a_T_6 : _GEN_692; // @[Conditional.scala 39:67 ALU.scala 145:20]
  wire  _GEN_699 = _T_11 ? io_validin_a : _GEN_693; // @[Conditional.scala 39:67 ALU.scala 146:20]
  wire [63:0] _GEN_700 = _T_11 ? snapshot_a : _GEN_694; // @[Conditional.scala 39:67 ALU.scala 148:18]
  wire  _GEN_701 = _T_11 ? snapshot_valid_a : _GEN_695; // @[Conditional.scala 39:67 ALU.scala 149:24]
  wire [63:0] _GEN_702 = _T_10 ? _temp_result_a_T_6 : _GEN_696; // @[Conditional.scala 39:67 ALU.scala 134:21]
  wire [63:0] _GEN_703 = _T_10 ? io_in_b : _GEN_697; // @[Conditional.scala 39:67 ALU.scala 135:21]
  wire  _GEN_704 = _T_10 ? _temp_valid_a_T_6 : _GEN_698; // @[Conditional.scala 39:67 ALU.scala 136:20]
  wire  _GEN_705 = _T_10 ? io_validin_b : _GEN_699; // @[Conditional.scala 39:67 ALU.scala 137:20]
  wire [63:0] _GEN_706 = _T_10 ? snapshot_a : _GEN_700; // @[Conditional.scala 39:67 ALU.scala 139:18]
  wire  _GEN_707 = _T_10 ? snapshot_valid_a : _GEN_701; // @[Conditional.scala 39:67 ALU.scala 140:24]
  wire [63:0] _GEN_708 = _T_9 ? _temp_result_a_T_6 : _GEN_702; // @[Conditional.scala 39:67 ALU.scala 125:21]
  wire [63:0] _GEN_709 = _T_9 ? io_in_a : _GEN_703; // @[Conditional.scala 39:67 ALU.scala 126:21]
  wire  _GEN_710 = _T_9 ? _temp_valid_a_T_6 : _GEN_704; // @[Conditional.scala 39:67 ALU.scala 127:20]
  wire  _GEN_711 = _T_9 ? 1'h0 : _GEN_705; // @[Conditional.scala 39:67 ALU.scala 128:20]
  wire [63:0] _GEN_712 = _T_9 ? io_in_a : _GEN_706; // @[Conditional.scala 39:67 ALU.scala 130:18]
  wire  _GEN_713 = _T_9 ? io_validin_a : _GEN_707; // @[Conditional.scala 39:67 ALU.scala 131:24]
  wire [63:0] _GEN_714 = _T_8 ? _temp_result_a_T_6 : _GEN_708; // @[Conditional.scala 39:67 ALU.scala 116:21]
  wire [63:0] _GEN_715 = _T_8 ? io_in_a : _GEN_709; // @[Conditional.scala 39:67 ALU.scala 117:21]
  wire  _GEN_716 = _T_8 ? _temp_valid_a_T_6 : _GEN_710; // @[Conditional.scala 39:67 ALU.scala 118:20]
  wire  _GEN_717 = _T_8 ? io_validin_a : _GEN_711; // @[Conditional.scala 39:67 ALU.scala 119:20]
  wire [63:0] _GEN_718 = _T_8 ? io_in_a : _GEN_712; // @[Conditional.scala 39:67 ALU.scala 121:18]
  wire  _GEN_719 = _T_8 ? io_validin_a : _GEN_713; // @[Conditional.scala 39:67 ALU.scala 122:24]
  wire [63:0] _GEN_720 = _T_7 ? _temp_result_a_T_6 : _GEN_714; // @[Conditional.scala 39:67 ALU.scala 107:21]
  wire [63:0] _GEN_721 = _T_7 ? io_in_b : _GEN_715; // @[Conditional.scala 39:67 ALU.scala 108:21]
  wire  _GEN_722 = _T_7 ? snapshot_valid_a & io_validin_b : _GEN_716; // @[Conditional.scala 39:67 ALU.scala 109:20]
  wire  _GEN_723 = _T_7 ? io_validin_b : _GEN_717; // @[Conditional.scala 39:67 ALU.scala 110:20]
  wire [63:0] _GEN_724 = _T_7 ? io_in_a : _GEN_718; // @[Conditional.scala 39:67 ALU.scala 112:18]
  wire  _GEN_725 = _T_7 ? io_validin_a : _GEN_719; // @[Conditional.scala 39:67 ALU.scala 113:24]
  wire [63:0] _GEN_726 = _T_6 ? _temp_result_a_T : _GEN_720; // @[Conditional.scala 39:67 ALU.scala 98:21]
  wire [63:0] _GEN_727 = _T_6 ? io_in_a : _GEN_721; // @[Conditional.scala 39:67 ALU.scala 99:21]
  wire  _GEN_728 = _T_6 ? _temp_valid_a_T : _GEN_722; // @[Conditional.scala 39:67 ALU.scala 100:20]
  wire  _GEN_729 = _T_6 ? 1'h0 : _GEN_723; // @[Conditional.scala 39:67 ALU.scala 101:20]
  wire [63:0] _GEN_730 = _T_6 ? snapshot_a : _GEN_724; // @[Conditional.scala 39:67 ALU.scala 103:18]
  wire  _GEN_731 = _T_6 ? snapshot_valid_a : _GEN_725; // @[Conditional.scala 39:67 ALU.scala 104:24]
  wire [63:0] _GEN_732 = _T_5 ? _temp_result_a_T : _GEN_726; // @[Conditional.scala 39:67 ALU.scala 89:21]
  wire [63:0] _GEN_733 = _T_5 ? io_in_a : _GEN_727; // @[Conditional.scala 39:67 ALU.scala 90:21]
  wire  _GEN_734 = _T_5 ? _temp_valid_a_T : _GEN_728; // @[Conditional.scala 39:67 ALU.scala 91:20]
  wire  _GEN_735 = _T_5 ? io_validin_a : _GEN_729; // @[Conditional.scala 39:67 ALU.scala 92:20]
  wire [63:0] _GEN_736 = _T_5 ? snapshot_a : _GEN_730; // @[Conditional.scala 39:67 ALU.scala 94:18]
  wire  _GEN_737 = _T_5 ? snapshot_valid_a : _GEN_731; // @[Conditional.scala 39:67 ALU.scala 95:24]
  wire [63:0] _GEN_738 = _T_4 ? _temp_result_a_T : _GEN_732; // @[Conditional.scala 39:67 ALU.scala 80:21]
  wire [63:0] _GEN_739 = _T_4 ? io_in_b : _GEN_733; // @[Conditional.scala 39:67 ALU.scala 81:21]
  wire  _GEN_740 = _T_4 ? _temp_valid_a_T : _GEN_734; // @[Conditional.scala 39:67 ALU.scala 82:20]
  wire  _GEN_741 = _T_4 ? io_validin_b : _GEN_735; // @[Conditional.scala 39:67 ALU.scala 83:20]
  wire [63:0] _GEN_742 = _T_4 ? snapshot_a : _GEN_736; // @[Conditional.scala 39:67 ALU.scala 85:18]
  wire  _GEN_743 = _T_4 ? snapshot_valid_a : _GEN_737; // @[Conditional.scala 39:67 ALU.scala 86:24]
  wire [63:0] _GEN_744 = _T_3 ? _temp_result_a_T : _GEN_738; // @[Conditional.scala 39:67 ALU.scala 71:21]
  wire [63:0] _GEN_745 = _T_3 ? io_in_b : _GEN_739; // @[Conditional.scala 39:67 ALU.scala 72:21]
  wire  _GEN_746 = _T_3 ? _temp_valid_a_T : _GEN_740; // @[Conditional.scala 39:67 ALU.scala 73:20]
  wire  _GEN_747 = _T_3 ? 1'h0 : _GEN_741; // @[Conditional.scala 39:67 ALU.scala 74:20]
  wire [63:0] _GEN_748 = _T_3 ? io_in_a : _GEN_742; // @[Conditional.scala 39:67 ALU.scala 76:18]
  wire  _GEN_749 = _T_3 ? io_validin_a : _GEN_743; // @[Conditional.scala 39:67 ALU.scala 77:24]
  assign io_out_a = temp_result_a; // @[ALU.scala 1215:12]
  assign io_out_b = temp_result_b; // @[ALU.scala 1216:12]
  assign io_validout_a = temp_valid_a; // @[ALU.scala 1217:17]
  assign io_validout_b = temp_valid_b; // @[ALU.scala 1218:17]
  always @(posedge clock) begin
    if (reset) begin // @[ALU.scala 23:27]
      snapshot_a <= 64'h0; // @[ALU.scala 23:27]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        snapshot_a <= io_in_a; // @[ALU.scala 58:18]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        snapshot_a <= io_in_a; // @[ALU.scala 67:18]
      end else begin
        snapshot_a <= _GEN_748;
      end
    end
    if (reset) begin // @[ALU.scala 25:33]
      snapshot_valid_a <= 1'h0; // @[ALU.scala 25:33]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        snapshot_valid_a <= io_validin_a; // @[ALU.scala 59:24]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        snapshot_valid_a <= io_validin_a; // @[ALU.scala 68:24]
      end else begin
        snapshot_valid_a <= _GEN_749;
      end
    end
    if (reset) begin // @[ALU.scala 28:30]
      temp_result_a <= 64'h0; // @[ALU.scala 28:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result_a <= io_in_a; // @[ALU.scala 43:21]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result_a <= _temp_result_a_T; // @[ALU.scala 53:21]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result_a <= _temp_result_a_T; // @[ALU.scala 62:21]
    end else begin
      temp_result_a <= _GEN_744;
    end
    if (reset) begin // @[ALU.scala 29:30]
      temp_result_b <= 64'h0; // @[ALU.scala 29:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_result_b <= io_in_b; // @[ALU.scala 44:21]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_result_b <= io_in_b; // @[ALU.scala 54:21]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_result_b <= io_in_a; // @[ALU.scala 63:21]
    end else begin
      temp_result_b <= _GEN_745;
    end
    if (reset) begin // @[ALU.scala 32:29]
      temp_valid_a <= 1'h0; // @[ALU.scala 32:29]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_valid_a <= 1'h0; // @[ALU.scala 45:20]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_valid_a <= io_validin_a & io_validin_b; // @[ALU.scala 55:20]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_valid_a <= _temp_valid_a_T; // @[ALU.scala 64:20]
    end else begin
      temp_valid_a <= _GEN_746;
    end
    if (reset) begin // @[ALU.scala 33:29]
      temp_valid_b <= 1'h0; // @[ALU.scala 33:29]
    end else if (_T) begin // @[Conditional.scala 40:58]
      temp_valid_b <= 1'h0; // @[ALU.scala 46:20]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      temp_valid_b <= io_validin_b; // @[ALU.scala 56:20]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      temp_valid_b <= io_validin_a; // @[ALU.scala 65:20]
    end else begin
      temp_valid_b <= _GEN_747;
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
  _RAND_0 = {2{`RANDOM}};
  snapshot_a = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  snapshot_valid_a = _RAND_1[0:0];
  _RAND_2 = {2{`RANDOM}};
  temp_result_a = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  temp_result_b = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  temp_valid_a = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  temp_valid_b = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PEcol(
  input          clock,
  input          reset,
  input  [63:0]  io_d_in_0_a,
  input          io_d_in_0_valid_a,
  input  [63:0]  io_d_in_0_b,
  input          io_d_in_0_valid_b,
  input  [63:0]  io_d_in_1_a,
  input          io_d_in_1_valid_a,
  input  [63:0]  io_d_in_1_b,
  input          io_d_in_1_valid_b,
  input  [63:0]  io_d_in_2_a,
  input          io_d_in_2_valid_a,
  input  [63:0]  io_d_in_2_b,
  input          io_d_in_2_valid_b,
  input  [63:0]  io_d_in_3_a,
  input          io_d_in_3_valid_a,
  input  [63:0]  io_d_in_3_b,
  input          io_d_in_3_valid_b,
  input  [63:0]  io_d_in_4_a,
  input          io_d_in_4_valid_a,
  input  [63:0]  io_d_in_4_b,
  input          io_d_in_4_valid_b,
  input  [63:0]  io_d_in_5_a,
  input          io_d_in_5_valid_a,
  input  [63:0]  io_d_in_5_b,
  input          io_d_in_5_valid_b,
  input  [63:0]  io_d_in_6_a,
  input          io_d_in_6_valid_a,
  input  [63:0]  io_d_in_6_b,
  input          io_d_in_6_valid_b,
  input  [63:0]  io_d_in_7_a,
  input          io_d_in_7_valid_a,
  input  [63:0]  io_d_in_7_b,
  input          io_d_in_7_valid_b,
  input  [63:0]  io_d_in_8_a,
  input          io_d_in_8_valid_a,
  input  [63:0]  io_d_in_8_b,
  input          io_d_in_8_valid_b,
  input  [63:0]  io_d_in_9_a,
  input          io_d_in_9_valid_a,
  input  [63:0]  io_d_in_9_b,
  input          io_d_in_9_valid_b,
  input  [63:0]  io_d_in_10_a,
  input          io_d_in_10_valid_a,
  input  [63:0]  io_d_in_10_b,
  input          io_d_in_10_valid_b,
  input  [63:0]  io_d_in_11_a,
  input          io_d_in_11_valid_a,
  input  [63:0]  io_d_in_11_b,
  input          io_d_in_11_valid_b,
  input  [63:0]  io_d_in_12_a,
  input          io_d_in_12_valid_a,
  input  [63:0]  io_d_in_12_b,
  input          io_d_in_12_valid_b,
  input  [63:0]  io_d_in_13_a,
  input          io_d_in_13_valid_a,
  input  [63:0]  io_d_in_13_b,
  input          io_d_in_13_valid_b,
  input  [63:0]  io_d_in_14_a,
  input          io_d_in_14_valid_a,
  input  [63:0]  io_d_in_14_b,
  input          io_d_in_14_valid_b,
  input  [63:0]  io_d_in_15_a,
  input          io_d_in_15_valid_a,
  input  [63:0]  io_d_in_15_b,
  input          io_d_in_15_valid_b,
  input  [63:0]  io_d_in_16_a,
  input          io_d_in_16_valid_a,
  input  [63:0]  io_d_in_16_b,
  input          io_d_in_16_valid_b,
  input  [63:0]  io_d_in_17_a,
  input          io_d_in_17_valid_a,
  input  [63:0]  io_d_in_17_b,
  input          io_d_in_17_valid_b,
  input  [63:0]  io_d_in_18_a,
  input          io_d_in_18_valid_a,
  input  [63:0]  io_d_in_18_b,
  input          io_d_in_18_valid_b,
  input  [63:0]  io_d_in_19_a,
  input          io_d_in_19_valid_a,
  input  [63:0]  io_d_in_19_b,
  input          io_d_in_19_valid_b,
  input  [63:0]  io_d_in_20_a,
  input          io_d_in_20_valid_a,
  input  [63:0]  io_d_in_20_b,
  input          io_d_in_20_valid_b,
  input  [63:0]  io_d_in_21_a,
  input          io_d_in_21_valid_a,
  input  [63:0]  io_d_in_21_b,
  input          io_d_in_21_valid_b,
  input  [63:0]  io_d_in_22_a,
  input          io_d_in_22_valid_a,
  input  [63:0]  io_d_in_22_b,
  input          io_d_in_22_valid_b,
  input  [63:0]  io_d_in_23_a,
  input          io_d_in_23_valid_a,
  input  [63:0]  io_d_in_23_b,
  input          io_d_in_23_valid_b,
  input  [63:0]  io_d_in_24_a,
  input          io_d_in_24_valid_a,
  input  [63:0]  io_d_in_24_b,
  input          io_d_in_24_valid_b,
  input  [63:0]  io_d_in_25_a,
  input          io_d_in_25_valid_a,
  input  [63:0]  io_d_in_25_b,
  input          io_d_in_25_valid_b,
  input  [63:0]  io_d_in_26_a,
  input          io_d_in_26_valid_a,
  input  [63:0]  io_d_in_26_b,
  input          io_d_in_26_valid_b,
  input  [63:0]  io_d_in_27_a,
  input          io_d_in_27_valid_a,
  input  [63:0]  io_d_in_27_b,
  input          io_d_in_27_valid_b,
  input  [63:0]  io_d_in_28_a,
  input          io_d_in_28_valid_a,
  input  [63:0]  io_d_in_28_b,
  input          io_d_in_28_valid_b,
  input  [63:0]  io_d_in_29_a,
  input          io_d_in_29_valid_a,
  input  [63:0]  io_d_in_29_b,
  input          io_d_in_29_valid_b,
  input  [63:0]  io_d_in_30_a,
  input          io_d_in_30_valid_a,
  input  [63:0]  io_d_in_30_b,
  input          io_d_in_30_valid_b,
  input  [63:0]  io_d_in_31_a,
  input          io_d_in_31_valid_a,
  input  [63:0]  io_d_in_31_b,
  input          io_d_in_31_valid_b,
  output [63:0]  io_d_out_0_a,
  output         io_d_out_0_valid_a,
  output [63:0]  io_d_out_0_b,
  output         io_d_out_0_valid_b,
  output [63:0]  io_d_out_1_a,
  output         io_d_out_1_valid_a,
  output [63:0]  io_d_out_1_b,
  output         io_d_out_1_valid_b,
  output [63:0]  io_d_out_2_a,
  output         io_d_out_2_valid_a,
  output [63:0]  io_d_out_2_b,
  output         io_d_out_2_valid_b,
  output [63:0]  io_d_out_3_a,
  output         io_d_out_3_valid_a,
  output [63:0]  io_d_out_3_b,
  output         io_d_out_3_valid_b,
  output [63:0]  io_d_out_4_a,
  output         io_d_out_4_valid_a,
  output [63:0]  io_d_out_4_b,
  output         io_d_out_4_valid_b,
  output [63:0]  io_d_out_5_a,
  output         io_d_out_5_valid_a,
  output [63:0]  io_d_out_5_b,
  output         io_d_out_5_valid_b,
  output [63:0]  io_d_out_6_a,
  output         io_d_out_6_valid_a,
  output [63:0]  io_d_out_6_b,
  output         io_d_out_6_valid_b,
  output [63:0]  io_d_out_7_a,
  output         io_d_out_7_valid_a,
  output [63:0]  io_d_out_7_b,
  output         io_d_out_7_valid_b,
  output [63:0]  io_d_out_8_a,
  output         io_d_out_8_valid_a,
  output [63:0]  io_d_out_8_b,
  output         io_d_out_8_valid_b,
  output [63:0]  io_d_out_9_a,
  output         io_d_out_9_valid_a,
  output [63:0]  io_d_out_9_b,
  output         io_d_out_9_valid_b,
  output [63:0]  io_d_out_10_a,
  output         io_d_out_10_valid_a,
  output [63:0]  io_d_out_10_b,
  output         io_d_out_10_valid_b,
  output [63:0]  io_d_out_11_a,
  output         io_d_out_11_valid_a,
  output [63:0]  io_d_out_11_b,
  output         io_d_out_11_valid_b,
  output [63:0]  io_d_out_12_a,
  output         io_d_out_12_valid_a,
  output [63:0]  io_d_out_12_b,
  output         io_d_out_12_valid_b,
  output [63:0]  io_d_out_13_a,
  output         io_d_out_13_valid_a,
  output [63:0]  io_d_out_13_b,
  output         io_d_out_13_valid_b,
  output [63:0]  io_d_out_14_a,
  output         io_d_out_14_valid_a,
  output [63:0]  io_d_out_14_b,
  output         io_d_out_14_valid_b,
  output [63:0]  io_d_out_15_a,
  output         io_d_out_15_valid_a,
  output [63:0]  io_d_out_15_b,
  output         io_d_out_15_valid_b,
  output [63:0]  io_d_out_16_a,
  output         io_d_out_16_valid_a,
  output [63:0]  io_d_out_16_b,
  output         io_d_out_16_valid_b,
  output [63:0]  io_d_out_17_a,
  output         io_d_out_17_valid_a,
  output [63:0]  io_d_out_17_b,
  output         io_d_out_17_valid_b,
  output [63:0]  io_d_out_18_a,
  output         io_d_out_18_valid_a,
  output [63:0]  io_d_out_18_b,
  output         io_d_out_18_valid_b,
  output [63:0]  io_d_out_19_a,
  output         io_d_out_19_valid_a,
  output [63:0]  io_d_out_19_b,
  output         io_d_out_19_valid_b,
  output [63:0]  io_d_out_20_a,
  output         io_d_out_20_valid_a,
  output [63:0]  io_d_out_20_b,
  output         io_d_out_20_valid_b,
  output [63:0]  io_d_out_21_a,
  output         io_d_out_21_valid_a,
  output [63:0]  io_d_out_21_b,
  output         io_d_out_21_valid_b,
  output [63:0]  io_d_out_22_a,
  output         io_d_out_22_valid_a,
  output [63:0]  io_d_out_22_b,
  output         io_d_out_22_valid_b,
  output [63:0]  io_d_out_23_a,
  output         io_d_out_23_valid_a,
  output [63:0]  io_d_out_23_b,
  output         io_d_out_23_valid_b,
  output [63:0]  io_d_out_24_a,
  output         io_d_out_24_valid_a,
  output [63:0]  io_d_out_24_b,
  output         io_d_out_24_valid_b,
  output [63:0]  io_d_out_25_a,
  output         io_d_out_25_valid_a,
  output [63:0]  io_d_out_25_b,
  output         io_d_out_25_valid_b,
  output [63:0]  io_d_out_26_a,
  output         io_d_out_26_valid_a,
  output [63:0]  io_d_out_26_b,
  output         io_d_out_26_valid_b,
  output [63:0]  io_d_out_27_a,
  output         io_d_out_27_valid_a,
  output [63:0]  io_d_out_27_b,
  output         io_d_out_27_valid_b,
  output [63:0]  io_d_out_28_a,
  output         io_d_out_28_valid_a,
  output [63:0]  io_d_out_28_b,
  output         io_d_out_28_valid_b,
  output [63:0]  io_d_out_29_a,
  output         io_d_out_29_valid_a,
  output [63:0]  io_d_out_29_b,
  output         io_d_out_29_valid_b,
  output [63:0]  io_d_out_30_a,
  output         io_d_out_30_valid_a,
  output [63:0]  io_d_out_30_b,
  output         io_d_out_30_valid_b,
  output [63:0]  io_d_out_31_a,
  output         io_d_out_31_valid_a,
  output [63:0]  io_d_out_31_b,
  output         io_d_out_31_valid_b,
  input  [1:0]   io_tagin,
  input  [7:0]   io_addrin,
  output [1:0]   io_tagout,
  output [7:0]   io_addrout,
  input  [223:0] io_instr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  ALU64_32_0_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_0_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_0_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_0_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_0_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_0_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_0_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_0_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_0_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_0_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_0_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_1_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_1_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_1_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_1_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_1_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_1_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_1_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_1_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_1_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_1_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_1_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_2_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_2_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_2_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_2_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_2_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_2_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_2_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_2_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_2_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_2_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_2_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_3_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_3_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_3_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_3_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_3_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_3_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_3_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_3_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_3_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_3_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_3_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_4_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_4_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_4_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_4_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_4_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_4_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_4_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_4_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_4_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_4_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_4_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_5_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_5_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_5_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_5_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_5_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_5_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_5_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_5_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_5_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_5_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_5_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_6_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_6_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_6_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_6_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_6_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_6_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_6_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_6_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_6_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_6_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_6_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_7_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_7_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_7_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_7_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_7_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_7_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_7_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_7_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_7_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_7_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_7_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_8_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_8_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_8_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_8_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_8_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_8_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_8_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_8_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_8_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_8_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_8_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_9_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_9_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_9_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_9_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_9_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_9_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_9_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_9_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_9_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_9_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_9_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_10_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_10_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_10_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_10_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_10_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_10_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_10_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_10_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_10_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_10_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_10_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_11_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_11_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_11_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_11_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_11_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_11_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_11_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_11_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_11_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_11_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_11_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_12_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_12_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_12_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_12_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_12_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_12_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_12_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_12_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_12_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_12_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_12_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_13_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_13_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_13_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_13_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_13_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_13_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_13_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_13_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_13_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_13_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_13_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_14_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_14_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_14_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_14_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_14_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_14_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_14_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_14_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_14_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_14_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_14_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_15_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_15_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_15_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_15_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_15_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_15_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_15_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_15_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_15_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_15_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_15_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_16_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_16_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_16_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_16_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_16_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_16_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_16_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_16_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_16_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_16_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_16_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_17_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_17_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_17_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_17_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_17_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_17_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_17_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_17_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_17_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_17_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_17_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_18_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_18_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_18_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_18_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_18_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_18_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_18_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_18_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_18_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_18_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_18_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_19_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_19_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_19_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_19_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_19_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_19_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_19_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_19_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_19_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_19_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_19_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_20_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_20_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_20_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_20_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_20_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_20_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_20_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_20_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_20_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_20_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_20_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_21_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_21_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_21_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_21_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_21_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_21_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_21_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_21_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_21_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_21_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_21_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_22_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_22_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_22_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_22_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_22_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_22_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_22_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_22_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_22_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_22_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_22_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_23_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_23_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_23_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_23_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_23_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_23_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_23_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_23_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_23_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_23_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_23_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_24_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_24_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_24_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_24_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_24_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_24_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_24_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_24_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_24_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_24_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_24_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_25_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_25_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_25_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_25_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_25_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_25_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_25_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_25_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_25_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_25_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_25_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_26_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_26_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_26_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_26_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_26_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_26_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_26_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_26_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_26_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_26_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_26_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_27_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_27_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_27_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_27_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_27_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_27_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_27_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_27_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_27_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_27_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_27_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_28_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_28_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_28_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_28_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_28_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_28_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_28_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_28_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_28_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_28_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_28_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_29_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_29_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_29_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_29_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_29_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_29_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_29_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_29_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_29_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_29_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_29_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_30_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_30_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_30_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_30_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_30_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_30_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_30_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_30_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_30_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_30_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_30_io_validout_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_31_clock; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_31_reset; // @[BuildingBlock.scala 220:52]
  wire [6:0] ALU64_32_31_io_opcode; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_31_io_in_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_31_io_in_b; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_31_io_out_a; // @[BuildingBlock.scala 220:52]
  wire [63:0] ALU64_32_31_io_out_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_31_io_validin_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_31_io_validin_b; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_31_io_validout_a; // @[BuildingBlock.scala 220:52]
  wire  ALU64_32_31_io_validout_b; // @[BuildingBlock.scala 220:52]
  reg [1:0] tag; // @[BuildingBlock.scala 222:20]
  reg [7:0] addr; // @[BuildingBlock.scala 224:21]
  ALU ALU64_32_0 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_0_clock),
    .reset(ALU64_32_0_reset),
    .io_opcode(ALU64_32_0_io_opcode),
    .io_in_a(ALU64_32_0_io_in_a),
    .io_in_b(ALU64_32_0_io_in_b),
    .io_out_a(ALU64_32_0_io_out_a),
    .io_out_b(ALU64_32_0_io_out_b),
    .io_validin_a(ALU64_32_0_io_validin_a),
    .io_validin_b(ALU64_32_0_io_validin_b),
    .io_validout_a(ALU64_32_0_io_validout_a),
    .io_validout_b(ALU64_32_0_io_validout_b)
  );
  ALU ALU64_32_1 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_1_clock),
    .reset(ALU64_32_1_reset),
    .io_opcode(ALU64_32_1_io_opcode),
    .io_in_a(ALU64_32_1_io_in_a),
    .io_in_b(ALU64_32_1_io_in_b),
    .io_out_a(ALU64_32_1_io_out_a),
    .io_out_b(ALU64_32_1_io_out_b),
    .io_validin_a(ALU64_32_1_io_validin_a),
    .io_validin_b(ALU64_32_1_io_validin_b),
    .io_validout_a(ALU64_32_1_io_validout_a),
    .io_validout_b(ALU64_32_1_io_validout_b)
  );
  ALU ALU64_32_2 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_2_clock),
    .reset(ALU64_32_2_reset),
    .io_opcode(ALU64_32_2_io_opcode),
    .io_in_a(ALU64_32_2_io_in_a),
    .io_in_b(ALU64_32_2_io_in_b),
    .io_out_a(ALU64_32_2_io_out_a),
    .io_out_b(ALU64_32_2_io_out_b),
    .io_validin_a(ALU64_32_2_io_validin_a),
    .io_validin_b(ALU64_32_2_io_validin_b),
    .io_validout_a(ALU64_32_2_io_validout_a),
    .io_validout_b(ALU64_32_2_io_validout_b)
  );
  ALU ALU64_32_3 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_3_clock),
    .reset(ALU64_32_3_reset),
    .io_opcode(ALU64_32_3_io_opcode),
    .io_in_a(ALU64_32_3_io_in_a),
    .io_in_b(ALU64_32_3_io_in_b),
    .io_out_a(ALU64_32_3_io_out_a),
    .io_out_b(ALU64_32_3_io_out_b),
    .io_validin_a(ALU64_32_3_io_validin_a),
    .io_validin_b(ALU64_32_3_io_validin_b),
    .io_validout_a(ALU64_32_3_io_validout_a),
    .io_validout_b(ALU64_32_3_io_validout_b)
  );
  ALU ALU64_32_4 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_4_clock),
    .reset(ALU64_32_4_reset),
    .io_opcode(ALU64_32_4_io_opcode),
    .io_in_a(ALU64_32_4_io_in_a),
    .io_in_b(ALU64_32_4_io_in_b),
    .io_out_a(ALU64_32_4_io_out_a),
    .io_out_b(ALU64_32_4_io_out_b),
    .io_validin_a(ALU64_32_4_io_validin_a),
    .io_validin_b(ALU64_32_4_io_validin_b),
    .io_validout_a(ALU64_32_4_io_validout_a),
    .io_validout_b(ALU64_32_4_io_validout_b)
  );
  ALU ALU64_32_5 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_5_clock),
    .reset(ALU64_32_5_reset),
    .io_opcode(ALU64_32_5_io_opcode),
    .io_in_a(ALU64_32_5_io_in_a),
    .io_in_b(ALU64_32_5_io_in_b),
    .io_out_a(ALU64_32_5_io_out_a),
    .io_out_b(ALU64_32_5_io_out_b),
    .io_validin_a(ALU64_32_5_io_validin_a),
    .io_validin_b(ALU64_32_5_io_validin_b),
    .io_validout_a(ALU64_32_5_io_validout_a),
    .io_validout_b(ALU64_32_5_io_validout_b)
  );
  ALU ALU64_32_6 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_6_clock),
    .reset(ALU64_32_6_reset),
    .io_opcode(ALU64_32_6_io_opcode),
    .io_in_a(ALU64_32_6_io_in_a),
    .io_in_b(ALU64_32_6_io_in_b),
    .io_out_a(ALU64_32_6_io_out_a),
    .io_out_b(ALU64_32_6_io_out_b),
    .io_validin_a(ALU64_32_6_io_validin_a),
    .io_validin_b(ALU64_32_6_io_validin_b),
    .io_validout_a(ALU64_32_6_io_validout_a),
    .io_validout_b(ALU64_32_6_io_validout_b)
  );
  ALU ALU64_32_7 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_7_clock),
    .reset(ALU64_32_7_reset),
    .io_opcode(ALU64_32_7_io_opcode),
    .io_in_a(ALU64_32_7_io_in_a),
    .io_in_b(ALU64_32_7_io_in_b),
    .io_out_a(ALU64_32_7_io_out_a),
    .io_out_b(ALU64_32_7_io_out_b),
    .io_validin_a(ALU64_32_7_io_validin_a),
    .io_validin_b(ALU64_32_7_io_validin_b),
    .io_validout_a(ALU64_32_7_io_validout_a),
    .io_validout_b(ALU64_32_7_io_validout_b)
  );
  ALU ALU64_32_8 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_8_clock),
    .reset(ALU64_32_8_reset),
    .io_opcode(ALU64_32_8_io_opcode),
    .io_in_a(ALU64_32_8_io_in_a),
    .io_in_b(ALU64_32_8_io_in_b),
    .io_out_a(ALU64_32_8_io_out_a),
    .io_out_b(ALU64_32_8_io_out_b),
    .io_validin_a(ALU64_32_8_io_validin_a),
    .io_validin_b(ALU64_32_8_io_validin_b),
    .io_validout_a(ALU64_32_8_io_validout_a),
    .io_validout_b(ALU64_32_8_io_validout_b)
  );
  ALU ALU64_32_9 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_9_clock),
    .reset(ALU64_32_9_reset),
    .io_opcode(ALU64_32_9_io_opcode),
    .io_in_a(ALU64_32_9_io_in_a),
    .io_in_b(ALU64_32_9_io_in_b),
    .io_out_a(ALU64_32_9_io_out_a),
    .io_out_b(ALU64_32_9_io_out_b),
    .io_validin_a(ALU64_32_9_io_validin_a),
    .io_validin_b(ALU64_32_9_io_validin_b),
    .io_validout_a(ALU64_32_9_io_validout_a),
    .io_validout_b(ALU64_32_9_io_validout_b)
  );
  ALU ALU64_32_10 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_10_clock),
    .reset(ALU64_32_10_reset),
    .io_opcode(ALU64_32_10_io_opcode),
    .io_in_a(ALU64_32_10_io_in_a),
    .io_in_b(ALU64_32_10_io_in_b),
    .io_out_a(ALU64_32_10_io_out_a),
    .io_out_b(ALU64_32_10_io_out_b),
    .io_validin_a(ALU64_32_10_io_validin_a),
    .io_validin_b(ALU64_32_10_io_validin_b),
    .io_validout_a(ALU64_32_10_io_validout_a),
    .io_validout_b(ALU64_32_10_io_validout_b)
  );
  ALU ALU64_32_11 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_11_clock),
    .reset(ALU64_32_11_reset),
    .io_opcode(ALU64_32_11_io_opcode),
    .io_in_a(ALU64_32_11_io_in_a),
    .io_in_b(ALU64_32_11_io_in_b),
    .io_out_a(ALU64_32_11_io_out_a),
    .io_out_b(ALU64_32_11_io_out_b),
    .io_validin_a(ALU64_32_11_io_validin_a),
    .io_validin_b(ALU64_32_11_io_validin_b),
    .io_validout_a(ALU64_32_11_io_validout_a),
    .io_validout_b(ALU64_32_11_io_validout_b)
  );
  ALU ALU64_32_12 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_12_clock),
    .reset(ALU64_32_12_reset),
    .io_opcode(ALU64_32_12_io_opcode),
    .io_in_a(ALU64_32_12_io_in_a),
    .io_in_b(ALU64_32_12_io_in_b),
    .io_out_a(ALU64_32_12_io_out_a),
    .io_out_b(ALU64_32_12_io_out_b),
    .io_validin_a(ALU64_32_12_io_validin_a),
    .io_validin_b(ALU64_32_12_io_validin_b),
    .io_validout_a(ALU64_32_12_io_validout_a),
    .io_validout_b(ALU64_32_12_io_validout_b)
  );
  ALU ALU64_32_13 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_13_clock),
    .reset(ALU64_32_13_reset),
    .io_opcode(ALU64_32_13_io_opcode),
    .io_in_a(ALU64_32_13_io_in_a),
    .io_in_b(ALU64_32_13_io_in_b),
    .io_out_a(ALU64_32_13_io_out_a),
    .io_out_b(ALU64_32_13_io_out_b),
    .io_validin_a(ALU64_32_13_io_validin_a),
    .io_validin_b(ALU64_32_13_io_validin_b),
    .io_validout_a(ALU64_32_13_io_validout_a),
    .io_validout_b(ALU64_32_13_io_validout_b)
  );
  ALU ALU64_32_14 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_14_clock),
    .reset(ALU64_32_14_reset),
    .io_opcode(ALU64_32_14_io_opcode),
    .io_in_a(ALU64_32_14_io_in_a),
    .io_in_b(ALU64_32_14_io_in_b),
    .io_out_a(ALU64_32_14_io_out_a),
    .io_out_b(ALU64_32_14_io_out_b),
    .io_validin_a(ALU64_32_14_io_validin_a),
    .io_validin_b(ALU64_32_14_io_validin_b),
    .io_validout_a(ALU64_32_14_io_validout_a),
    .io_validout_b(ALU64_32_14_io_validout_b)
  );
  ALU ALU64_32_15 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_15_clock),
    .reset(ALU64_32_15_reset),
    .io_opcode(ALU64_32_15_io_opcode),
    .io_in_a(ALU64_32_15_io_in_a),
    .io_in_b(ALU64_32_15_io_in_b),
    .io_out_a(ALU64_32_15_io_out_a),
    .io_out_b(ALU64_32_15_io_out_b),
    .io_validin_a(ALU64_32_15_io_validin_a),
    .io_validin_b(ALU64_32_15_io_validin_b),
    .io_validout_a(ALU64_32_15_io_validout_a),
    .io_validout_b(ALU64_32_15_io_validout_b)
  );
  ALU ALU64_32_16 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_16_clock),
    .reset(ALU64_32_16_reset),
    .io_opcode(ALU64_32_16_io_opcode),
    .io_in_a(ALU64_32_16_io_in_a),
    .io_in_b(ALU64_32_16_io_in_b),
    .io_out_a(ALU64_32_16_io_out_a),
    .io_out_b(ALU64_32_16_io_out_b),
    .io_validin_a(ALU64_32_16_io_validin_a),
    .io_validin_b(ALU64_32_16_io_validin_b),
    .io_validout_a(ALU64_32_16_io_validout_a),
    .io_validout_b(ALU64_32_16_io_validout_b)
  );
  ALU ALU64_32_17 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_17_clock),
    .reset(ALU64_32_17_reset),
    .io_opcode(ALU64_32_17_io_opcode),
    .io_in_a(ALU64_32_17_io_in_a),
    .io_in_b(ALU64_32_17_io_in_b),
    .io_out_a(ALU64_32_17_io_out_a),
    .io_out_b(ALU64_32_17_io_out_b),
    .io_validin_a(ALU64_32_17_io_validin_a),
    .io_validin_b(ALU64_32_17_io_validin_b),
    .io_validout_a(ALU64_32_17_io_validout_a),
    .io_validout_b(ALU64_32_17_io_validout_b)
  );
  ALU ALU64_32_18 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_18_clock),
    .reset(ALU64_32_18_reset),
    .io_opcode(ALU64_32_18_io_opcode),
    .io_in_a(ALU64_32_18_io_in_a),
    .io_in_b(ALU64_32_18_io_in_b),
    .io_out_a(ALU64_32_18_io_out_a),
    .io_out_b(ALU64_32_18_io_out_b),
    .io_validin_a(ALU64_32_18_io_validin_a),
    .io_validin_b(ALU64_32_18_io_validin_b),
    .io_validout_a(ALU64_32_18_io_validout_a),
    .io_validout_b(ALU64_32_18_io_validout_b)
  );
  ALU ALU64_32_19 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_19_clock),
    .reset(ALU64_32_19_reset),
    .io_opcode(ALU64_32_19_io_opcode),
    .io_in_a(ALU64_32_19_io_in_a),
    .io_in_b(ALU64_32_19_io_in_b),
    .io_out_a(ALU64_32_19_io_out_a),
    .io_out_b(ALU64_32_19_io_out_b),
    .io_validin_a(ALU64_32_19_io_validin_a),
    .io_validin_b(ALU64_32_19_io_validin_b),
    .io_validout_a(ALU64_32_19_io_validout_a),
    .io_validout_b(ALU64_32_19_io_validout_b)
  );
  ALU ALU64_32_20 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_20_clock),
    .reset(ALU64_32_20_reset),
    .io_opcode(ALU64_32_20_io_opcode),
    .io_in_a(ALU64_32_20_io_in_a),
    .io_in_b(ALU64_32_20_io_in_b),
    .io_out_a(ALU64_32_20_io_out_a),
    .io_out_b(ALU64_32_20_io_out_b),
    .io_validin_a(ALU64_32_20_io_validin_a),
    .io_validin_b(ALU64_32_20_io_validin_b),
    .io_validout_a(ALU64_32_20_io_validout_a),
    .io_validout_b(ALU64_32_20_io_validout_b)
  );
  ALU ALU64_32_21 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_21_clock),
    .reset(ALU64_32_21_reset),
    .io_opcode(ALU64_32_21_io_opcode),
    .io_in_a(ALU64_32_21_io_in_a),
    .io_in_b(ALU64_32_21_io_in_b),
    .io_out_a(ALU64_32_21_io_out_a),
    .io_out_b(ALU64_32_21_io_out_b),
    .io_validin_a(ALU64_32_21_io_validin_a),
    .io_validin_b(ALU64_32_21_io_validin_b),
    .io_validout_a(ALU64_32_21_io_validout_a),
    .io_validout_b(ALU64_32_21_io_validout_b)
  );
  ALU ALU64_32_22 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_22_clock),
    .reset(ALU64_32_22_reset),
    .io_opcode(ALU64_32_22_io_opcode),
    .io_in_a(ALU64_32_22_io_in_a),
    .io_in_b(ALU64_32_22_io_in_b),
    .io_out_a(ALU64_32_22_io_out_a),
    .io_out_b(ALU64_32_22_io_out_b),
    .io_validin_a(ALU64_32_22_io_validin_a),
    .io_validin_b(ALU64_32_22_io_validin_b),
    .io_validout_a(ALU64_32_22_io_validout_a),
    .io_validout_b(ALU64_32_22_io_validout_b)
  );
  ALU ALU64_32_23 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_23_clock),
    .reset(ALU64_32_23_reset),
    .io_opcode(ALU64_32_23_io_opcode),
    .io_in_a(ALU64_32_23_io_in_a),
    .io_in_b(ALU64_32_23_io_in_b),
    .io_out_a(ALU64_32_23_io_out_a),
    .io_out_b(ALU64_32_23_io_out_b),
    .io_validin_a(ALU64_32_23_io_validin_a),
    .io_validin_b(ALU64_32_23_io_validin_b),
    .io_validout_a(ALU64_32_23_io_validout_a),
    .io_validout_b(ALU64_32_23_io_validout_b)
  );
  ALU ALU64_32_24 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_24_clock),
    .reset(ALU64_32_24_reset),
    .io_opcode(ALU64_32_24_io_opcode),
    .io_in_a(ALU64_32_24_io_in_a),
    .io_in_b(ALU64_32_24_io_in_b),
    .io_out_a(ALU64_32_24_io_out_a),
    .io_out_b(ALU64_32_24_io_out_b),
    .io_validin_a(ALU64_32_24_io_validin_a),
    .io_validin_b(ALU64_32_24_io_validin_b),
    .io_validout_a(ALU64_32_24_io_validout_a),
    .io_validout_b(ALU64_32_24_io_validout_b)
  );
  ALU ALU64_32_25 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_25_clock),
    .reset(ALU64_32_25_reset),
    .io_opcode(ALU64_32_25_io_opcode),
    .io_in_a(ALU64_32_25_io_in_a),
    .io_in_b(ALU64_32_25_io_in_b),
    .io_out_a(ALU64_32_25_io_out_a),
    .io_out_b(ALU64_32_25_io_out_b),
    .io_validin_a(ALU64_32_25_io_validin_a),
    .io_validin_b(ALU64_32_25_io_validin_b),
    .io_validout_a(ALU64_32_25_io_validout_a),
    .io_validout_b(ALU64_32_25_io_validout_b)
  );
  ALU ALU64_32_26 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_26_clock),
    .reset(ALU64_32_26_reset),
    .io_opcode(ALU64_32_26_io_opcode),
    .io_in_a(ALU64_32_26_io_in_a),
    .io_in_b(ALU64_32_26_io_in_b),
    .io_out_a(ALU64_32_26_io_out_a),
    .io_out_b(ALU64_32_26_io_out_b),
    .io_validin_a(ALU64_32_26_io_validin_a),
    .io_validin_b(ALU64_32_26_io_validin_b),
    .io_validout_a(ALU64_32_26_io_validout_a),
    .io_validout_b(ALU64_32_26_io_validout_b)
  );
  ALU ALU64_32_27 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_27_clock),
    .reset(ALU64_32_27_reset),
    .io_opcode(ALU64_32_27_io_opcode),
    .io_in_a(ALU64_32_27_io_in_a),
    .io_in_b(ALU64_32_27_io_in_b),
    .io_out_a(ALU64_32_27_io_out_a),
    .io_out_b(ALU64_32_27_io_out_b),
    .io_validin_a(ALU64_32_27_io_validin_a),
    .io_validin_b(ALU64_32_27_io_validin_b),
    .io_validout_a(ALU64_32_27_io_validout_a),
    .io_validout_b(ALU64_32_27_io_validout_b)
  );
  ALU ALU64_32_28 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_28_clock),
    .reset(ALU64_32_28_reset),
    .io_opcode(ALU64_32_28_io_opcode),
    .io_in_a(ALU64_32_28_io_in_a),
    .io_in_b(ALU64_32_28_io_in_b),
    .io_out_a(ALU64_32_28_io_out_a),
    .io_out_b(ALU64_32_28_io_out_b),
    .io_validin_a(ALU64_32_28_io_validin_a),
    .io_validin_b(ALU64_32_28_io_validin_b),
    .io_validout_a(ALU64_32_28_io_validout_a),
    .io_validout_b(ALU64_32_28_io_validout_b)
  );
  ALU ALU64_32_29 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_29_clock),
    .reset(ALU64_32_29_reset),
    .io_opcode(ALU64_32_29_io_opcode),
    .io_in_a(ALU64_32_29_io_in_a),
    .io_in_b(ALU64_32_29_io_in_b),
    .io_out_a(ALU64_32_29_io_out_a),
    .io_out_b(ALU64_32_29_io_out_b),
    .io_validin_a(ALU64_32_29_io_validin_a),
    .io_validin_b(ALU64_32_29_io_validin_b),
    .io_validout_a(ALU64_32_29_io_validout_a),
    .io_validout_b(ALU64_32_29_io_validout_b)
  );
  ALU ALU64_32_30 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_30_clock),
    .reset(ALU64_32_30_reset),
    .io_opcode(ALU64_32_30_io_opcode),
    .io_in_a(ALU64_32_30_io_in_a),
    .io_in_b(ALU64_32_30_io_in_b),
    .io_out_a(ALU64_32_30_io_out_a),
    .io_out_b(ALU64_32_30_io_out_b),
    .io_validin_a(ALU64_32_30_io_validin_a),
    .io_validin_b(ALU64_32_30_io_validin_b),
    .io_validout_a(ALU64_32_30_io_validout_a),
    .io_validout_b(ALU64_32_30_io_validout_b)
  );
  ALU ALU64_32_31 ( // @[BuildingBlock.scala 220:52]
    .clock(ALU64_32_31_clock),
    .reset(ALU64_32_31_reset),
    .io_opcode(ALU64_32_31_io_opcode),
    .io_in_a(ALU64_32_31_io_in_a),
    .io_in_b(ALU64_32_31_io_in_b),
    .io_out_a(ALU64_32_31_io_out_a),
    .io_out_b(ALU64_32_31_io_out_b),
    .io_validin_a(ALU64_32_31_io_validin_a),
    .io_validin_b(ALU64_32_31_io_validin_b),
    .io_validout_a(ALU64_32_31_io_validout_a),
    .io_validout_b(ALU64_32_31_io_validout_b)
  );
  assign io_d_out_0_a = ALU64_32_0_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_0_valid_a = ALU64_32_0_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_0_b = ALU64_32_0_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_0_valid_b = ALU64_32_0_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_1_a = ALU64_32_1_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_1_valid_a = ALU64_32_1_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_1_b = ALU64_32_1_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_1_valid_b = ALU64_32_1_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_2_a = ALU64_32_2_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_2_valid_a = ALU64_32_2_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_2_b = ALU64_32_2_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_2_valid_b = ALU64_32_2_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_3_a = ALU64_32_3_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_3_valid_a = ALU64_32_3_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_3_b = ALU64_32_3_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_3_valid_b = ALU64_32_3_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_4_a = ALU64_32_4_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_4_valid_a = ALU64_32_4_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_4_b = ALU64_32_4_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_4_valid_b = ALU64_32_4_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_5_a = ALU64_32_5_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_5_valid_a = ALU64_32_5_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_5_b = ALU64_32_5_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_5_valid_b = ALU64_32_5_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_6_a = ALU64_32_6_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_6_valid_a = ALU64_32_6_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_6_b = ALU64_32_6_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_6_valid_b = ALU64_32_6_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_7_a = ALU64_32_7_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_7_valid_a = ALU64_32_7_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_7_b = ALU64_32_7_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_7_valid_b = ALU64_32_7_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_8_a = ALU64_32_8_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_8_valid_a = ALU64_32_8_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_8_b = ALU64_32_8_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_8_valid_b = ALU64_32_8_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_9_a = ALU64_32_9_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_9_valid_a = ALU64_32_9_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_9_b = ALU64_32_9_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_9_valid_b = ALU64_32_9_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_10_a = ALU64_32_10_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_10_valid_a = ALU64_32_10_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_10_b = ALU64_32_10_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_10_valid_b = ALU64_32_10_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_11_a = ALU64_32_11_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_11_valid_a = ALU64_32_11_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_11_b = ALU64_32_11_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_11_valid_b = ALU64_32_11_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_12_a = ALU64_32_12_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_12_valid_a = ALU64_32_12_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_12_b = ALU64_32_12_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_12_valid_b = ALU64_32_12_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_13_a = ALU64_32_13_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_13_valid_a = ALU64_32_13_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_13_b = ALU64_32_13_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_13_valid_b = ALU64_32_13_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_14_a = ALU64_32_14_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_14_valid_a = ALU64_32_14_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_14_b = ALU64_32_14_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_14_valid_b = ALU64_32_14_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_15_a = ALU64_32_15_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_15_valid_a = ALU64_32_15_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_15_b = ALU64_32_15_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_15_valid_b = ALU64_32_15_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_16_a = ALU64_32_16_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_16_valid_a = ALU64_32_16_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_16_b = ALU64_32_16_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_16_valid_b = ALU64_32_16_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_17_a = ALU64_32_17_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_17_valid_a = ALU64_32_17_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_17_b = ALU64_32_17_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_17_valid_b = ALU64_32_17_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_18_a = ALU64_32_18_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_18_valid_a = ALU64_32_18_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_18_b = ALU64_32_18_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_18_valid_b = ALU64_32_18_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_19_a = ALU64_32_19_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_19_valid_a = ALU64_32_19_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_19_b = ALU64_32_19_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_19_valid_b = ALU64_32_19_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_20_a = ALU64_32_20_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_20_valid_a = ALU64_32_20_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_20_b = ALU64_32_20_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_20_valid_b = ALU64_32_20_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_21_a = ALU64_32_21_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_21_valid_a = ALU64_32_21_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_21_b = ALU64_32_21_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_21_valid_b = ALU64_32_21_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_22_a = ALU64_32_22_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_22_valid_a = ALU64_32_22_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_22_b = ALU64_32_22_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_22_valid_b = ALU64_32_22_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_23_a = ALU64_32_23_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_23_valid_a = ALU64_32_23_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_23_b = ALU64_32_23_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_23_valid_b = ALU64_32_23_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_24_a = ALU64_32_24_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_24_valid_a = ALU64_32_24_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_24_b = ALU64_32_24_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_24_valid_b = ALU64_32_24_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_25_a = ALU64_32_25_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_25_valid_a = ALU64_32_25_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_25_b = ALU64_32_25_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_25_valid_b = ALU64_32_25_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_26_a = ALU64_32_26_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_26_valid_a = ALU64_32_26_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_26_b = ALU64_32_26_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_26_valid_b = ALU64_32_26_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_27_a = ALU64_32_27_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_27_valid_a = ALU64_32_27_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_27_b = ALU64_32_27_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_27_valid_b = ALU64_32_27_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_28_a = ALU64_32_28_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_28_valid_a = ALU64_32_28_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_28_b = ALU64_32_28_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_28_valid_b = ALU64_32_28_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_29_a = ALU64_32_29_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_29_valid_a = ALU64_32_29_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_29_b = ALU64_32_29_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_29_valid_b = ALU64_32_29_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_30_a = ALU64_32_30_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_30_valid_a = ALU64_32_30_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_30_b = ALU64_32_30_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_30_valid_b = ALU64_32_30_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_d_out_31_a = ALU64_32_31_io_out_a; // @[BuildingBlock.scala 237:19]
  assign io_d_out_31_valid_a = ALU64_32_31_io_validout_a; // @[BuildingBlock.scala 239:25]
  assign io_d_out_31_b = ALU64_32_31_io_out_b; // @[BuildingBlock.scala 238:19]
  assign io_d_out_31_valid_b = ALU64_32_31_io_validout_b; // @[BuildingBlock.scala 240:25]
  assign io_tagout = tag; // @[BuildingBlock.scala 223:13]
  assign io_addrout = addr; // @[BuildingBlock.scala 225:14]
  assign ALU64_32_0_clock = clock;
  assign ALU64_32_0_reset = reset;
  assign ALU64_32_0_io_opcode = io_instr[223:217]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_0_io_in_a = io_d_in_0_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_0_io_in_b = io_d_in_0_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_0_io_validin_a = io_d_in_0_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_0_io_validin_b = io_d_in_0_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_1_clock = clock;
  assign ALU64_32_1_reset = reset;
  assign ALU64_32_1_io_opcode = io_instr[216:210]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_1_io_in_a = io_d_in_1_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_1_io_in_b = io_d_in_1_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_1_io_validin_a = io_d_in_1_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_1_io_validin_b = io_d_in_1_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_2_clock = clock;
  assign ALU64_32_2_reset = reset;
  assign ALU64_32_2_io_opcode = io_instr[209:203]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_2_io_in_a = io_d_in_2_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_2_io_in_b = io_d_in_2_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_2_io_validin_a = io_d_in_2_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_2_io_validin_b = io_d_in_2_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_3_clock = clock;
  assign ALU64_32_3_reset = reset;
  assign ALU64_32_3_io_opcode = io_instr[202:196]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_3_io_in_a = io_d_in_3_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_3_io_in_b = io_d_in_3_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_3_io_validin_a = io_d_in_3_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_3_io_validin_b = io_d_in_3_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_4_clock = clock;
  assign ALU64_32_4_reset = reset;
  assign ALU64_32_4_io_opcode = io_instr[195:189]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_4_io_in_a = io_d_in_4_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_4_io_in_b = io_d_in_4_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_4_io_validin_a = io_d_in_4_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_4_io_validin_b = io_d_in_4_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_5_clock = clock;
  assign ALU64_32_5_reset = reset;
  assign ALU64_32_5_io_opcode = io_instr[188:182]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_5_io_in_a = io_d_in_5_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_5_io_in_b = io_d_in_5_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_5_io_validin_a = io_d_in_5_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_5_io_validin_b = io_d_in_5_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_6_clock = clock;
  assign ALU64_32_6_reset = reset;
  assign ALU64_32_6_io_opcode = io_instr[181:175]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_6_io_in_a = io_d_in_6_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_6_io_in_b = io_d_in_6_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_6_io_validin_a = io_d_in_6_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_6_io_validin_b = io_d_in_6_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_7_clock = clock;
  assign ALU64_32_7_reset = reset;
  assign ALU64_32_7_io_opcode = io_instr[174:168]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_7_io_in_a = io_d_in_7_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_7_io_in_b = io_d_in_7_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_7_io_validin_a = io_d_in_7_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_7_io_validin_b = io_d_in_7_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_8_clock = clock;
  assign ALU64_32_8_reset = reset;
  assign ALU64_32_8_io_opcode = io_instr[167:161]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_8_io_in_a = io_d_in_8_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_8_io_in_b = io_d_in_8_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_8_io_validin_a = io_d_in_8_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_8_io_validin_b = io_d_in_8_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_9_clock = clock;
  assign ALU64_32_9_reset = reset;
  assign ALU64_32_9_io_opcode = io_instr[160:154]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_9_io_in_a = io_d_in_9_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_9_io_in_b = io_d_in_9_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_9_io_validin_a = io_d_in_9_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_9_io_validin_b = io_d_in_9_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_10_clock = clock;
  assign ALU64_32_10_reset = reset;
  assign ALU64_32_10_io_opcode = io_instr[153:147]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_10_io_in_a = io_d_in_10_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_10_io_in_b = io_d_in_10_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_10_io_validin_a = io_d_in_10_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_10_io_validin_b = io_d_in_10_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_11_clock = clock;
  assign ALU64_32_11_reset = reset;
  assign ALU64_32_11_io_opcode = io_instr[146:140]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_11_io_in_a = io_d_in_11_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_11_io_in_b = io_d_in_11_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_11_io_validin_a = io_d_in_11_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_11_io_validin_b = io_d_in_11_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_12_clock = clock;
  assign ALU64_32_12_reset = reset;
  assign ALU64_32_12_io_opcode = io_instr[139:133]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_12_io_in_a = io_d_in_12_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_12_io_in_b = io_d_in_12_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_12_io_validin_a = io_d_in_12_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_12_io_validin_b = io_d_in_12_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_13_clock = clock;
  assign ALU64_32_13_reset = reset;
  assign ALU64_32_13_io_opcode = io_instr[132:126]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_13_io_in_a = io_d_in_13_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_13_io_in_b = io_d_in_13_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_13_io_validin_a = io_d_in_13_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_13_io_validin_b = io_d_in_13_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_14_clock = clock;
  assign ALU64_32_14_reset = reset;
  assign ALU64_32_14_io_opcode = io_instr[125:119]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_14_io_in_a = io_d_in_14_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_14_io_in_b = io_d_in_14_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_14_io_validin_a = io_d_in_14_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_14_io_validin_b = io_d_in_14_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_15_clock = clock;
  assign ALU64_32_15_reset = reset;
  assign ALU64_32_15_io_opcode = io_instr[118:112]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_15_io_in_a = io_d_in_15_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_15_io_in_b = io_d_in_15_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_15_io_validin_a = io_d_in_15_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_15_io_validin_b = io_d_in_15_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_16_clock = clock;
  assign ALU64_32_16_reset = reset;
  assign ALU64_32_16_io_opcode = io_instr[111:105]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_16_io_in_a = io_d_in_16_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_16_io_in_b = io_d_in_16_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_16_io_validin_a = io_d_in_16_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_16_io_validin_b = io_d_in_16_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_17_clock = clock;
  assign ALU64_32_17_reset = reset;
  assign ALU64_32_17_io_opcode = io_instr[104:98]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_17_io_in_a = io_d_in_17_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_17_io_in_b = io_d_in_17_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_17_io_validin_a = io_d_in_17_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_17_io_validin_b = io_d_in_17_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_18_clock = clock;
  assign ALU64_32_18_reset = reset;
  assign ALU64_32_18_io_opcode = io_instr[97:91]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_18_io_in_a = io_d_in_18_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_18_io_in_b = io_d_in_18_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_18_io_validin_a = io_d_in_18_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_18_io_validin_b = io_d_in_18_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_19_clock = clock;
  assign ALU64_32_19_reset = reset;
  assign ALU64_32_19_io_opcode = io_instr[90:84]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_19_io_in_a = io_d_in_19_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_19_io_in_b = io_d_in_19_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_19_io_validin_a = io_d_in_19_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_19_io_validin_b = io_d_in_19_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_20_clock = clock;
  assign ALU64_32_20_reset = reset;
  assign ALU64_32_20_io_opcode = io_instr[83:77]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_20_io_in_a = io_d_in_20_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_20_io_in_b = io_d_in_20_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_20_io_validin_a = io_d_in_20_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_20_io_validin_b = io_d_in_20_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_21_clock = clock;
  assign ALU64_32_21_reset = reset;
  assign ALU64_32_21_io_opcode = io_instr[76:70]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_21_io_in_a = io_d_in_21_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_21_io_in_b = io_d_in_21_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_21_io_validin_a = io_d_in_21_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_21_io_validin_b = io_d_in_21_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_22_clock = clock;
  assign ALU64_32_22_reset = reset;
  assign ALU64_32_22_io_opcode = io_instr[69:63]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_22_io_in_a = io_d_in_22_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_22_io_in_b = io_d_in_22_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_22_io_validin_a = io_d_in_22_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_22_io_validin_b = io_d_in_22_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_23_clock = clock;
  assign ALU64_32_23_reset = reset;
  assign ALU64_32_23_io_opcode = io_instr[62:56]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_23_io_in_a = io_d_in_23_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_23_io_in_b = io_d_in_23_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_23_io_validin_a = io_d_in_23_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_23_io_validin_b = io_d_in_23_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_24_clock = clock;
  assign ALU64_32_24_reset = reset;
  assign ALU64_32_24_io_opcode = io_instr[55:49]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_24_io_in_a = io_d_in_24_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_24_io_in_b = io_d_in_24_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_24_io_validin_a = io_d_in_24_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_24_io_validin_b = io_d_in_24_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_25_clock = clock;
  assign ALU64_32_25_reset = reset;
  assign ALU64_32_25_io_opcode = io_instr[48:42]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_25_io_in_a = io_d_in_25_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_25_io_in_b = io_d_in_25_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_25_io_validin_a = io_d_in_25_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_25_io_validin_b = io_d_in_25_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_26_clock = clock;
  assign ALU64_32_26_reset = reset;
  assign ALU64_32_26_io_opcode = io_instr[41:35]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_26_io_in_a = io_d_in_26_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_26_io_in_b = io_d_in_26_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_26_io_validin_a = io_d_in_26_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_26_io_validin_b = io_d_in_26_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_27_clock = clock;
  assign ALU64_32_27_reset = reset;
  assign ALU64_32_27_io_opcode = io_instr[34:28]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_27_io_in_a = io_d_in_27_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_27_io_in_b = io_d_in_27_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_27_io_validin_a = io_d_in_27_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_27_io_validin_b = io_d_in_27_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_28_clock = clock;
  assign ALU64_32_28_reset = reset;
  assign ALU64_32_28_io_opcode = io_instr[27:21]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_28_io_in_a = io_d_in_28_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_28_io_in_b = io_d_in_28_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_28_io_validin_a = io_d_in_28_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_28_io_validin_b = io_d_in_28_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_29_clock = clock;
  assign ALU64_32_29_reset = reset;
  assign ALU64_32_29_io_opcode = io_instr[20:14]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_29_io_in_a = io_d_in_29_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_29_io_in_b = io_d_in_29_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_29_io_validin_a = io_d_in_29_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_29_io_validin_b = io_d_in_29_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_30_clock = clock;
  assign ALU64_32_30_reset = reset;
  assign ALU64_32_30_io_opcode = io_instr[13:7]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_30_io_in_a = io_d_in_30_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_30_io_in_b = io_d_in_30_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_30_io_validin_a = io_d_in_30_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_30_io_validin_b = io_d_in_30_valid_b; // @[BuildingBlock.scala 233:30]
  assign ALU64_32_31_clock = clock;
  assign ALU64_32_31_reset = reset;
  assign ALU64_32_31_io_opcode = io_instr[6:0]; // @[BuildingBlock.scala 234:38]
  assign ALU64_32_31_io_in_a = io_d_in_31_a; // @[BuildingBlock.scala 230:25]
  assign ALU64_32_31_io_in_b = io_d_in_31_b; // @[BuildingBlock.scala 231:25]
  assign ALU64_32_31_io_validin_a = io_d_in_31_valid_a; // @[BuildingBlock.scala 232:30]
  assign ALU64_32_31_io_validin_b = io_d_in_31_valid_b; // @[BuildingBlock.scala 233:30]
  always @(posedge clock) begin
    tag <= io_tagin; // @[BuildingBlock.scala 222:20]
    addr <= io_addrin; // @[BuildingBlock.scala 224:21]
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
  tag = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  addr = _RAND_1[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
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
module CLOSingress1(
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
  input  [1:0]   io_tagin,
  input  [7:0]   io_addrin,
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
  output [1:0]   io_tagout,
  output [7:0]   io_addrout,
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [127:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ingress1_0_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_0_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_0_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_0_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_0_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_0_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_0_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_0_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_0_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_0_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_1_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_1_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_1_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_1_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_1_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_1_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_1_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_1_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_1_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_1_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_2_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_2_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_2_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_2_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_2_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_2_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_2_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_2_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_2_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_2_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_3_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_3_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_3_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_3_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_3_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_3_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_3_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_3_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_3_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_3_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_4_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_4_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_4_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_4_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_4_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_4_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_4_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_4_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_4_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_4_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_5_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_5_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_5_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_5_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_5_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_5_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_5_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_5_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_5_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_5_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_6_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_6_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_6_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_6_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_6_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_6_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_6_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_6_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_6_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_6_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_7_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_7_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_7_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_7_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_7_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_7_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_7_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_7_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_7_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_7_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_8_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_8_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_8_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_8_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_8_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_8_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_8_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_8_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_8_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_8_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_9_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_9_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_9_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_9_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_9_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_9_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_9_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_9_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_9_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_9_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_10_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_10_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_10_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_10_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_10_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_10_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_10_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_10_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_10_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_10_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_11_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_11_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_11_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_11_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_11_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_11_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_11_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_11_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_11_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_11_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_12_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_12_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_12_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_12_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_12_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_12_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_12_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_12_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_12_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_12_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_13_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_13_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_13_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_13_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_13_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_13_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_13_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_13_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_13_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_13_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_14_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_14_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_14_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_14_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_14_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_14_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_14_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_14_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_14_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_14_io_ctrl; // @[BuildingBlock.scala 39:52]
  wire  ingress1_15_clock; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_15_io_in4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_15_io_in4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_15_io_in4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_15_io_in4_3; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_15_io_out4_0; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_15_io_out4_1; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_15_io_out4_2; // @[BuildingBlock.scala 39:52]
  wire [64:0] ingress1_15_io_out4_3; // @[BuildingBlock.scala 39:52]
  wire [7:0] ingress1_15_io_ctrl; // @[BuildingBlock.scala 39:52]
  reg [1:0] tag; // @[BuildingBlock.scala 40:20]
  reg [7:0] addr; // @[BuildingBlock.scala 42:21]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 44:25]
  CLOScell4 ingress1_0 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_1 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_2 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_3 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_4 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_5 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_6 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_7 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_8 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_9 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_10 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_11 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_12 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_13 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_14 ( // @[BuildingBlock.scala 39:52]
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
  CLOScell4 ingress1_15 ( // @[BuildingBlock.scala 39:52]
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
  assign io_out64_0 = ingress1_0_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_1 = ingress1_1_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_2 = ingress1_2_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_3 = ingress1_3_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_4 = ingress1_4_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_5 = ingress1_5_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_6 = ingress1_6_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_7 = ingress1_7_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_8 = ingress1_8_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_9 = ingress1_9_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_10 = ingress1_10_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_11 = ingress1_11_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_12 = ingress1_12_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_13 = ingress1_13_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_14 = ingress1_14_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_15 = ingress1_15_io_out4_0[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_16 = ingress1_0_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_17 = ingress1_1_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_18 = ingress1_2_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_19 = ingress1_3_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_20 = ingress1_4_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_21 = ingress1_5_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_22 = ingress1_6_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_23 = ingress1_7_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_24 = ingress1_8_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_25 = ingress1_9_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_26 = ingress1_10_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_27 = ingress1_11_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_28 = ingress1_12_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_29 = ingress1_13_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_30 = ingress1_14_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_31 = ingress1_15_io_out4_1[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_32 = ingress1_0_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_33 = ingress1_1_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_34 = ingress1_2_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_35 = ingress1_3_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_36 = ingress1_4_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_37 = ingress1_5_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_38 = ingress1_6_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_39 = ingress1_7_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_40 = ingress1_8_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_41 = ingress1_9_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_42 = ingress1_10_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_43 = ingress1_11_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_44 = ingress1_12_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_45 = ingress1_13_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_46 = ingress1_14_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_47 = ingress1_15_io_out4_2[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_48 = ingress1_0_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_49 = ingress1_1_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_50 = ingress1_2_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_51 = ingress1_3_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_52 = ingress1_4_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_53 = ingress1_5_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_54 = ingress1_6_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_55 = ingress1_7_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_56 = ingress1_8_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_57 = ingress1_9_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_58 = ingress1_10_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_59 = ingress1_11_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_60 = ingress1_12_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_61 = ingress1_13_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_62 = ingress1_14_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_out64_63 = ingress1_15_io_out4_3[63:0]; // @[BuildingBlock.scala 53:49]
  assign io_validout64_0 = ingress1_0_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_1 = ingress1_1_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_2 = ingress1_2_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_3 = ingress1_3_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_4 = ingress1_4_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_5 = ingress1_5_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_6 = ingress1_6_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_7 = ingress1_7_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_8 = ingress1_8_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_9 = ingress1_9_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_10 = ingress1_10_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_11 = ingress1_11_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_12 = ingress1_12_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_13 = ingress1_13_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_14 = ingress1_14_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_15 = ingress1_15_io_out4_0[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_16 = ingress1_0_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_17 = ingress1_1_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_18 = ingress1_2_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_19 = ingress1_3_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_20 = ingress1_4_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_21 = ingress1_5_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_22 = ingress1_6_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_23 = ingress1_7_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_24 = ingress1_8_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_25 = ingress1_9_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_26 = ingress1_10_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_27 = ingress1_11_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_28 = ingress1_12_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_29 = ingress1_13_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_30 = ingress1_14_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_31 = ingress1_15_io_out4_1[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_32 = ingress1_0_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_33 = ingress1_1_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_34 = ingress1_2_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_35 = ingress1_3_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_36 = ingress1_4_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_37 = ingress1_5_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_38 = ingress1_6_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_39 = ingress1_7_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_40 = ingress1_8_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_41 = ingress1_9_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_42 = ingress1_10_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_43 = ingress1_11_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_44 = ingress1_12_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_45 = ingress1_13_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_46 = ingress1_14_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_47 = ingress1_15_io_out4_2[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_48 = ingress1_0_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_49 = ingress1_1_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_50 = ingress1_2_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_51 = ingress1_3_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_52 = ingress1_4_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_53 = ingress1_5_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_54 = ingress1_6_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_55 = ingress1_7_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_56 = ingress1_8_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_57 = ingress1_9_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_58 = ingress1_10_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_59 = ingress1_11_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_60 = ingress1_12_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_61 = ingress1_13_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_62 = ingress1_14_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_validout64_63 = ingress1_15_io_out4_3[64]; // @[BuildingBlock.scala 54:54]
  assign io_tagout = tag; // @[BuildingBlock.scala 41:13]
  assign io_addrout = addr; // @[BuildingBlock.scala 43:14]
  assign ingress1_0_clock = clock;
  assign ingress1_0_io_in4_0 = {io_validin64_0,io_in64_0}; // @[Cat.scala 30:58]
  assign ingress1_0_io_in4_1 = {io_validin64_1,io_in64_1}; // @[Cat.scala 30:58]
  assign ingress1_0_io_in4_2 = {io_validin64_2,io_in64_2}; // @[Cat.scala 30:58]
  assign ingress1_0_io_in4_3 = {io_validin64_3,io_in64_3}; // @[Cat.scala 30:58]
  assign ingress1_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 58:36]
  assign ingress1_1_clock = clock;
  assign ingress1_1_io_in4_0 = {io_validin64_4,io_in64_4}; // @[Cat.scala 30:58]
  assign ingress1_1_io_in4_1 = {io_validin64_5,io_in64_5}; // @[Cat.scala 30:58]
  assign ingress1_1_io_in4_2 = {io_validin64_6,io_in64_6}; // @[Cat.scala 30:58]
  assign ingress1_1_io_in4_3 = {io_validin64_7,io_in64_7}; // @[Cat.scala 30:58]
  assign ingress1_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 58:36]
  assign ingress1_2_clock = clock;
  assign ingress1_2_io_in4_0 = {io_validin64_8,io_in64_8}; // @[Cat.scala 30:58]
  assign ingress1_2_io_in4_1 = {io_validin64_9,io_in64_9}; // @[Cat.scala 30:58]
  assign ingress1_2_io_in4_2 = {io_validin64_10,io_in64_10}; // @[Cat.scala 30:58]
  assign ingress1_2_io_in4_3 = {io_validin64_11,io_in64_11}; // @[Cat.scala 30:58]
  assign ingress1_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 58:36]
  assign ingress1_3_clock = clock;
  assign ingress1_3_io_in4_0 = {io_validin64_12,io_in64_12}; // @[Cat.scala 30:58]
  assign ingress1_3_io_in4_1 = {io_validin64_13,io_in64_13}; // @[Cat.scala 30:58]
  assign ingress1_3_io_in4_2 = {io_validin64_14,io_in64_14}; // @[Cat.scala 30:58]
  assign ingress1_3_io_in4_3 = {io_validin64_15,io_in64_15}; // @[Cat.scala 30:58]
  assign ingress1_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 58:36]
  assign ingress1_4_clock = clock;
  assign ingress1_4_io_in4_0 = {io_validin64_16,io_in64_16}; // @[Cat.scala 30:58]
  assign ingress1_4_io_in4_1 = {io_validin64_17,io_in64_17}; // @[Cat.scala 30:58]
  assign ingress1_4_io_in4_2 = {io_validin64_18,io_in64_18}; // @[Cat.scala 30:58]
  assign ingress1_4_io_in4_3 = {io_validin64_19,io_in64_19}; // @[Cat.scala 30:58]
  assign ingress1_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 58:36]
  assign ingress1_5_clock = clock;
  assign ingress1_5_io_in4_0 = {io_validin64_20,io_in64_20}; // @[Cat.scala 30:58]
  assign ingress1_5_io_in4_1 = {io_validin64_21,io_in64_21}; // @[Cat.scala 30:58]
  assign ingress1_5_io_in4_2 = {io_validin64_22,io_in64_22}; // @[Cat.scala 30:58]
  assign ingress1_5_io_in4_3 = {io_validin64_23,io_in64_23}; // @[Cat.scala 30:58]
  assign ingress1_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 58:36]
  assign ingress1_6_clock = clock;
  assign ingress1_6_io_in4_0 = {io_validin64_24,io_in64_24}; // @[Cat.scala 30:58]
  assign ingress1_6_io_in4_1 = {io_validin64_25,io_in64_25}; // @[Cat.scala 30:58]
  assign ingress1_6_io_in4_2 = {io_validin64_26,io_in64_26}; // @[Cat.scala 30:58]
  assign ingress1_6_io_in4_3 = {io_validin64_27,io_in64_27}; // @[Cat.scala 30:58]
  assign ingress1_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 58:36]
  assign ingress1_7_clock = clock;
  assign ingress1_7_io_in4_0 = {io_validin64_28,io_in64_28}; // @[Cat.scala 30:58]
  assign ingress1_7_io_in4_1 = {io_validin64_29,io_in64_29}; // @[Cat.scala 30:58]
  assign ingress1_7_io_in4_2 = {io_validin64_30,io_in64_30}; // @[Cat.scala 30:58]
  assign ingress1_7_io_in4_3 = {io_validin64_31,io_in64_31}; // @[Cat.scala 30:58]
  assign ingress1_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 58:36]
  assign ingress1_8_clock = clock;
  assign ingress1_8_io_in4_0 = {io_validin64_32,io_in64_32}; // @[Cat.scala 30:58]
  assign ingress1_8_io_in4_1 = {io_validin64_33,io_in64_33}; // @[Cat.scala 30:58]
  assign ingress1_8_io_in4_2 = {io_validin64_34,io_in64_34}; // @[Cat.scala 30:58]
  assign ingress1_8_io_in4_3 = {io_validin64_35,io_in64_35}; // @[Cat.scala 30:58]
  assign ingress1_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 58:36]
  assign ingress1_9_clock = clock;
  assign ingress1_9_io_in4_0 = {io_validin64_36,io_in64_36}; // @[Cat.scala 30:58]
  assign ingress1_9_io_in4_1 = {io_validin64_37,io_in64_37}; // @[Cat.scala 30:58]
  assign ingress1_9_io_in4_2 = {io_validin64_38,io_in64_38}; // @[Cat.scala 30:58]
  assign ingress1_9_io_in4_3 = {io_validin64_39,io_in64_39}; // @[Cat.scala 30:58]
  assign ingress1_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 58:36]
  assign ingress1_10_clock = clock;
  assign ingress1_10_io_in4_0 = {io_validin64_40,io_in64_40}; // @[Cat.scala 30:58]
  assign ingress1_10_io_in4_1 = {io_validin64_41,io_in64_41}; // @[Cat.scala 30:58]
  assign ingress1_10_io_in4_2 = {io_validin64_42,io_in64_42}; // @[Cat.scala 30:58]
  assign ingress1_10_io_in4_3 = {io_validin64_43,io_in64_43}; // @[Cat.scala 30:58]
  assign ingress1_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 58:36]
  assign ingress1_11_clock = clock;
  assign ingress1_11_io_in4_0 = {io_validin64_44,io_in64_44}; // @[Cat.scala 30:58]
  assign ingress1_11_io_in4_1 = {io_validin64_45,io_in64_45}; // @[Cat.scala 30:58]
  assign ingress1_11_io_in4_2 = {io_validin64_46,io_in64_46}; // @[Cat.scala 30:58]
  assign ingress1_11_io_in4_3 = {io_validin64_47,io_in64_47}; // @[Cat.scala 30:58]
  assign ingress1_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 58:36]
  assign ingress1_12_clock = clock;
  assign ingress1_12_io_in4_0 = {io_validin64_48,io_in64_48}; // @[Cat.scala 30:58]
  assign ingress1_12_io_in4_1 = {io_validin64_49,io_in64_49}; // @[Cat.scala 30:58]
  assign ingress1_12_io_in4_2 = {io_validin64_50,io_in64_50}; // @[Cat.scala 30:58]
  assign ingress1_12_io_in4_3 = {io_validin64_51,io_in64_51}; // @[Cat.scala 30:58]
  assign ingress1_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 58:36]
  assign ingress1_13_clock = clock;
  assign ingress1_13_io_in4_0 = {io_validin64_52,io_in64_52}; // @[Cat.scala 30:58]
  assign ingress1_13_io_in4_1 = {io_validin64_53,io_in64_53}; // @[Cat.scala 30:58]
  assign ingress1_13_io_in4_2 = {io_validin64_54,io_in64_54}; // @[Cat.scala 30:58]
  assign ingress1_13_io_in4_3 = {io_validin64_55,io_in64_55}; // @[Cat.scala 30:58]
  assign ingress1_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 58:36]
  assign ingress1_14_clock = clock;
  assign ingress1_14_io_in4_0 = {io_validin64_56,io_in64_56}; // @[Cat.scala 30:58]
  assign ingress1_14_io_in4_1 = {io_validin64_57,io_in64_57}; // @[Cat.scala 30:58]
  assign ingress1_14_io_in4_2 = {io_validin64_58,io_in64_58}; // @[Cat.scala 30:58]
  assign ingress1_14_io_in4_3 = {io_validin64_59,io_in64_59}; // @[Cat.scala 30:58]
  assign ingress1_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 58:36]
  assign ingress1_15_clock = clock;
  assign ingress1_15_io_in4_0 = {io_validin64_60,io_in64_60}; // @[Cat.scala 30:58]
  assign ingress1_15_io_in4_1 = {io_validin64_61,io_in64_61}; // @[Cat.scala 30:58]
  assign ingress1_15_io_in4_2 = {io_validin64_62,io_in64_62}; // @[Cat.scala 30:58]
  assign ingress1_15_io_in4_3 = {io_validin64_63,io_in64_63}; // @[Cat.scala 30:58]
  assign ingress1_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 58:36]
  always @(posedge clock) begin
    tag <= io_tagin; // @[BuildingBlock.scala 40:20]
    addr <= io_addrin; // @[BuildingBlock.scala 42:21]
    if (reset) begin // @[BuildingBlock.scala 44:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 44:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 45:12]
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
  tag = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  addr = _RAND_1[7:0];
  _RAND_2 = {4{`RANDOM}};
  ctrl_reg = _RAND_2[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CLOSingress2(
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
  input  [1:0]   io_tagin,
  input  [7:0]   io_addrin,
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
  output [1:0]   io_tagout,
  output [7:0]   io_addrout,
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [127:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ingress2_0_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_0_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_0_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_0_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_0_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_0_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_0_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_0_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_0_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_0_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_1_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_1_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_1_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_1_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_1_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_1_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_1_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_1_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_1_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_1_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_2_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_2_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_2_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_2_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_2_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_2_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_2_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_2_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_2_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_2_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_3_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_3_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_3_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_3_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_3_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_3_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_3_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_3_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_3_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_3_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_4_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_4_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_4_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_4_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_4_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_4_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_4_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_4_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_4_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_4_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_5_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_5_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_5_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_5_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_5_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_5_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_5_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_5_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_5_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_5_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_6_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_6_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_6_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_6_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_6_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_6_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_6_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_6_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_6_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_6_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_7_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_7_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_7_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_7_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_7_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_7_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_7_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_7_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_7_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_7_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_8_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_8_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_8_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_8_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_8_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_8_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_8_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_8_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_8_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_8_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_9_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_9_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_9_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_9_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_9_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_9_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_9_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_9_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_9_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_9_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_10_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_10_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_10_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_10_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_10_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_10_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_10_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_10_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_10_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_10_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_11_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_11_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_11_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_11_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_11_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_11_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_11_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_11_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_11_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_11_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_12_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_12_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_12_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_12_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_12_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_12_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_12_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_12_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_12_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_12_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_13_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_13_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_13_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_13_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_13_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_13_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_13_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_13_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_13_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_13_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_14_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_14_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_14_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_14_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_14_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_14_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_14_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_14_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_14_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_14_io_ctrl; // @[BuildingBlock.scala 74:52]
  wire  ingress2_15_clock; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_15_io_in4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_15_io_in4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_15_io_in4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_15_io_in4_3; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_15_io_out4_0; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_15_io_out4_1; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_15_io_out4_2; // @[BuildingBlock.scala 74:52]
  wire [64:0] ingress2_15_io_out4_3; // @[BuildingBlock.scala 74:52]
  wire [7:0] ingress2_15_io_ctrl; // @[BuildingBlock.scala 74:52]
  reg [1:0] tag; // @[BuildingBlock.scala 75:20]
  reg [7:0] addr; // @[BuildingBlock.scala 77:21]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 79:25]
  CLOScell4 ingress2_0 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_0_clock),
    .io_in4_0(ingress2_0_io_in4_0),
    .io_in4_1(ingress2_0_io_in4_1),
    .io_in4_2(ingress2_0_io_in4_2),
    .io_in4_3(ingress2_0_io_in4_3),
    .io_out4_0(ingress2_0_io_out4_0),
    .io_out4_1(ingress2_0_io_out4_1),
    .io_out4_2(ingress2_0_io_out4_2),
    .io_out4_3(ingress2_0_io_out4_3),
    .io_ctrl(ingress2_0_io_ctrl)
  );
  CLOScell4 ingress2_1 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_1_clock),
    .io_in4_0(ingress2_1_io_in4_0),
    .io_in4_1(ingress2_1_io_in4_1),
    .io_in4_2(ingress2_1_io_in4_2),
    .io_in4_3(ingress2_1_io_in4_3),
    .io_out4_0(ingress2_1_io_out4_0),
    .io_out4_1(ingress2_1_io_out4_1),
    .io_out4_2(ingress2_1_io_out4_2),
    .io_out4_3(ingress2_1_io_out4_3),
    .io_ctrl(ingress2_1_io_ctrl)
  );
  CLOScell4 ingress2_2 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_2_clock),
    .io_in4_0(ingress2_2_io_in4_0),
    .io_in4_1(ingress2_2_io_in4_1),
    .io_in4_2(ingress2_2_io_in4_2),
    .io_in4_3(ingress2_2_io_in4_3),
    .io_out4_0(ingress2_2_io_out4_0),
    .io_out4_1(ingress2_2_io_out4_1),
    .io_out4_2(ingress2_2_io_out4_2),
    .io_out4_3(ingress2_2_io_out4_3),
    .io_ctrl(ingress2_2_io_ctrl)
  );
  CLOScell4 ingress2_3 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_3_clock),
    .io_in4_0(ingress2_3_io_in4_0),
    .io_in4_1(ingress2_3_io_in4_1),
    .io_in4_2(ingress2_3_io_in4_2),
    .io_in4_3(ingress2_3_io_in4_3),
    .io_out4_0(ingress2_3_io_out4_0),
    .io_out4_1(ingress2_3_io_out4_1),
    .io_out4_2(ingress2_3_io_out4_2),
    .io_out4_3(ingress2_3_io_out4_3),
    .io_ctrl(ingress2_3_io_ctrl)
  );
  CLOScell4 ingress2_4 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_4_clock),
    .io_in4_0(ingress2_4_io_in4_0),
    .io_in4_1(ingress2_4_io_in4_1),
    .io_in4_2(ingress2_4_io_in4_2),
    .io_in4_3(ingress2_4_io_in4_3),
    .io_out4_0(ingress2_4_io_out4_0),
    .io_out4_1(ingress2_4_io_out4_1),
    .io_out4_2(ingress2_4_io_out4_2),
    .io_out4_3(ingress2_4_io_out4_3),
    .io_ctrl(ingress2_4_io_ctrl)
  );
  CLOScell4 ingress2_5 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_5_clock),
    .io_in4_0(ingress2_5_io_in4_0),
    .io_in4_1(ingress2_5_io_in4_1),
    .io_in4_2(ingress2_5_io_in4_2),
    .io_in4_3(ingress2_5_io_in4_3),
    .io_out4_0(ingress2_5_io_out4_0),
    .io_out4_1(ingress2_5_io_out4_1),
    .io_out4_2(ingress2_5_io_out4_2),
    .io_out4_3(ingress2_5_io_out4_3),
    .io_ctrl(ingress2_5_io_ctrl)
  );
  CLOScell4 ingress2_6 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_6_clock),
    .io_in4_0(ingress2_6_io_in4_0),
    .io_in4_1(ingress2_6_io_in4_1),
    .io_in4_2(ingress2_6_io_in4_2),
    .io_in4_3(ingress2_6_io_in4_3),
    .io_out4_0(ingress2_6_io_out4_0),
    .io_out4_1(ingress2_6_io_out4_1),
    .io_out4_2(ingress2_6_io_out4_2),
    .io_out4_3(ingress2_6_io_out4_3),
    .io_ctrl(ingress2_6_io_ctrl)
  );
  CLOScell4 ingress2_7 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_7_clock),
    .io_in4_0(ingress2_7_io_in4_0),
    .io_in4_1(ingress2_7_io_in4_1),
    .io_in4_2(ingress2_7_io_in4_2),
    .io_in4_3(ingress2_7_io_in4_3),
    .io_out4_0(ingress2_7_io_out4_0),
    .io_out4_1(ingress2_7_io_out4_1),
    .io_out4_2(ingress2_7_io_out4_2),
    .io_out4_3(ingress2_7_io_out4_3),
    .io_ctrl(ingress2_7_io_ctrl)
  );
  CLOScell4 ingress2_8 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_8_clock),
    .io_in4_0(ingress2_8_io_in4_0),
    .io_in4_1(ingress2_8_io_in4_1),
    .io_in4_2(ingress2_8_io_in4_2),
    .io_in4_3(ingress2_8_io_in4_3),
    .io_out4_0(ingress2_8_io_out4_0),
    .io_out4_1(ingress2_8_io_out4_1),
    .io_out4_2(ingress2_8_io_out4_2),
    .io_out4_3(ingress2_8_io_out4_3),
    .io_ctrl(ingress2_8_io_ctrl)
  );
  CLOScell4 ingress2_9 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_9_clock),
    .io_in4_0(ingress2_9_io_in4_0),
    .io_in4_1(ingress2_9_io_in4_1),
    .io_in4_2(ingress2_9_io_in4_2),
    .io_in4_3(ingress2_9_io_in4_3),
    .io_out4_0(ingress2_9_io_out4_0),
    .io_out4_1(ingress2_9_io_out4_1),
    .io_out4_2(ingress2_9_io_out4_2),
    .io_out4_3(ingress2_9_io_out4_3),
    .io_ctrl(ingress2_9_io_ctrl)
  );
  CLOScell4 ingress2_10 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_10_clock),
    .io_in4_0(ingress2_10_io_in4_0),
    .io_in4_1(ingress2_10_io_in4_1),
    .io_in4_2(ingress2_10_io_in4_2),
    .io_in4_3(ingress2_10_io_in4_3),
    .io_out4_0(ingress2_10_io_out4_0),
    .io_out4_1(ingress2_10_io_out4_1),
    .io_out4_2(ingress2_10_io_out4_2),
    .io_out4_3(ingress2_10_io_out4_3),
    .io_ctrl(ingress2_10_io_ctrl)
  );
  CLOScell4 ingress2_11 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_11_clock),
    .io_in4_0(ingress2_11_io_in4_0),
    .io_in4_1(ingress2_11_io_in4_1),
    .io_in4_2(ingress2_11_io_in4_2),
    .io_in4_3(ingress2_11_io_in4_3),
    .io_out4_0(ingress2_11_io_out4_0),
    .io_out4_1(ingress2_11_io_out4_1),
    .io_out4_2(ingress2_11_io_out4_2),
    .io_out4_3(ingress2_11_io_out4_3),
    .io_ctrl(ingress2_11_io_ctrl)
  );
  CLOScell4 ingress2_12 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_12_clock),
    .io_in4_0(ingress2_12_io_in4_0),
    .io_in4_1(ingress2_12_io_in4_1),
    .io_in4_2(ingress2_12_io_in4_2),
    .io_in4_3(ingress2_12_io_in4_3),
    .io_out4_0(ingress2_12_io_out4_0),
    .io_out4_1(ingress2_12_io_out4_1),
    .io_out4_2(ingress2_12_io_out4_2),
    .io_out4_3(ingress2_12_io_out4_3),
    .io_ctrl(ingress2_12_io_ctrl)
  );
  CLOScell4 ingress2_13 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_13_clock),
    .io_in4_0(ingress2_13_io_in4_0),
    .io_in4_1(ingress2_13_io_in4_1),
    .io_in4_2(ingress2_13_io_in4_2),
    .io_in4_3(ingress2_13_io_in4_3),
    .io_out4_0(ingress2_13_io_out4_0),
    .io_out4_1(ingress2_13_io_out4_1),
    .io_out4_2(ingress2_13_io_out4_2),
    .io_out4_3(ingress2_13_io_out4_3),
    .io_ctrl(ingress2_13_io_ctrl)
  );
  CLOScell4 ingress2_14 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_14_clock),
    .io_in4_0(ingress2_14_io_in4_0),
    .io_in4_1(ingress2_14_io_in4_1),
    .io_in4_2(ingress2_14_io_in4_2),
    .io_in4_3(ingress2_14_io_in4_3),
    .io_out4_0(ingress2_14_io_out4_0),
    .io_out4_1(ingress2_14_io_out4_1),
    .io_out4_2(ingress2_14_io_out4_2),
    .io_out4_3(ingress2_14_io_out4_3),
    .io_ctrl(ingress2_14_io_ctrl)
  );
  CLOScell4 ingress2_15 ( // @[BuildingBlock.scala 74:52]
    .clock(ingress2_15_clock),
    .io_in4_0(ingress2_15_io_in4_0),
    .io_in4_1(ingress2_15_io_in4_1),
    .io_in4_2(ingress2_15_io_in4_2),
    .io_in4_3(ingress2_15_io_in4_3),
    .io_out4_0(ingress2_15_io_out4_0),
    .io_out4_1(ingress2_15_io_out4_1),
    .io_out4_2(ingress2_15_io_out4_2),
    .io_out4_3(ingress2_15_io_out4_3),
    .io_ctrl(ingress2_15_io_ctrl)
  );
  assign io_out64_0 = ingress2_0_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_1 = ingress2_1_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_2 = ingress2_2_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_3 = ingress2_3_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_4 = ingress2_0_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_5 = ingress2_1_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_6 = ingress2_2_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_7 = ingress2_3_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_8 = ingress2_0_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_9 = ingress2_1_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_10 = ingress2_2_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_11 = ingress2_3_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_12 = ingress2_0_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_13 = ingress2_1_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_14 = ingress2_2_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_15 = ingress2_3_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_16 = ingress2_4_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_17 = ingress2_5_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_18 = ingress2_6_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_19 = ingress2_7_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_20 = ingress2_4_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_21 = ingress2_5_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_22 = ingress2_6_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_23 = ingress2_7_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_24 = ingress2_4_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_25 = ingress2_5_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_26 = ingress2_6_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_27 = ingress2_7_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_28 = ingress2_4_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_29 = ingress2_5_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_30 = ingress2_6_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_31 = ingress2_7_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_32 = ingress2_8_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_33 = ingress2_9_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_34 = ingress2_10_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_35 = ingress2_11_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_36 = ingress2_8_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_37 = ingress2_9_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_38 = ingress2_10_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_39 = ingress2_11_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_40 = ingress2_8_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_41 = ingress2_9_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_42 = ingress2_10_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_43 = ingress2_11_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_44 = ingress2_8_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_45 = ingress2_9_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_46 = ingress2_10_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_47 = ingress2_11_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_48 = ingress2_12_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_49 = ingress2_13_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_50 = ingress2_14_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_51 = ingress2_15_io_out4_0[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_52 = ingress2_12_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_53 = ingress2_13_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_54 = ingress2_14_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_55 = ingress2_15_io_out4_1[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_56 = ingress2_12_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_57 = ingress2_13_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_58 = ingress2_14_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_59 = ingress2_15_io_out4_2[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_60 = ingress2_12_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_61 = ingress2_13_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_62 = ingress2_14_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_out64_63 = ingress2_15_io_out4_3[63:0]; // @[BuildingBlock.scala 89:59]
  assign io_validout64_0 = ingress2_0_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_1 = ingress2_1_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_2 = ingress2_2_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_3 = ingress2_3_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_4 = ingress2_0_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_5 = ingress2_1_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_6 = ingress2_2_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_7 = ingress2_3_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_8 = ingress2_0_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_9 = ingress2_1_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_10 = ingress2_2_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_11 = ingress2_3_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_12 = ingress2_0_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_13 = ingress2_1_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_14 = ingress2_2_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_15 = ingress2_3_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_16 = ingress2_4_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_17 = ingress2_5_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_18 = ingress2_6_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_19 = ingress2_7_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_20 = ingress2_4_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_21 = ingress2_5_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_22 = ingress2_6_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_23 = ingress2_7_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_24 = ingress2_4_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_25 = ingress2_5_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_26 = ingress2_6_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_27 = ingress2_7_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_28 = ingress2_4_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_29 = ingress2_5_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_30 = ingress2_6_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_31 = ingress2_7_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_32 = ingress2_8_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_33 = ingress2_9_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_34 = ingress2_10_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_35 = ingress2_11_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_36 = ingress2_8_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_37 = ingress2_9_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_38 = ingress2_10_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_39 = ingress2_11_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_40 = ingress2_8_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_41 = ingress2_9_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_42 = ingress2_10_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_43 = ingress2_11_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_44 = ingress2_8_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_45 = ingress2_9_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_46 = ingress2_10_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_47 = ingress2_11_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_48 = ingress2_12_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_49 = ingress2_13_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_50 = ingress2_14_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_51 = ingress2_15_io_out4_0[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_52 = ingress2_12_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_53 = ingress2_13_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_54 = ingress2_14_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_55 = ingress2_15_io_out4_1[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_56 = ingress2_12_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_57 = ingress2_13_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_58 = ingress2_14_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_59 = ingress2_15_io_out4_2[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_60 = ingress2_12_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_61 = ingress2_13_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_62 = ingress2_14_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_validout64_63 = ingress2_15_io_out4_3[64]; // @[BuildingBlock.scala 90:64]
  assign io_tagout = tag; // @[BuildingBlock.scala 76:13]
  assign io_addrout = addr; // @[BuildingBlock.scala 78:14]
  assign ingress2_0_clock = clock;
  assign ingress2_0_io_in4_0 = {io_validin64_0,io_in64_0}; // @[Cat.scala 30:58]
  assign ingress2_0_io_in4_1 = {io_validin64_1,io_in64_1}; // @[Cat.scala 30:58]
  assign ingress2_0_io_in4_2 = {io_validin64_2,io_in64_2}; // @[Cat.scala 30:58]
  assign ingress2_0_io_in4_3 = {io_validin64_3,io_in64_3}; // @[Cat.scala 30:58]
  assign ingress2_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 94:36]
  assign ingress2_1_clock = clock;
  assign ingress2_1_io_in4_0 = {io_validin64_4,io_in64_4}; // @[Cat.scala 30:58]
  assign ingress2_1_io_in4_1 = {io_validin64_5,io_in64_5}; // @[Cat.scala 30:58]
  assign ingress2_1_io_in4_2 = {io_validin64_6,io_in64_6}; // @[Cat.scala 30:58]
  assign ingress2_1_io_in4_3 = {io_validin64_7,io_in64_7}; // @[Cat.scala 30:58]
  assign ingress2_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 94:36]
  assign ingress2_2_clock = clock;
  assign ingress2_2_io_in4_0 = {io_validin64_8,io_in64_8}; // @[Cat.scala 30:58]
  assign ingress2_2_io_in4_1 = {io_validin64_9,io_in64_9}; // @[Cat.scala 30:58]
  assign ingress2_2_io_in4_2 = {io_validin64_10,io_in64_10}; // @[Cat.scala 30:58]
  assign ingress2_2_io_in4_3 = {io_validin64_11,io_in64_11}; // @[Cat.scala 30:58]
  assign ingress2_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 94:36]
  assign ingress2_3_clock = clock;
  assign ingress2_3_io_in4_0 = {io_validin64_12,io_in64_12}; // @[Cat.scala 30:58]
  assign ingress2_3_io_in4_1 = {io_validin64_13,io_in64_13}; // @[Cat.scala 30:58]
  assign ingress2_3_io_in4_2 = {io_validin64_14,io_in64_14}; // @[Cat.scala 30:58]
  assign ingress2_3_io_in4_3 = {io_validin64_15,io_in64_15}; // @[Cat.scala 30:58]
  assign ingress2_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 94:36]
  assign ingress2_4_clock = clock;
  assign ingress2_4_io_in4_0 = {io_validin64_16,io_in64_16}; // @[Cat.scala 30:58]
  assign ingress2_4_io_in4_1 = {io_validin64_17,io_in64_17}; // @[Cat.scala 30:58]
  assign ingress2_4_io_in4_2 = {io_validin64_18,io_in64_18}; // @[Cat.scala 30:58]
  assign ingress2_4_io_in4_3 = {io_validin64_19,io_in64_19}; // @[Cat.scala 30:58]
  assign ingress2_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 94:36]
  assign ingress2_5_clock = clock;
  assign ingress2_5_io_in4_0 = {io_validin64_20,io_in64_20}; // @[Cat.scala 30:58]
  assign ingress2_5_io_in4_1 = {io_validin64_21,io_in64_21}; // @[Cat.scala 30:58]
  assign ingress2_5_io_in4_2 = {io_validin64_22,io_in64_22}; // @[Cat.scala 30:58]
  assign ingress2_5_io_in4_3 = {io_validin64_23,io_in64_23}; // @[Cat.scala 30:58]
  assign ingress2_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 94:36]
  assign ingress2_6_clock = clock;
  assign ingress2_6_io_in4_0 = {io_validin64_24,io_in64_24}; // @[Cat.scala 30:58]
  assign ingress2_6_io_in4_1 = {io_validin64_25,io_in64_25}; // @[Cat.scala 30:58]
  assign ingress2_6_io_in4_2 = {io_validin64_26,io_in64_26}; // @[Cat.scala 30:58]
  assign ingress2_6_io_in4_3 = {io_validin64_27,io_in64_27}; // @[Cat.scala 30:58]
  assign ingress2_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 94:36]
  assign ingress2_7_clock = clock;
  assign ingress2_7_io_in4_0 = {io_validin64_28,io_in64_28}; // @[Cat.scala 30:58]
  assign ingress2_7_io_in4_1 = {io_validin64_29,io_in64_29}; // @[Cat.scala 30:58]
  assign ingress2_7_io_in4_2 = {io_validin64_30,io_in64_30}; // @[Cat.scala 30:58]
  assign ingress2_7_io_in4_3 = {io_validin64_31,io_in64_31}; // @[Cat.scala 30:58]
  assign ingress2_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 94:36]
  assign ingress2_8_clock = clock;
  assign ingress2_8_io_in4_0 = {io_validin64_32,io_in64_32}; // @[Cat.scala 30:58]
  assign ingress2_8_io_in4_1 = {io_validin64_33,io_in64_33}; // @[Cat.scala 30:58]
  assign ingress2_8_io_in4_2 = {io_validin64_34,io_in64_34}; // @[Cat.scala 30:58]
  assign ingress2_8_io_in4_3 = {io_validin64_35,io_in64_35}; // @[Cat.scala 30:58]
  assign ingress2_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 94:36]
  assign ingress2_9_clock = clock;
  assign ingress2_9_io_in4_0 = {io_validin64_36,io_in64_36}; // @[Cat.scala 30:58]
  assign ingress2_9_io_in4_1 = {io_validin64_37,io_in64_37}; // @[Cat.scala 30:58]
  assign ingress2_9_io_in4_2 = {io_validin64_38,io_in64_38}; // @[Cat.scala 30:58]
  assign ingress2_9_io_in4_3 = {io_validin64_39,io_in64_39}; // @[Cat.scala 30:58]
  assign ingress2_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 94:36]
  assign ingress2_10_clock = clock;
  assign ingress2_10_io_in4_0 = {io_validin64_40,io_in64_40}; // @[Cat.scala 30:58]
  assign ingress2_10_io_in4_1 = {io_validin64_41,io_in64_41}; // @[Cat.scala 30:58]
  assign ingress2_10_io_in4_2 = {io_validin64_42,io_in64_42}; // @[Cat.scala 30:58]
  assign ingress2_10_io_in4_3 = {io_validin64_43,io_in64_43}; // @[Cat.scala 30:58]
  assign ingress2_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 94:36]
  assign ingress2_11_clock = clock;
  assign ingress2_11_io_in4_0 = {io_validin64_44,io_in64_44}; // @[Cat.scala 30:58]
  assign ingress2_11_io_in4_1 = {io_validin64_45,io_in64_45}; // @[Cat.scala 30:58]
  assign ingress2_11_io_in4_2 = {io_validin64_46,io_in64_46}; // @[Cat.scala 30:58]
  assign ingress2_11_io_in4_3 = {io_validin64_47,io_in64_47}; // @[Cat.scala 30:58]
  assign ingress2_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 94:36]
  assign ingress2_12_clock = clock;
  assign ingress2_12_io_in4_0 = {io_validin64_48,io_in64_48}; // @[Cat.scala 30:58]
  assign ingress2_12_io_in4_1 = {io_validin64_49,io_in64_49}; // @[Cat.scala 30:58]
  assign ingress2_12_io_in4_2 = {io_validin64_50,io_in64_50}; // @[Cat.scala 30:58]
  assign ingress2_12_io_in4_3 = {io_validin64_51,io_in64_51}; // @[Cat.scala 30:58]
  assign ingress2_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 94:36]
  assign ingress2_13_clock = clock;
  assign ingress2_13_io_in4_0 = {io_validin64_52,io_in64_52}; // @[Cat.scala 30:58]
  assign ingress2_13_io_in4_1 = {io_validin64_53,io_in64_53}; // @[Cat.scala 30:58]
  assign ingress2_13_io_in4_2 = {io_validin64_54,io_in64_54}; // @[Cat.scala 30:58]
  assign ingress2_13_io_in4_3 = {io_validin64_55,io_in64_55}; // @[Cat.scala 30:58]
  assign ingress2_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 94:36]
  assign ingress2_14_clock = clock;
  assign ingress2_14_io_in4_0 = {io_validin64_56,io_in64_56}; // @[Cat.scala 30:58]
  assign ingress2_14_io_in4_1 = {io_validin64_57,io_in64_57}; // @[Cat.scala 30:58]
  assign ingress2_14_io_in4_2 = {io_validin64_58,io_in64_58}; // @[Cat.scala 30:58]
  assign ingress2_14_io_in4_3 = {io_validin64_59,io_in64_59}; // @[Cat.scala 30:58]
  assign ingress2_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 94:36]
  assign ingress2_15_clock = clock;
  assign ingress2_15_io_in4_0 = {io_validin64_60,io_in64_60}; // @[Cat.scala 30:58]
  assign ingress2_15_io_in4_1 = {io_validin64_61,io_in64_61}; // @[Cat.scala 30:58]
  assign ingress2_15_io_in4_2 = {io_validin64_62,io_in64_62}; // @[Cat.scala 30:58]
  assign ingress2_15_io_in4_3 = {io_validin64_63,io_in64_63}; // @[Cat.scala 30:58]
  assign ingress2_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 94:36]
  always @(posedge clock) begin
    tag <= io_tagin; // @[BuildingBlock.scala 75:20]
    addr <= io_addrin; // @[BuildingBlock.scala 77:21]
    if (reset) begin // @[BuildingBlock.scala 79:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 79:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 80:12]
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
  tag = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  addr = _RAND_1[7:0];
  _RAND_2 = {4{`RANDOM}};
  ctrl_reg = _RAND_2[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CLOSegress2(
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
  input  [1:0]   io_tagin,
  input  [7:0]   io_addrin,
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
  output [1:0]   io_tagout,
  output [7:0]   io_addrout,
  input  [127:0] io_ctrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [127:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  egress2_0_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_0_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_0_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_0_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_0_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_0_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_0_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_0_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_0_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_0_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_1_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_1_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_1_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_1_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_1_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_1_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_1_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_1_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_1_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_1_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_2_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_2_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_2_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_2_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_2_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_2_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_2_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_2_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_2_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_2_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_3_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_3_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_3_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_3_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_3_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_3_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_3_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_3_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_3_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_3_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_4_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_4_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_4_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_4_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_4_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_4_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_4_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_4_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_4_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_4_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_5_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_5_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_5_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_5_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_5_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_5_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_5_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_5_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_5_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_5_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_6_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_6_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_6_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_6_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_6_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_6_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_6_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_6_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_6_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_6_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_7_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_7_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_7_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_7_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_7_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_7_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_7_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_7_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_7_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_7_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_8_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_8_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_8_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_8_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_8_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_8_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_8_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_8_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_8_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_8_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_9_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_9_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_9_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_9_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_9_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_9_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_9_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_9_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_9_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_9_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_10_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_10_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_10_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_10_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_10_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_10_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_10_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_10_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_10_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_10_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_11_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_11_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_11_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_11_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_11_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_11_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_11_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_11_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_11_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_11_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_12_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_12_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_12_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_12_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_12_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_12_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_12_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_12_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_12_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_12_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_13_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_13_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_13_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_13_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_13_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_13_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_13_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_13_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_13_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_13_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_14_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_14_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_14_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_14_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_14_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_14_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_14_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_14_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_14_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_14_io_ctrl; // @[BuildingBlock.scala 182:51]
  wire  egress2_15_clock; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_15_io_in4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_15_io_in4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_15_io_in4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_15_io_in4_3; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_15_io_out4_0; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_15_io_out4_1; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_15_io_out4_2; // @[BuildingBlock.scala 182:51]
  wire [64:0] egress2_15_io_out4_3; // @[BuildingBlock.scala 182:51]
  wire [7:0] egress2_15_io_ctrl; // @[BuildingBlock.scala 182:51]
  reg [1:0] tag; // @[BuildingBlock.scala 183:20]
  reg [7:0] addr; // @[BuildingBlock.scala 185:21]
  reg [127:0] ctrl_reg; // @[BuildingBlock.scala 187:25]
  CLOScell4 egress2_0 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_0_clock),
    .io_in4_0(egress2_0_io_in4_0),
    .io_in4_1(egress2_0_io_in4_1),
    .io_in4_2(egress2_0_io_in4_2),
    .io_in4_3(egress2_0_io_in4_3),
    .io_out4_0(egress2_0_io_out4_0),
    .io_out4_1(egress2_0_io_out4_1),
    .io_out4_2(egress2_0_io_out4_2),
    .io_out4_3(egress2_0_io_out4_3),
    .io_ctrl(egress2_0_io_ctrl)
  );
  CLOScell4 egress2_1 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_1_clock),
    .io_in4_0(egress2_1_io_in4_0),
    .io_in4_1(egress2_1_io_in4_1),
    .io_in4_2(egress2_1_io_in4_2),
    .io_in4_3(egress2_1_io_in4_3),
    .io_out4_0(egress2_1_io_out4_0),
    .io_out4_1(egress2_1_io_out4_1),
    .io_out4_2(egress2_1_io_out4_2),
    .io_out4_3(egress2_1_io_out4_3),
    .io_ctrl(egress2_1_io_ctrl)
  );
  CLOScell4 egress2_2 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_2_clock),
    .io_in4_0(egress2_2_io_in4_0),
    .io_in4_1(egress2_2_io_in4_1),
    .io_in4_2(egress2_2_io_in4_2),
    .io_in4_3(egress2_2_io_in4_3),
    .io_out4_0(egress2_2_io_out4_0),
    .io_out4_1(egress2_2_io_out4_1),
    .io_out4_2(egress2_2_io_out4_2),
    .io_out4_3(egress2_2_io_out4_3),
    .io_ctrl(egress2_2_io_ctrl)
  );
  CLOScell4 egress2_3 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_3_clock),
    .io_in4_0(egress2_3_io_in4_0),
    .io_in4_1(egress2_3_io_in4_1),
    .io_in4_2(egress2_3_io_in4_2),
    .io_in4_3(egress2_3_io_in4_3),
    .io_out4_0(egress2_3_io_out4_0),
    .io_out4_1(egress2_3_io_out4_1),
    .io_out4_2(egress2_3_io_out4_2),
    .io_out4_3(egress2_3_io_out4_3),
    .io_ctrl(egress2_3_io_ctrl)
  );
  CLOScell4 egress2_4 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_4_clock),
    .io_in4_0(egress2_4_io_in4_0),
    .io_in4_1(egress2_4_io_in4_1),
    .io_in4_2(egress2_4_io_in4_2),
    .io_in4_3(egress2_4_io_in4_3),
    .io_out4_0(egress2_4_io_out4_0),
    .io_out4_1(egress2_4_io_out4_1),
    .io_out4_2(egress2_4_io_out4_2),
    .io_out4_3(egress2_4_io_out4_3),
    .io_ctrl(egress2_4_io_ctrl)
  );
  CLOScell4 egress2_5 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_5_clock),
    .io_in4_0(egress2_5_io_in4_0),
    .io_in4_1(egress2_5_io_in4_1),
    .io_in4_2(egress2_5_io_in4_2),
    .io_in4_3(egress2_5_io_in4_3),
    .io_out4_0(egress2_5_io_out4_0),
    .io_out4_1(egress2_5_io_out4_1),
    .io_out4_2(egress2_5_io_out4_2),
    .io_out4_3(egress2_5_io_out4_3),
    .io_ctrl(egress2_5_io_ctrl)
  );
  CLOScell4 egress2_6 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_6_clock),
    .io_in4_0(egress2_6_io_in4_0),
    .io_in4_1(egress2_6_io_in4_1),
    .io_in4_2(egress2_6_io_in4_2),
    .io_in4_3(egress2_6_io_in4_3),
    .io_out4_0(egress2_6_io_out4_0),
    .io_out4_1(egress2_6_io_out4_1),
    .io_out4_2(egress2_6_io_out4_2),
    .io_out4_3(egress2_6_io_out4_3),
    .io_ctrl(egress2_6_io_ctrl)
  );
  CLOScell4 egress2_7 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_7_clock),
    .io_in4_0(egress2_7_io_in4_0),
    .io_in4_1(egress2_7_io_in4_1),
    .io_in4_2(egress2_7_io_in4_2),
    .io_in4_3(egress2_7_io_in4_3),
    .io_out4_0(egress2_7_io_out4_0),
    .io_out4_1(egress2_7_io_out4_1),
    .io_out4_2(egress2_7_io_out4_2),
    .io_out4_3(egress2_7_io_out4_3),
    .io_ctrl(egress2_7_io_ctrl)
  );
  CLOScell4 egress2_8 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_8_clock),
    .io_in4_0(egress2_8_io_in4_0),
    .io_in4_1(egress2_8_io_in4_1),
    .io_in4_2(egress2_8_io_in4_2),
    .io_in4_3(egress2_8_io_in4_3),
    .io_out4_0(egress2_8_io_out4_0),
    .io_out4_1(egress2_8_io_out4_1),
    .io_out4_2(egress2_8_io_out4_2),
    .io_out4_3(egress2_8_io_out4_3),
    .io_ctrl(egress2_8_io_ctrl)
  );
  CLOScell4 egress2_9 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_9_clock),
    .io_in4_0(egress2_9_io_in4_0),
    .io_in4_1(egress2_9_io_in4_1),
    .io_in4_2(egress2_9_io_in4_2),
    .io_in4_3(egress2_9_io_in4_3),
    .io_out4_0(egress2_9_io_out4_0),
    .io_out4_1(egress2_9_io_out4_1),
    .io_out4_2(egress2_9_io_out4_2),
    .io_out4_3(egress2_9_io_out4_3),
    .io_ctrl(egress2_9_io_ctrl)
  );
  CLOScell4 egress2_10 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_10_clock),
    .io_in4_0(egress2_10_io_in4_0),
    .io_in4_1(egress2_10_io_in4_1),
    .io_in4_2(egress2_10_io_in4_2),
    .io_in4_3(egress2_10_io_in4_3),
    .io_out4_0(egress2_10_io_out4_0),
    .io_out4_1(egress2_10_io_out4_1),
    .io_out4_2(egress2_10_io_out4_2),
    .io_out4_3(egress2_10_io_out4_3),
    .io_ctrl(egress2_10_io_ctrl)
  );
  CLOScell4 egress2_11 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_11_clock),
    .io_in4_0(egress2_11_io_in4_0),
    .io_in4_1(egress2_11_io_in4_1),
    .io_in4_2(egress2_11_io_in4_2),
    .io_in4_3(egress2_11_io_in4_3),
    .io_out4_0(egress2_11_io_out4_0),
    .io_out4_1(egress2_11_io_out4_1),
    .io_out4_2(egress2_11_io_out4_2),
    .io_out4_3(egress2_11_io_out4_3),
    .io_ctrl(egress2_11_io_ctrl)
  );
  CLOScell4 egress2_12 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_12_clock),
    .io_in4_0(egress2_12_io_in4_0),
    .io_in4_1(egress2_12_io_in4_1),
    .io_in4_2(egress2_12_io_in4_2),
    .io_in4_3(egress2_12_io_in4_3),
    .io_out4_0(egress2_12_io_out4_0),
    .io_out4_1(egress2_12_io_out4_1),
    .io_out4_2(egress2_12_io_out4_2),
    .io_out4_3(egress2_12_io_out4_3),
    .io_ctrl(egress2_12_io_ctrl)
  );
  CLOScell4 egress2_13 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_13_clock),
    .io_in4_0(egress2_13_io_in4_0),
    .io_in4_1(egress2_13_io_in4_1),
    .io_in4_2(egress2_13_io_in4_2),
    .io_in4_3(egress2_13_io_in4_3),
    .io_out4_0(egress2_13_io_out4_0),
    .io_out4_1(egress2_13_io_out4_1),
    .io_out4_2(egress2_13_io_out4_2),
    .io_out4_3(egress2_13_io_out4_3),
    .io_ctrl(egress2_13_io_ctrl)
  );
  CLOScell4 egress2_14 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_14_clock),
    .io_in4_0(egress2_14_io_in4_0),
    .io_in4_1(egress2_14_io_in4_1),
    .io_in4_2(egress2_14_io_in4_2),
    .io_in4_3(egress2_14_io_in4_3),
    .io_out4_0(egress2_14_io_out4_0),
    .io_out4_1(egress2_14_io_out4_1),
    .io_out4_2(egress2_14_io_out4_2),
    .io_out4_3(egress2_14_io_out4_3),
    .io_ctrl(egress2_14_io_ctrl)
  );
  CLOScell4 egress2_15 ( // @[BuildingBlock.scala 182:51]
    .clock(egress2_15_clock),
    .io_in4_0(egress2_15_io_in4_0),
    .io_in4_1(egress2_15_io_in4_1),
    .io_in4_2(egress2_15_io_in4_2),
    .io_in4_3(egress2_15_io_in4_3),
    .io_out4_0(egress2_15_io_out4_0),
    .io_out4_1(egress2_15_io_out4_1),
    .io_out4_2(egress2_15_io_out4_2),
    .io_out4_3(egress2_15_io_out4_3),
    .io_ctrl(egress2_15_io_ctrl)
  );
  assign io_out64_0 = egress2_0_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_1 = egress2_0_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_2 = egress2_0_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_3 = egress2_0_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_4 = egress2_1_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_5 = egress2_1_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_6 = egress2_1_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_7 = egress2_1_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_8 = egress2_2_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_9 = egress2_2_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_10 = egress2_2_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_11 = egress2_2_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_12 = egress2_3_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_13 = egress2_3_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_14 = egress2_3_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_15 = egress2_3_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_16 = egress2_4_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_17 = egress2_4_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_18 = egress2_4_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_19 = egress2_4_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_20 = egress2_5_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_21 = egress2_5_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_22 = egress2_5_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_23 = egress2_5_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_24 = egress2_6_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_25 = egress2_6_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_26 = egress2_6_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_27 = egress2_6_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_28 = egress2_7_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_29 = egress2_7_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_30 = egress2_7_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_31 = egress2_7_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_32 = egress2_8_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_33 = egress2_8_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_34 = egress2_8_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_35 = egress2_8_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_36 = egress2_9_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_37 = egress2_9_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_38 = egress2_9_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_39 = egress2_9_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_40 = egress2_10_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_41 = egress2_10_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_42 = egress2_10_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_43 = egress2_10_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_44 = egress2_11_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_45 = egress2_11_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_46 = egress2_11_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_47 = egress2_11_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_48 = egress2_12_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_49 = egress2_12_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_50 = egress2_12_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_51 = egress2_12_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_52 = egress2_13_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_53 = egress2_13_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_54 = egress2_13_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_55 = egress2_13_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_56 = egress2_14_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_57 = egress2_14_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_58 = egress2_14_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_59 = egress2_14_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_60 = egress2_15_io_out4_0[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_61 = egress2_15_io_out4_1[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_62 = egress2_15_io_out4_2[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_out64_63 = egress2_15_io_out4_3[63:0]; // @[BuildingBlock.scala 196:47]
  assign io_validout64_0 = egress2_0_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_1 = egress2_0_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_2 = egress2_0_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_3 = egress2_0_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_4 = egress2_1_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_5 = egress2_1_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_6 = egress2_1_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_7 = egress2_1_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_8 = egress2_2_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_9 = egress2_2_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_10 = egress2_2_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_11 = egress2_2_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_12 = egress2_3_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_13 = egress2_3_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_14 = egress2_3_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_15 = egress2_3_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_16 = egress2_4_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_17 = egress2_4_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_18 = egress2_4_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_19 = egress2_4_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_20 = egress2_5_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_21 = egress2_5_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_22 = egress2_5_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_23 = egress2_5_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_24 = egress2_6_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_25 = egress2_6_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_26 = egress2_6_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_27 = egress2_6_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_28 = egress2_7_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_29 = egress2_7_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_30 = egress2_7_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_31 = egress2_7_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_32 = egress2_8_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_33 = egress2_8_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_34 = egress2_8_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_35 = egress2_8_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_36 = egress2_9_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_37 = egress2_9_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_38 = egress2_9_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_39 = egress2_9_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_40 = egress2_10_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_41 = egress2_10_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_42 = egress2_10_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_43 = egress2_10_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_44 = egress2_11_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_45 = egress2_11_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_46 = egress2_11_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_47 = egress2_11_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_48 = egress2_12_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_49 = egress2_12_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_50 = egress2_12_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_51 = egress2_12_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_52 = egress2_13_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_53 = egress2_13_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_54 = egress2_13_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_55 = egress2_13_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_56 = egress2_14_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_57 = egress2_14_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_58 = egress2_14_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_59 = egress2_14_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_60 = egress2_15_io_out4_0[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_61 = egress2_15_io_out4_1[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_62 = egress2_15_io_out4_2[64]; // @[BuildingBlock.scala 197:52]
  assign io_validout64_63 = egress2_15_io_out4_3[64]; // @[BuildingBlock.scala 197:52]
  assign io_tagout = tag; // @[BuildingBlock.scala 184:13]
  assign io_addrout = addr; // @[BuildingBlock.scala 186:14]
  assign egress2_0_clock = clock;
  assign egress2_0_io_in4_0 = {io_validin64_0,io_in64_0}; // @[Cat.scala 30:58]
  assign egress2_0_io_in4_1 = {io_validin64_1,io_in64_1}; // @[Cat.scala 30:58]
  assign egress2_0_io_in4_2 = {io_validin64_2,io_in64_2}; // @[Cat.scala 30:58]
  assign egress2_0_io_in4_3 = {io_validin64_3,io_in64_3}; // @[Cat.scala 30:58]
  assign egress2_0_io_ctrl = ctrl_reg[127:120]; // @[BuildingBlock.scala 201:35]
  assign egress2_1_clock = clock;
  assign egress2_1_io_in4_0 = {io_validin64_4,io_in64_4}; // @[Cat.scala 30:58]
  assign egress2_1_io_in4_1 = {io_validin64_5,io_in64_5}; // @[Cat.scala 30:58]
  assign egress2_1_io_in4_2 = {io_validin64_6,io_in64_6}; // @[Cat.scala 30:58]
  assign egress2_1_io_in4_3 = {io_validin64_7,io_in64_7}; // @[Cat.scala 30:58]
  assign egress2_1_io_ctrl = ctrl_reg[119:112]; // @[BuildingBlock.scala 201:35]
  assign egress2_2_clock = clock;
  assign egress2_2_io_in4_0 = {io_validin64_8,io_in64_8}; // @[Cat.scala 30:58]
  assign egress2_2_io_in4_1 = {io_validin64_9,io_in64_9}; // @[Cat.scala 30:58]
  assign egress2_2_io_in4_2 = {io_validin64_10,io_in64_10}; // @[Cat.scala 30:58]
  assign egress2_2_io_in4_3 = {io_validin64_11,io_in64_11}; // @[Cat.scala 30:58]
  assign egress2_2_io_ctrl = ctrl_reg[111:104]; // @[BuildingBlock.scala 201:35]
  assign egress2_3_clock = clock;
  assign egress2_3_io_in4_0 = {io_validin64_12,io_in64_12}; // @[Cat.scala 30:58]
  assign egress2_3_io_in4_1 = {io_validin64_13,io_in64_13}; // @[Cat.scala 30:58]
  assign egress2_3_io_in4_2 = {io_validin64_14,io_in64_14}; // @[Cat.scala 30:58]
  assign egress2_3_io_in4_3 = {io_validin64_15,io_in64_15}; // @[Cat.scala 30:58]
  assign egress2_3_io_ctrl = ctrl_reg[103:96]; // @[BuildingBlock.scala 201:35]
  assign egress2_4_clock = clock;
  assign egress2_4_io_in4_0 = {io_validin64_16,io_in64_16}; // @[Cat.scala 30:58]
  assign egress2_4_io_in4_1 = {io_validin64_17,io_in64_17}; // @[Cat.scala 30:58]
  assign egress2_4_io_in4_2 = {io_validin64_18,io_in64_18}; // @[Cat.scala 30:58]
  assign egress2_4_io_in4_3 = {io_validin64_19,io_in64_19}; // @[Cat.scala 30:58]
  assign egress2_4_io_ctrl = ctrl_reg[95:88]; // @[BuildingBlock.scala 201:35]
  assign egress2_5_clock = clock;
  assign egress2_5_io_in4_0 = {io_validin64_20,io_in64_20}; // @[Cat.scala 30:58]
  assign egress2_5_io_in4_1 = {io_validin64_21,io_in64_21}; // @[Cat.scala 30:58]
  assign egress2_5_io_in4_2 = {io_validin64_22,io_in64_22}; // @[Cat.scala 30:58]
  assign egress2_5_io_in4_3 = {io_validin64_23,io_in64_23}; // @[Cat.scala 30:58]
  assign egress2_5_io_ctrl = ctrl_reg[87:80]; // @[BuildingBlock.scala 201:35]
  assign egress2_6_clock = clock;
  assign egress2_6_io_in4_0 = {io_validin64_24,io_in64_24}; // @[Cat.scala 30:58]
  assign egress2_6_io_in4_1 = {io_validin64_25,io_in64_25}; // @[Cat.scala 30:58]
  assign egress2_6_io_in4_2 = {io_validin64_26,io_in64_26}; // @[Cat.scala 30:58]
  assign egress2_6_io_in4_3 = {io_validin64_27,io_in64_27}; // @[Cat.scala 30:58]
  assign egress2_6_io_ctrl = ctrl_reg[79:72]; // @[BuildingBlock.scala 201:35]
  assign egress2_7_clock = clock;
  assign egress2_7_io_in4_0 = {io_validin64_28,io_in64_28}; // @[Cat.scala 30:58]
  assign egress2_7_io_in4_1 = {io_validin64_29,io_in64_29}; // @[Cat.scala 30:58]
  assign egress2_7_io_in4_2 = {io_validin64_30,io_in64_30}; // @[Cat.scala 30:58]
  assign egress2_7_io_in4_3 = {io_validin64_31,io_in64_31}; // @[Cat.scala 30:58]
  assign egress2_7_io_ctrl = ctrl_reg[71:64]; // @[BuildingBlock.scala 201:35]
  assign egress2_8_clock = clock;
  assign egress2_8_io_in4_0 = {io_validin64_32,io_in64_32}; // @[Cat.scala 30:58]
  assign egress2_8_io_in4_1 = {io_validin64_33,io_in64_33}; // @[Cat.scala 30:58]
  assign egress2_8_io_in4_2 = {io_validin64_34,io_in64_34}; // @[Cat.scala 30:58]
  assign egress2_8_io_in4_3 = {io_validin64_35,io_in64_35}; // @[Cat.scala 30:58]
  assign egress2_8_io_ctrl = ctrl_reg[63:56]; // @[BuildingBlock.scala 201:35]
  assign egress2_9_clock = clock;
  assign egress2_9_io_in4_0 = {io_validin64_36,io_in64_36}; // @[Cat.scala 30:58]
  assign egress2_9_io_in4_1 = {io_validin64_37,io_in64_37}; // @[Cat.scala 30:58]
  assign egress2_9_io_in4_2 = {io_validin64_38,io_in64_38}; // @[Cat.scala 30:58]
  assign egress2_9_io_in4_3 = {io_validin64_39,io_in64_39}; // @[Cat.scala 30:58]
  assign egress2_9_io_ctrl = ctrl_reg[55:48]; // @[BuildingBlock.scala 201:35]
  assign egress2_10_clock = clock;
  assign egress2_10_io_in4_0 = {io_validin64_40,io_in64_40}; // @[Cat.scala 30:58]
  assign egress2_10_io_in4_1 = {io_validin64_41,io_in64_41}; // @[Cat.scala 30:58]
  assign egress2_10_io_in4_2 = {io_validin64_42,io_in64_42}; // @[Cat.scala 30:58]
  assign egress2_10_io_in4_3 = {io_validin64_43,io_in64_43}; // @[Cat.scala 30:58]
  assign egress2_10_io_ctrl = ctrl_reg[47:40]; // @[BuildingBlock.scala 201:35]
  assign egress2_11_clock = clock;
  assign egress2_11_io_in4_0 = {io_validin64_44,io_in64_44}; // @[Cat.scala 30:58]
  assign egress2_11_io_in4_1 = {io_validin64_45,io_in64_45}; // @[Cat.scala 30:58]
  assign egress2_11_io_in4_2 = {io_validin64_46,io_in64_46}; // @[Cat.scala 30:58]
  assign egress2_11_io_in4_3 = {io_validin64_47,io_in64_47}; // @[Cat.scala 30:58]
  assign egress2_11_io_ctrl = ctrl_reg[39:32]; // @[BuildingBlock.scala 201:35]
  assign egress2_12_clock = clock;
  assign egress2_12_io_in4_0 = {io_validin64_48,io_in64_48}; // @[Cat.scala 30:58]
  assign egress2_12_io_in4_1 = {io_validin64_49,io_in64_49}; // @[Cat.scala 30:58]
  assign egress2_12_io_in4_2 = {io_validin64_50,io_in64_50}; // @[Cat.scala 30:58]
  assign egress2_12_io_in4_3 = {io_validin64_51,io_in64_51}; // @[Cat.scala 30:58]
  assign egress2_12_io_ctrl = ctrl_reg[31:24]; // @[BuildingBlock.scala 201:35]
  assign egress2_13_clock = clock;
  assign egress2_13_io_in4_0 = {io_validin64_52,io_in64_52}; // @[Cat.scala 30:58]
  assign egress2_13_io_in4_1 = {io_validin64_53,io_in64_53}; // @[Cat.scala 30:58]
  assign egress2_13_io_in4_2 = {io_validin64_54,io_in64_54}; // @[Cat.scala 30:58]
  assign egress2_13_io_in4_3 = {io_validin64_55,io_in64_55}; // @[Cat.scala 30:58]
  assign egress2_13_io_ctrl = ctrl_reg[23:16]; // @[BuildingBlock.scala 201:35]
  assign egress2_14_clock = clock;
  assign egress2_14_io_in4_0 = {io_validin64_56,io_in64_56}; // @[Cat.scala 30:58]
  assign egress2_14_io_in4_1 = {io_validin64_57,io_in64_57}; // @[Cat.scala 30:58]
  assign egress2_14_io_in4_2 = {io_validin64_58,io_in64_58}; // @[Cat.scala 30:58]
  assign egress2_14_io_in4_3 = {io_validin64_59,io_in64_59}; // @[Cat.scala 30:58]
  assign egress2_14_io_ctrl = ctrl_reg[15:8]; // @[BuildingBlock.scala 201:35]
  assign egress2_15_clock = clock;
  assign egress2_15_io_in4_0 = {io_validin64_60,io_in64_60}; // @[Cat.scala 30:58]
  assign egress2_15_io_in4_1 = {io_validin64_61,io_in64_61}; // @[Cat.scala 30:58]
  assign egress2_15_io_in4_2 = {io_validin64_62,io_in64_62}; // @[Cat.scala 30:58]
  assign egress2_15_io_in4_3 = {io_validin64_63,io_in64_63}; // @[Cat.scala 30:58]
  assign egress2_15_io_ctrl = ctrl_reg[7:0]; // @[BuildingBlock.scala 201:35]
  always @(posedge clock) begin
    tag <= io_tagin; // @[BuildingBlock.scala 183:20]
    addr <= io_addrin; // @[BuildingBlock.scala 185:21]
    if (reset) begin // @[BuildingBlock.scala 187:25]
      ctrl_reg <= 128'h0; // @[BuildingBlock.scala 187:25]
    end else begin
      ctrl_reg <= io_ctrl; // @[BuildingBlock.scala 188:12]
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
  tag = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  addr = _RAND_1[7:0];
  _RAND_2 = {4{`RANDOM}};
  ctrl_reg = _RAND_2[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module BuildingBlockNewFirst(
  input          clock,
  input          reset,
  input  [63:0]  io_d_in_0_a,
  input          io_d_in_0_valid_a,
  input  [63:0]  io_d_in_0_b,
  input          io_d_in_0_valid_b,
  input  [63:0]  io_d_in_1_a,
  input          io_d_in_1_valid_a,
  input  [63:0]  io_d_in_1_b,
  input          io_d_in_1_valid_b,
  input  [63:0]  io_d_in_2_a,
  input          io_d_in_2_valid_a,
  input  [63:0]  io_d_in_2_b,
  input          io_d_in_2_valid_b,
  input  [63:0]  io_d_in_3_a,
  input          io_d_in_3_valid_a,
  input  [63:0]  io_d_in_3_b,
  input          io_d_in_3_valid_b,
  input  [63:0]  io_d_in_4_a,
  input          io_d_in_4_valid_a,
  input  [63:0]  io_d_in_4_b,
  input          io_d_in_4_valid_b,
  input  [63:0]  io_d_in_5_a,
  input          io_d_in_5_valid_a,
  input  [63:0]  io_d_in_5_b,
  input          io_d_in_5_valid_b,
  input  [63:0]  io_d_in_6_a,
  input          io_d_in_6_valid_a,
  input  [63:0]  io_d_in_6_b,
  input          io_d_in_6_valid_b,
  input  [63:0]  io_d_in_7_a,
  input          io_d_in_7_valid_a,
  input  [63:0]  io_d_in_7_b,
  input          io_d_in_7_valid_b,
  input  [63:0]  io_d_in_8_a,
  input          io_d_in_8_valid_a,
  input  [63:0]  io_d_in_8_b,
  input          io_d_in_8_valid_b,
  input  [63:0]  io_d_in_9_a,
  input          io_d_in_9_valid_a,
  input  [63:0]  io_d_in_9_b,
  input          io_d_in_9_valid_b,
  input  [63:0]  io_d_in_10_a,
  input          io_d_in_10_valid_a,
  input  [63:0]  io_d_in_10_b,
  input          io_d_in_10_valid_b,
  input  [63:0]  io_d_in_11_a,
  input          io_d_in_11_valid_a,
  input  [63:0]  io_d_in_11_b,
  input          io_d_in_11_valid_b,
  input  [63:0]  io_d_in_12_a,
  input          io_d_in_12_valid_a,
  input  [63:0]  io_d_in_12_b,
  input          io_d_in_12_valid_b,
  input  [63:0]  io_d_in_13_a,
  input          io_d_in_13_valid_a,
  input  [63:0]  io_d_in_13_b,
  input          io_d_in_13_valid_b,
  input  [63:0]  io_d_in_14_a,
  input          io_d_in_14_valid_a,
  input  [63:0]  io_d_in_14_b,
  input          io_d_in_14_valid_b,
  input  [63:0]  io_d_in_15_a,
  input          io_d_in_15_valid_a,
  input  [63:0]  io_d_in_15_b,
  input          io_d_in_15_valid_b,
  input  [63:0]  io_d_in_16_a,
  input          io_d_in_16_valid_a,
  input  [63:0]  io_d_in_16_b,
  input          io_d_in_16_valid_b,
  input  [63:0]  io_d_in_17_a,
  input          io_d_in_17_valid_a,
  input  [63:0]  io_d_in_17_b,
  input          io_d_in_17_valid_b,
  input  [63:0]  io_d_in_18_a,
  input          io_d_in_18_valid_a,
  input  [63:0]  io_d_in_18_b,
  input          io_d_in_18_valid_b,
  input  [63:0]  io_d_in_19_a,
  input          io_d_in_19_valid_a,
  input  [63:0]  io_d_in_19_b,
  input          io_d_in_19_valid_b,
  input  [63:0]  io_d_in_20_a,
  input          io_d_in_20_valid_a,
  input  [63:0]  io_d_in_20_b,
  input          io_d_in_20_valid_b,
  input  [63:0]  io_d_in_21_a,
  input          io_d_in_21_valid_a,
  input  [63:0]  io_d_in_21_b,
  input          io_d_in_21_valid_b,
  input  [63:0]  io_d_in_22_a,
  input          io_d_in_22_valid_a,
  input  [63:0]  io_d_in_22_b,
  input          io_d_in_22_valid_b,
  input  [63:0]  io_d_in_23_a,
  input          io_d_in_23_valid_a,
  input  [63:0]  io_d_in_23_b,
  input          io_d_in_23_valid_b,
  input  [63:0]  io_d_in_24_a,
  input          io_d_in_24_valid_a,
  input  [63:0]  io_d_in_24_b,
  input          io_d_in_24_valid_b,
  input  [63:0]  io_d_in_25_a,
  input          io_d_in_25_valid_a,
  input  [63:0]  io_d_in_25_b,
  input          io_d_in_25_valid_b,
  input  [63:0]  io_d_in_26_a,
  input          io_d_in_26_valid_a,
  input  [63:0]  io_d_in_26_b,
  input          io_d_in_26_valid_b,
  input  [63:0]  io_d_in_27_a,
  input          io_d_in_27_valid_a,
  input  [63:0]  io_d_in_27_b,
  input          io_d_in_27_valid_b,
  input  [63:0]  io_d_in_28_a,
  input          io_d_in_28_valid_a,
  input  [63:0]  io_d_in_28_b,
  input          io_d_in_28_valid_b,
  input  [63:0]  io_d_in_29_a,
  input          io_d_in_29_valid_a,
  input  [63:0]  io_d_in_29_b,
  input          io_d_in_29_valid_b,
  input  [63:0]  io_d_in_30_a,
  input          io_d_in_30_valid_a,
  input  [63:0]  io_d_in_30_b,
  input          io_d_in_30_valid_b,
  input  [63:0]  io_d_in_31_a,
  input          io_d_in_31_valid_a,
  input  [63:0]  io_d_in_31_b,
  input          io_d_in_31_valid_b,
  output [63:0]  io_d_out_0_a,
  output         io_d_out_0_valid_a,
  output [63:0]  io_d_out_0_b,
  output         io_d_out_0_valid_b,
  output [63:0]  io_d_out_1_a,
  output         io_d_out_1_valid_a,
  output [63:0]  io_d_out_1_b,
  output         io_d_out_1_valid_b,
  output [63:0]  io_d_out_2_a,
  output         io_d_out_2_valid_a,
  output [63:0]  io_d_out_2_b,
  output         io_d_out_2_valid_b,
  output [63:0]  io_d_out_3_a,
  output         io_d_out_3_valid_a,
  output [63:0]  io_d_out_3_b,
  output         io_d_out_3_valid_b,
  output [63:0]  io_d_out_4_a,
  output         io_d_out_4_valid_a,
  output [63:0]  io_d_out_4_b,
  output         io_d_out_4_valid_b,
  output [63:0]  io_d_out_5_a,
  output         io_d_out_5_valid_a,
  output [63:0]  io_d_out_5_b,
  output         io_d_out_5_valid_b,
  output [63:0]  io_d_out_6_a,
  output         io_d_out_6_valid_a,
  output [63:0]  io_d_out_6_b,
  output         io_d_out_6_valid_b,
  output [63:0]  io_d_out_7_a,
  output         io_d_out_7_valid_a,
  output [63:0]  io_d_out_7_b,
  output         io_d_out_7_valid_b,
  output [63:0]  io_d_out_8_a,
  output         io_d_out_8_valid_a,
  output [63:0]  io_d_out_8_b,
  output         io_d_out_8_valid_b,
  output [63:0]  io_d_out_9_a,
  output         io_d_out_9_valid_a,
  output [63:0]  io_d_out_9_b,
  output         io_d_out_9_valid_b,
  output [63:0]  io_d_out_10_a,
  output         io_d_out_10_valid_a,
  output [63:0]  io_d_out_10_b,
  output         io_d_out_10_valid_b,
  output [63:0]  io_d_out_11_a,
  output         io_d_out_11_valid_a,
  output [63:0]  io_d_out_11_b,
  output         io_d_out_11_valid_b,
  output [63:0]  io_d_out_12_a,
  output         io_d_out_12_valid_a,
  output [63:0]  io_d_out_12_b,
  output         io_d_out_12_valid_b,
  output [63:0]  io_d_out_13_a,
  output         io_d_out_13_valid_a,
  output [63:0]  io_d_out_13_b,
  output         io_d_out_13_valid_b,
  output [63:0]  io_d_out_14_a,
  output         io_d_out_14_valid_a,
  output [63:0]  io_d_out_14_b,
  output         io_d_out_14_valid_b,
  output [63:0]  io_d_out_15_a,
  output         io_d_out_15_valid_a,
  output [63:0]  io_d_out_15_b,
  output         io_d_out_15_valid_b,
  output [63:0]  io_d_out_16_a,
  output         io_d_out_16_valid_a,
  output [63:0]  io_d_out_16_b,
  output         io_d_out_16_valid_b,
  output [63:0]  io_d_out_17_a,
  output         io_d_out_17_valid_a,
  output [63:0]  io_d_out_17_b,
  output         io_d_out_17_valid_b,
  output [63:0]  io_d_out_18_a,
  output         io_d_out_18_valid_a,
  output [63:0]  io_d_out_18_b,
  output         io_d_out_18_valid_b,
  output [63:0]  io_d_out_19_a,
  output         io_d_out_19_valid_a,
  output [63:0]  io_d_out_19_b,
  output         io_d_out_19_valid_b,
  output [63:0]  io_d_out_20_a,
  output         io_d_out_20_valid_a,
  output [63:0]  io_d_out_20_b,
  output         io_d_out_20_valid_b,
  output [63:0]  io_d_out_21_a,
  output         io_d_out_21_valid_a,
  output [63:0]  io_d_out_21_b,
  output         io_d_out_21_valid_b,
  output [63:0]  io_d_out_22_a,
  output         io_d_out_22_valid_a,
  output [63:0]  io_d_out_22_b,
  output         io_d_out_22_valid_b,
  output [63:0]  io_d_out_23_a,
  output         io_d_out_23_valid_a,
  output [63:0]  io_d_out_23_b,
  output         io_d_out_23_valid_b,
  output [63:0]  io_d_out_24_a,
  output         io_d_out_24_valid_a,
  output [63:0]  io_d_out_24_b,
  output         io_d_out_24_valid_b,
  output [63:0]  io_d_out_25_a,
  output         io_d_out_25_valid_a,
  output [63:0]  io_d_out_25_b,
  output         io_d_out_25_valid_b,
  output [63:0]  io_d_out_26_a,
  output         io_d_out_26_valid_a,
  output [63:0]  io_d_out_26_b,
  output         io_d_out_26_valid_b,
  output [63:0]  io_d_out_27_a,
  output         io_d_out_27_valid_a,
  output [63:0]  io_d_out_27_b,
  output         io_d_out_27_valid_b,
  output [63:0]  io_d_out_28_a,
  output         io_d_out_28_valid_a,
  output [63:0]  io_d_out_28_b,
  output         io_d_out_28_valid_b,
  output [63:0]  io_d_out_29_a,
  output         io_d_out_29_valid_a,
  output [63:0]  io_d_out_29_b,
  output         io_d_out_29_valid_b,
  output [63:0]  io_d_out_30_a,
  output         io_d_out_30_valid_a,
  output [63:0]  io_d_out_30_b,
  output         io_d_out_30_valid_b,
  output [63:0]  io_d_out_31_a,
  output         io_d_out_31_valid_a,
  output [63:0]  io_d_out_31_b,
  output         io_d_out_31_valid_b,
  input          io_wr_en_mem1,
  input          io_wr_en_mem2,
  input          io_wr_en_mem3,
  input          io_wr_en_mem4,
  input          io_wr_en_mem5,
  input          io_wr_en_mem6,
  input  [223:0] io_wr_instr_mem1,
  input  [127:0] io_wr_instr_mem2,
  input  [127:0] io_wr_instr_mem3,
  input  [127:0] io_wr_instr_mem4,
  input  [127:0] io_wr_instr_mem5,
  input  [127:0] io_wr_instr_mem6,
  input          io_run_in,
  output         io_run_out,
  input          io_PC1_in_en,
  input  [7:0]   io_PC1_in,
  output [7:0]   io_PC6_out,
  input  [7:0]   io_Addr_in,
  output [7:0]   io_Addr_out,
  input  [1:0]   io_Tag_in,
  output [1:0]   io_Tag_out
);
`ifdef RANDOMIZE_MEM_INIT
  reg [223:0] _RAND_0;
  reg [127:0] _RAND_1;
  reg [127:0] _RAND_2;
  reg [127:0] _RAND_3;
  reg [127:0] _RAND_4;
  reg [127:0] _RAND_5;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [223:0] _RAND_18;
  reg [127:0] _RAND_19;
  reg [127:0] _RAND_20;
  reg [127:0] _RAND_21;
  reg [127:0] _RAND_22;
  reg [127:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
`endif // RANDOMIZE_REG_INIT
  reg [223:0] Mem1 [0:255]; // @[BuildingBlockNewFirst.scala 34:17]
  wire [223:0] Mem1_instr1_MPORT_data; // @[BuildingBlockNewFirst.scala 34:17]
  wire [7:0] Mem1_instr1_MPORT_addr; // @[BuildingBlockNewFirst.scala 34:17]
  wire [223:0] Mem1_MPORT_data; // @[BuildingBlockNewFirst.scala 34:17]
  wire [7:0] Mem1_MPORT_addr; // @[BuildingBlockNewFirst.scala 34:17]
  wire  Mem1_MPORT_mask; // @[BuildingBlockNewFirst.scala 34:17]
  wire  Mem1_MPORT_en; // @[BuildingBlockNewFirst.scala 34:17]
  reg [127:0] Mem2 [0:255]; // @[BuildingBlockNewFirst.scala 35:17]
  wire [127:0] Mem2_instr2_MPORT_data; // @[BuildingBlockNewFirst.scala 35:17]
  wire [7:0] Mem2_instr2_MPORT_addr; // @[BuildingBlockNewFirst.scala 35:17]
  wire [127:0] Mem2_MPORT_1_data; // @[BuildingBlockNewFirst.scala 35:17]
  wire [7:0] Mem2_MPORT_1_addr; // @[BuildingBlockNewFirst.scala 35:17]
  wire  Mem2_MPORT_1_mask; // @[BuildingBlockNewFirst.scala 35:17]
  wire  Mem2_MPORT_1_en; // @[BuildingBlockNewFirst.scala 35:17]
  reg [127:0] Mem3 [0:255]; // @[BuildingBlockNewFirst.scala 36:17]
  wire [127:0] Mem3_instr3_MPORT_data; // @[BuildingBlockNewFirst.scala 36:17]
  wire [7:0] Mem3_instr3_MPORT_addr; // @[BuildingBlockNewFirst.scala 36:17]
  wire [127:0] Mem3_MPORT_2_data; // @[BuildingBlockNewFirst.scala 36:17]
  wire [7:0] Mem3_MPORT_2_addr; // @[BuildingBlockNewFirst.scala 36:17]
  wire  Mem3_MPORT_2_mask; // @[BuildingBlockNewFirst.scala 36:17]
  wire  Mem3_MPORT_2_en; // @[BuildingBlockNewFirst.scala 36:17]
  reg [127:0] Mem4 [0:255]; // @[BuildingBlockNewFirst.scala 37:17]
  wire [127:0] Mem4_instr4_MPORT_data; // @[BuildingBlockNewFirst.scala 37:17]
  wire [7:0] Mem4_instr4_MPORT_addr; // @[BuildingBlockNewFirst.scala 37:17]
  wire [127:0] Mem4_MPORT_3_data; // @[BuildingBlockNewFirst.scala 37:17]
  wire [7:0] Mem4_MPORT_3_addr; // @[BuildingBlockNewFirst.scala 37:17]
  wire  Mem4_MPORT_3_mask; // @[BuildingBlockNewFirst.scala 37:17]
  wire  Mem4_MPORT_3_en; // @[BuildingBlockNewFirst.scala 37:17]
  reg [127:0] Mem5 [0:255]; // @[BuildingBlockNewFirst.scala 38:17]
  wire [127:0] Mem5_instr5_MPORT_data; // @[BuildingBlockNewFirst.scala 38:17]
  wire [7:0] Mem5_instr5_MPORT_addr; // @[BuildingBlockNewFirst.scala 38:17]
  wire [127:0] Mem5_MPORT_4_data; // @[BuildingBlockNewFirst.scala 38:17]
  wire [7:0] Mem5_MPORT_4_addr; // @[BuildingBlockNewFirst.scala 38:17]
  wire  Mem5_MPORT_4_mask; // @[BuildingBlockNewFirst.scala 38:17]
  wire  Mem5_MPORT_4_en; // @[BuildingBlockNewFirst.scala 38:17]
  reg [127:0] Mem6 [0:255]; // @[BuildingBlockNewFirst.scala 39:17]
  wire [127:0] Mem6_instr6_MPORT_data; // @[BuildingBlockNewFirst.scala 39:17]
  wire [7:0] Mem6_instr6_MPORT_addr; // @[BuildingBlockNewFirst.scala 39:17]
  wire [127:0] Mem6_MPORT_5_data; // @[BuildingBlockNewFirst.scala 39:17]
  wire [7:0] Mem6_MPORT_5_addr; // @[BuildingBlockNewFirst.scala 39:17]
  wire  Mem6_MPORT_5_mask; // @[BuildingBlockNewFirst.scala 39:17]
  wire  Mem6_MPORT_5_en; // @[BuildingBlockNewFirst.scala 39:17]
  wire  peCol_clock; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_reset; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_0_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_0_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_0_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_0_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_1_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_1_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_1_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_1_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_2_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_2_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_2_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_2_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_3_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_3_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_3_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_3_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_4_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_4_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_4_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_4_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_5_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_5_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_5_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_5_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_6_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_6_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_6_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_6_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_7_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_7_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_7_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_7_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_8_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_8_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_8_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_8_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_9_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_9_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_9_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_9_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_10_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_10_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_10_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_10_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_11_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_11_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_11_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_11_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_12_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_12_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_12_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_12_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_13_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_13_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_13_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_13_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_14_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_14_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_14_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_14_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_15_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_15_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_15_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_15_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_16_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_16_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_16_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_16_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_17_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_17_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_17_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_17_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_18_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_18_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_18_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_18_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_19_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_19_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_19_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_19_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_20_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_20_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_20_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_20_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_21_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_21_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_21_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_21_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_22_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_22_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_22_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_22_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_23_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_23_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_23_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_23_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_24_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_24_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_24_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_24_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_25_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_25_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_25_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_25_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_26_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_26_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_26_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_26_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_27_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_27_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_27_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_27_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_28_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_28_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_28_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_28_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_29_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_29_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_29_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_29_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_30_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_30_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_30_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_30_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_31_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_31_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_in_31_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_in_31_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_0_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_0_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_0_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_0_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_1_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_1_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_1_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_1_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_2_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_2_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_2_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_2_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_3_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_3_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_3_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_3_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_4_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_4_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_4_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_4_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_5_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_5_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_5_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_5_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_6_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_6_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_6_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_6_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_7_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_7_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_7_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_7_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_8_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_8_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_8_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_8_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_9_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_9_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_9_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_9_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_10_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_10_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_10_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_10_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_11_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_11_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_11_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_11_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_12_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_12_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_12_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_12_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_13_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_13_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_13_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_13_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_14_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_14_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_14_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_14_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_15_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_15_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_15_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_15_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_16_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_16_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_16_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_16_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_17_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_17_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_17_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_17_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_18_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_18_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_18_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_18_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_19_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_19_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_19_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_19_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_20_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_20_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_20_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_20_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_21_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_21_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_21_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_21_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_22_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_22_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_22_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_22_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_23_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_23_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_23_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_23_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_24_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_24_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_24_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_24_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_25_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_25_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_25_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_25_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_26_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_26_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_26_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_26_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_27_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_27_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_27_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_27_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_28_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_28_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_28_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_28_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_29_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_29_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_29_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_29_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_30_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_30_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_30_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_30_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_31_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_31_valid_a; // @[BuildingBlockNewFirst.scala 76:21]
  wire [63:0] peCol_io_d_out_31_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire  peCol_io_d_out_31_valid_b; // @[BuildingBlockNewFirst.scala 76:21]
  wire [1:0] peCol_io_tagin; // @[BuildingBlockNewFirst.scala 76:21]
  wire [7:0] peCol_io_addrin; // @[BuildingBlockNewFirst.scala 76:21]
  wire [1:0] peCol_io_tagout; // @[BuildingBlockNewFirst.scala 76:21]
  wire [7:0] peCol_io_addrout; // @[BuildingBlockNewFirst.scala 76:21]
  wire [223:0] peCol_io_instr; // @[BuildingBlockNewFirst.scala 76:21]
  wire  ingress1_clock; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_reset; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_0; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_1; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_2; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_3; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_4; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_5; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_6; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_7; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_8; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_9; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_10; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_11; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_12; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_13; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_14; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_15; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_16; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_17; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_18; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_19; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_20; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_21; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_22; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_23; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_24; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_25; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_26; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_27; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_28; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_29; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_30; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_31; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_32; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_33; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_34; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_35; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_36; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_37; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_38; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_39; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_40; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_41; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_42; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_43; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_44; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_45; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_46; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_47; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_48; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_49; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_50; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_51; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_52; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_53; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_54; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_55; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_56; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_57; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_58; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_59; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_60; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_61; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_62; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_in64_63; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_0; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_1; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_2; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_3; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_4; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_5; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_6; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_7; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_8; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_9; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_10; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_11; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_12; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_13; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_14; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_15; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_16; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_17; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_18; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_19; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_20; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_21; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_22; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_23; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_24; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_25; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_26; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_27; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_28; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_29; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_30; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_31; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_32; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_33; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_34; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_35; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_36; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_37; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_38; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_39; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_40; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_41; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_42; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_43; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_44; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_45; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_46; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_47; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_48; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_49; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_50; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_51; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_52; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_53; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_54; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_55; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_56; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_57; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_58; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_59; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_60; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_61; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_62; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validin64_63; // @[BuildingBlockNewFirst.scala 77:24]
  wire [1:0] ingress1_io_tagin; // @[BuildingBlockNewFirst.scala 77:24]
  wire [7:0] ingress1_io_addrin; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_0; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_1; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_2; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_3; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_4; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_5; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_6; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_7; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_8; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_9; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_10; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_11; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_12; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_13; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_14; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_15; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_16; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_17; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_18; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_19; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_20; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_21; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_22; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_23; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_24; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_25; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_26; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_27; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_28; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_29; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_30; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_31; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_32; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_33; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_34; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_35; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_36; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_37; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_38; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_39; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_40; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_41; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_42; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_43; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_44; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_45; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_46; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_47; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_48; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_49; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_50; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_51; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_52; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_53; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_54; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_55; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_56; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_57; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_58; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_59; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_60; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_61; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_62; // @[BuildingBlockNewFirst.scala 77:24]
  wire [63:0] ingress1_io_out64_63; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_0; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_1; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_2; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_3; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_4; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_5; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_6; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_7; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_8; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_9; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_10; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_11; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_12; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_13; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_14; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_15; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_16; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_17; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_18; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_19; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_20; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_21; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_22; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_23; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_24; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_25; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_26; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_27; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_28; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_29; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_30; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_31; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_32; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_33; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_34; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_35; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_36; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_37; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_38; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_39; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_40; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_41; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_42; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_43; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_44; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_45; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_46; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_47; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_48; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_49; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_50; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_51; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_52; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_53; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_54; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_55; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_56; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_57; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_58; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_59; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_60; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_61; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_62; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress1_io_validout64_63; // @[BuildingBlockNewFirst.scala 77:24]
  wire [1:0] ingress1_io_tagout; // @[BuildingBlockNewFirst.scala 77:24]
  wire [7:0] ingress1_io_addrout; // @[BuildingBlockNewFirst.scala 77:24]
  wire [127:0] ingress1_io_ctrl; // @[BuildingBlockNewFirst.scala 77:24]
  wire  ingress2_clock; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_reset; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_0; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_1; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_2; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_3; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_4; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_5; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_6; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_7; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_8; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_9; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_10; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_11; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_12; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_13; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_14; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_15; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_16; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_17; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_18; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_19; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_20; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_21; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_22; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_23; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_24; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_25; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_26; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_27; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_28; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_29; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_30; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_31; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_32; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_33; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_34; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_35; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_36; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_37; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_38; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_39; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_40; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_41; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_42; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_43; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_44; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_45; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_46; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_47; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_48; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_49; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_50; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_51; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_52; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_53; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_54; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_55; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_56; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_57; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_58; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_59; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_60; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_61; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_62; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_in64_63; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_0; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_1; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_2; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_3; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_4; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_5; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_6; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_7; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_8; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_9; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_10; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_11; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_12; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_13; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_14; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_15; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_16; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_17; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_18; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_19; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_20; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_21; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_22; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_23; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_24; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_25; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_26; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_27; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_28; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_29; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_30; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_31; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_32; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_33; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_34; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_35; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_36; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_37; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_38; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_39; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_40; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_41; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_42; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_43; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_44; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_45; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_46; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_47; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_48; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_49; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_50; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_51; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_52; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_53; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_54; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_55; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_56; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_57; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_58; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_59; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_60; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_61; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_62; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validin64_63; // @[BuildingBlockNewFirst.scala 78:24]
  wire [1:0] ingress2_io_tagin; // @[BuildingBlockNewFirst.scala 78:24]
  wire [7:0] ingress2_io_addrin; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_0; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_1; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_2; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_3; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_4; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_5; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_6; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_7; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_8; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_9; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_10; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_11; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_12; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_13; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_14; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_15; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_16; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_17; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_18; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_19; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_20; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_21; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_22; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_23; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_24; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_25; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_26; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_27; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_28; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_29; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_30; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_31; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_32; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_33; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_34; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_35; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_36; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_37; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_38; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_39; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_40; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_41; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_42; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_43; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_44; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_45; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_46; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_47; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_48; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_49; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_50; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_51; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_52; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_53; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_54; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_55; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_56; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_57; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_58; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_59; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_60; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_61; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_62; // @[BuildingBlockNewFirst.scala 78:24]
  wire [63:0] ingress2_io_out64_63; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_0; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_1; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_2; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_3; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_4; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_5; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_6; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_7; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_8; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_9; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_10; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_11; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_12; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_13; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_14; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_15; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_16; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_17; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_18; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_19; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_20; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_21; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_22; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_23; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_24; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_25; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_26; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_27; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_28; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_29; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_30; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_31; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_32; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_33; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_34; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_35; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_36; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_37; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_38; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_39; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_40; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_41; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_42; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_43; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_44; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_45; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_46; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_47; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_48; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_49; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_50; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_51; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_52; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_53; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_54; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_55; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_56; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_57; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_58; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_59; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_60; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_61; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_62; // @[BuildingBlockNewFirst.scala 78:24]
  wire  ingress2_io_validout64_63; // @[BuildingBlockNewFirst.scala 78:24]
  wire [1:0] ingress2_io_tagout; // @[BuildingBlockNewFirst.scala 78:24]
  wire [7:0] ingress2_io_addrout; // @[BuildingBlockNewFirst.scala 78:24]
  wire [127:0] ingress2_io_ctrl; // @[BuildingBlockNewFirst.scala 78:24]
  wire  middle_clock; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_reset; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_0; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_1; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_2; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_3; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_4; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_5; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_6; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_7; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_8; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_9; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_10; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_11; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_12; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_13; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_14; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_15; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_16; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_17; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_18; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_19; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_20; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_21; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_22; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_23; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_24; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_25; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_26; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_27; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_28; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_29; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_30; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_31; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_32; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_33; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_34; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_35; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_36; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_37; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_38; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_39; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_40; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_41; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_42; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_43; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_44; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_45; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_46; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_47; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_48; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_49; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_50; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_51; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_52; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_53; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_54; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_55; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_56; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_57; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_58; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_59; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_60; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_61; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_62; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_in64_63; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_0; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_1; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_2; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_3; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_4; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_5; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_6; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_7; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_8; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_9; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_10; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_11; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_12; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_13; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_14; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_15; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_16; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_17; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_18; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_19; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_20; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_21; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_22; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_23; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_24; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_25; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_26; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_27; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_28; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_29; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_30; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_31; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_32; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_33; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_34; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_35; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_36; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_37; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_38; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_39; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_40; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_41; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_42; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_43; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_44; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_45; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_46; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_47; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_48; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_49; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_50; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_51; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_52; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_53; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_54; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_55; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_56; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_57; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_58; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_59; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_60; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_61; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_62; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validin64_63; // @[BuildingBlockNewFirst.scala 79:22]
  wire [1:0] middle_io_tagin; // @[BuildingBlockNewFirst.scala 79:22]
  wire [7:0] middle_io_addrin; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_0; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_1; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_2; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_3; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_4; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_5; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_6; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_7; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_8; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_9; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_10; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_11; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_12; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_13; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_14; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_15; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_16; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_17; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_18; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_19; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_20; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_21; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_22; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_23; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_24; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_25; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_26; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_27; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_28; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_29; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_30; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_31; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_32; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_33; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_34; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_35; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_36; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_37; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_38; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_39; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_40; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_41; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_42; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_43; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_44; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_45; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_46; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_47; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_48; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_49; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_50; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_51; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_52; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_53; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_54; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_55; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_56; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_57; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_58; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_59; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_60; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_61; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_62; // @[BuildingBlockNewFirst.scala 79:22]
  wire [63:0] middle_io_out64_63; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_0; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_1; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_2; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_3; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_4; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_5; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_6; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_7; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_8; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_9; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_10; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_11; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_12; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_13; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_14; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_15; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_16; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_17; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_18; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_19; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_20; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_21; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_22; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_23; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_24; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_25; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_26; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_27; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_28; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_29; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_30; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_31; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_32; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_33; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_34; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_35; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_36; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_37; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_38; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_39; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_40; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_41; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_42; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_43; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_44; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_45; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_46; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_47; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_48; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_49; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_50; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_51; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_52; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_53; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_54; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_55; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_56; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_57; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_58; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_59; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_60; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_61; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_62; // @[BuildingBlockNewFirst.scala 79:22]
  wire  middle_io_validout64_63; // @[BuildingBlockNewFirst.scala 79:22]
  wire [1:0] middle_io_tagout; // @[BuildingBlockNewFirst.scala 79:22]
  wire [7:0] middle_io_addrout; // @[BuildingBlockNewFirst.scala 79:22]
  wire [127:0] middle_io_ctrl; // @[BuildingBlockNewFirst.scala 79:22]
  wire  egress1_clock; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_reset; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_0; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_1; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_2; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_3; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_4; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_5; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_6; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_7; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_8; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_9; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_10; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_11; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_12; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_13; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_14; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_15; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_16; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_17; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_18; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_19; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_20; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_21; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_22; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_23; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_24; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_25; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_26; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_27; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_28; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_29; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_30; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_31; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_32; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_33; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_34; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_35; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_36; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_37; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_38; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_39; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_40; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_41; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_42; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_43; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_44; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_45; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_46; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_47; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_48; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_49; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_50; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_51; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_52; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_53; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_54; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_55; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_56; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_57; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_58; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_59; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_60; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_61; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_62; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_in64_63; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_0; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_1; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_2; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_3; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_4; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_5; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_6; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_7; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_8; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_9; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_10; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_11; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_12; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_13; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_14; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_15; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_16; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_17; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_18; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_19; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_20; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_21; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_22; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_23; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_24; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_25; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_26; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_27; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_28; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_29; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_30; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_31; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_32; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_33; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_34; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_35; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_36; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_37; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_38; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_39; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_40; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_41; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_42; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_43; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_44; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_45; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_46; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_47; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_48; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_49; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_50; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_51; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_52; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_53; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_54; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_55; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_56; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_57; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_58; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_59; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_60; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_61; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_62; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validin64_63; // @[BuildingBlockNewFirst.scala 80:23]
  wire [1:0] egress1_io_tagin; // @[BuildingBlockNewFirst.scala 80:23]
  wire [7:0] egress1_io_addrin; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_0; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_1; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_2; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_3; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_4; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_5; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_6; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_7; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_8; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_9; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_10; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_11; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_12; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_13; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_14; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_15; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_16; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_17; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_18; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_19; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_20; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_21; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_22; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_23; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_24; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_25; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_26; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_27; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_28; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_29; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_30; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_31; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_32; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_33; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_34; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_35; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_36; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_37; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_38; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_39; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_40; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_41; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_42; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_43; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_44; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_45; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_46; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_47; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_48; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_49; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_50; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_51; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_52; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_53; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_54; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_55; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_56; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_57; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_58; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_59; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_60; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_61; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_62; // @[BuildingBlockNewFirst.scala 80:23]
  wire [63:0] egress1_io_out64_63; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_0; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_1; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_2; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_3; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_4; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_5; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_6; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_7; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_8; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_9; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_10; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_11; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_12; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_13; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_14; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_15; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_16; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_17; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_18; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_19; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_20; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_21; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_22; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_23; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_24; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_25; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_26; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_27; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_28; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_29; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_30; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_31; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_32; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_33; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_34; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_35; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_36; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_37; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_38; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_39; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_40; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_41; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_42; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_43; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_44; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_45; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_46; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_47; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_48; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_49; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_50; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_51; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_52; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_53; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_54; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_55; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_56; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_57; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_58; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_59; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_60; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_61; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_62; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress1_io_validout64_63; // @[BuildingBlockNewFirst.scala 80:23]
  wire [1:0] egress1_io_tagout; // @[BuildingBlockNewFirst.scala 80:23]
  wire [7:0] egress1_io_addrout; // @[BuildingBlockNewFirst.scala 80:23]
  wire [127:0] egress1_io_ctrl; // @[BuildingBlockNewFirst.scala 80:23]
  wire  egress2_clock; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_reset; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_0; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_1; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_2; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_3; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_4; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_5; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_6; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_7; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_8; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_9; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_10; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_11; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_12; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_13; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_14; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_15; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_16; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_17; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_18; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_19; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_20; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_21; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_22; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_23; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_24; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_25; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_26; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_27; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_28; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_29; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_30; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_31; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_32; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_33; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_34; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_35; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_36; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_37; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_38; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_39; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_40; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_41; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_42; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_43; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_44; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_45; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_46; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_47; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_48; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_49; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_50; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_51; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_52; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_53; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_54; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_55; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_56; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_57; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_58; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_59; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_60; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_61; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_62; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_in64_63; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_0; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_1; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_2; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_3; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_4; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_5; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_6; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_7; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_8; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_9; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_10; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_11; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_12; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_13; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_14; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_15; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_16; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_17; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_18; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_19; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_20; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_21; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_22; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_23; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_24; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_25; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_26; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_27; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_28; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_29; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_30; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_31; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_32; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_33; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_34; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_35; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_36; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_37; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_38; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_39; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_40; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_41; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_42; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_43; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_44; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_45; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_46; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_47; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_48; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_49; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_50; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_51; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_52; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_53; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_54; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_55; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_56; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_57; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_58; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_59; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_60; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_61; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_62; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validin64_63; // @[BuildingBlockNewFirst.scala 81:23]
  wire [1:0] egress2_io_tagin; // @[BuildingBlockNewFirst.scala 81:23]
  wire [7:0] egress2_io_addrin; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_0; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_1; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_2; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_3; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_4; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_5; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_6; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_7; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_8; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_9; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_10; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_11; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_12; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_13; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_14; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_15; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_16; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_17; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_18; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_19; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_20; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_21; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_22; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_23; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_24; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_25; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_26; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_27; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_28; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_29; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_30; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_31; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_32; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_33; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_34; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_35; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_36; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_37; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_38; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_39; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_40; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_41; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_42; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_43; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_44; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_45; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_46; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_47; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_48; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_49; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_50; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_51; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_52; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_53; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_54; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_55; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_56; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_57; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_58; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_59; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_60; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_61; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_62; // @[BuildingBlockNewFirst.scala 81:23]
  wire [63:0] egress2_io_out64_63; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_0; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_1; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_2; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_3; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_4; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_5; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_6; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_7; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_8; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_9; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_10; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_11; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_12; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_13; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_14; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_15; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_16; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_17; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_18; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_19; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_20; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_21; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_22; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_23; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_24; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_25; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_26; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_27; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_28; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_29; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_30; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_31; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_32; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_33; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_34; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_35; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_36; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_37; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_38; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_39; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_40; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_41; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_42; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_43; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_44; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_45; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_46; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_47; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_48; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_49; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_50; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_51; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_52; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_53; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_54; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_55; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_56; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_57; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_58; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_59; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_60; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_61; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_62; // @[BuildingBlockNewFirst.scala 81:23]
  wire  egress2_io_validout64_63; // @[BuildingBlockNewFirst.scala 81:23]
  wire [1:0] egress2_io_tagout; // @[BuildingBlockNewFirst.scala 81:23]
  wire [7:0] egress2_io_addrout; // @[BuildingBlockNewFirst.scala 81:23]
  wire [127:0] egress2_io_ctrl; // @[BuildingBlockNewFirst.scala 81:23]
  reg [7:0] PC1; // @[BuildingBlockNewFirst.scala 40:20]
  reg [7:0] PC2; // @[BuildingBlockNewFirst.scala 41:20]
  reg [7:0] PC3; // @[BuildingBlockNewFirst.scala 42:20]
  reg [7:0] PC4; // @[BuildingBlockNewFirst.scala 43:20]
  reg [7:0] PC5; // @[BuildingBlockNewFirst.scala 44:20]
  reg [7:0] PC6; // @[BuildingBlockNewFirst.scala 45:20]
  reg [7:0] wrAddr1; // @[BuildingBlockNewFirst.scala 46:24]
  reg [7:0] wrAddr2; // @[BuildingBlockNewFirst.scala 47:24]
  reg [7:0] wrAddr3; // @[BuildingBlockNewFirst.scala 48:24]
  reg [7:0] wrAddr4; // @[BuildingBlockNewFirst.scala 49:24]
  reg [7:0] wrAddr5; // @[BuildingBlockNewFirst.scala 50:24]
  reg [7:0] wrAddr6; // @[BuildingBlockNewFirst.scala 51:24]
  reg [223:0] instr1; // @[BuildingBlockNewFirst.scala 52:23]
  reg [127:0] instr2; // @[BuildingBlockNewFirst.scala 53:23]
  reg [127:0] instr3; // @[BuildingBlockNewFirst.scala 54:23]
  reg [127:0] instr4; // @[BuildingBlockNewFirst.scala 55:23]
  reg [127:0] instr5; // @[BuildingBlockNewFirst.scala 56:23]
  reg [127:0] instr6; // @[BuildingBlockNewFirst.scala 57:23]
  reg  run2; // @[BuildingBlockNewFirst.scala 65:21]
  reg  run3; // @[BuildingBlockNewFirst.scala 66:21]
  reg  run4; // @[BuildingBlockNewFirst.scala 67:21]
  reg  run5; // @[BuildingBlockNewFirst.scala 68:21]
  reg  run6; // @[BuildingBlockNewFirst.scala 69:21]
  wire [7:0] _PC1_T_1 = PC1 + 8'h1; // @[BuildingBlockNewFirst.scala 87:20]
  wire [7:0] _wrAddr1_T_1 = wrAddr1 + 8'h1; // @[BuildingBlockNewFirst.scala 153:24]
  wire [7:0] _wrAddr2_T_1 = wrAddr2 + 8'h1; // @[BuildingBlockNewFirst.scala 157:24]
  wire [7:0] _wrAddr3_T_1 = wrAddr3 + 8'h1; // @[BuildingBlockNewFirst.scala 161:24]
  wire [7:0] _wrAddr4_T_1 = wrAddr4 + 8'h1; // @[BuildingBlockNewFirst.scala 165:24]
  wire [7:0] _wrAddr5_T_1 = wrAddr5 + 8'h1; // @[BuildingBlockNewFirst.scala 169:24]
  wire [7:0] _wrAddr6_T_1 = wrAddr6 + 8'h1; // @[BuildingBlockNewFirst.scala 173:24]
  PEcol peCol ( // @[BuildingBlockNewFirst.scala 76:21]
    .clock(peCol_clock),
    .reset(peCol_reset),
    .io_d_in_0_a(peCol_io_d_in_0_a),
    .io_d_in_0_valid_a(peCol_io_d_in_0_valid_a),
    .io_d_in_0_b(peCol_io_d_in_0_b),
    .io_d_in_0_valid_b(peCol_io_d_in_0_valid_b),
    .io_d_in_1_a(peCol_io_d_in_1_a),
    .io_d_in_1_valid_a(peCol_io_d_in_1_valid_a),
    .io_d_in_1_b(peCol_io_d_in_1_b),
    .io_d_in_1_valid_b(peCol_io_d_in_1_valid_b),
    .io_d_in_2_a(peCol_io_d_in_2_a),
    .io_d_in_2_valid_a(peCol_io_d_in_2_valid_a),
    .io_d_in_2_b(peCol_io_d_in_2_b),
    .io_d_in_2_valid_b(peCol_io_d_in_2_valid_b),
    .io_d_in_3_a(peCol_io_d_in_3_a),
    .io_d_in_3_valid_a(peCol_io_d_in_3_valid_a),
    .io_d_in_3_b(peCol_io_d_in_3_b),
    .io_d_in_3_valid_b(peCol_io_d_in_3_valid_b),
    .io_d_in_4_a(peCol_io_d_in_4_a),
    .io_d_in_4_valid_a(peCol_io_d_in_4_valid_a),
    .io_d_in_4_b(peCol_io_d_in_4_b),
    .io_d_in_4_valid_b(peCol_io_d_in_4_valid_b),
    .io_d_in_5_a(peCol_io_d_in_5_a),
    .io_d_in_5_valid_a(peCol_io_d_in_5_valid_a),
    .io_d_in_5_b(peCol_io_d_in_5_b),
    .io_d_in_5_valid_b(peCol_io_d_in_5_valid_b),
    .io_d_in_6_a(peCol_io_d_in_6_a),
    .io_d_in_6_valid_a(peCol_io_d_in_6_valid_a),
    .io_d_in_6_b(peCol_io_d_in_6_b),
    .io_d_in_6_valid_b(peCol_io_d_in_6_valid_b),
    .io_d_in_7_a(peCol_io_d_in_7_a),
    .io_d_in_7_valid_a(peCol_io_d_in_7_valid_a),
    .io_d_in_7_b(peCol_io_d_in_7_b),
    .io_d_in_7_valid_b(peCol_io_d_in_7_valid_b),
    .io_d_in_8_a(peCol_io_d_in_8_a),
    .io_d_in_8_valid_a(peCol_io_d_in_8_valid_a),
    .io_d_in_8_b(peCol_io_d_in_8_b),
    .io_d_in_8_valid_b(peCol_io_d_in_8_valid_b),
    .io_d_in_9_a(peCol_io_d_in_9_a),
    .io_d_in_9_valid_a(peCol_io_d_in_9_valid_a),
    .io_d_in_9_b(peCol_io_d_in_9_b),
    .io_d_in_9_valid_b(peCol_io_d_in_9_valid_b),
    .io_d_in_10_a(peCol_io_d_in_10_a),
    .io_d_in_10_valid_a(peCol_io_d_in_10_valid_a),
    .io_d_in_10_b(peCol_io_d_in_10_b),
    .io_d_in_10_valid_b(peCol_io_d_in_10_valid_b),
    .io_d_in_11_a(peCol_io_d_in_11_a),
    .io_d_in_11_valid_a(peCol_io_d_in_11_valid_a),
    .io_d_in_11_b(peCol_io_d_in_11_b),
    .io_d_in_11_valid_b(peCol_io_d_in_11_valid_b),
    .io_d_in_12_a(peCol_io_d_in_12_a),
    .io_d_in_12_valid_a(peCol_io_d_in_12_valid_a),
    .io_d_in_12_b(peCol_io_d_in_12_b),
    .io_d_in_12_valid_b(peCol_io_d_in_12_valid_b),
    .io_d_in_13_a(peCol_io_d_in_13_a),
    .io_d_in_13_valid_a(peCol_io_d_in_13_valid_a),
    .io_d_in_13_b(peCol_io_d_in_13_b),
    .io_d_in_13_valid_b(peCol_io_d_in_13_valid_b),
    .io_d_in_14_a(peCol_io_d_in_14_a),
    .io_d_in_14_valid_a(peCol_io_d_in_14_valid_a),
    .io_d_in_14_b(peCol_io_d_in_14_b),
    .io_d_in_14_valid_b(peCol_io_d_in_14_valid_b),
    .io_d_in_15_a(peCol_io_d_in_15_a),
    .io_d_in_15_valid_a(peCol_io_d_in_15_valid_a),
    .io_d_in_15_b(peCol_io_d_in_15_b),
    .io_d_in_15_valid_b(peCol_io_d_in_15_valid_b),
    .io_d_in_16_a(peCol_io_d_in_16_a),
    .io_d_in_16_valid_a(peCol_io_d_in_16_valid_a),
    .io_d_in_16_b(peCol_io_d_in_16_b),
    .io_d_in_16_valid_b(peCol_io_d_in_16_valid_b),
    .io_d_in_17_a(peCol_io_d_in_17_a),
    .io_d_in_17_valid_a(peCol_io_d_in_17_valid_a),
    .io_d_in_17_b(peCol_io_d_in_17_b),
    .io_d_in_17_valid_b(peCol_io_d_in_17_valid_b),
    .io_d_in_18_a(peCol_io_d_in_18_a),
    .io_d_in_18_valid_a(peCol_io_d_in_18_valid_a),
    .io_d_in_18_b(peCol_io_d_in_18_b),
    .io_d_in_18_valid_b(peCol_io_d_in_18_valid_b),
    .io_d_in_19_a(peCol_io_d_in_19_a),
    .io_d_in_19_valid_a(peCol_io_d_in_19_valid_a),
    .io_d_in_19_b(peCol_io_d_in_19_b),
    .io_d_in_19_valid_b(peCol_io_d_in_19_valid_b),
    .io_d_in_20_a(peCol_io_d_in_20_a),
    .io_d_in_20_valid_a(peCol_io_d_in_20_valid_a),
    .io_d_in_20_b(peCol_io_d_in_20_b),
    .io_d_in_20_valid_b(peCol_io_d_in_20_valid_b),
    .io_d_in_21_a(peCol_io_d_in_21_a),
    .io_d_in_21_valid_a(peCol_io_d_in_21_valid_a),
    .io_d_in_21_b(peCol_io_d_in_21_b),
    .io_d_in_21_valid_b(peCol_io_d_in_21_valid_b),
    .io_d_in_22_a(peCol_io_d_in_22_a),
    .io_d_in_22_valid_a(peCol_io_d_in_22_valid_a),
    .io_d_in_22_b(peCol_io_d_in_22_b),
    .io_d_in_22_valid_b(peCol_io_d_in_22_valid_b),
    .io_d_in_23_a(peCol_io_d_in_23_a),
    .io_d_in_23_valid_a(peCol_io_d_in_23_valid_a),
    .io_d_in_23_b(peCol_io_d_in_23_b),
    .io_d_in_23_valid_b(peCol_io_d_in_23_valid_b),
    .io_d_in_24_a(peCol_io_d_in_24_a),
    .io_d_in_24_valid_a(peCol_io_d_in_24_valid_a),
    .io_d_in_24_b(peCol_io_d_in_24_b),
    .io_d_in_24_valid_b(peCol_io_d_in_24_valid_b),
    .io_d_in_25_a(peCol_io_d_in_25_a),
    .io_d_in_25_valid_a(peCol_io_d_in_25_valid_a),
    .io_d_in_25_b(peCol_io_d_in_25_b),
    .io_d_in_25_valid_b(peCol_io_d_in_25_valid_b),
    .io_d_in_26_a(peCol_io_d_in_26_a),
    .io_d_in_26_valid_a(peCol_io_d_in_26_valid_a),
    .io_d_in_26_b(peCol_io_d_in_26_b),
    .io_d_in_26_valid_b(peCol_io_d_in_26_valid_b),
    .io_d_in_27_a(peCol_io_d_in_27_a),
    .io_d_in_27_valid_a(peCol_io_d_in_27_valid_a),
    .io_d_in_27_b(peCol_io_d_in_27_b),
    .io_d_in_27_valid_b(peCol_io_d_in_27_valid_b),
    .io_d_in_28_a(peCol_io_d_in_28_a),
    .io_d_in_28_valid_a(peCol_io_d_in_28_valid_a),
    .io_d_in_28_b(peCol_io_d_in_28_b),
    .io_d_in_28_valid_b(peCol_io_d_in_28_valid_b),
    .io_d_in_29_a(peCol_io_d_in_29_a),
    .io_d_in_29_valid_a(peCol_io_d_in_29_valid_a),
    .io_d_in_29_b(peCol_io_d_in_29_b),
    .io_d_in_29_valid_b(peCol_io_d_in_29_valid_b),
    .io_d_in_30_a(peCol_io_d_in_30_a),
    .io_d_in_30_valid_a(peCol_io_d_in_30_valid_a),
    .io_d_in_30_b(peCol_io_d_in_30_b),
    .io_d_in_30_valid_b(peCol_io_d_in_30_valid_b),
    .io_d_in_31_a(peCol_io_d_in_31_a),
    .io_d_in_31_valid_a(peCol_io_d_in_31_valid_a),
    .io_d_in_31_b(peCol_io_d_in_31_b),
    .io_d_in_31_valid_b(peCol_io_d_in_31_valid_b),
    .io_d_out_0_a(peCol_io_d_out_0_a),
    .io_d_out_0_valid_a(peCol_io_d_out_0_valid_a),
    .io_d_out_0_b(peCol_io_d_out_0_b),
    .io_d_out_0_valid_b(peCol_io_d_out_0_valid_b),
    .io_d_out_1_a(peCol_io_d_out_1_a),
    .io_d_out_1_valid_a(peCol_io_d_out_1_valid_a),
    .io_d_out_1_b(peCol_io_d_out_1_b),
    .io_d_out_1_valid_b(peCol_io_d_out_1_valid_b),
    .io_d_out_2_a(peCol_io_d_out_2_a),
    .io_d_out_2_valid_a(peCol_io_d_out_2_valid_a),
    .io_d_out_2_b(peCol_io_d_out_2_b),
    .io_d_out_2_valid_b(peCol_io_d_out_2_valid_b),
    .io_d_out_3_a(peCol_io_d_out_3_a),
    .io_d_out_3_valid_a(peCol_io_d_out_3_valid_a),
    .io_d_out_3_b(peCol_io_d_out_3_b),
    .io_d_out_3_valid_b(peCol_io_d_out_3_valid_b),
    .io_d_out_4_a(peCol_io_d_out_4_a),
    .io_d_out_4_valid_a(peCol_io_d_out_4_valid_a),
    .io_d_out_4_b(peCol_io_d_out_4_b),
    .io_d_out_4_valid_b(peCol_io_d_out_4_valid_b),
    .io_d_out_5_a(peCol_io_d_out_5_a),
    .io_d_out_5_valid_a(peCol_io_d_out_5_valid_a),
    .io_d_out_5_b(peCol_io_d_out_5_b),
    .io_d_out_5_valid_b(peCol_io_d_out_5_valid_b),
    .io_d_out_6_a(peCol_io_d_out_6_a),
    .io_d_out_6_valid_a(peCol_io_d_out_6_valid_a),
    .io_d_out_6_b(peCol_io_d_out_6_b),
    .io_d_out_6_valid_b(peCol_io_d_out_6_valid_b),
    .io_d_out_7_a(peCol_io_d_out_7_a),
    .io_d_out_7_valid_a(peCol_io_d_out_7_valid_a),
    .io_d_out_7_b(peCol_io_d_out_7_b),
    .io_d_out_7_valid_b(peCol_io_d_out_7_valid_b),
    .io_d_out_8_a(peCol_io_d_out_8_a),
    .io_d_out_8_valid_a(peCol_io_d_out_8_valid_a),
    .io_d_out_8_b(peCol_io_d_out_8_b),
    .io_d_out_8_valid_b(peCol_io_d_out_8_valid_b),
    .io_d_out_9_a(peCol_io_d_out_9_a),
    .io_d_out_9_valid_a(peCol_io_d_out_9_valid_a),
    .io_d_out_9_b(peCol_io_d_out_9_b),
    .io_d_out_9_valid_b(peCol_io_d_out_9_valid_b),
    .io_d_out_10_a(peCol_io_d_out_10_a),
    .io_d_out_10_valid_a(peCol_io_d_out_10_valid_a),
    .io_d_out_10_b(peCol_io_d_out_10_b),
    .io_d_out_10_valid_b(peCol_io_d_out_10_valid_b),
    .io_d_out_11_a(peCol_io_d_out_11_a),
    .io_d_out_11_valid_a(peCol_io_d_out_11_valid_a),
    .io_d_out_11_b(peCol_io_d_out_11_b),
    .io_d_out_11_valid_b(peCol_io_d_out_11_valid_b),
    .io_d_out_12_a(peCol_io_d_out_12_a),
    .io_d_out_12_valid_a(peCol_io_d_out_12_valid_a),
    .io_d_out_12_b(peCol_io_d_out_12_b),
    .io_d_out_12_valid_b(peCol_io_d_out_12_valid_b),
    .io_d_out_13_a(peCol_io_d_out_13_a),
    .io_d_out_13_valid_a(peCol_io_d_out_13_valid_a),
    .io_d_out_13_b(peCol_io_d_out_13_b),
    .io_d_out_13_valid_b(peCol_io_d_out_13_valid_b),
    .io_d_out_14_a(peCol_io_d_out_14_a),
    .io_d_out_14_valid_a(peCol_io_d_out_14_valid_a),
    .io_d_out_14_b(peCol_io_d_out_14_b),
    .io_d_out_14_valid_b(peCol_io_d_out_14_valid_b),
    .io_d_out_15_a(peCol_io_d_out_15_a),
    .io_d_out_15_valid_a(peCol_io_d_out_15_valid_a),
    .io_d_out_15_b(peCol_io_d_out_15_b),
    .io_d_out_15_valid_b(peCol_io_d_out_15_valid_b),
    .io_d_out_16_a(peCol_io_d_out_16_a),
    .io_d_out_16_valid_a(peCol_io_d_out_16_valid_a),
    .io_d_out_16_b(peCol_io_d_out_16_b),
    .io_d_out_16_valid_b(peCol_io_d_out_16_valid_b),
    .io_d_out_17_a(peCol_io_d_out_17_a),
    .io_d_out_17_valid_a(peCol_io_d_out_17_valid_a),
    .io_d_out_17_b(peCol_io_d_out_17_b),
    .io_d_out_17_valid_b(peCol_io_d_out_17_valid_b),
    .io_d_out_18_a(peCol_io_d_out_18_a),
    .io_d_out_18_valid_a(peCol_io_d_out_18_valid_a),
    .io_d_out_18_b(peCol_io_d_out_18_b),
    .io_d_out_18_valid_b(peCol_io_d_out_18_valid_b),
    .io_d_out_19_a(peCol_io_d_out_19_a),
    .io_d_out_19_valid_a(peCol_io_d_out_19_valid_a),
    .io_d_out_19_b(peCol_io_d_out_19_b),
    .io_d_out_19_valid_b(peCol_io_d_out_19_valid_b),
    .io_d_out_20_a(peCol_io_d_out_20_a),
    .io_d_out_20_valid_a(peCol_io_d_out_20_valid_a),
    .io_d_out_20_b(peCol_io_d_out_20_b),
    .io_d_out_20_valid_b(peCol_io_d_out_20_valid_b),
    .io_d_out_21_a(peCol_io_d_out_21_a),
    .io_d_out_21_valid_a(peCol_io_d_out_21_valid_a),
    .io_d_out_21_b(peCol_io_d_out_21_b),
    .io_d_out_21_valid_b(peCol_io_d_out_21_valid_b),
    .io_d_out_22_a(peCol_io_d_out_22_a),
    .io_d_out_22_valid_a(peCol_io_d_out_22_valid_a),
    .io_d_out_22_b(peCol_io_d_out_22_b),
    .io_d_out_22_valid_b(peCol_io_d_out_22_valid_b),
    .io_d_out_23_a(peCol_io_d_out_23_a),
    .io_d_out_23_valid_a(peCol_io_d_out_23_valid_a),
    .io_d_out_23_b(peCol_io_d_out_23_b),
    .io_d_out_23_valid_b(peCol_io_d_out_23_valid_b),
    .io_d_out_24_a(peCol_io_d_out_24_a),
    .io_d_out_24_valid_a(peCol_io_d_out_24_valid_a),
    .io_d_out_24_b(peCol_io_d_out_24_b),
    .io_d_out_24_valid_b(peCol_io_d_out_24_valid_b),
    .io_d_out_25_a(peCol_io_d_out_25_a),
    .io_d_out_25_valid_a(peCol_io_d_out_25_valid_a),
    .io_d_out_25_b(peCol_io_d_out_25_b),
    .io_d_out_25_valid_b(peCol_io_d_out_25_valid_b),
    .io_d_out_26_a(peCol_io_d_out_26_a),
    .io_d_out_26_valid_a(peCol_io_d_out_26_valid_a),
    .io_d_out_26_b(peCol_io_d_out_26_b),
    .io_d_out_26_valid_b(peCol_io_d_out_26_valid_b),
    .io_d_out_27_a(peCol_io_d_out_27_a),
    .io_d_out_27_valid_a(peCol_io_d_out_27_valid_a),
    .io_d_out_27_b(peCol_io_d_out_27_b),
    .io_d_out_27_valid_b(peCol_io_d_out_27_valid_b),
    .io_d_out_28_a(peCol_io_d_out_28_a),
    .io_d_out_28_valid_a(peCol_io_d_out_28_valid_a),
    .io_d_out_28_b(peCol_io_d_out_28_b),
    .io_d_out_28_valid_b(peCol_io_d_out_28_valid_b),
    .io_d_out_29_a(peCol_io_d_out_29_a),
    .io_d_out_29_valid_a(peCol_io_d_out_29_valid_a),
    .io_d_out_29_b(peCol_io_d_out_29_b),
    .io_d_out_29_valid_b(peCol_io_d_out_29_valid_b),
    .io_d_out_30_a(peCol_io_d_out_30_a),
    .io_d_out_30_valid_a(peCol_io_d_out_30_valid_a),
    .io_d_out_30_b(peCol_io_d_out_30_b),
    .io_d_out_30_valid_b(peCol_io_d_out_30_valid_b),
    .io_d_out_31_a(peCol_io_d_out_31_a),
    .io_d_out_31_valid_a(peCol_io_d_out_31_valid_a),
    .io_d_out_31_b(peCol_io_d_out_31_b),
    .io_d_out_31_valid_b(peCol_io_d_out_31_valid_b),
    .io_tagin(peCol_io_tagin),
    .io_addrin(peCol_io_addrin),
    .io_tagout(peCol_io_tagout),
    .io_addrout(peCol_io_addrout),
    .io_instr(peCol_io_instr)
  );
  CLOSingress1 ingress1 ( // @[BuildingBlockNewFirst.scala 77:24]
    .clock(ingress1_clock),
    .reset(ingress1_reset),
    .io_in64_0(ingress1_io_in64_0),
    .io_in64_1(ingress1_io_in64_1),
    .io_in64_2(ingress1_io_in64_2),
    .io_in64_3(ingress1_io_in64_3),
    .io_in64_4(ingress1_io_in64_4),
    .io_in64_5(ingress1_io_in64_5),
    .io_in64_6(ingress1_io_in64_6),
    .io_in64_7(ingress1_io_in64_7),
    .io_in64_8(ingress1_io_in64_8),
    .io_in64_9(ingress1_io_in64_9),
    .io_in64_10(ingress1_io_in64_10),
    .io_in64_11(ingress1_io_in64_11),
    .io_in64_12(ingress1_io_in64_12),
    .io_in64_13(ingress1_io_in64_13),
    .io_in64_14(ingress1_io_in64_14),
    .io_in64_15(ingress1_io_in64_15),
    .io_in64_16(ingress1_io_in64_16),
    .io_in64_17(ingress1_io_in64_17),
    .io_in64_18(ingress1_io_in64_18),
    .io_in64_19(ingress1_io_in64_19),
    .io_in64_20(ingress1_io_in64_20),
    .io_in64_21(ingress1_io_in64_21),
    .io_in64_22(ingress1_io_in64_22),
    .io_in64_23(ingress1_io_in64_23),
    .io_in64_24(ingress1_io_in64_24),
    .io_in64_25(ingress1_io_in64_25),
    .io_in64_26(ingress1_io_in64_26),
    .io_in64_27(ingress1_io_in64_27),
    .io_in64_28(ingress1_io_in64_28),
    .io_in64_29(ingress1_io_in64_29),
    .io_in64_30(ingress1_io_in64_30),
    .io_in64_31(ingress1_io_in64_31),
    .io_in64_32(ingress1_io_in64_32),
    .io_in64_33(ingress1_io_in64_33),
    .io_in64_34(ingress1_io_in64_34),
    .io_in64_35(ingress1_io_in64_35),
    .io_in64_36(ingress1_io_in64_36),
    .io_in64_37(ingress1_io_in64_37),
    .io_in64_38(ingress1_io_in64_38),
    .io_in64_39(ingress1_io_in64_39),
    .io_in64_40(ingress1_io_in64_40),
    .io_in64_41(ingress1_io_in64_41),
    .io_in64_42(ingress1_io_in64_42),
    .io_in64_43(ingress1_io_in64_43),
    .io_in64_44(ingress1_io_in64_44),
    .io_in64_45(ingress1_io_in64_45),
    .io_in64_46(ingress1_io_in64_46),
    .io_in64_47(ingress1_io_in64_47),
    .io_in64_48(ingress1_io_in64_48),
    .io_in64_49(ingress1_io_in64_49),
    .io_in64_50(ingress1_io_in64_50),
    .io_in64_51(ingress1_io_in64_51),
    .io_in64_52(ingress1_io_in64_52),
    .io_in64_53(ingress1_io_in64_53),
    .io_in64_54(ingress1_io_in64_54),
    .io_in64_55(ingress1_io_in64_55),
    .io_in64_56(ingress1_io_in64_56),
    .io_in64_57(ingress1_io_in64_57),
    .io_in64_58(ingress1_io_in64_58),
    .io_in64_59(ingress1_io_in64_59),
    .io_in64_60(ingress1_io_in64_60),
    .io_in64_61(ingress1_io_in64_61),
    .io_in64_62(ingress1_io_in64_62),
    .io_in64_63(ingress1_io_in64_63),
    .io_validin64_0(ingress1_io_validin64_0),
    .io_validin64_1(ingress1_io_validin64_1),
    .io_validin64_2(ingress1_io_validin64_2),
    .io_validin64_3(ingress1_io_validin64_3),
    .io_validin64_4(ingress1_io_validin64_4),
    .io_validin64_5(ingress1_io_validin64_5),
    .io_validin64_6(ingress1_io_validin64_6),
    .io_validin64_7(ingress1_io_validin64_7),
    .io_validin64_8(ingress1_io_validin64_8),
    .io_validin64_9(ingress1_io_validin64_9),
    .io_validin64_10(ingress1_io_validin64_10),
    .io_validin64_11(ingress1_io_validin64_11),
    .io_validin64_12(ingress1_io_validin64_12),
    .io_validin64_13(ingress1_io_validin64_13),
    .io_validin64_14(ingress1_io_validin64_14),
    .io_validin64_15(ingress1_io_validin64_15),
    .io_validin64_16(ingress1_io_validin64_16),
    .io_validin64_17(ingress1_io_validin64_17),
    .io_validin64_18(ingress1_io_validin64_18),
    .io_validin64_19(ingress1_io_validin64_19),
    .io_validin64_20(ingress1_io_validin64_20),
    .io_validin64_21(ingress1_io_validin64_21),
    .io_validin64_22(ingress1_io_validin64_22),
    .io_validin64_23(ingress1_io_validin64_23),
    .io_validin64_24(ingress1_io_validin64_24),
    .io_validin64_25(ingress1_io_validin64_25),
    .io_validin64_26(ingress1_io_validin64_26),
    .io_validin64_27(ingress1_io_validin64_27),
    .io_validin64_28(ingress1_io_validin64_28),
    .io_validin64_29(ingress1_io_validin64_29),
    .io_validin64_30(ingress1_io_validin64_30),
    .io_validin64_31(ingress1_io_validin64_31),
    .io_validin64_32(ingress1_io_validin64_32),
    .io_validin64_33(ingress1_io_validin64_33),
    .io_validin64_34(ingress1_io_validin64_34),
    .io_validin64_35(ingress1_io_validin64_35),
    .io_validin64_36(ingress1_io_validin64_36),
    .io_validin64_37(ingress1_io_validin64_37),
    .io_validin64_38(ingress1_io_validin64_38),
    .io_validin64_39(ingress1_io_validin64_39),
    .io_validin64_40(ingress1_io_validin64_40),
    .io_validin64_41(ingress1_io_validin64_41),
    .io_validin64_42(ingress1_io_validin64_42),
    .io_validin64_43(ingress1_io_validin64_43),
    .io_validin64_44(ingress1_io_validin64_44),
    .io_validin64_45(ingress1_io_validin64_45),
    .io_validin64_46(ingress1_io_validin64_46),
    .io_validin64_47(ingress1_io_validin64_47),
    .io_validin64_48(ingress1_io_validin64_48),
    .io_validin64_49(ingress1_io_validin64_49),
    .io_validin64_50(ingress1_io_validin64_50),
    .io_validin64_51(ingress1_io_validin64_51),
    .io_validin64_52(ingress1_io_validin64_52),
    .io_validin64_53(ingress1_io_validin64_53),
    .io_validin64_54(ingress1_io_validin64_54),
    .io_validin64_55(ingress1_io_validin64_55),
    .io_validin64_56(ingress1_io_validin64_56),
    .io_validin64_57(ingress1_io_validin64_57),
    .io_validin64_58(ingress1_io_validin64_58),
    .io_validin64_59(ingress1_io_validin64_59),
    .io_validin64_60(ingress1_io_validin64_60),
    .io_validin64_61(ingress1_io_validin64_61),
    .io_validin64_62(ingress1_io_validin64_62),
    .io_validin64_63(ingress1_io_validin64_63),
    .io_tagin(ingress1_io_tagin),
    .io_addrin(ingress1_io_addrin),
    .io_out64_0(ingress1_io_out64_0),
    .io_out64_1(ingress1_io_out64_1),
    .io_out64_2(ingress1_io_out64_2),
    .io_out64_3(ingress1_io_out64_3),
    .io_out64_4(ingress1_io_out64_4),
    .io_out64_5(ingress1_io_out64_5),
    .io_out64_6(ingress1_io_out64_6),
    .io_out64_7(ingress1_io_out64_7),
    .io_out64_8(ingress1_io_out64_8),
    .io_out64_9(ingress1_io_out64_9),
    .io_out64_10(ingress1_io_out64_10),
    .io_out64_11(ingress1_io_out64_11),
    .io_out64_12(ingress1_io_out64_12),
    .io_out64_13(ingress1_io_out64_13),
    .io_out64_14(ingress1_io_out64_14),
    .io_out64_15(ingress1_io_out64_15),
    .io_out64_16(ingress1_io_out64_16),
    .io_out64_17(ingress1_io_out64_17),
    .io_out64_18(ingress1_io_out64_18),
    .io_out64_19(ingress1_io_out64_19),
    .io_out64_20(ingress1_io_out64_20),
    .io_out64_21(ingress1_io_out64_21),
    .io_out64_22(ingress1_io_out64_22),
    .io_out64_23(ingress1_io_out64_23),
    .io_out64_24(ingress1_io_out64_24),
    .io_out64_25(ingress1_io_out64_25),
    .io_out64_26(ingress1_io_out64_26),
    .io_out64_27(ingress1_io_out64_27),
    .io_out64_28(ingress1_io_out64_28),
    .io_out64_29(ingress1_io_out64_29),
    .io_out64_30(ingress1_io_out64_30),
    .io_out64_31(ingress1_io_out64_31),
    .io_out64_32(ingress1_io_out64_32),
    .io_out64_33(ingress1_io_out64_33),
    .io_out64_34(ingress1_io_out64_34),
    .io_out64_35(ingress1_io_out64_35),
    .io_out64_36(ingress1_io_out64_36),
    .io_out64_37(ingress1_io_out64_37),
    .io_out64_38(ingress1_io_out64_38),
    .io_out64_39(ingress1_io_out64_39),
    .io_out64_40(ingress1_io_out64_40),
    .io_out64_41(ingress1_io_out64_41),
    .io_out64_42(ingress1_io_out64_42),
    .io_out64_43(ingress1_io_out64_43),
    .io_out64_44(ingress1_io_out64_44),
    .io_out64_45(ingress1_io_out64_45),
    .io_out64_46(ingress1_io_out64_46),
    .io_out64_47(ingress1_io_out64_47),
    .io_out64_48(ingress1_io_out64_48),
    .io_out64_49(ingress1_io_out64_49),
    .io_out64_50(ingress1_io_out64_50),
    .io_out64_51(ingress1_io_out64_51),
    .io_out64_52(ingress1_io_out64_52),
    .io_out64_53(ingress1_io_out64_53),
    .io_out64_54(ingress1_io_out64_54),
    .io_out64_55(ingress1_io_out64_55),
    .io_out64_56(ingress1_io_out64_56),
    .io_out64_57(ingress1_io_out64_57),
    .io_out64_58(ingress1_io_out64_58),
    .io_out64_59(ingress1_io_out64_59),
    .io_out64_60(ingress1_io_out64_60),
    .io_out64_61(ingress1_io_out64_61),
    .io_out64_62(ingress1_io_out64_62),
    .io_out64_63(ingress1_io_out64_63),
    .io_validout64_0(ingress1_io_validout64_0),
    .io_validout64_1(ingress1_io_validout64_1),
    .io_validout64_2(ingress1_io_validout64_2),
    .io_validout64_3(ingress1_io_validout64_3),
    .io_validout64_4(ingress1_io_validout64_4),
    .io_validout64_5(ingress1_io_validout64_5),
    .io_validout64_6(ingress1_io_validout64_6),
    .io_validout64_7(ingress1_io_validout64_7),
    .io_validout64_8(ingress1_io_validout64_8),
    .io_validout64_9(ingress1_io_validout64_9),
    .io_validout64_10(ingress1_io_validout64_10),
    .io_validout64_11(ingress1_io_validout64_11),
    .io_validout64_12(ingress1_io_validout64_12),
    .io_validout64_13(ingress1_io_validout64_13),
    .io_validout64_14(ingress1_io_validout64_14),
    .io_validout64_15(ingress1_io_validout64_15),
    .io_validout64_16(ingress1_io_validout64_16),
    .io_validout64_17(ingress1_io_validout64_17),
    .io_validout64_18(ingress1_io_validout64_18),
    .io_validout64_19(ingress1_io_validout64_19),
    .io_validout64_20(ingress1_io_validout64_20),
    .io_validout64_21(ingress1_io_validout64_21),
    .io_validout64_22(ingress1_io_validout64_22),
    .io_validout64_23(ingress1_io_validout64_23),
    .io_validout64_24(ingress1_io_validout64_24),
    .io_validout64_25(ingress1_io_validout64_25),
    .io_validout64_26(ingress1_io_validout64_26),
    .io_validout64_27(ingress1_io_validout64_27),
    .io_validout64_28(ingress1_io_validout64_28),
    .io_validout64_29(ingress1_io_validout64_29),
    .io_validout64_30(ingress1_io_validout64_30),
    .io_validout64_31(ingress1_io_validout64_31),
    .io_validout64_32(ingress1_io_validout64_32),
    .io_validout64_33(ingress1_io_validout64_33),
    .io_validout64_34(ingress1_io_validout64_34),
    .io_validout64_35(ingress1_io_validout64_35),
    .io_validout64_36(ingress1_io_validout64_36),
    .io_validout64_37(ingress1_io_validout64_37),
    .io_validout64_38(ingress1_io_validout64_38),
    .io_validout64_39(ingress1_io_validout64_39),
    .io_validout64_40(ingress1_io_validout64_40),
    .io_validout64_41(ingress1_io_validout64_41),
    .io_validout64_42(ingress1_io_validout64_42),
    .io_validout64_43(ingress1_io_validout64_43),
    .io_validout64_44(ingress1_io_validout64_44),
    .io_validout64_45(ingress1_io_validout64_45),
    .io_validout64_46(ingress1_io_validout64_46),
    .io_validout64_47(ingress1_io_validout64_47),
    .io_validout64_48(ingress1_io_validout64_48),
    .io_validout64_49(ingress1_io_validout64_49),
    .io_validout64_50(ingress1_io_validout64_50),
    .io_validout64_51(ingress1_io_validout64_51),
    .io_validout64_52(ingress1_io_validout64_52),
    .io_validout64_53(ingress1_io_validout64_53),
    .io_validout64_54(ingress1_io_validout64_54),
    .io_validout64_55(ingress1_io_validout64_55),
    .io_validout64_56(ingress1_io_validout64_56),
    .io_validout64_57(ingress1_io_validout64_57),
    .io_validout64_58(ingress1_io_validout64_58),
    .io_validout64_59(ingress1_io_validout64_59),
    .io_validout64_60(ingress1_io_validout64_60),
    .io_validout64_61(ingress1_io_validout64_61),
    .io_validout64_62(ingress1_io_validout64_62),
    .io_validout64_63(ingress1_io_validout64_63),
    .io_tagout(ingress1_io_tagout),
    .io_addrout(ingress1_io_addrout),
    .io_ctrl(ingress1_io_ctrl)
  );
  CLOSingress2 ingress2 ( // @[BuildingBlockNewFirst.scala 78:24]
    .clock(ingress2_clock),
    .reset(ingress2_reset),
    .io_in64_0(ingress2_io_in64_0),
    .io_in64_1(ingress2_io_in64_1),
    .io_in64_2(ingress2_io_in64_2),
    .io_in64_3(ingress2_io_in64_3),
    .io_in64_4(ingress2_io_in64_4),
    .io_in64_5(ingress2_io_in64_5),
    .io_in64_6(ingress2_io_in64_6),
    .io_in64_7(ingress2_io_in64_7),
    .io_in64_8(ingress2_io_in64_8),
    .io_in64_9(ingress2_io_in64_9),
    .io_in64_10(ingress2_io_in64_10),
    .io_in64_11(ingress2_io_in64_11),
    .io_in64_12(ingress2_io_in64_12),
    .io_in64_13(ingress2_io_in64_13),
    .io_in64_14(ingress2_io_in64_14),
    .io_in64_15(ingress2_io_in64_15),
    .io_in64_16(ingress2_io_in64_16),
    .io_in64_17(ingress2_io_in64_17),
    .io_in64_18(ingress2_io_in64_18),
    .io_in64_19(ingress2_io_in64_19),
    .io_in64_20(ingress2_io_in64_20),
    .io_in64_21(ingress2_io_in64_21),
    .io_in64_22(ingress2_io_in64_22),
    .io_in64_23(ingress2_io_in64_23),
    .io_in64_24(ingress2_io_in64_24),
    .io_in64_25(ingress2_io_in64_25),
    .io_in64_26(ingress2_io_in64_26),
    .io_in64_27(ingress2_io_in64_27),
    .io_in64_28(ingress2_io_in64_28),
    .io_in64_29(ingress2_io_in64_29),
    .io_in64_30(ingress2_io_in64_30),
    .io_in64_31(ingress2_io_in64_31),
    .io_in64_32(ingress2_io_in64_32),
    .io_in64_33(ingress2_io_in64_33),
    .io_in64_34(ingress2_io_in64_34),
    .io_in64_35(ingress2_io_in64_35),
    .io_in64_36(ingress2_io_in64_36),
    .io_in64_37(ingress2_io_in64_37),
    .io_in64_38(ingress2_io_in64_38),
    .io_in64_39(ingress2_io_in64_39),
    .io_in64_40(ingress2_io_in64_40),
    .io_in64_41(ingress2_io_in64_41),
    .io_in64_42(ingress2_io_in64_42),
    .io_in64_43(ingress2_io_in64_43),
    .io_in64_44(ingress2_io_in64_44),
    .io_in64_45(ingress2_io_in64_45),
    .io_in64_46(ingress2_io_in64_46),
    .io_in64_47(ingress2_io_in64_47),
    .io_in64_48(ingress2_io_in64_48),
    .io_in64_49(ingress2_io_in64_49),
    .io_in64_50(ingress2_io_in64_50),
    .io_in64_51(ingress2_io_in64_51),
    .io_in64_52(ingress2_io_in64_52),
    .io_in64_53(ingress2_io_in64_53),
    .io_in64_54(ingress2_io_in64_54),
    .io_in64_55(ingress2_io_in64_55),
    .io_in64_56(ingress2_io_in64_56),
    .io_in64_57(ingress2_io_in64_57),
    .io_in64_58(ingress2_io_in64_58),
    .io_in64_59(ingress2_io_in64_59),
    .io_in64_60(ingress2_io_in64_60),
    .io_in64_61(ingress2_io_in64_61),
    .io_in64_62(ingress2_io_in64_62),
    .io_in64_63(ingress2_io_in64_63),
    .io_validin64_0(ingress2_io_validin64_0),
    .io_validin64_1(ingress2_io_validin64_1),
    .io_validin64_2(ingress2_io_validin64_2),
    .io_validin64_3(ingress2_io_validin64_3),
    .io_validin64_4(ingress2_io_validin64_4),
    .io_validin64_5(ingress2_io_validin64_5),
    .io_validin64_6(ingress2_io_validin64_6),
    .io_validin64_7(ingress2_io_validin64_7),
    .io_validin64_8(ingress2_io_validin64_8),
    .io_validin64_9(ingress2_io_validin64_9),
    .io_validin64_10(ingress2_io_validin64_10),
    .io_validin64_11(ingress2_io_validin64_11),
    .io_validin64_12(ingress2_io_validin64_12),
    .io_validin64_13(ingress2_io_validin64_13),
    .io_validin64_14(ingress2_io_validin64_14),
    .io_validin64_15(ingress2_io_validin64_15),
    .io_validin64_16(ingress2_io_validin64_16),
    .io_validin64_17(ingress2_io_validin64_17),
    .io_validin64_18(ingress2_io_validin64_18),
    .io_validin64_19(ingress2_io_validin64_19),
    .io_validin64_20(ingress2_io_validin64_20),
    .io_validin64_21(ingress2_io_validin64_21),
    .io_validin64_22(ingress2_io_validin64_22),
    .io_validin64_23(ingress2_io_validin64_23),
    .io_validin64_24(ingress2_io_validin64_24),
    .io_validin64_25(ingress2_io_validin64_25),
    .io_validin64_26(ingress2_io_validin64_26),
    .io_validin64_27(ingress2_io_validin64_27),
    .io_validin64_28(ingress2_io_validin64_28),
    .io_validin64_29(ingress2_io_validin64_29),
    .io_validin64_30(ingress2_io_validin64_30),
    .io_validin64_31(ingress2_io_validin64_31),
    .io_validin64_32(ingress2_io_validin64_32),
    .io_validin64_33(ingress2_io_validin64_33),
    .io_validin64_34(ingress2_io_validin64_34),
    .io_validin64_35(ingress2_io_validin64_35),
    .io_validin64_36(ingress2_io_validin64_36),
    .io_validin64_37(ingress2_io_validin64_37),
    .io_validin64_38(ingress2_io_validin64_38),
    .io_validin64_39(ingress2_io_validin64_39),
    .io_validin64_40(ingress2_io_validin64_40),
    .io_validin64_41(ingress2_io_validin64_41),
    .io_validin64_42(ingress2_io_validin64_42),
    .io_validin64_43(ingress2_io_validin64_43),
    .io_validin64_44(ingress2_io_validin64_44),
    .io_validin64_45(ingress2_io_validin64_45),
    .io_validin64_46(ingress2_io_validin64_46),
    .io_validin64_47(ingress2_io_validin64_47),
    .io_validin64_48(ingress2_io_validin64_48),
    .io_validin64_49(ingress2_io_validin64_49),
    .io_validin64_50(ingress2_io_validin64_50),
    .io_validin64_51(ingress2_io_validin64_51),
    .io_validin64_52(ingress2_io_validin64_52),
    .io_validin64_53(ingress2_io_validin64_53),
    .io_validin64_54(ingress2_io_validin64_54),
    .io_validin64_55(ingress2_io_validin64_55),
    .io_validin64_56(ingress2_io_validin64_56),
    .io_validin64_57(ingress2_io_validin64_57),
    .io_validin64_58(ingress2_io_validin64_58),
    .io_validin64_59(ingress2_io_validin64_59),
    .io_validin64_60(ingress2_io_validin64_60),
    .io_validin64_61(ingress2_io_validin64_61),
    .io_validin64_62(ingress2_io_validin64_62),
    .io_validin64_63(ingress2_io_validin64_63),
    .io_tagin(ingress2_io_tagin),
    .io_addrin(ingress2_io_addrin),
    .io_out64_0(ingress2_io_out64_0),
    .io_out64_1(ingress2_io_out64_1),
    .io_out64_2(ingress2_io_out64_2),
    .io_out64_3(ingress2_io_out64_3),
    .io_out64_4(ingress2_io_out64_4),
    .io_out64_5(ingress2_io_out64_5),
    .io_out64_6(ingress2_io_out64_6),
    .io_out64_7(ingress2_io_out64_7),
    .io_out64_8(ingress2_io_out64_8),
    .io_out64_9(ingress2_io_out64_9),
    .io_out64_10(ingress2_io_out64_10),
    .io_out64_11(ingress2_io_out64_11),
    .io_out64_12(ingress2_io_out64_12),
    .io_out64_13(ingress2_io_out64_13),
    .io_out64_14(ingress2_io_out64_14),
    .io_out64_15(ingress2_io_out64_15),
    .io_out64_16(ingress2_io_out64_16),
    .io_out64_17(ingress2_io_out64_17),
    .io_out64_18(ingress2_io_out64_18),
    .io_out64_19(ingress2_io_out64_19),
    .io_out64_20(ingress2_io_out64_20),
    .io_out64_21(ingress2_io_out64_21),
    .io_out64_22(ingress2_io_out64_22),
    .io_out64_23(ingress2_io_out64_23),
    .io_out64_24(ingress2_io_out64_24),
    .io_out64_25(ingress2_io_out64_25),
    .io_out64_26(ingress2_io_out64_26),
    .io_out64_27(ingress2_io_out64_27),
    .io_out64_28(ingress2_io_out64_28),
    .io_out64_29(ingress2_io_out64_29),
    .io_out64_30(ingress2_io_out64_30),
    .io_out64_31(ingress2_io_out64_31),
    .io_out64_32(ingress2_io_out64_32),
    .io_out64_33(ingress2_io_out64_33),
    .io_out64_34(ingress2_io_out64_34),
    .io_out64_35(ingress2_io_out64_35),
    .io_out64_36(ingress2_io_out64_36),
    .io_out64_37(ingress2_io_out64_37),
    .io_out64_38(ingress2_io_out64_38),
    .io_out64_39(ingress2_io_out64_39),
    .io_out64_40(ingress2_io_out64_40),
    .io_out64_41(ingress2_io_out64_41),
    .io_out64_42(ingress2_io_out64_42),
    .io_out64_43(ingress2_io_out64_43),
    .io_out64_44(ingress2_io_out64_44),
    .io_out64_45(ingress2_io_out64_45),
    .io_out64_46(ingress2_io_out64_46),
    .io_out64_47(ingress2_io_out64_47),
    .io_out64_48(ingress2_io_out64_48),
    .io_out64_49(ingress2_io_out64_49),
    .io_out64_50(ingress2_io_out64_50),
    .io_out64_51(ingress2_io_out64_51),
    .io_out64_52(ingress2_io_out64_52),
    .io_out64_53(ingress2_io_out64_53),
    .io_out64_54(ingress2_io_out64_54),
    .io_out64_55(ingress2_io_out64_55),
    .io_out64_56(ingress2_io_out64_56),
    .io_out64_57(ingress2_io_out64_57),
    .io_out64_58(ingress2_io_out64_58),
    .io_out64_59(ingress2_io_out64_59),
    .io_out64_60(ingress2_io_out64_60),
    .io_out64_61(ingress2_io_out64_61),
    .io_out64_62(ingress2_io_out64_62),
    .io_out64_63(ingress2_io_out64_63),
    .io_validout64_0(ingress2_io_validout64_0),
    .io_validout64_1(ingress2_io_validout64_1),
    .io_validout64_2(ingress2_io_validout64_2),
    .io_validout64_3(ingress2_io_validout64_3),
    .io_validout64_4(ingress2_io_validout64_4),
    .io_validout64_5(ingress2_io_validout64_5),
    .io_validout64_6(ingress2_io_validout64_6),
    .io_validout64_7(ingress2_io_validout64_7),
    .io_validout64_8(ingress2_io_validout64_8),
    .io_validout64_9(ingress2_io_validout64_9),
    .io_validout64_10(ingress2_io_validout64_10),
    .io_validout64_11(ingress2_io_validout64_11),
    .io_validout64_12(ingress2_io_validout64_12),
    .io_validout64_13(ingress2_io_validout64_13),
    .io_validout64_14(ingress2_io_validout64_14),
    .io_validout64_15(ingress2_io_validout64_15),
    .io_validout64_16(ingress2_io_validout64_16),
    .io_validout64_17(ingress2_io_validout64_17),
    .io_validout64_18(ingress2_io_validout64_18),
    .io_validout64_19(ingress2_io_validout64_19),
    .io_validout64_20(ingress2_io_validout64_20),
    .io_validout64_21(ingress2_io_validout64_21),
    .io_validout64_22(ingress2_io_validout64_22),
    .io_validout64_23(ingress2_io_validout64_23),
    .io_validout64_24(ingress2_io_validout64_24),
    .io_validout64_25(ingress2_io_validout64_25),
    .io_validout64_26(ingress2_io_validout64_26),
    .io_validout64_27(ingress2_io_validout64_27),
    .io_validout64_28(ingress2_io_validout64_28),
    .io_validout64_29(ingress2_io_validout64_29),
    .io_validout64_30(ingress2_io_validout64_30),
    .io_validout64_31(ingress2_io_validout64_31),
    .io_validout64_32(ingress2_io_validout64_32),
    .io_validout64_33(ingress2_io_validout64_33),
    .io_validout64_34(ingress2_io_validout64_34),
    .io_validout64_35(ingress2_io_validout64_35),
    .io_validout64_36(ingress2_io_validout64_36),
    .io_validout64_37(ingress2_io_validout64_37),
    .io_validout64_38(ingress2_io_validout64_38),
    .io_validout64_39(ingress2_io_validout64_39),
    .io_validout64_40(ingress2_io_validout64_40),
    .io_validout64_41(ingress2_io_validout64_41),
    .io_validout64_42(ingress2_io_validout64_42),
    .io_validout64_43(ingress2_io_validout64_43),
    .io_validout64_44(ingress2_io_validout64_44),
    .io_validout64_45(ingress2_io_validout64_45),
    .io_validout64_46(ingress2_io_validout64_46),
    .io_validout64_47(ingress2_io_validout64_47),
    .io_validout64_48(ingress2_io_validout64_48),
    .io_validout64_49(ingress2_io_validout64_49),
    .io_validout64_50(ingress2_io_validout64_50),
    .io_validout64_51(ingress2_io_validout64_51),
    .io_validout64_52(ingress2_io_validout64_52),
    .io_validout64_53(ingress2_io_validout64_53),
    .io_validout64_54(ingress2_io_validout64_54),
    .io_validout64_55(ingress2_io_validout64_55),
    .io_validout64_56(ingress2_io_validout64_56),
    .io_validout64_57(ingress2_io_validout64_57),
    .io_validout64_58(ingress2_io_validout64_58),
    .io_validout64_59(ingress2_io_validout64_59),
    .io_validout64_60(ingress2_io_validout64_60),
    .io_validout64_61(ingress2_io_validout64_61),
    .io_validout64_62(ingress2_io_validout64_62),
    .io_validout64_63(ingress2_io_validout64_63),
    .io_tagout(ingress2_io_tagout),
    .io_addrout(ingress2_io_addrout),
    .io_ctrl(ingress2_io_ctrl)
  );
  CLOSingress2 middle ( // @[BuildingBlockNewFirst.scala 79:22]
    .clock(middle_clock),
    .reset(middle_reset),
    .io_in64_0(middle_io_in64_0),
    .io_in64_1(middle_io_in64_1),
    .io_in64_2(middle_io_in64_2),
    .io_in64_3(middle_io_in64_3),
    .io_in64_4(middle_io_in64_4),
    .io_in64_5(middle_io_in64_5),
    .io_in64_6(middle_io_in64_6),
    .io_in64_7(middle_io_in64_7),
    .io_in64_8(middle_io_in64_8),
    .io_in64_9(middle_io_in64_9),
    .io_in64_10(middle_io_in64_10),
    .io_in64_11(middle_io_in64_11),
    .io_in64_12(middle_io_in64_12),
    .io_in64_13(middle_io_in64_13),
    .io_in64_14(middle_io_in64_14),
    .io_in64_15(middle_io_in64_15),
    .io_in64_16(middle_io_in64_16),
    .io_in64_17(middle_io_in64_17),
    .io_in64_18(middle_io_in64_18),
    .io_in64_19(middle_io_in64_19),
    .io_in64_20(middle_io_in64_20),
    .io_in64_21(middle_io_in64_21),
    .io_in64_22(middle_io_in64_22),
    .io_in64_23(middle_io_in64_23),
    .io_in64_24(middle_io_in64_24),
    .io_in64_25(middle_io_in64_25),
    .io_in64_26(middle_io_in64_26),
    .io_in64_27(middle_io_in64_27),
    .io_in64_28(middle_io_in64_28),
    .io_in64_29(middle_io_in64_29),
    .io_in64_30(middle_io_in64_30),
    .io_in64_31(middle_io_in64_31),
    .io_in64_32(middle_io_in64_32),
    .io_in64_33(middle_io_in64_33),
    .io_in64_34(middle_io_in64_34),
    .io_in64_35(middle_io_in64_35),
    .io_in64_36(middle_io_in64_36),
    .io_in64_37(middle_io_in64_37),
    .io_in64_38(middle_io_in64_38),
    .io_in64_39(middle_io_in64_39),
    .io_in64_40(middle_io_in64_40),
    .io_in64_41(middle_io_in64_41),
    .io_in64_42(middle_io_in64_42),
    .io_in64_43(middle_io_in64_43),
    .io_in64_44(middle_io_in64_44),
    .io_in64_45(middle_io_in64_45),
    .io_in64_46(middle_io_in64_46),
    .io_in64_47(middle_io_in64_47),
    .io_in64_48(middle_io_in64_48),
    .io_in64_49(middle_io_in64_49),
    .io_in64_50(middle_io_in64_50),
    .io_in64_51(middle_io_in64_51),
    .io_in64_52(middle_io_in64_52),
    .io_in64_53(middle_io_in64_53),
    .io_in64_54(middle_io_in64_54),
    .io_in64_55(middle_io_in64_55),
    .io_in64_56(middle_io_in64_56),
    .io_in64_57(middle_io_in64_57),
    .io_in64_58(middle_io_in64_58),
    .io_in64_59(middle_io_in64_59),
    .io_in64_60(middle_io_in64_60),
    .io_in64_61(middle_io_in64_61),
    .io_in64_62(middle_io_in64_62),
    .io_in64_63(middle_io_in64_63),
    .io_validin64_0(middle_io_validin64_0),
    .io_validin64_1(middle_io_validin64_1),
    .io_validin64_2(middle_io_validin64_2),
    .io_validin64_3(middle_io_validin64_3),
    .io_validin64_4(middle_io_validin64_4),
    .io_validin64_5(middle_io_validin64_5),
    .io_validin64_6(middle_io_validin64_6),
    .io_validin64_7(middle_io_validin64_7),
    .io_validin64_8(middle_io_validin64_8),
    .io_validin64_9(middle_io_validin64_9),
    .io_validin64_10(middle_io_validin64_10),
    .io_validin64_11(middle_io_validin64_11),
    .io_validin64_12(middle_io_validin64_12),
    .io_validin64_13(middle_io_validin64_13),
    .io_validin64_14(middle_io_validin64_14),
    .io_validin64_15(middle_io_validin64_15),
    .io_validin64_16(middle_io_validin64_16),
    .io_validin64_17(middle_io_validin64_17),
    .io_validin64_18(middle_io_validin64_18),
    .io_validin64_19(middle_io_validin64_19),
    .io_validin64_20(middle_io_validin64_20),
    .io_validin64_21(middle_io_validin64_21),
    .io_validin64_22(middle_io_validin64_22),
    .io_validin64_23(middle_io_validin64_23),
    .io_validin64_24(middle_io_validin64_24),
    .io_validin64_25(middle_io_validin64_25),
    .io_validin64_26(middle_io_validin64_26),
    .io_validin64_27(middle_io_validin64_27),
    .io_validin64_28(middle_io_validin64_28),
    .io_validin64_29(middle_io_validin64_29),
    .io_validin64_30(middle_io_validin64_30),
    .io_validin64_31(middle_io_validin64_31),
    .io_validin64_32(middle_io_validin64_32),
    .io_validin64_33(middle_io_validin64_33),
    .io_validin64_34(middle_io_validin64_34),
    .io_validin64_35(middle_io_validin64_35),
    .io_validin64_36(middle_io_validin64_36),
    .io_validin64_37(middle_io_validin64_37),
    .io_validin64_38(middle_io_validin64_38),
    .io_validin64_39(middle_io_validin64_39),
    .io_validin64_40(middle_io_validin64_40),
    .io_validin64_41(middle_io_validin64_41),
    .io_validin64_42(middle_io_validin64_42),
    .io_validin64_43(middle_io_validin64_43),
    .io_validin64_44(middle_io_validin64_44),
    .io_validin64_45(middle_io_validin64_45),
    .io_validin64_46(middle_io_validin64_46),
    .io_validin64_47(middle_io_validin64_47),
    .io_validin64_48(middle_io_validin64_48),
    .io_validin64_49(middle_io_validin64_49),
    .io_validin64_50(middle_io_validin64_50),
    .io_validin64_51(middle_io_validin64_51),
    .io_validin64_52(middle_io_validin64_52),
    .io_validin64_53(middle_io_validin64_53),
    .io_validin64_54(middle_io_validin64_54),
    .io_validin64_55(middle_io_validin64_55),
    .io_validin64_56(middle_io_validin64_56),
    .io_validin64_57(middle_io_validin64_57),
    .io_validin64_58(middle_io_validin64_58),
    .io_validin64_59(middle_io_validin64_59),
    .io_validin64_60(middle_io_validin64_60),
    .io_validin64_61(middle_io_validin64_61),
    .io_validin64_62(middle_io_validin64_62),
    .io_validin64_63(middle_io_validin64_63),
    .io_tagin(middle_io_tagin),
    .io_addrin(middle_io_addrin),
    .io_out64_0(middle_io_out64_0),
    .io_out64_1(middle_io_out64_1),
    .io_out64_2(middle_io_out64_2),
    .io_out64_3(middle_io_out64_3),
    .io_out64_4(middle_io_out64_4),
    .io_out64_5(middle_io_out64_5),
    .io_out64_6(middle_io_out64_6),
    .io_out64_7(middle_io_out64_7),
    .io_out64_8(middle_io_out64_8),
    .io_out64_9(middle_io_out64_9),
    .io_out64_10(middle_io_out64_10),
    .io_out64_11(middle_io_out64_11),
    .io_out64_12(middle_io_out64_12),
    .io_out64_13(middle_io_out64_13),
    .io_out64_14(middle_io_out64_14),
    .io_out64_15(middle_io_out64_15),
    .io_out64_16(middle_io_out64_16),
    .io_out64_17(middle_io_out64_17),
    .io_out64_18(middle_io_out64_18),
    .io_out64_19(middle_io_out64_19),
    .io_out64_20(middle_io_out64_20),
    .io_out64_21(middle_io_out64_21),
    .io_out64_22(middle_io_out64_22),
    .io_out64_23(middle_io_out64_23),
    .io_out64_24(middle_io_out64_24),
    .io_out64_25(middle_io_out64_25),
    .io_out64_26(middle_io_out64_26),
    .io_out64_27(middle_io_out64_27),
    .io_out64_28(middle_io_out64_28),
    .io_out64_29(middle_io_out64_29),
    .io_out64_30(middle_io_out64_30),
    .io_out64_31(middle_io_out64_31),
    .io_out64_32(middle_io_out64_32),
    .io_out64_33(middle_io_out64_33),
    .io_out64_34(middle_io_out64_34),
    .io_out64_35(middle_io_out64_35),
    .io_out64_36(middle_io_out64_36),
    .io_out64_37(middle_io_out64_37),
    .io_out64_38(middle_io_out64_38),
    .io_out64_39(middle_io_out64_39),
    .io_out64_40(middle_io_out64_40),
    .io_out64_41(middle_io_out64_41),
    .io_out64_42(middle_io_out64_42),
    .io_out64_43(middle_io_out64_43),
    .io_out64_44(middle_io_out64_44),
    .io_out64_45(middle_io_out64_45),
    .io_out64_46(middle_io_out64_46),
    .io_out64_47(middle_io_out64_47),
    .io_out64_48(middle_io_out64_48),
    .io_out64_49(middle_io_out64_49),
    .io_out64_50(middle_io_out64_50),
    .io_out64_51(middle_io_out64_51),
    .io_out64_52(middle_io_out64_52),
    .io_out64_53(middle_io_out64_53),
    .io_out64_54(middle_io_out64_54),
    .io_out64_55(middle_io_out64_55),
    .io_out64_56(middle_io_out64_56),
    .io_out64_57(middle_io_out64_57),
    .io_out64_58(middle_io_out64_58),
    .io_out64_59(middle_io_out64_59),
    .io_out64_60(middle_io_out64_60),
    .io_out64_61(middle_io_out64_61),
    .io_out64_62(middle_io_out64_62),
    .io_out64_63(middle_io_out64_63),
    .io_validout64_0(middle_io_validout64_0),
    .io_validout64_1(middle_io_validout64_1),
    .io_validout64_2(middle_io_validout64_2),
    .io_validout64_3(middle_io_validout64_3),
    .io_validout64_4(middle_io_validout64_4),
    .io_validout64_5(middle_io_validout64_5),
    .io_validout64_6(middle_io_validout64_6),
    .io_validout64_7(middle_io_validout64_7),
    .io_validout64_8(middle_io_validout64_8),
    .io_validout64_9(middle_io_validout64_9),
    .io_validout64_10(middle_io_validout64_10),
    .io_validout64_11(middle_io_validout64_11),
    .io_validout64_12(middle_io_validout64_12),
    .io_validout64_13(middle_io_validout64_13),
    .io_validout64_14(middle_io_validout64_14),
    .io_validout64_15(middle_io_validout64_15),
    .io_validout64_16(middle_io_validout64_16),
    .io_validout64_17(middle_io_validout64_17),
    .io_validout64_18(middle_io_validout64_18),
    .io_validout64_19(middle_io_validout64_19),
    .io_validout64_20(middle_io_validout64_20),
    .io_validout64_21(middle_io_validout64_21),
    .io_validout64_22(middle_io_validout64_22),
    .io_validout64_23(middle_io_validout64_23),
    .io_validout64_24(middle_io_validout64_24),
    .io_validout64_25(middle_io_validout64_25),
    .io_validout64_26(middle_io_validout64_26),
    .io_validout64_27(middle_io_validout64_27),
    .io_validout64_28(middle_io_validout64_28),
    .io_validout64_29(middle_io_validout64_29),
    .io_validout64_30(middle_io_validout64_30),
    .io_validout64_31(middle_io_validout64_31),
    .io_validout64_32(middle_io_validout64_32),
    .io_validout64_33(middle_io_validout64_33),
    .io_validout64_34(middle_io_validout64_34),
    .io_validout64_35(middle_io_validout64_35),
    .io_validout64_36(middle_io_validout64_36),
    .io_validout64_37(middle_io_validout64_37),
    .io_validout64_38(middle_io_validout64_38),
    .io_validout64_39(middle_io_validout64_39),
    .io_validout64_40(middle_io_validout64_40),
    .io_validout64_41(middle_io_validout64_41),
    .io_validout64_42(middle_io_validout64_42),
    .io_validout64_43(middle_io_validout64_43),
    .io_validout64_44(middle_io_validout64_44),
    .io_validout64_45(middle_io_validout64_45),
    .io_validout64_46(middle_io_validout64_46),
    .io_validout64_47(middle_io_validout64_47),
    .io_validout64_48(middle_io_validout64_48),
    .io_validout64_49(middle_io_validout64_49),
    .io_validout64_50(middle_io_validout64_50),
    .io_validout64_51(middle_io_validout64_51),
    .io_validout64_52(middle_io_validout64_52),
    .io_validout64_53(middle_io_validout64_53),
    .io_validout64_54(middle_io_validout64_54),
    .io_validout64_55(middle_io_validout64_55),
    .io_validout64_56(middle_io_validout64_56),
    .io_validout64_57(middle_io_validout64_57),
    .io_validout64_58(middle_io_validout64_58),
    .io_validout64_59(middle_io_validout64_59),
    .io_validout64_60(middle_io_validout64_60),
    .io_validout64_61(middle_io_validout64_61),
    .io_validout64_62(middle_io_validout64_62),
    .io_validout64_63(middle_io_validout64_63),
    .io_tagout(middle_io_tagout),
    .io_addrout(middle_io_addrout),
    .io_ctrl(middle_io_ctrl)
  );
  CLOSingress1 egress1 ( // @[BuildingBlockNewFirst.scala 80:23]
    .clock(egress1_clock),
    .reset(egress1_reset),
    .io_in64_0(egress1_io_in64_0),
    .io_in64_1(egress1_io_in64_1),
    .io_in64_2(egress1_io_in64_2),
    .io_in64_3(egress1_io_in64_3),
    .io_in64_4(egress1_io_in64_4),
    .io_in64_5(egress1_io_in64_5),
    .io_in64_6(egress1_io_in64_6),
    .io_in64_7(egress1_io_in64_7),
    .io_in64_8(egress1_io_in64_8),
    .io_in64_9(egress1_io_in64_9),
    .io_in64_10(egress1_io_in64_10),
    .io_in64_11(egress1_io_in64_11),
    .io_in64_12(egress1_io_in64_12),
    .io_in64_13(egress1_io_in64_13),
    .io_in64_14(egress1_io_in64_14),
    .io_in64_15(egress1_io_in64_15),
    .io_in64_16(egress1_io_in64_16),
    .io_in64_17(egress1_io_in64_17),
    .io_in64_18(egress1_io_in64_18),
    .io_in64_19(egress1_io_in64_19),
    .io_in64_20(egress1_io_in64_20),
    .io_in64_21(egress1_io_in64_21),
    .io_in64_22(egress1_io_in64_22),
    .io_in64_23(egress1_io_in64_23),
    .io_in64_24(egress1_io_in64_24),
    .io_in64_25(egress1_io_in64_25),
    .io_in64_26(egress1_io_in64_26),
    .io_in64_27(egress1_io_in64_27),
    .io_in64_28(egress1_io_in64_28),
    .io_in64_29(egress1_io_in64_29),
    .io_in64_30(egress1_io_in64_30),
    .io_in64_31(egress1_io_in64_31),
    .io_in64_32(egress1_io_in64_32),
    .io_in64_33(egress1_io_in64_33),
    .io_in64_34(egress1_io_in64_34),
    .io_in64_35(egress1_io_in64_35),
    .io_in64_36(egress1_io_in64_36),
    .io_in64_37(egress1_io_in64_37),
    .io_in64_38(egress1_io_in64_38),
    .io_in64_39(egress1_io_in64_39),
    .io_in64_40(egress1_io_in64_40),
    .io_in64_41(egress1_io_in64_41),
    .io_in64_42(egress1_io_in64_42),
    .io_in64_43(egress1_io_in64_43),
    .io_in64_44(egress1_io_in64_44),
    .io_in64_45(egress1_io_in64_45),
    .io_in64_46(egress1_io_in64_46),
    .io_in64_47(egress1_io_in64_47),
    .io_in64_48(egress1_io_in64_48),
    .io_in64_49(egress1_io_in64_49),
    .io_in64_50(egress1_io_in64_50),
    .io_in64_51(egress1_io_in64_51),
    .io_in64_52(egress1_io_in64_52),
    .io_in64_53(egress1_io_in64_53),
    .io_in64_54(egress1_io_in64_54),
    .io_in64_55(egress1_io_in64_55),
    .io_in64_56(egress1_io_in64_56),
    .io_in64_57(egress1_io_in64_57),
    .io_in64_58(egress1_io_in64_58),
    .io_in64_59(egress1_io_in64_59),
    .io_in64_60(egress1_io_in64_60),
    .io_in64_61(egress1_io_in64_61),
    .io_in64_62(egress1_io_in64_62),
    .io_in64_63(egress1_io_in64_63),
    .io_validin64_0(egress1_io_validin64_0),
    .io_validin64_1(egress1_io_validin64_1),
    .io_validin64_2(egress1_io_validin64_2),
    .io_validin64_3(egress1_io_validin64_3),
    .io_validin64_4(egress1_io_validin64_4),
    .io_validin64_5(egress1_io_validin64_5),
    .io_validin64_6(egress1_io_validin64_6),
    .io_validin64_7(egress1_io_validin64_7),
    .io_validin64_8(egress1_io_validin64_8),
    .io_validin64_9(egress1_io_validin64_9),
    .io_validin64_10(egress1_io_validin64_10),
    .io_validin64_11(egress1_io_validin64_11),
    .io_validin64_12(egress1_io_validin64_12),
    .io_validin64_13(egress1_io_validin64_13),
    .io_validin64_14(egress1_io_validin64_14),
    .io_validin64_15(egress1_io_validin64_15),
    .io_validin64_16(egress1_io_validin64_16),
    .io_validin64_17(egress1_io_validin64_17),
    .io_validin64_18(egress1_io_validin64_18),
    .io_validin64_19(egress1_io_validin64_19),
    .io_validin64_20(egress1_io_validin64_20),
    .io_validin64_21(egress1_io_validin64_21),
    .io_validin64_22(egress1_io_validin64_22),
    .io_validin64_23(egress1_io_validin64_23),
    .io_validin64_24(egress1_io_validin64_24),
    .io_validin64_25(egress1_io_validin64_25),
    .io_validin64_26(egress1_io_validin64_26),
    .io_validin64_27(egress1_io_validin64_27),
    .io_validin64_28(egress1_io_validin64_28),
    .io_validin64_29(egress1_io_validin64_29),
    .io_validin64_30(egress1_io_validin64_30),
    .io_validin64_31(egress1_io_validin64_31),
    .io_validin64_32(egress1_io_validin64_32),
    .io_validin64_33(egress1_io_validin64_33),
    .io_validin64_34(egress1_io_validin64_34),
    .io_validin64_35(egress1_io_validin64_35),
    .io_validin64_36(egress1_io_validin64_36),
    .io_validin64_37(egress1_io_validin64_37),
    .io_validin64_38(egress1_io_validin64_38),
    .io_validin64_39(egress1_io_validin64_39),
    .io_validin64_40(egress1_io_validin64_40),
    .io_validin64_41(egress1_io_validin64_41),
    .io_validin64_42(egress1_io_validin64_42),
    .io_validin64_43(egress1_io_validin64_43),
    .io_validin64_44(egress1_io_validin64_44),
    .io_validin64_45(egress1_io_validin64_45),
    .io_validin64_46(egress1_io_validin64_46),
    .io_validin64_47(egress1_io_validin64_47),
    .io_validin64_48(egress1_io_validin64_48),
    .io_validin64_49(egress1_io_validin64_49),
    .io_validin64_50(egress1_io_validin64_50),
    .io_validin64_51(egress1_io_validin64_51),
    .io_validin64_52(egress1_io_validin64_52),
    .io_validin64_53(egress1_io_validin64_53),
    .io_validin64_54(egress1_io_validin64_54),
    .io_validin64_55(egress1_io_validin64_55),
    .io_validin64_56(egress1_io_validin64_56),
    .io_validin64_57(egress1_io_validin64_57),
    .io_validin64_58(egress1_io_validin64_58),
    .io_validin64_59(egress1_io_validin64_59),
    .io_validin64_60(egress1_io_validin64_60),
    .io_validin64_61(egress1_io_validin64_61),
    .io_validin64_62(egress1_io_validin64_62),
    .io_validin64_63(egress1_io_validin64_63),
    .io_tagin(egress1_io_tagin),
    .io_addrin(egress1_io_addrin),
    .io_out64_0(egress1_io_out64_0),
    .io_out64_1(egress1_io_out64_1),
    .io_out64_2(egress1_io_out64_2),
    .io_out64_3(egress1_io_out64_3),
    .io_out64_4(egress1_io_out64_4),
    .io_out64_5(egress1_io_out64_5),
    .io_out64_6(egress1_io_out64_6),
    .io_out64_7(egress1_io_out64_7),
    .io_out64_8(egress1_io_out64_8),
    .io_out64_9(egress1_io_out64_9),
    .io_out64_10(egress1_io_out64_10),
    .io_out64_11(egress1_io_out64_11),
    .io_out64_12(egress1_io_out64_12),
    .io_out64_13(egress1_io_out64_13),
    .io_out64_14(egress1_io_out64_14),
    .io_out64_15(egress1_io_out64_15),
    .io_out64_16(egress1_io_out64_16),
    .io_out64_17(egress1_io_out64_17),
    .io_out64_18(egress1_io_out64_18),
    .io_out64_19(egress1_io_out64_19),
    .io_out64_20(egress1_io_out64_20),
    .io_out64_21(egress1_io_out64_21),
    .io_out64_22(egress1_io_out64_22),
    .io_out64_23(egress1_io_out64_23),
    .io_out64_24(egress1_io_out64_24),
    .io_out64_25(egress1_io_out64_25),
    .io_out64_26(egress1_io_out64_26),
    .io_out64_27(egress1_io_out64_27),
    .io_out64_28(egress1_io_out64_28),
    .io_out64_29(egress1_io_out64_29),
    .io_out64_30(egress1_io_out64_30),
    .io_out64_31(egress1_io_out64_31),
    .io_out64_32(egress1_io_out64_32),
    .io_out64_33(egress1_io_out64_33),
    .io_out64_34(egress1_io_out64_34),
    .io_out64_35(egress1_io_out64_35),
    .io_out64_36(egress1_io_out64_36),
    .io_out64_37(egress1_io_out64_37),
    .io_out64_38(egress1_io_out64_38),
    .io_out64_39(egress1_io_out64_39),
    .io_out64_40(egress1_io_out64_40),
    .io_out64_41(egress1_io_out64_41),
    .io_out64_42(egress1_io_out64_42),
    .io_out64_43(egress1_io_out64_43),
    .io_out64_44(egress1_io_out64_44),
    .io_out64_45(egress1_io_out64_45),
    .io_out64_46(egress1_io_out64_46),
    .io_out64_47(egress1_io_out64_47),
    .io_out64_48(egress1_io_out64_48),
    .io_out64_49(egress1_io_out64_49),
    .io_out64_50(egress1_io_out64_50),
    .io_out64_51(egress1_io_out64_51),
    .io_out64_52(egress1_io_out64_52),
    .io_out64_53(egress1_io_out64_53),
    .io_out64_54(egress1_io_out64_54),
    .io_out64_55(egress1_io_out64_55),
    .io_out64_56(egress1_io_out64_56),
    .io_out64_57(egress1_io_out64_57),
    .io_out64_58(egress1_io_out64_58),
    .io_out64_59(egress1_io_out64_59),
    .io_out64_60(egress1_io_out64_60),
    .io_out64_61(egress1_io_out64_61),
    .io_out64_62(egress1_io_out64_62),
    .io_out64_63(egress1_io_out64_63),
    .io_validout64_0(egress1_io_validout64_0),
    .io_validout64_1(egress1_io_validout64_1),
    .io_validout64_2(egress1_io_validout64_2),
    .io_validout64_3(egress1_io_validout64_3),
    .io_validout64_4(egress1_io_validout64_4),
    .io_validout64_5(egress1_io_validout64_5),
    .io_validout64_6(egress1_io_validout64_6),
    .io_validout64_7(egress1_io_validout64_7),
    .io_validout64_8(egress1_io_validout64_8),
    .io_validout64_9(egress1_io_validout64_9),
    .io_validout64_10(egress1_io_validout64_10),
    .io_validout64_11(egress1_io_validout64_11),
    .io_validout64_12(egress1_io_validout64_12),
    .io_validout64_13(egress1_io_validout64_13),
    .io_validout64_14(egress1_io_validout64_14),
    .io_validout64_15(egress1_io_validout64_15),
    .io_validout64_16(egress1_io_validout64_16),
    .io_validout64_17(egress1_io_validout64_17),
    .io_validout64_18(egress1_io_validout64_18),
    .io_validout64_19(egress1_io_validout64_19),
    .io_validout64_20(egress1_io_validout64_20),
    .io_validout64_21(egress1_io_validout64_21),
    .io_validout64_22(egress1_io_validout64_22),
    .io_validout64_23(egress1_io_validout64_23),
    .io_validout64_24(egress1_io_validout64_24),
    .io_validout64_25(egress1_io_validout64_25),
    .io_validout64_26(egress1_io_validout64_26),
    .io_validout64_27(egress1_io_validout64_27),
    .io_validout64_28(egress1_io_validout64_28),
    .io_validout64_29(egress1_io_validout64_29),
    .io_validout64_30(egress1_io_validout64_30),
    .io_validout64_31(egress1_io_validout64_31),
    .io_validout64_32(egress1_io_validout64_32),
    .io_validout64_33(egress1_io_validout64_33),
    .io_validout64_34(egress1_io_validout64_34),
    .io_validout64_35(egress1_io_validout64_35),
    .io_validout64_36(egress1_io_validout64_36),
    .io_validout64_37(egress1_io_validout64_37),
    .io_validout64_38(egress1_io_validout64_38),
    .io_validout64_39(egress1_io_validout64_39),
    .io_validout64_40(egress1_io_validout64_40),
    .io_validout64_41(egress1_io_validout64_41),
    .io_validout64_42(egress1_io_validout64_42),
    .io_validout64_43(egress1_io_validout64_43),
    .io_validout64_44(egress1_io_validout64_44),
    .io_validout64_45(egress1_io_validout64_45),
    .io_validout64_46(egress1_io_validout64_46),
    .io_validout64_47(egress1_io_validout64_47),
    .io_validout64_48(egress1_io_validout64_48),
    .io_validout64_49(egress1_io_validout64_49),
    .io_validout64_50(egress1_io_validout64_50),
    .io_validout64_51(egress1_io_validout64_51),
    .io_validout64_52(egress1_io_validout64_52),
    .io_validout64_53(egress1_io_validout64_53),
    .io_validout64_54(egress1_io_validout64_54),
    .io_validout64_55(egress1_io_validout64_55),
    .io_validout64_56(egress1_io_validout64_56),
    .io_validout64_57(egress1_io_validout64_57),
    .io_validout64_58(egress1_io_validout64_58),
    .io_validout64_59(egress1_io_validout64_59),
    .io_validout64_60(egress1_io_validout64_60),
    .io_validout64_61(egress1_io_validout64_61),
    .io_validout64_62(egress1_io_validout64_62),
    .io_validout64_63(egress1_io_validout64_63),
    .io_tagout(egress1_io_tagout),
    .io_addrout(egress1_io_addrout),
    .io_ctrl(egress1_io_ctrl)
  );
  CLOSegress2 egress2 ( // @[BuildingBlockNewFirst.scala 81:23]
    .clock(egress2_clock),
    .reset(egress2_reset),
    .io_in64_0(egress2_io_in64_0),
    .io_in64_1(egress2_io_in64_1),
    .io_in64_2(egress2_io_in64_2),
    .io_in64_3(egress2_io_in64_3),
    .io_in64_4(egress2_io_in64_4),
    .io_in64_5(egress2_io_in64_5),
    .io_in64_6(egress2_io_in64_6),
    .io_in64_7(egress2_io_in64_7),
    .io_in64_8(egress2_io_in64_8),
    .io_in64_9(egress2_io_in64_9),
    .io_in64_10(egress2_io_in64_10),
    .io_in64_11(egress2_io_in64_11),
    .io_in64_12(egress2_io_in64_12),
    .io_in64_13(egress2_io_in64_13),
    .io_in64_14(egress2_io_in64_14),
    .io_in64_15(egress2_io_in64_15),
    .io_in64_16(egress2_io_in64_16),
    .io_in64_17(egress2_io_in64_17),
    .io_in64_18(egress2_io_in64_18),
    .io_in64_19(egress2_io_in64_19),
    .io_in64_20(egress2_io_in64_20),
    .io_in64_21(egress2_io_in64_21),
    .io_in64_22(egress2_io_in64_22),
    .io_in64_23(egress2_io_in64_23),
    .io_in64_24(egress2_io_in64_24),
    .io_in64_25(egress2_io_in64_25),
    .io_in64_26(egress2_io_in64_26),
    .io_in64_27(egress2_io_in64_27),
    .io_in64_28(egress2_io_in64_28),
    .io_in64_29(egress2_io_in64_29),
    .io_in64_30(egress2_io_in64_30),
    .io_in64_31(egress2_io_in64_31),
    .io_in64_32(egress2_io_in64_32),
    .io_in64_33(egress2_io_in64_33),
    .io_in64_34(egress2_io_in64_34),
    .io_in64_35(egress2_io_in64_35),
    .io_in64_36(egress2_io_in64_36),
    .io_in64_37(egress2_io_in64_37),
    .io_in64_38(egress2_io_in64_38),
    .io_in64_39(egress2_io_in64_39),
    .io_in64_40(egress2_io_in64_40),
    .io_in64_41(egress2_io_in64_41),
    .io_in64_42(egress2_io_in64_42),
    .io_in64_43(egress2_io_in64_43),
    .io_in64_44(egress2_io_in64_44),
    .io_in64_45(egress2_io_in64_45),
    .io_in64_46(egress2_io_in64_46),
    .io_in64_47(egress2_io_in64_47),
    .io_in64_48(egress2_io_in64_48),
    .io_in64_49(egress2_io_in64_49),
    .io_in64_50(egress2_io_in64_50),
    .io_in64_51(egress2_io_in64_51),
    .io_in64_52(egress2_io_in64_52),
    .io_in64_53(egress2_io_in64_53),
    .io_in64_54(egress2_io_in64_54),
    .io_in64_55(egress2_io_in64_55),
    .io_in64_56(egress2_io_in64_56),
    .io_in64_57(egress2_io_in64_57),
    .io_in64_58(egress2_io_in64_58),
    .io_in64_59(egress2_io_in64_59),
    .io_in64_60(egress2_io_in64_60),
    .io_in64_61(egress2_io_in64_61),
    .io_in64_62(egress2_io_in64_62),
    .io_in64_63(egress2_io_in64_63),
    .io_validin64_0(egress2_io_validin64_0),
    .io_validin64_1(egress2_io_validin64_1),
    .io_validin64_2(egress2_io_validin64_2),
    .io_validin64_3(egress2_io_validin64_3),
    .io_validin64_4(egress2_io_validin64_4),
    .io_validin64_5(egress2_io_validin64_5),
    .io_validin64_6(egress2_io_validin64_6),
    .io_validin64_7(egress2_io_validin64_7),
    .io_validin64_8(egress2_io_validin64_8),
    .io_validin64_9(egress2_io_validin64_9),
    .io_validin64_10(egress2_io_validin64_10),
    .io_validin64_11(egress2_io_validin64_11),
    .io_validin64_12(egress2_io_validin64_12),
    .io_validin64_13(egress2_io_validin64_13),
    .io_validin64_14(egress2_io_validin64_14),
    .io_validin64_15(egress2_io_validin64_15),
    .io_validin64_16(egress2_io_validin64_16),
    .io_validin64_17(egress2_io_validin64_17),
    .io_validin64_18(egress2_io_validin64_18),
    .io_validin64_19(egress2_io_validin64_19),
    .io_validin64_20(egress2_io_validin64_20),
    .io_validin64_21(egress2_io_validin64_21),
    .io_validin64_22(egress2_io_validin64_22),
    .io_validin64_23(egress2_io_validin64_23),
    .io_validin64_24(egress2_io_validin64_24),
    .io_validin64_25(egress2_io_validin64_25),
    .io_validin64_26(egress2_io_validin64_26),
    .io_validin64_27(egress2_io_validin64_27),
    .io_validin64_28(egress2_io_validin64_28),
    .io_validin64_29(egress2_io_validin64_29),
    .io_validin64_30(egress2_io_validin64_30),
    .io_validin64_31(egress2_io_validin64_31),
    .io_validin64_32(egress2_io_validin64_32),
    .io_validin64_33(egress2_io_validin64_33),
    .io_validin64_34(egress2_io_validin64_34),
    .io_validin64_35(egress2_io_validin64_35),
    .io_validin64_36(egress2_io_validin64_36),
    .io_validin64_37(egress2_io_validin64_37),
    .io_validin64_38(egress2_io_validin64_38),
    .io_validin64_39(egress2_io_validin64_39),
    .io_validin64_40(egress2_io_validin64_40),
    .io_validin64_41(egress2_io_validin64_41),
    .io_validin64_42(egress2_io_validin64_42),
    .io_validin64_43(egress2_io_validin64_43),
    .io_validin64_44(egress2_io_validin64_44),
    .io_validin64_45(egress2_io_validin64_45),
    .io_validin64_46(egress2_io_validin64_46),
    .io_validin64_47(egress2_io_validin64_47),
    .io_validin64_48(egress2_io_validin64_48),
    .io_validin64_49(egress2_io_validin64_49),
    .io_validin64_50(egress2_io_validin64_50),
    .io_validin64_51(egress2_io_validin64_51),
    .io_validin64_52(egress2_io_validin64_52),
    .io_validin64_53(egress2_io_validin64_53),
    .io_validin64_54(egress2_io_validin64_54),
    .io_validin64_55(egress2_io_validin64_55),
    .io_validin64_56(egress2_io_validin64_56),
    .io_validin64_57(egress2_io_validin64_57),
    .io_validin64_58(egress2_io_validin64_58),
    .io_validin64_59(egress2_io_validin64_59),
    .io_validin64_60(egress2_io_validin64_60),
    .io_validin64_61(egress2_io_validin64_61),
    .io_validin64_62(egress2_io_validin64_62),
    .io_validin64_63(egress2_io_validin64_63),
    .io_tagin(egress2_io_tagin),
    .io_addrin(egress2_io_addrin),
    .io_out64_0(egress2_io_out64_0),
    .io_out64_1(egress2_io_out64_1),
    .io_out64_2(egress2_io_out64_2),
    .io_out64_3(egress2_io_out64_3),
    .io_out64_4(egress2_io_out64_4),
    .io_out64_5(egress2_io_out64_5),
    .io_out64_6(egress2_io_out64_6),
    .io_out64_7(egress2_io_out64_7),
    .io_out64_8(egress2_io_out64_8),
    .io_out64_9(egress2_io_out64_9),
    .io_out64_10(egress2_io_out64_10),
    .io_out64_11(egress2_io_out64_11),
    .io_out64_12(egress2_io_out64_12),
    .io_out64_13(egress2_io_out64_13),
    .io_out64_14(egress2_io_out64_14),
    .io_out64_15(egress2_io_out64_15),
    .io_out64_16(egress2_io_out64_16),
    .io_out64_17(egress2_io_out64_17),
    .io_out64_18(egress2_io_out64_18),
    .io_out64_19(egress2_io_out64_19),
    .io_out64_20(egress2_io_out64_20),
    .io_out64_21(egress2_io_out64_21),
    .io_out64_22(egress2_io_out64_22),
    .io_out64_23(egress2_io_out64_23),
    .io_out64_24(egress2_io_out64_24),
    .io_out64_25(egress2_io_out64_25),
    .io_out64_26(egress2_io_out64_26),
    .io_out64_27(egress2_io_out64_27),
    .io_out64_28(egress2_io_out64_28),
    .io_out64_29(egress2_io_out64_29),
    .io_out64_30(egress2_io_out64_30),
    .io_out64_31(egress2_io_out64_31),
    .io_out64_32(egress2_io_out64_32),
    .io_out64_33(egress2_io_out64_33),
    .io_out64_34(egress2_io_out64_34),
    .io_out64_35(egress2_io_out64_35),
    .io_out64_36(egress2_io_out64_36),
    .io_out64_37(egress2_io_out64_37),
    .io_out64_38(egress2_io_out64_38),
    .io_out64_39(egress2_io_out64_39),
    .io_out64_40(egress2_io_out64_40),
    .io_out64_41(egress2_io_out64_41),
    .io_out64_42(egress2_io_out64_42),
    .io_out64_43(egress2_io_out64_43),
    .io_out64_44(egress2_io_out64_44),
    .io_out64_45(egress2_io_out64_45),
    .io_out64_46(egress2_io_out64_46),
    .io_out64_47(egress2_io_out64_47),
    .io_out64_48(egress2_io_out64_48),
    .io_out64_49(egress2_io_out64_49),
    .io_out64_50(egress2_io_out64_50),
    .io_out64_51(egress2_io_out64_51),
    .io_out64_52(egress2_io_out64_52),
    .io_out64_53(egress2_io_out64_53),
    .io_out64_54(egress2_io_out64_54),
    .io_out64_55(egress2_io_out64_55),
    .io_out64_56(egress2_io_out64_56),
    .io_out64_57(egress2_io_out64_57),
    .io_out64_58(egress2_io_out64_58),
    .io_out64_59(egress2_io_out64_59),
    .io_out64_60(egress2_io_out64_60),
    .io_out64_61(egress2_io_out64_61),
    .io_out64_62(egress2_io_out64_62),
    .io_out64_63(egress2_io_out64_63),
    .io_validout64_0(egress2_io_validout64_0),
    .io_validout64_1(egress2_io_validout64_1),
    .io_validout64_2(egress2_io_validout64_2),
    .io_validout64_3(egress2_io_validout64_3),
    .io_validout64_4(egress2_io_validout64_4),
    .io_validout64_5(egress2_io_validout64_5),
    .io_validout64_6(egress2_io_validout64_6),
    .io_validout64_7(egress2_io_validout64_7),
    .io_validout64_8(egress2_io_validout64_8),
    .io_validout64_9(egress2_io_validout64_9),
    .io_validout64_10(egress2_io_validout64_10),
    .io_validout64_11(egress2_io_validout64_11),
    .io_validout64_12(egress2_io_validout64_12),
    .io_validout64_13(egress2_io_validout64_13),
    .io_validout64_14(egress2_io_validout64_14),
    .io_validout64_15(egress2_io_validout64_15),
    .io_validout64_16(egress2_io_validout64_16),
    .io_validout64_17(egress2_io_validout64_17),
    .io_validout64_18(egress2_io_validout64_18),
    .io_validout64_19(egress2_io_validout64_19),
    .io_validout64_20(egress2_io_validout64_20),
    .io_validout64_21(egress2_io_validout64_21),
    .io_validout64_22(egress2_io_validout64_22),
    .io_validout64_23(egress2_io_validout64_23),
    .io_validout64_24(egress2_io_validout64_24),
    .io_validout64_25(egress2_io_validout64_25),
    .io_validout64_26(egress2_io_validout64_26),
    .io_validout64_27(egress2_io_validout64_27),
    .io_validout64_28(egress2_io_validout64_28),
    .io_validout64_29(egress2_io_validout64_29),
    .io_validout64_30(egress2_io_validout64_30),
    .io_validout64_31(egress2_io_validout64_31),
    .io_validout64_32(egress2_io_validout64_32),
    .io_validout64_33(egress2_io_validout64_33),
    .io_validout64_34(egress2_io_validout64_34),
    .io_validout64_35(egress2_io_validout64_35),
    .io_validout64_36(egress2_io_validout64_36),
    .io_validout64_37(egress2_io_validout64_37),
    .io_validout64_38(egress2_io_validout64_38),
    .io_validout64_39(egress2_io_validout64_39),
    .io_validout64_40(egress2_io_validout64_40),
    .io_validout64_41(egress2_io_validout64_41),
    .io_validout64_42(egress2_io_validout64_42),
    .io_validout64_43(egress2_io_validout64_43),
    .io_validout64_44(egress2_io_validout64_44),
    .io_validout64_45(egress2_io_validout64_45),
    .io_validout64_46(egress2_io_validout64_46),
    .io_validout64_47(egress2_io_validout64_47),
    .io_validout64_48(egress2_io_validout64_48),
    .io_validout64_49(egress2_io_validout64_49),
    .io_validout64_50(egress2_io_validout64_50),
    .io_validout64_51(egress2_io_validout64_51),
    .io_validout64_52(egress2_io_validout64_52),
    .io_validout64_53(egress2_io_validout64_53),
    .io_validout64_54(egress2_io_validout64_54),
    .io_validout64_55(egress2_io_validout64_55),
    .io_validout64_56(egress2_io_validout64_56),
    .io_validout64_57(egress2_io_validout64_57),
    .io_validout64_58(egress2_io_validout64_58),
    .io_validout64_59(egress2_io_validout64_59),
    .io_validout64_60(egress2_io_validout64_60),
    .io_validout64_61(egress2_io_validout64_61),
    .io_validout64_62(egress2_io_validout64_62),
    .io_validout64_63(egress2_io_validout64_63),
    .io_tagout(egress2_io_tagout),
    .io_addrout(egress2_io_addrout),
    .io_ctrl(egress2_io_ctrl)
  );
  assign Mem1_instr1_MPORT_addr = PC1;
  assign Mem1_instr1_MPORT_data = Mem1[Mem1_instr1_MPORT_addr]; // @[BuildingBlockNewFirst.scala 34:17]
  assign Mem1_MPORT_data = io_wr_instr_mem1;
  assign Mem1_MPORT_addr = wrAddr1;
  assign Mem1_MPORT_mask = 1'h1;
  assign Mem1_MPORT_en = io_wr_en_mem1;
  assign Mem2_instr2_MPORT_addr = PC2;
  assign Mem2_instr2_MPORT_data = Mem2[Mem2_instr2_MPORT_addr]; // @[BuildingBlockNewFirst.scala 35:17]
  assign Mem2_MPORT_1_data = io_wr_instr_mem2;
  assign Mem2_MPORT_1_addr = wrAddr2;
  assign Mem2_MPORT_1_mask = 1'h1;
  assign Mem2_MPORT_1_en = io_wr_en_mem2;
  assign Mem3_instr3_MPORT_addr = PC3;
  assign Mem3_instr3_MPORT_data = Mem3[Mem3_instr3_MPORT_addr]; // @[BuildingBlockNewFirst.scala 36:17]
  assign Mem3_MPORT_2_data = io_wr_instr_mem3;
  assign Mem3_MPORT_2_addr = wrAddr3;
  assign Mem3_MPORT_2_mask = 1'h1;
  assign Mem3_MPORT_2_en = io_wr_en_mem3;
  assign Mem4_instr4_MPORT_addr = PC4;
  assign Mem4_instr4_MPORT_data = Mem4[Mem4_instr4_MPORT_addr]; // @[BuildingBlockNewFirst.scala 37:17]
  assign Mem4_MPORT_3_data = io_wr_instr_mem4;
  assign Mem4_MPORT_3_addr = wrAddr4;
  assign Mem4_MPORT_3_mask = 1'h1;
  assign Mem4_MPORT_3_en = io_wr_en_mem4;
  assign Mem5_instr5_MPORT_addr = PC5;
  assign Mem5_instr5_MPORT_data = Mem5[Mem5_instr5_MPORT_addr]; // @[BuildingBlockNewFirst.scala 38:17]
  assign Mem5_MPORT_4_data = io_wr_instr_mem5;
  assign Mem5_MPORT_4_addr = wrAddr5;
  assign Mem5_MPORT_4_mask = 1'h1;
  assign Mem5_MPORT_4_en = io_wr_en_mem5;
  assign Mem6_instr6_MPORT_addr = PC6;
  assign Mem6_instr6_MPORT_data = Mem6[Mem6_instr6_MPORT_addr]; // @[BuildingBlockNewFirst.scala 39:17]
  assign Mem6_MPORT_5_data = io_wr_instr_mem6;
  assign Mem6_MPORT_5_addr = wrAddr6;
  assign Mem6_MPORT_5_mask = 1'h1;
  assign Mem6_MPORT_5_en = io_wr_en_mem6;
  assign io_d_out_0_a = egress2_io_out64_0; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_0_valid_a = egress2_io_validout64_0; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_0_b = egress2_io_out64_1; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_0_valid_b = egress2_io_validout64_1; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_1_a = egress2_io_out64_2; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_1_valid_a = egress2_io_validout64_2; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_1_b = egress2_io_out64_3; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_1_valid_b = egress2_io_validout64_3; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_2_a = egress2_io_out64_4; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_2_valid_a = egress2_io_validout64_4; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_2_b = egress2_io_out64_5; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_2_valid_b = egress2_io_validout64_5; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_3_a = egress2_io_out64_6; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_3_valid_a = egress2_io_validout64_6; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_3_b = egress2_io_out64_7; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_3_valid_b = egress2_io_validout64_7; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_4_a = egress2_io_out64_8; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_4_valid_a = egress2_io_validout64_8; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_4_b = egress2_io_out64_9; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_4_valid_b = egress2_io_validout64_9; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_5_a = egress2_io_out64_10; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_5_valid_a = egress2_io_validout64_10; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_5_b = egress2_io_out64_11; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_5_valid_b = egress2_io_validout64_11; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_6_a = egress2_io_out64_12; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_6_valid_a = egress2_io_validout64_12; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_6_b = egress2_io_out64_13; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_6_valid_b = egress2_io_validout64_13; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_7_a = egress2_io_out64_14; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_7_valid_a = egress2_io_validout64_14; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_7_b = egress2_io_out64_15; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_7_valid_b = egress2_io_validout64_15; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_8_a = egress2_io_out64_16; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_8_valid_a = egress2_io_validout64_16; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_8_b = egress2_io_out64_17; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_8_valid_b = egress2_io_validout64_17; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_9_a = egress2_io_out64_18; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_9_valid_a = egress2_io_validout64_18; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_9_b = egress2_io_out64_19; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_9_valid_b = egress2_io_validout64_19; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_10_a = egress2_io_out64_20; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_10_valid_a = egress2_io_validout64_20; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_10_b = egress2_io_out64_21; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_10_valid_b = egress2_io_validout64_21; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_11_a = egress2_io_out64_22; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_11_valid_a = egress2_io_validout64_22; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_11_b = egress2_io_out64_23; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_11_valid_b = egress2_io_validout64_23; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_12_a = egress2_io_out64_24; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_12_valid_a = egress2_io_validout64_24; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_12_b = egress2_io_out64_25; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_12_valid_b = egress2_io_validout64_25; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_13_a = egress2_io_out64_26; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_13_valid_a = egress2_io_validout64_26; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_13_b = egress2_io_out64_27; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_13_valid_b = egress2_io_validout64_27; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_14_a = egress2_io_out64_28; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_14_valid_a = egress2_io_validout64_28; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_14_b = egress2_io_out64_29; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_14_valid_b = egress2_io_validout64_29; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_15_a = egress2_io_out64_30; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_15_valid_a = egress2_io_validout64_30; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_15_b = egress2_io_out64_31; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_15_valid_b = egress2_io_validout64_31; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_16_a = egress2_io_out64_32; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_16_valid_a = egress2_io_validout64_32; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_16_b = egress2_io_out64_33; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_16_valid_b = egress2_io_validout64_33; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_17_a = egress2_io_out64_34; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_17_valid_a = egress2_io_validout64_34; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_17_b = egress2_io_out64_35; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_17_valid_b = egress2_io_validout64_35; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_18_a = egress2_io_out64_36; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_18_valid_a = egress2_io_validout64_36; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_18_b = egress2_io_out64_37; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_18_valid_b = egress2_io_validout64_37; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_19_a = egress2_io_out64_38; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_19_valid_a = egress2_io_validout64_38; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_19_b = egress2_io_out64_39; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_19_valid_b = egress2_io_validout64_39; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_20_a = egress2_io_out64_40; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_20_valid_a = egress2_io_validout64_40; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_20_b = egress2_io_out64_41; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_20_valid_b = egress2_io_validout64_41; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_21_a = egress2_io_out64_42; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_21_valid_a = egress2_io_validout64_42; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_21_b = egress2_io_out64_43; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_21_valid_b = egress2_io_validout64_43; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_22_a = egress2_io_out64_44; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_22_valid_a = egress2_io_validout64_44; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_22_b = egress2_io_out64_45; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_22_valid_b = egress2_io_validout64_45; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_23_a = egress2_io_out64_46; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_23_valid_a = egress2_io_validout64_46; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_23_b = egress2_io_out64_47; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_23_valid_b = egress2_io_validout64_47; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_24_a = egress2_io_out64_48; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_24_valid_a = egress2_io_validout64_48; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_24_b = egress2_io_out64_49; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_24_valid_b = egress2_io_validout64_49; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_25_a = egress2_io_out64_50; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_25_valid_a = egress2_io_validout64_50; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_25_b = egress2_io_out64_51; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_25_valid_b = egress2_io_validout64_51; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_26_a = egress2_io_out64_52; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_26_valid_a = egress2_io_validout64_52; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_26_b = egress2_io_out64_53; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_26_valid_b = egress2_io_validout64_53; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_27_a = egress2_io_out64_54; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_27_valid_a = egress2_io_validout64_54; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_27_b = egress2_io_out64_55; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_27_valid_b = egress2_io_validout64_55; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_28_a = egress2_io_out64_56; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_28_valid_a = egress2_io_validout64_56; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_28_b = egress2_io_out64_57; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_28_valid_b = egress2_io_validout64_57; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_29_a = egress2_io_out64_58; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_29_valid_a = egress2_io_validout64_58; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_29_b = egress2_io_out64_59; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_29_valid_b = egress2_io_validout64_59; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_30_a = egress2_io_out64_60; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_30_valid_a = egress2_io_validout64_60; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_30_b = egress2_io_out64_61; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_30_valid_b = egress2_io_validout64_61; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_d_out_31_a = egress2_io_out64_62; // @[BuildingBlockNewFirst.scala 210:19]
  assign io_d_out_31_valid_a = egress2_io_validout64_62; // @[BuildingBlockNewFirst.scala 212:25]
  assign io_d_out_31_b = egress2_io_out64_63; // @[BuildingBlockNewFirst.scala 211:19]
  assign io_d_out_31_valid_b = egress2_io_validout64_63; // @[BuildingBlockNewFirst.scala 213:25]
  assign io_run_out = run6; // @[BuildingBlockNewFirst.scala 70:14]
  assign io_PC6_out = PC6; // @[BuildingBlockNewFirst.scala 140:14]
  assign io_Addr_out = egress2_io_addrout; // @[BuildingBlockNewFirst.scala 216:15]
  assign io_Tag_out = egress2_io_tagout; // @[BuildingBlockNewFirst.scala 215:14]
  assign peCol_clock = clock;
  assign peCol_reset = reset;
  assign peCol_io_d_in_0_a = io_d_in_0_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_0_valid_a = io_d_in_0_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_0_b = io_d_in_0_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_0_valid_b = io_d_in_0_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_1_a = io_d_in_1_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_1_valid_a = io_d_in_1_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_1_b = io_d_in_1_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_1_valid_b = io_d_in_1_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_2_a = io_d_in_2_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_2_valid_a = io_d_in_2_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_2_b = io_d_in_2_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_2_valid_b = io_d_in_2_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_3_a = io_d_in_3_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_3_valid_a = io_d_in_3_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_3_b = io_d_in_3_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_3_valid_b = io_d_in_3_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_4_a = io_d_in_4_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_4_valid_a = io_d_in_4_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_4_b = io_d_in_4_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_4_valid_b = io_d_in_4_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_5_a = io_d_in_5_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_5_valid_a = io_d_in_5_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_5_b = io_d_in_5_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_5_valid_b = io_d_in_5_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_6_a = io_d_in_6_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_6_valid_a = io_d_in_6_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_6_b = io_d_in_6_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_6_valid_b = io_d_in_6_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_7_a = io_d_in_7_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_7_valid_a = io_d_in_7_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_7_b = io_d_in_7_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_7_valid_b = io_d_in_7_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_8_a = io_d_in_8_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_8_valid_a = io_d_in_8_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_8_b = io_d_in_8_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_8_valid_b = io_d_in_8_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_9_a = io_d_in_9_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_9_valid_a = io_d_in_9_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_9_b = io_d_in_9_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_9_valid_b = io_d_in_9_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_10_a = io_d_in_10_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_10_valid_a = io_d_in_10_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_10_b = io_d_in_10_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_10_valid_b = io_d_in_10_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_11_a = io_d_in_11_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_11_valid_a = io_d_in_11_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_11_b = io_d_in_11_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_11_valid_b = io_d_in_11_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_12_a = io_d_in_12_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_12_valid_a = io_d_in_12_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_12_b = io_d_in_12_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_12_valid_b = io_d_in_12_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_13_a = io_d_in_13_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_13_valid_a = io_d_in_13_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_13_b = io_d_in_13_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_13_valid_b = io_d_in_13_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_14_a = io_d_in_14_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_14_valid_a = io_d_in_14_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_14_b = io_d_in_14_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_14_valid_b = io_d_in_14_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_15_a = io_d_in_15_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_15_valid_a = io_d_in_15_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_15_b = io_d_in_15_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_15_valid_b = io_d_in_15_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_16_a = io_d_in_16_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_16_valid_a = io_d_in_16_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_16_b = io_d_in_16_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_16_valid_b = io_d_in_16_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_17_a = io_d_in_17_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_17_valid_a = io_d_in_17_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_17_b = io_d_in_17_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_17_valid_b = io_d_in_17_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_18_a = io_d_in_18_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_18_valid_a = io_d_in_18_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_18_b = io_d_in_18_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_18_valid_b = io_d_in_18_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_19_a = io_d_in_19_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_19_valid_a = io_d_in_19_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_19_b = io_d_in_19_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_19_valid_b = io_d_in_19_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_20_a = io_d_in_20_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_20_valid_a = io_d_in_20_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_20_b = io_d_in_20_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_20_valid_b = io_d_in_20_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_21_a = io_d_in_21_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_21_valid_a = io_d_in_21_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_21_b = io_d_in_21_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_21_valid_b = io_d_in_21_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_22_a = io_d_in_22_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_22_valid_a = io_d_in_22_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_22_b = io_d_in_22_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_22_valid_b = io_d_in_22_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_23_a = io_d_in_23_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_23_valid_a = io_d_in_23_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_23_b = io_d_in_23_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_23_valid_b = io_d_in_23_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_24_a = io_d_in_24_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_24_valid_a = io_d_in_24_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_24_b = io_d_in_24_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_24_valid_b = io_d_in_24_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_25_a = io_d_in_25_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_25_valid_a = io_d_in_25_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_25_b = io_d_in_25_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_25_valid_b = io_d_in_25_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_26_a = io_d_in_26_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_26_valid_a = io_d_in_26_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_26_b = io_d_in_26_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_26_valid_b = io_d_in_26_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_27_a = io_d_in_27_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_27_valid_a = io_d_in_27_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_27_b = io_d_in_27_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_27_valid_b = io_d_in_27_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_28_a = io_d_in_28_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_28_valid_a = io_d_in_28_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_28_b = io_d_in_28_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_28_valid_b = io_d_in_28_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_29_a = io_d_in_29_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_29_valid_a = io_d_in_29_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_29_b = io_d_in_29_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_29_valid_b = io_d_in_29_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_30_a = io_d_in_30_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_30_valid_a = io_d_in_30_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_30_b = io_d_in_30_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_30_valid_b = io_d_in_30_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_31_a = io_d_in_31_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_31_valid_a = io_d_in_31_valid_a; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_31_b = io_d_in_31_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_d_in_31_valid_b = io_d_in_31_valid_b; // @[BuildingBlockNewFirst.scala 177:17]
  assign peCol_io_tagin = io_Tag_in; // @[BuildingBlockNewFirst.scala 178:18]
  assign peCol_io_addrin = io_Addr_in; // @[BuildingBlockNewFirst.scala 179:19]
  assign peCol_io_instr = instr1; // @[BuildingBlockNewFirst.scala 142:18]
  assign ingress1_clock = clock;
  assign ingress1_reset = reset;
  assign ingress1_io_in64_0 = peCol_io_d_out_0_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_1 = peCol_io_d_out_0_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_2 = peCol_io_d_out_1_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_3 = peCol_io_d_out_1_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_4 = peCol_io_d_out_2_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_5 = peCol_io_d_out_2_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_6 = peCol_io_d_out_3_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_7 = peCol_io_d_out_3_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_8 = peCol_io_d_out_4_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_9 = peCol_io_d_out_4_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_10 = peCol_io_d_out_5_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_11 = peCol_io_d_out_5_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_12 = peCol_io_d_out_6_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_13 = peCol_io_d_out_6_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_14 = peCol_io_d_out_7_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_15 = peCol_io_d_out_7_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_16 = peCol_io_d_out_8_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_17 = peCol_io_d_out_8_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_18 = peCol_io_d_out_9_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_19 = peCol_io_d_out_9_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_20 = peCol_io_d_out_10_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_21 = peCol_io_d_out_10_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_22 = peCol_io_d_out_11_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_23 = peCol_io_d_out_11_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_24 = peCol_io_d_out_12_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_25 = peCol_io_d_out_12_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_26 = peCol_io_d_out_13_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_27 = peCol_io_d_out_13_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_28 = peCol_io_d_out_14_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_29 = peCol_io_d_out_14_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_30 = peCol_io_d_out_15_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_31 = peCol_io_d_out_15_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_32 = peCol_io_d_out_16_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_33 = peCol_io_d_out_16_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_34 = peCol_io_d_out_17_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_35 = peCol_io_d_out_17_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_36 = peCol_io_d_out_18_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_37 = peCol_io_d_out_18_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_38 = peCol_io_d_out_19_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_39 = peCol_io_d_out_19_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_40 = peCol_io_d_out_20_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_41 = peCol_io_d_out_20_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_42 = peCol_io_d_out_21_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_43 = peCol_io_d_out_21_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_44 = peCol_io_d_out_22_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_45 = peCol_io_d_out_22_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_46 = peCol_io_d_out_23_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_47 = peCol_io_d_out_23_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_48 = peCol_io_d_out_24_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_49 = peCol_io_d_out_24_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_50 = peCol_io_d_out_25_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_51 = peCol_io_d_out_25_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_52 = peCol_io_d_out_26_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_53 = peCol_io_d_out_26_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_54 = peCol_io_d_out_27_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_55 = peCol_io_d_out_27_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_56 = peCol_io_d_out_28_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_57 = peCol_io_d_out_28_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_58 = peCol_io_d_out_29_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_59 = peCol_io_d_out_29_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_60 = peCol_io_d_out_30_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_61 = peCol_io_d_out_30_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_in64_62 = peCol_io_d_out_31_a; // @[BuildingBlockNewFirst.scala 184:27]
  assign ingress1_io_in64_63 = peCol_io_d_out_31_b; // @[BuildingBlockNewFirst.scala 185:29]
  assign ingress1_io_validin64_0 = peCol_io_d_out_0_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_1 = peCol_io_d_out_0_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_2 = peCol_io_d_out_1_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_3 = peCol_io_d_out_1_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_4 = peCol_io_d_out_2_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_5 = peCol_io_d_out_2_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_6 = peCol_io_d_out_3_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_7 = peCol_io_d_out_3_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_8 = peCol_io_d_out_4_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_9 = peCol_io_d_out_4_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_10 = peCol_io_d_out_5_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_11 = peCol_io_d_out_5_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_12 = peCol_io_d_out_6_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_13 = peCol_io_d_out_6_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_14 = peCol_io_d_out_7_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_15 = peCol_io_d_out_7_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_16 = peCol_io_d_out_8_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_17 = peCol_io_d_out_8_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_18 = peCol_io_d_out_9_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_19 = peCol_io_d_out_9_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_20 = peCol_io_d_out_10_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_21 = peCol_io_d_out_10_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_22 = peCol_io_d_out_11_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_23 = peCol_io_d_out_11_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_24 = peCol_io_d_out_12_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_25 = peCol_io_d_out_12_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_26 = peCol_io_d_out_13_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_27 = peCol_io_d_out_13_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_28 = peCol_io_d_out_14_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_29 = peCol_io_d_out_14_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_30 = peCol_io_d_out_15_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_31 = peCol_io_d_out_15_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_32 = peCol_io_d_out_16_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_33 = peCol_io_d_out_16_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_34 = peCol_io_d_out_17_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_35 = peCol_io_d_out_17_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_36 = peCol_io_d_out_18_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_37 = peCol_io_d_out_18_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_38 = peCol_io_d_out_19_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_39 = peCol_io_d_out_19_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_40 = peCol_io_d_out_20_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_41 = peCol_io_d_out_20_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_42 = peCol_io_d_out_21_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_43 = peCol_io_d_out_21_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_44 = peCol_io_d_out_22_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_45 = peCol_io_d_out_22_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_46 = peCol_io_d_out_23_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_47 = peCol_io_d_out_23_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_48 = peCol_io_d_out_24_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_49 = peCol_io_d_out_24_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_50 = peCol_io_d_out_25_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_51 = peCol_io_d_out_25_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_52 = peCol_io_d_out_26_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_53 = peCol_io_d_out_26_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_54 = peCol_io_d_out_27_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_55 = peCol_io_d_out_27_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_56 = peCol_io_d_out_28_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_57 = peCol_io_d_out_28_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_58 = peCol_io_d_out_29_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_59 = peCol_io_d_out_29_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_60 = peCol_io_d_out_30_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_61 = peCol_io_d_out_30_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_validin64_62 = peCol_io_d_out_31_valid_a; // @[BuildingBlockNewFirst.scala 186:32]
  assign ingress1_io_validin64_63 = peCol_io_d_out_31_valid_b; // @[BuildingBlockNewFirst.scala 187:34]
  assign ingress1_io_tagin = peCol_io_tagout; // @[BuildingBlockNewFirst.scala 181:21]
  assign ingress1_io_addrin = peCol_io_addrout; // @[BuildingBlockNewFirst.scala 182:22]
  assign ingress1_io_ctrl = instr2; // @[BuildingBlockNewFirst.scala 143:20]
  assign ingress2_clock = clock;
  assign ingress2_reset = reset;
  assign ingress2_io_in64_0 = ingress1_io_out64_0; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_1 = ingress1_io_out64_1; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_2 = ingress1_io_out64_2; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_3 = ingress1_io_out64_3; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_4 = ingress1_io_out64_4; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_5 = ingress1_io_out64_5; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_6 = ingress1_io_out64_6; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_7 = ingress1_io_out64_7; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_8 = ingress1_io_out64_8; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_9 = ingress1_io_out64_9; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_10 = ingress1_io_out64_10; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_11 = ingress1_io_out64_11; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_12 = ingress1_io_out64_12; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_13 = ingress1_io_out64_13; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_14 = ingress1_io_out64_14; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_15 = ingress1_io_out64_15; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_16 = ingress1_io_out64_16; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_17 = ingress1_io_out64_17; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_18 = ingress1_io_out64_18; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_19 = ingress1_io_out64_19; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_20 = ingress1_io_out64_20; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_21 = ingress1_io_out64_21; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_22 = ingress1_io_out64_22; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_23 = ingress1_io_out64_23; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_24 = ingress1_io_out64_24; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_25 = ingress1_io_out64_25; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_26 = ingress1_io_out64_26; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_27 = ingress1_io_out64_27; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_28 = ingress1_io_out64_28; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_29 = ingress1_io_out64_29; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_30 = ingress1_io_out64_30; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_31 = ingress1_io_out64_31; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_32 = ingress1_io_out64_32; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_33 = ingress1_io_out64_33; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_34 = ingress1_io_out64_34; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_35 = ingress1_io_out64_35; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_36 = ingress1_io_out64_36; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_37 = ingress1_io_out64_37; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_38 = ingress1_io_out64_38; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_39 = ingress1_io_out64_39; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_40 = ingress1_io_out64_40; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_41 = ingress1_io_out64_41; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_42 = ingress1_io_out64_42; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_43 = ingress1_io_out64_43; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_44 = ingress1_io_out64_44; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_45 = ingress1_io_out64_45; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_46 = ingress1_io_out64_46; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_47 = ingress1_io_out64_47; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_48 = ingress1_io_out64_48; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_49 = ingress1_io_out64_49; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_50 = ingress1_io_out64_50; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_51 = ingress1_io_out64_51; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_52 = ingress1_io_out64_52; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_53 = ingress1_io_out64_53; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_54 = ingress1_io_out64_54; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_55 = ingress1_io_out64_55; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_56 = ingress1_io_out64_56; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_57 = ingress1_io_out64_57; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_58 = ingress1_io_out64_58; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_59 = ingress1_io_out64_59; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_60 = ingress1_io_out64_60; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_61 = ingress1_io_out64_61; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_62 = ingress1_io_out64_62; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_in64_63 = ingress1_io_out64_63; // @[BuildingBlockNewFirst.scala 190:20]
  assign ingress2_io_validin64_0 = ingress1_io_validout64_0; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_1 = ingress1_io_validout64_1; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_2 = ingress1_io_validout64_2; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_3 = ingress1_io_validout64_3; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_4 = ingress1_io_validout64_4; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_5 = ingress1_io_validout64_5; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_6 = ingress1_io_validout64_6; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_7 = ingress1_io_validout64_7; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_8 = ingress1_io_validout64_8; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_9 = ingress1_io_validout64_9; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_10 = ingress1_io_validout64_10; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_11 = ingress1_io_validout64_11; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_12 = ingress1_io_validout64_12; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_13 = ingress1_io_validout64_13; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_14 = ingress1_io_validout64_14; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_15 = ingress1_io_validout64_15; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_16 = ingress1_io_validout64_16; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_17 = ingress1_io_validout64_17; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_18 = ingress1_io_validout64_18; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_19 = ingress1_io_validout64_19; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_20 = ingress1_io_validout64_20; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_21 = ingress1_io_validout64_21; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_22 = ingress1_io_validout64_22; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_23 = ingress1_io_validout64_23; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_24 = ingress1_io_validout64_24; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_25 = ingress1_io_validout64_25; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_26 = ingress1_io_validout64_26; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_27 = ingress1_io_validout64_27; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_28 = ingress1_io_validout64_28; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_29 = ingress1_io_validout64_29; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_30 = ingress1_io_validout64_30; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_31 = ingress1_io_validout64_31; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_32 = ingress1_io_validout64_32; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_33 = ingress1_io_validout64_33; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_34 = ingress1_io_validout64_34; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_35 = ingress1_io_validout64_35; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_36 = ingress1_io_validout64_36; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_37 = ingress1_io_validout64_37; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_38 = ingress1_io_validout64_38; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_39 = ingress1_io_validout64_39; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_40 = ingress1_io_validout64_40; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_41 = ingress1_io_validout64_41; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_42 = ingress1_io_validout64_42; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_43 = ingress1_io_validout64_43; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_44 = ingress1_io_validout64_44; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_45 = ingress1_io_validout64_45; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_46 = ingress1_io_validout64_46; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_47 = ingress1_io_validout64_47; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_48 = ingress1_io_validout64_48; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_49 = ingress1_io_validout64_49; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_50 = ingress1_io_validout64_50; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_51 = ingress1_io_validout64_51; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_52 = ingress1_io_validout64_52; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_53 = ingress1_io_validout64_53; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_54 = ingress1_io_validout64_54; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_55 = ingress1_io_validout64_55; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_56 = ingress1_io_validout64_56; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_57 = ingress1_io_validout64_57; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_58 = ingress1_io_validout64_58; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_59 = ingress1_io_validout64_59; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_60 = ingress1_io_validout64_60; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_61 = ingress1_io_validout64_61; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_62 = ingress1_io_validout64_62; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_validin64_63 = ingress1_io_validout64_63; // @[BuildingBlockNewFirst.scala 191:25]
  assign ingress2_io_tagin = ingress1_io_tagout; // @[BuildingBlockNewFirst.scala 192:21]
  assign ingress2_io_addrin = ingress1_io_addrout; // @[BuildingBlockNewFirst.scala 193:22]
  assign ingress2_io_ctrl = instr3; // @[BuildingBlockNewFirst.scala 144:20]
  assign middle_clock = clock;
  assign middle_reset = reset;
  assign middle_io_in64_0 = ingress2_io_out64_0; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_1 = ingress2_io_out64_1; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_2 = ingress2_io_out64_2; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_3 = ingress2_io_out64_3; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_4 = ingress2_io_out64_4; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_5 = ingress2_io_out64_5; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_6 = ingress2_io_out64_6; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_7 = ingress2_io_out64_7; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_8 = ingress2_io_out64_8; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_9 = ingress2_io_out64_9; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_10 = ingress2_io_out64_10; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_11 = ingress2_io_out64_11; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_12 = ingress2_io_out64_12; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_13 = ingress2_io_out64_13; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_14 = ingress2_io_out64_14; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_15 = ingress2_io_out64_15; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_16 = ingress2_io_out64_16; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_17 = ingress2_io_out64_17; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_18 = ingress2_io_out64_18; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_19 = ingress2_io_out64_19; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_20 = ingress2_io_out64_20; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_21 = ingress2_io_out64_21; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_22 = ingress2_io_out64_22; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_23 = ingress2_io_out64_23; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_24 = ingress2_io_out64_24; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_25 = ingress2_io_out64_25; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_26 = ingress2_io_out64_26; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_27 = ingress2_io_out64_27; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_28 = ingress2_io_out64_28; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_29 = ingress2_io_out64_29; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_30 = ingress2_io_out64_30; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_31 = ingress2_io_out64_31; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_32 = ingress2_io_out64_32; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_33 = ingress2_io_out64_33; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_34 = ingress2_io_out64_34; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_35 = ingress2_io_out64_35; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_36 = ingress2_io_out64_36; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_37 = ingress2_io_out64_37; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_38 = ingress2_io_out64_38; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_39 = ingress2_io_out64_39; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_40 = ingress2_io_out64_40; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_41 = ingress2_io_out64_41; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_42 = ingress2_io_out64_42; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_43 = ingress2_io_out64_43; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_44 = ingress2_io_out64_44; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_45 = ingress2_io_out64_45; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_46 = ingress2_io_out64_46; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_47 = ingress2_io_out64_47; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_48 = ingress2_io_out64_48; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_49 = ingress2_io_out64_49; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_50 = ingress2_io_out64_50; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_51 = ingress2_io_out64_51; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_52 = ingress2_io_out64_52; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_53 = ingress2_io_out64_53; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_54 = ingress2_io_out64_54; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_55 = ingress2_io_out64_55; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_56 = ingress2_io_out64_56; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_57 = ingress2_io_out64_57; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_58 = ingress2_io_out64_58; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_59 = ingress2_io_out64_59; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_60 = ingress2_io_out64_60; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_61 = ingress2_io_out64_61; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_62 = ingress2_io_out64_62; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_in64_63 = ingress2_io_out64_63; // @[BuildingBlockNewFirst.scala 194:18]
  assign middle_io_validin64_0 = ingress2_io_validout64_0; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_1 = ingress2_io_validout64_1; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_2 = ingress2_io_validout64_2; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_3 = ingress2_io_validout64_3; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_4 = ingress2_io_validout64_4; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_5 = ingress2_io_validout64_5; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_6 = ingress2_io_validout64_6; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_7 = ingress2_io_validout64_7; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_8 = ingress2_io_validout64_8; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_9 = ingress2_io_validout64_9; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_10 = ingress2_io_validout64_10; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_11 = ingress2_io_validout64_11; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_12 = ingress2_io_validout64_12; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_13 = ingress2_io_validout64_13; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_14 = ingress2_io_validout64_14; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_15 = ingress2_io_validout64_15; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_16 = ingress2_io_validout64_16; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_17 = ingress2_io_validout64_17; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_18 = ingress2_io_validout64_18; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_19 = ingress2_io_validout64_19; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_20 = ingress2_io_validout64_20; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_21 = ingress2_io_validout64_21; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_22 = ingress2_io_validout64_22; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_23 = ingress2_io_validout64_23; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_24 = ingress2_io_validout64_24; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_25 = ingress2_io_validout64_25; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_26 = ingress2_io_validout64_26; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_27 = ingress2_io_validout64_27; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_28 = ingress2_io_validout64_28; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_29 = ingress2_io_validout64_29; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_30 = ingress2_io_validout64_30; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_31 = ingress2_io_validout64_31; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_32 = ingress2_io_validout64_32; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_33 = ingress2_io_validout64_33; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_34 = ingress2_io_validout64_34; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_35 = ingress2_io_validout64_35; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_36 = ingress2_io_validout64_36; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_37 = ingress2_io_validout64_37; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_38 = ingress2_io_validout64_38; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_39 = ingress2_io_validout64_39; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_40 = ingress2_io_validout64_40; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_41 = ingress2_io_validout64_41; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_42 = ingress2_io_validout64_42; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_43 = ingress2_io_validout64_43; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_44 = ingress2_io_validout64_44; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_45 = ingress2_io_validout64_45; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_46 = ingress2_io_validout64_46; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_47 = ingress2_io_validout64_47; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_48 = ingress2_io_validout64_48; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_49 = ingress2_io_validout64_49; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_50 = ingress2_io_validout64_50; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_51 = ingress2_io_validout64_51; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_52 = ingress2_io_validout64_52; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_53 = ingress2_io_validout64_53; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_54 = ingress2_io_validout64_54; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_55 = ingress2_io_validout64_55; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_56 = ingress2_io_validout64_56; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_57 = ingress2_io_validout64_57; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_58 = ingress2_io_validout64_58; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_59 = ingress2_io_validout64_59; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_60 = ingress2_io_validout64_60; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_61 = ingress2_io_validout64_61; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_62 = ingress2_io_validout64_62; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_validin64_63 = ingress2_io_validout64_63; // @[BuildingBlockNewFirst.scala 195:23]
  assign middle_io_tagin = ingress2_io_tagout; // @[BuildingBlockNewFirst.scala 196:19]
  assign middle_io_addrin = ingress2_io_addrout; // @[BuildingBlockNewFirst.scala 197:20]
  assign middle_io_ctrl = instr4; // @[BuildingBlockNewFirst.scala 145:18]
  assign egress1_clock = clock;
  assign egress1_reset = reset;
  assign egress1_io_in64_0 = middle_io_out64_0; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_1 = middle_io_out64_1; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_2 = middle_io_out64_2; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_3 = middle_io_out64_3; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_4 = middle_io_out64_4; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_5 = middle_io_out64_5; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_6 = middle_io_out64_6; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_7 = middle_io_out64_7; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_8 = middle_io_out64_8; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_9 = middle_io_out64_9; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_10 = middle_io_out64_10; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_11 = middle_io_out64_11; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_12 = middle_io_out64_12; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_13 = middle_io_out64_13; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_14 = middle_io_out64_14; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_15 = middle_io_out64_15; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_16 = middle_io_out64_16; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_17 = middle_io_out64_17; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_18 = middle_io_out64_18; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_19 = middle_io_out64_19; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_20 = middle_io_out64_20; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_21 = middle_io_out64_21; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_22 = middle_io_out64_22; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_23 = middle_io_out64_23; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_24 = middle_io_out64_24; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_25 = middle_io_out64_25; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_26 = middle_io_out64_26; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_27 = middle_io_out64_27; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_28 = middle_io_out64_28; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_29 = middle_io_out64_29; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_30 = middle_io_out64_30; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_31 = middle_io_out64_31; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_32 = middle_io_out64_32; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_33 = middle_io_out64_33; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_34 = middle_io_out64_34; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_35 = middle_io_out64_35; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_36 = middle_io_out64_36; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_37 = middle_io_out64_37; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_38 = middle_io_out64_38; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_39 = middle_io_out64_39; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_40 = middle_io_out64_40; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_41 = middle_io_out64_41; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_42 = middle_io_out64_42; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_43 = middle_io_out64_43; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_44 = middle_io_out64_44; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_45 = middle_io_out64_45; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_46 = middle_io_out64_46; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_47 = middle_io_out64_47; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_48 = middle_io_out64_48; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_49 = middle_io_out64_49; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_50 = middle_io_out64_50; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_51 = middle_io_out64_51; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_52 = middle_io_out64_52; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_53 = middle_io_out64_53; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_54 = middle_io_out64_54; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_55 = middle_io_out64_55; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_56 = middle_io_out64_56; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_57 = middle_io_out64_57; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_58 = middle_io_out64_58; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_59 = middle_io_out64_59; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_60 = middle_io_out64_60; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_61 = middle_io_out64_61; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_62 = middle_io_out64_62; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_in64_63 = middle_io_out64_63; // @[BuildingBlockNewFirst.scala 198:19]
  assign egress1_io_validin64_0 = middle_io_validout64_0; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_1 = middle_io_validout64_1; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_2 = middle_io_validout64_2; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_3 = middle_io_validout64_3; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_4 = middle_io_validout64_4; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_5 = middle_io_validout64_5; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_6 = middle_io_validout64_6; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_7 = middle_io_validout64_7; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_8 = middle_io_validout64_8; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_9 = middle_io_validout64_9; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_10 = middle_io_validout64_10; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_11 = middle_io_validout64_11; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_12 = middle_io_validout64_12; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_13 = middle_io_validout64_13; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_14 = middle_io_validout64_14; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_15 = middle_io_validout64_15; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_16 = middle_io_validout64_16; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_17 = middle_io_validout64_17; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_18 = middle_io_validout64_18; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_19 = middle_io_validout64_19; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_20 = middle_io_validout64_20; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_21 = middle_io_validout64_21; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_22 = middle_io_validout64_22; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_23 = middle_io_validout64_23; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_24 = middle_io_validout64_24; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_25 = middle_io_validout64_25; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_26 = middle_io_validout64_26; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_27 = middle_io_validout64_27; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_28 = middle_io_validout64_28; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_29 = middle_io_validout64_29; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_30 = middle_io_validout64_30; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_31 = middle_io_validout64_31; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_32 = middle_io_validout64_32; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_33 = middle_io_validout64_33; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_34 = middle_io_validout64_34; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_35 = middle_io_validout64_35; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_36 = middle_io_validout64_36; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_37 = middle_io_validout64_37; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_38 = middle_io_validout64_38; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_39 = middle_io_validout64_39; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_40 = middle_io_validout64_40; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_41 = middle_io_validout64_41; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_42 = middle_io_validout64_42; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_43 = middle_io_validout64_43; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_44 = middle_io_validout64_44; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_45 = middle_io_validout64_45; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_46 = middle_io_validout64_46; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_47 = middle_io_validout64_47; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_48 = middle_io_validout64_48; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_49 = middle_io_validout64_49; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_50 = middle_io_validout64_50; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_51 = middle_io_validout64_51; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_52 = middle_io_validout64_52; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_53 = middle_io_validout64_53; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_54 = middle_io_validout64_54; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_55 = middle_io_validout64_55; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_56 = middle_io_validout64_56; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_57 = middle_io_validout64_57; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_58 = middle_io_validout64_58; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_59 = middle_io_validout64_59; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_60 = middle_io_validout64_60; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_61 = middle_io_validout64_61; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_62 = middle_io_validout64_62; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_validin64_63 = middle_io_validout64_63; // @[BuildingBlockNewFirst.scala 199:24]
  assign egress1_io_tagin = middle_io_tagout; // @[BuildingBlockNewFirst.scala 200:20]
  assign egress1_io_addrin = middle_io_addrout; // @[BuildingBlockNewFirst.scala 201:21]
  assign egress1_io_ctrl = instr5; // @[BuildingBlockNewFirst.scala 146:19]
  assign egress2_clock = clock;
  assign egress2_reset = reset;
  assign egress2_io_in64_0 = egress1_io_out64_0; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_1 = egress1_io_out64_1; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_2 = egress1_io_out64_2; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_3 = egress1_io_out64_3; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_4 = egress1_io_out64_4; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_5 = egress1_io_out64_5; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_6 = egress1_io_out64_6; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_7 = egress1_io_out64_7; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_8 = egress1_io_out64_8; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_9 = egress1_io_out64_9; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_10 = egress1_io_out64_10; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_11 = egress1_io_out64_11; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_12 = egress1_io_out64_12; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_13 = egress1_io_out64_13; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_14 = egress1_io_out64_14; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_15 = egress1_io_out64_15; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_16 = egress1_io_out64_16; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_17 = egress1_io_out64_17; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_18 = egress1_io_out64_18; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_19 = egress1_io_out64_19; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_20 = egress1_io_out64_20; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_21 = egress1_io_out64_21; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_22 = egress1_io_out64_22; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_23 = egress1_io_out64_23; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_24 = egress1_io_out64_24; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_25 = egress1_io_out64_25; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_26 = egress1_io_out64_26; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_27 = egress1_io_out64_27; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_28 = egress1_io_out64_28; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_29 = egress1_io_out64_29; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_30 = egress1_io_out64_30; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_31 = egress1_io_out64_31; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_32 = egress1_io_out64_32; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_33 = egress1_io_out64_33; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_34 = egress1_io_out64_34; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_35 = egress1_io_out64_35; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_36 = egress1_io_out64_36; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_37 = egress1_io_out64_37; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_38 = egress1_io_out64_38; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_39 = egress1_io_out64_39; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_40 = egress1_io_out64_40; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_41 = egress1_io_out64_41; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_42 = egress1_io_out64_42; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_43 = egress1_io_out64_43; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_44 = egress1_io_out64_44; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_45 = egress1_io_out64_45; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_46 = egress1_io_out64_46; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_47 = egress1_io_out64_47; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_48 = egress1_io_out64_48; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_49 = egress1_io_out64_49; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_50 = egress1_io_out64_50; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_51 = egress1_io_out64_51; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_52 = egress1_io_out64_52; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_53 = egress1_io_out64_53; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_54 = egress1_io_out64_54; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_55 = egress1_io_out64_55; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_56 = egress1_io_out64_56; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_57 = egress1_io_out64_57; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_58 = egress1_io_out64_58; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_59 = egress1_io_out64_59; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_60 = egress1_io_out64_60; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_61 = egress1_io_out64_61; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_62 = egress1_io_out64_62; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_in64_63 = egress1_io_out64_63; // @[BuildingBlockNewFirst.scala 202:19]
  assign egress2_io_validin64_0 = egress1_io_validout64_0; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_1 = egress1_io_validout64_1; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_2 = egress1_io_validout64_2; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_3 = egress1_io_validout64_3; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_4 = egress1_io_validout64_4; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_5 = egress1_io_validout64_5; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_6 = egress1_io_validout64_6; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_7 = egress1_io_validout64_7; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_8 = egress1_io_validout64_8; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_9 = egress1_io_validout64_9; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_10 = egress1_io_validout64_10; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_11 = egress1_io_validout64_11; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_12 = egress1_io_validout64_12; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_13 = egress1_io_validout64_13; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_14 = egress1_io_validout64_14; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_15 = egress1_io_validout64_15; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_16 = egress1_io_validout64_16; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_17 = egress1_io_validout64_17; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_18 = egress1_io_validout64_18; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_19 = egress1_io_validout64_19; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_20 = egress1_io_validout64_20; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_21 = egress1_io_validout64_21; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_22 = egress1_io_validout64_22; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_23 = egress1_io_validout64_23; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_24 = egress1_io_validout64_24; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_25 = egress1_io_validout64_25; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_26 = egress1_io_validout64_26; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_27 = egress1_io_validout64_27; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_28 = egress1_io_validout64_28; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_29 = egress1_io_validout64_29; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_30 = egress1_io_validout64_30; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_31 = egress1_io_validout64_31; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_32 = egress1_io_validout64_32; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_33 = egress1_io_validout64_33; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_34 = egress1_io_validout64_34; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_35 = egress1_io_validout64_35; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_36 = egress1_io_validout64_36; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_37 = egress1_io_validout64_37; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_38 = egress1_io_validout64_38; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_39 = egress1_io_validout64_39; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_40 = egress1_io_validout64_40; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_41 = egress1_io_validout64_41; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_42 = egress1_io_validout64_42; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_43 = egress1_io_validout64_43; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_44 = egress1_io_validout64_44; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_45 = egress1_io_validout64_45; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_46 = egress1_io_validout64_46; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_47 = egress1_io_validout64_47; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_48 = egress1_io_validout64_48; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_49 = egress1_io_validout64_49; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_50 = egress1_io_validout64_50; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_51 = egress1_io_validout64_51; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_52 = egress1_io_validout64_52; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_53 = egress1_io_validout64_53; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_54 = egress1_io_validout64_54; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_55 = egress1_io_validout64_55; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_56 = egress1_io_validout64_56; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_57 = egress1_io_validout64_57; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_58 = egress1_io_validout64_58; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_59 = egress1_io_validout64_59; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_60 = egress1_io_validout64_60; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_61 = egress1_io_validout64_61; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_62 = egress1_io_validout64_62; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_validin64_63 = egress1_io_validout64_63; // @[BuildingBlockNewFirst.scala 203:24]
  assign egress2_io_tagin = egress1_io_tagout; // @[BuildingBlockNewFirst.scala 204:20]
  assign egress2_io_addrin = egress1_io_addrout; // @[BuildingBlockNewFirst.scala 205:21]
  assign egress2_io_ctrl = instr6; // @[BuildingBlockNewFirst.scala 147:19]
  always @(posedge clock) begin
    if(Mem1_MPORT_en & Mem1_MPORT_mask) begin
      Mem1[Mem1_MPORT_addr] <= Mem1_MPORT_data; // @[BuildingBlockNewFirst.scala 34:17]
    end
    if(Mem2_MPORT_1_en & Mem2_MPORT_1_mask) begin
      Mem2[Mem2_MPORT_1_addr] <= Mem2_MPORT_1_data; // @[BuildingBlockNewFirst.scala 35:17]
    end
    if(Mem3_MPORT_2_en & Mem3_MPORT_2_mask) begin
      Mem3[Mem3_MPORT_2_addr] <= Mem3_MPORT_2_data; // @[BuildingBlockNewFirst.scala 36:17]
    end
    if(Mem4_MPORT_3_en & Mem4_MPORT_3_mask) begin
      Mem4[Mem4_MPORT_3_addr] <= Mem4_MPORT_3_data; // @[BuildingBlockNewFirst.scala 37:17]
    end
    if(Mem5_MPORT_4_en & Mem5_MPORT_4_mask) begin
      Mem5[Mem5_MPORT_4_addr] <= Mem5_MPORT_4_data; // @[BuildingBlockNewFirst.scala 38:17]
    end
    if(Mem6_MPORT_5_en & Mem6_MPORT_5_mask) begin
      Mem6[Mem6_MPORT_5_addr] <= Mem6_MPORT_5_data; // @[BuildingBlockNewFirst.scala 39:17]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 40:20]
      PC1 <= 8'h0; // @[BuildingBlockNewFirst.scala 40:20]
    end else if (io_run_in) begin // @[BuildingBlockNewFirst.scala 83:15]
      if (io_PC1_in_en) begin // @[BuildingBlockNewFirst.scala 84:25]
        PC1 <= io_PC1_in; // @[BuildingBlockNewFirst.scala 85:13]
      end else begin
        PC1 <= _PC1_T_1; // @[BuildingBlockNewFirst.scala 87:13]
      end
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 41:20]
      PC2 <= 8'h0; // @[BuildingBlockNewFirst.scala 41:20]
    end else if (run2) begin // @[BuildingBlockNewFirst.scala 95:13]
      PC2 <= PC1; // @[BuildingBlockNewFirst.scala 97:9]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 42:20]
      PC3 <= 8'h0; // @[BuildingBlockNewFirst.scala 42:20]
    end else if (run3) begin // @[BuildingBlockNewFirst.scala 104:13]
      PC3 <= PC2; // @[BuildingBlockNewFirst.scala 106:9]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 43:20]
      PC4 <= 8'h0; // @[BuildingBlockNewFirst.scala 43:20]
    end else if (run4) begin // @[BuildingBlockNewFirst.scala 113:13]
      PC4 <= PC3; // @[BuildingBlockNewFirst.scala 115:9]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 44:20]
      PC5 <= 8'h0; // @[BuildingBlockNewFirst.scala 44:20]
    end else if (run5) begin // @[BuildingBlockNewFirst.scala 122:13]
      PC5 <= PC4; // @[BuildingBlockNewFirst.scala 124:9]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 45:20]
      PC6 <= 8'h0; // @[BuildingBlockNewFirst.scala 45:20]
    end else if (run6) begin // @[BuildingBlockNewFirst.scala 131:13]
      PC6 <= PC5; // @[BuildingBlockNewFirst.scala 133:9]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 46:24]
      wrAddr1 <= 8'h0; // @[BuildingBlockNewFirst.scala 46:24]
    end else if (io_wr_en_mem1) begin // @[BuildingBlockNewFirst.scala 151:22]
      wrAddr1 <= _wrAddr1_T_1; // @[BuildingBlockNewFirst.scala 153:13]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 47:24]
      wrAddr2 <= 8'h0; // @[BuildingBlockNewFirst.scala 47:24]
    end else if (io_wr_en_mem2) begin // @[BuildingBlockNewFirst.scala 155:22]
      wrAddr2 <= _wrAddr2_T_1; // @[BuildingBlockNewFirst.scala 157:13]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 48:24]
      wrAddr3 <= 8'h0; // @[BuildingBlockNewFirst.scala 48:24]
    end else if (io_wr_en_mem3) begin // @[BuildingBlockNewFirst.scala 159:22]
      wrAddr3 <= _wrAddr3_T_1; // @[BuildingBlockNewFirst.scala 161:13]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 49:24]
      wrAddr4 <= 8'h0; // @[BuildingBlockNewFirst.scala 49:24]
    end else if (io_wr_en_mem4) begin // @[BuildingBlockNewFirst.scala 163:22]
      wrAddr4 <= _wrAddr4_T_1; // @[BuildingBlockNewFirst.scala 165:13]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 50:24]
      wrAddr5 <= 8'h0; // @[BuildingBlockNewFirst.scala 50:24]
    end else if (io_wr_en_mem5) begin // @[BuildingBlockNewFirst.scala 167:22]
      wrAddr5 <= _wrAddr5_T_1; // @[BuildingBlockNewFirst.scala 169:13]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 51:24]
      wrAddr6 <= 8'h0; // @[BuildingBlockNewFirst.scala 51:24]
    end else if (io_wr_en_mem6) begin // @[BuildingBlockNewFirst.scala 171:22]
      wrAddr6 <= _wrAddr6_T_1; // @[BuildingBlockNewFirst.scala 173:13]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 52:23]
      instr1 <= 224'h0; // @[BuildingBlockNewFirst.scala 52:23]
    end else if (io_run_in) begin // @[BuildingBlockNewFirst.scala 83:15]
      instr1 <= Mem1_instr1_MPORT_data; // @[BuildingBlockNewFirst.scala 89:14]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 53:23]
      instr2 <= 128'h0; // @[BuildingBlockNewFirst.scala 53:23]
    end else if (run2) begin // @[BuildingBlockNewFirst.scala 95:13]
      instr2 <= Mem2_instr2_MPORT_data; // @[BuildingBlockNewFirst.scala 98:12]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 54:23]
      instr3 <= 128'h0; // @[BuildingBlockNewFirst.scala 54:23]
    end else if (run3) begin // @[BuildingBlockNewFirst.scala 104:13]
      instr3 <= Mem3_instr3_MPORT_data; // @[BuildingBlockNewFirst.scala 107:12]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 55:23]
      instr4 <= 128'h0; // @[BuildingBlockNewFirst.scala 55:23]
    end else if (run4) begin // @[BuildingBlockNewFirst.scala 113:13]
      instr4 <= Mem4_instr4_MPORT_data; // @[BuildingBlockNewFirst.scala 116:12]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 56:23]
      instr5 <= 128'h0; // @[BuildingBlockNewFirst.scala 56:23]
    end else if (run5) begin // @[BuildingBlockNewFirst.scala 122:13]
      instr5 <= Mem5_instr5_MPORT_data; // @[BuildingBlockNewFirst.scala 125:12]
    end
    if (reset) begin // @[BuildingBlockNewFirst.scala 57:23]
      instr6 <= 128'h0; // @[BuildingBlockNewFirst.scala 57:23]
    end else if (run6) begin // @[BuildingBlockNewFirst.scala 131:13]
      instr6 <= Mem6_instr6_MPORT_data; // @[BuildingBlockNewFirst.scala 134:12]
    end
    run2 <= io_run_in; // @[BuildingBlockNewFirst.scala 65:21]
    run3 <= run2; // @[BuildingBlockNewFirst.scala 66:21]
    run4 <= run3; // @[BuildingBlockNewFirst.scala 67:21]
    run5 <= run4; // @[BuildingBlockNewFirst.scala 68:21]
    run6 <= run5; // @[BuildingBlockNewFirst.scala 69:21]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {7{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem1[initvar] = _RAND_0[223:0];
  _RAND_1 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem2[initvar] = _RAND_1[127:0];
  _RAND_2 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem3[initvar] = _RAND_2[127:0];
  _RAND_3 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem4[initvar] = _RAND_3[127:0];
  _RAND_4 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem5[initvar] = _RAND_4[127:0];
  _RAND_5 = {4{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    Mem6[initvar] = _RAND_5[127:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  PC1 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  PC2 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  PC3 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  PC4 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  PC5 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  PC6 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  wrAddr1 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  wrAddr2 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  wrAddr3 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  wrAddr4 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  wrAddr5 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  wrAddr6 = _RAND_17[7:0];
  _RAND_18 = {7{`RANDOM}};
  instr1 = _RAND_18[223:0];
  _RAND_19 = {4{`RANDOM}};
  instr2 = _RAND_19[127:0];
  _RAND_20 = {4{`RANDOM}};
  instr3 = _RAND_20[127:0];
  _RAND_21 = {4{`RANDOM}};
  instr4 = _RAND_21[127:0];
  _RAND_22 = {4{`RANDOM}};
  instr5 = _RAND_22[127:0];
  _RAND_23 = {4{`RANDOM}};
  instr6 = _RAND_23[127:0];
  _RAND_24 = {1{`RANDOM}};
  run2 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  run3 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  run4 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  run5 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  run6 = _RAND_28[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
