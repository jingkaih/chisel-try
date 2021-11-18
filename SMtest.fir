;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit SMtest : 
  module ALU : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_25 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_26 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_27 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_28 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_29 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_30 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module ALU_31 : 
    input clock : Clock
    input reset : Reset
    output io : {flip opcode : UInt<4>, flip in_a : UInt<64>, flip in_b : UInt<64>, out_a : UInt<64>, out_b : UInt<64>}
    
    reg temp_result_a : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 27:30]
    reg temp_result_b : UInt<64>, clock with : (reset => (reset, UInt<64>("h00"))) @[ALU.scala 28:30]
    node _T = eq(UInt<1>("h00"), io.opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      temp_result_a <= UInt<1>("h00") @[ALU.scala 32:21]
      temp_result_b <= UInt<1>("h00") @[ALU.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.opcode) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _temp_result_a_T = and(io.in_a, io.in_b) @[ALU.scala 36:26]
        temp_result_a <= _temp_result_a_T @[ALU.scala 36:21]
        temp_result_b <= UInt<1>("h00") @[ALU.scala 37:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.opcode) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _temp_result_a_T_1 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 40:24]
          node _temp_result_a_T_2 = and(_temp_result_a_T_1, io.in_b) @[ALU.scala 40:27]
          temp_result_a <= _temp_result_a_T_2 @[ALU.scala 40:21]
          temp_result_b <= UInt<1>("h00") @[ALU.scala 41:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.opcode) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            node _temp_result_a_T_3 = or(io.in_a, io.in_b) @[ALU.scala 44:26]
            temp_result_a <= _temp_result_a_T_3 @[ALU.scala 44:21]
            temp_result_b <= UInt<1>("h00") @[ALU.scala 45:21]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<3>("h04"), io.opcode) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              node _temp_result_a_T_4 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 48:24]
              node _temp_result_a_T_5 = or(_temp_result_a_T_4, io.in_b) @[ALU.scala 48:27]
              temp_result_a <= _temp_result_a_T_5 @[ALU.scala 48:21]
              temp_result_b <= UInt<1>("h00") @[ALU.scala 49:21]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_5 = eq(UInt<3>("h05"), io.opcode) @[Conditional.scala 37:30]
              when _T_5 : @[Conditional.scala 39:67]
                node _temp_result_a_T_6 = xor(io.in_a, io.in_b) @[ALU.scala 52:26]
                temp_result_a <= _temp_result_a_T_6 @[ALU.scala 52:21]
                temp_result_b <= UInt<1>("h00") @[ALU.scala 53:21]
                skip @[Conditional.scala 39:67]
              else : @[Conditional.scala 39:67]
                node _T_6 = eq(UInt<3>("h06"), io.opcode) @[Conditional.scala 37:30]
                when _T_6 : @[Conditional.scala 39:67]
                  node _temp_result_a_T_7 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 56:24]
                  node _temp_result_a_T_8 = xor(_temp_result_a_T_7, io.in_b) @[ALU.scala 56:27]
                  temp_result_a <= _temp_result_a_T_8 @[ALU.scala 56:21]
                  temp_result_b <= UInt<1>("h00") @[ALU.scala 57:21]
                  skip @[Conditional.scala 39:67]
                else : @[Conditional.scala 39:67]
                  node _T_7 = eq(UInt<3>("h07"), io.opcode) @[Conditional.scala 37:30]
                  when _T_7 : @[Conditional.scala 39:67]
                    node _temp_result_a_T_9 = xor(io.in_a, io.in_b) @[ALU.scala 60:28]
                    node _temp_result_a_T_10 = eq(_temp_result_a_T_9, UInt<1>("h00")) @[ALU.scala 60:24]
                    temp_result_a <= _temp_result_a_T_10 @[ALU.scala 60:21]
                    temp_result_b <= UInt<1>("h00") @[ALU.scala 61:21]
                    skip @[Conditional.scala 39:67]
                  else : @[Conditional.scala 39:67]
                    node _T_8 = eq(UInt<4>("h08"), io.opcode) @[Conditional.scala 37:30]
                    when _T_8 : @[Conditional.scala 39:67]
                      node _temp_result_a_T_11 = and(io.in_a, io.in_b) @[ALU.scala 64:26]
                      temp_result_a <= _temp_result_a_T_11 @[ALU.scala 64:21]
                      temp_result_b <= io.in_b @[ALU.scala 65:21]
                      skip @[Conditional.scala 39:67]
                    else : @[Conditional.scala 39:67]
                      node _T_9 = eq(UInt<4>("h09"), io.opcode) @[Conditional.scala 37:30]
                      when _T_9 : @[Conditional.scala 39:67]
                        node _temp_result_a_T_12 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 68:24]
                        node _temp_result_a_T_13 = and(_temp_result_a_T_12, io.in_b) @[ALU.scala 68:27]
                        temp_result_a <= _temp_result_a_T_13 @[ALU.scala 68:21]
                        temp_result_b <= io.in_b @[ALU.scala 69:21]
                        skip @[Conditional.scala 39:67]
                      else : @[Conditional.scala 39:67]
                        node _T_10 = eq(UInt<4>("h0a"), io.opcode) @[Conditional.scala 37:30]
                        when _T_10 : @[Conditional.scala 39:67]
                          node _temp_result_a_T_14 = or(io.in_a, io.in_b) @[ALU.scala 72:26]
                          temp_result_a <= _temp_result_a_T_14 @[ALU.scala 72:21]
                          temp_result_b <= io.in_b @[ALU.scala 73:21]
                          skip @[Conditional.scala 39:67]
                        else : @[Conditional.scala 39:67]
                          node _T_11 = eq(UInt<4>("h0b"), io.opcode) @[Conditional.scala 37:30]
                          when _T_11 : @[Conditional.scala 39:67]
                            node _temp_result_a_T_15 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 76:24]
                            node _temp_result_a_T_16 = or(_temp_result_a_T_15, io.in_b) @[ALU.scala 76:27]
                            temp_result_a <= _temp_result_a_T_16 @[ALU.scala 76:21]
                            temp_result_b <= io.in_b @[ALU.scala 77:21]
                            skip @[Conditional.scala 39:67]
                          else : @[Conditional.scala 39:67]
                            node _T_12 = eq(UInt<4>("h0c"), io.opcode) @[Conditional.scala 37:30]
                            when _T_12 : @[Conditional.scala 39:67]
                              node _temp_result_a_T_17 = xor(io.in_a, io.in_b) @[ALU.scala 80:26]
                              temp_result_a <= _temp_result_a_T_17 @[ALU.scala 80:21]
                              temp_result_b <= io.in_b @[ALU.scala 81:21]
                              skip @[Conditional.scala 39:67]
                            else : @[Conditional.scala 39:67]
                              node _T_13 = eq(UInt<4>("h0d"), io.opcode) @[Conditional.scala 37:30]
                              when _T_13 : @[Conditional.scala 39:67]
                                node _temp_result_a_T_18 = eq(io.in_a, UInt<1>("h00")) @[ALU.scala 84:24]
                                node _temp_result_a_T_19 = xor(_temp_result_a_T_18, io.in_b) @[ALU.scala 84:27]
                                temp_result_a <= _temp_result_a_T_19 @[ALU.scala 84:21]
                                temp_result_b <= io.in_b @[ALU.scala 85:21]
                                skip @[Conditional.scala 39:67]
                              else : @[Conditional.scala 39:67]
                                node _T_14 = eq(UInt<4>("h0e"), io.opcode) @[Conditional.scala 37:30]
                                when _T_14 : @[Conditional.scala 39:67]
                                  node _temp_result_a_T_20 = xor(io.in_a, io.in_b) @[ALU.scala 88:28]
                                  node _temp_result_a_T_21 = eq(_temp_result_a_T_20, UInt<1>("h00")) @[ALU.scala 88:24]
                                  temp_result_a <= _temp_result_a_T_21 @[ALU.scala 88:21]
                                  temp_result_b <= io.in_b @[ALU.scala 89:21]
                                  skip @[Conditional.scala 39:67]
                                else : @[Conditional.scala 39:67]
                                  node _T_15 = eq(UInt<4>("h0f"), io.opcode) @[Conditional.scala 37:30]
                                  when _T_15 : @[Conditional.scala 39:67]
                                    temp_result_a <= io.in_b @[ALU.scala 92:21]
                                    temp_result_b <= io.in_a @[ALU.scala 93:21]
                                    skip @[Conditional.scala 39:67]
    io.out_a <= temp_result_a @[ALU.scala 96:12]
    io.out_b <= temp_result_b @[ALU.scala 97:12]
    
  module PEcol : 
    input clock : Clock
    input reset : Reset
    output io : {flip d_in : {a : UInt<64>, b : UInt<64>}[32], d_out : {a : UInt<64>, b : UInt<64>}[32], flip instr : UInt<128>}
    
    inst ALU64_32_0 of ALU @[BuildingBlock.scala 149:52]
    ALU64_32_0.clock <= clock
    ALU64_32_0.reset <= reset
    inst ALU64_32_1 of ALU_1 @[BuildingBlock.scala 149:52]
    ALU64_32_1.clock <= clock
    ALU64_32_1.reset <= reset
    inst ALU64_32_2 of ALU_2 @[BuildingBlock.scala 149:52]
    ALU64_32_2.clock <= clock
    ALU64_32_2.reset <= reset
    inst ALU64_32_3 of ALU_3 @[BuildingBlock.scala 149:52]
    ALU64_32_3.clock <= clock
    ALU64_32_3.reset <= reset
    inst ALU64_32_4 of ALU_4 @[BuildingBlock.scala 149:52]
    ALU64_32_4.clock <= clock
    ALU64_32_4.reset <= reset
    inst ALU64_32_5 of ALU_5 @[BuildingBlock.scala 149:52]
    ALU64_32_5.clock <= clock
    ALU64_32_5.reset <= reset
    inst ALU64_32_6 of ALU_6 @[BuildingBlock.scala 149:52]
    ALU64_32_6.clock <= clock
    ALU64_32_6.reset <= reset
    inst ALU64_32_7 of ALU_7 @[BuildingBlock.scala 149:52]
    ALU64_32_7.clock <= clock
    ALU64_32_7.reset <= reset
    inst ALU64_32_8 of ALU_8 @[BuildingBlock.scala 149:52]
    ALU64_32_8.clock <= clock
    ALU64_32_8.reset <= reset
    inst ALU64_32_9 of ALU_9 @[BuildingBlock.scala 149:52]
    ALU64_32_9.clock <= clock
    ALU64_32_9.reset <= reset
    inst ALU64_32_10 of ALU_10 @[BuildingBlock.scala 149:52]
    ALU64_32_10.clock <= clock
    ALU64_32_10.reset <= reset
    inst ALU64_32_11 of ALU_11 @[BuildingBlock.scala 149:52]
    ALU64_32_11.clock <= clock
    ALU64_32_11.reset <= reset
    inst ALU64_32_12 of ALU_12 @[BuildingBlock.scala 149:52]
    ALU64_32_12.clock <= clock
    ALU64_32_12.reset <= reset
    inst ALU64_32_13 of ALU_13 @[BuildingBlock.scala 149:52]
    ALU64_32_13.clock <= clock
    ALU64_32_13.reset <= reset
    inst ALU64_32_14 of ALU_14 @[BuildingBlock.scala 149:52]
    ALU64_32_14.clock <= clock
    ALU64_32_14.reset <= reset
    inst ALU64_32_15 of ALU_15 @[BuildingBlock.scala 149:52]
    ALU64_32_15.clock <= clock
    ALU64_32_15.reset <= reset
    inst ALU64_32_16 of ALU_16 @[BuildingBlock.scala 149:52]
    ALU64_32_16.clock <= clock
    ALU64_32_16.reset <= reset
    inst ALU64_32_17 of ALU_17 @[BuildingBlock.scala 149:52]
    ALU64_32_17.clock <= clock
    ALU64_32_17.reset <= reset
    inst ALU64_32_18 of ALU_18 @[BuildingBlock.scala 149:52]
    ALU64_32_18.clock <= clock
    ALU64_32_18.reset <= reset
    inst ALU64_32_19 of ALU_19 @[BuildingBlock.scala 149:52]
    ALU64_32_19.clock <= clock
    ALU64_32_19.reset <= reset
    inst ALU64_32_20 of ALU_20 @[BuildingBlock.scala 149:52]
    ALU64_32_20.clock <= clock
    ALU64_32_20.reset <= reset
    inst ALU64_32_21 of ALU_21 @[BuildingBlock.scala 149:52]
    ALU64_32_21.clock <= clock
    ALU64_32_21.reset <= reset
    inst ALU64_32_22 of ALU_22 @[BuildingBlock.scala 149:52]
    ALU64_32_22.clock <= clock
    ALU64_32_22.reset <= reset
    inst ALU64_32_23 of ALU_23 @[BuildingBlock.scala 149:52]
    ALU64_32_23.clock <= clock
    ALU64_32_23.reset <= reset
    inst ALU64_32_24 of ALU_24 @[BuildingBlock.scala 149:52]
    ALU64_32_24.clock <= clock
    ALU64_32_24.reset <= reset
    inst ALU64_32_25 of ALU_25 @[BuildingBlock.scala 149:52]
    ALU64_32_25.clock <= clock
    ALU64_32_25.reset <= reset
    inst ALU64_32_26 of ALU_26 @[BuildingBlock.scala 149:52]
    ALU64_32_26.clock <= clock
    ALU64_32_26.reset <= reset
    inst ALU64_32_27 of ALU_27 @[BuildingBlock.scala 149:52]
    ALU64_32_27.clock <= clock
    ALU64_32_27.reset <= reset
    inst ALU64_32_28 of ALU_28 @[BuildingBlock.scala 149:52]
    ALU64_32_28.clock <= clock
    ALU64_32_28.reset <= reset
    inst ALU64_32_29 of ALU_29 @[BuildingBlock.scala 149:52]
    ALU64_32_29.clock <= clock
    ALU64_32_29.reset <= reset
    inst ALU64_32_30 of ALU_30 @[BuildingBlock.scala 149:52]
    ALU64_32_30.clock <= clock
    ALU64_32_30.reset <= reset
    inst ALU64_32_31 of ALU_31 @[BuildingBlock.scala 149:52]
    ALU64_32_31.clock <= clock
    ALU64_32_31.reset <= reset
    ALU64_32_0.io.in_a <= io.d_in[0].a @[BuildingBlock.scala 154:25]
    ALU64_32_0.io.in_b <= io.d_in[0].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_0_io_opcode_T = bits(io.instr, 127, 124) @[BuildingBlock.scala 156:38]
    ALU64_32_0.io.opcode <= _ALU64_32_0_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[0].a <= ALU64_32_0.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[0].b <= ALU64_32_0.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_1.io.in_a <= io.d_in[1].a @[BuildingBlock.scala 154:25]
    ALU64_32_1.io.in_b <= io.d_in[1].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_1_io_opcode_T = bits(io.instr, 123, 120) @[BuildingBlock.scala 156:38]
    ALU64_32_1.io.opcode <= _ALU64_32_1_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[1].a <= ALU64_32_1.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[1].b <= ALU64_32_1.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_2.io.in_a <= io.d_in[2].a @[BuildingBlock.scala 154:25]
    ALU64_32_2.io.in_b <= io.d_in[2].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_2_io_opcode_T = bits(io.instr, 119, 116) @[BuildingBlock.scala 156:38]
    ALU64_32_2.io.opcode <= _ALU64_32_2_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[2].a <= ALU64_32_2.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[2].b <= ALU64_32_2.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_3.io.in_a <= io.d_in[3].a @[BuildingBlock.scala 154:25]
    ALU64_32_3.io.in_b <= io.d_in[3].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_3_io_opcode_T = bits(io.instr, 115, 112) @[BuildingBlock.scala 156:38]
    ALU64_32_3.io.opcode <= _ALU64_32_3_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[3].a <= ALU64_32_3.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[3].b <= ALU64_32_3.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_4.io.in_a <= io.d_in[4].a @[BuildingBlock.scala 154:25]
    ALU64_32_4.io.in_b <= io.d_in[4].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_4_io_opcode_T = bits(io.instr, 111, 108) @[BuildingBlock.scala 156:38]
    ALU64_32_4.io.opcode <= _ALU64_32_4_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[4].a <= ALU64_32_4.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[4].b <= ALU64_32_4.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_5.io.in_a <= io.d_in[5].a @[BuildingBlock.scala 154:25]
    ALU64_32_5.io.in_b <= io.d_in[5].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_5_io_opcode_T = bits(io.instr, 107, 104) @[BuildingBlock.scala 156:38]
    ALU64_32_5.io.opcode <= _ALU64_32_5_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[5].a <= ALU64_32_5.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[5].b <= ALU64_32_5.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_6.io.in_a <= io.d_in[6].a @[BuildingBlock.scala 154:25]
    ALU64_32_6.io.in_b <= io.d_in[6].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_6_io_opcode_T = bits(io.instr, 103, 100) @[BuildingBlock.scala 156:38]
    ALU64_32_6.io.opcode <= _ALU64_32_6_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[6].a <= ALU64_32_6.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[6].b <= ALU64_32_6.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_7.io.in_a <= io.d_in[7].a @[BuildingBlock.scala 154:25]
    ALU64_32_7.io.in_b <= io.d_in[7].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_7_io_opcode_T = bits(io.instr, 99, 96) @[BuildingBlock.scala 156:38]
    ALU64_32_7.io.opcode <= _ALU64_32_7_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[7].a <= ALU64_32_7.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[7].b <= ALU64_32_7.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_8.io.in_a <= io.d_in[8].a @[BuildingBlock.scala 154:25]
    ALU64_32_8.io.in_b <= io.d_in[8].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_8_io_opcode_T = bits(io.instr, 95, 92) @[BuildingBlock.scala 156:38]
    ALU64_32_8.io.opcode <= _ALU64_32_8_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[8].a <= ALU64_32_8.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[8].b <= ALU64_32_8.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_9.io.in_a <= io.d_in[9].a @[BuildingBlock.scala 154:25]
    ALU64_32_9.io.in_b <= io.d_in[9].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_9_io_opcode_T = bits(io.instr, 91, 88) @[BuildingBlock.scala 156:38]
    ALU64_32_9.io.opcode <= _ALU64_32_9_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[9].a <= ALU64_32_9.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[9].b <= ALU64_32_9.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_10.io.in_a <= io.d_in[10].a @[BuildingBlock.scala 154:25]
    ALU64_32_10.io.in_b <= io.d_in[10].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_10_io_opcode_T = bits(io.instr, 87, 84) @[BuildingBlock.scala 156:38]
    ALU64_32_10.io.opcode <= _ALU64_32_10_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[10].a <= ALU64_32_10.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[10].b <= ALU64_32_10.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_11.io.in_a <= io.d_in[11].a @[BuildingBlock.scala 154:25]
    ALU64_32_11.io.in_b <= io.d_in[11].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_11_io_opcode_T = bits(io.instr, 83, 80) @[BuildingBlock.scala 156:38]
    ALU64_32_11.io.opcode <= _ALU64_32_11_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[11].a <= ALU64_32_11.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[11].b <= ALU64_32_11.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_12.io.in_a <= io.d_in[12].a @[BuildingBlock.scala 154:25]
    ALU64_32_12.io.in_b <= io.d_in[12].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_12_io_opcode_T = bits(io.instr, 79, 76) @[BuildingBlock.scala 156:38]
    ALU64_32_12.io.opcode <= _ALU64_32_12_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[12].a <= ALU64_32_12.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[12].b <= ALU64_32_12.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_13.io.in_a <= io.d_in[13].a @[BuildingBlock.scala 154:25]
    ALU64_32_13.io.in_b <= io.d_in[13].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_13_io_opcode_T = bits(io.instr, 75, 72) @[BuildingBlock.scala 156:38]
    ALU64_32_13.io.opcode <= _ALU64_32_13_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[13].a <= ALU64_32_13.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[13].b <= ALU64_32_13.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_14.io.in_a <= io.d_in[14].a @[BuildingBlock.scala 154:25]
    ALU64_32_14.io.in_b <= io.d_in[14].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_14_io_opcode_T = bits(io.instr, 71, 68) @[BuildingBlock.scala 156:38]
    ALU64_32_14.io.opcode <= _ALU64_32_14_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[14].a <= ALU64_32_14.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[14].b <= ALU64_32_14.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_15.io.in_a <= io.d_in[15].a @[BuildingBlock.scala 154:25]
    ALU64_32_15.io.in_b <= io.d_in[15].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_15_io_opcode_T = bits(io.instr, 67, 64) @[BuildingBlock.scala 156:38]
    ALU64_32_15.io.opcode <= _ALU64_32_15_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[15].a <= ALU64_32_15.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[15].b <= ALU64_32_15.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_16.io.in_a <= io.d_in[16].a @[BuildingBlock.scala 154:25]
    ALU64_32_16.io.in_b <= io.d_in[16].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_16_io_opcode_T = bits(io.instr, 63, 60) @[BuildingBlock.scala 156:38]
    ALU64_32_16.io.opcode <= _ALU64_32_16_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[16].a <= ALU64_32_16.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[16].b <= ALU64_32_16.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_17.io.in_a <= io.d_in[17].a @[BuildingBlock.scala 154:25]
    ALU64_32_17.io.in_b <= io.d_in[17].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_17_io_opcode_T = bits(io.instr, 59, 56) @[BuildingBlock.scala 156:38]
    ALU64_32_17.io.opcode <= _ALU64_32_17_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[17].a <= ALU64_32_17.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[17].b <= ALU64_32_17.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_18.io.in_a <= io.d_in[18].a @[BuildingBlock.scala 154:25]
    ALU64_32_18.io.in_b <= io.d_in[18].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_18_io_opcode_T = bits(io.instr, 55, 52) @[BuildingBlock.scala 156:38]
    ALU64_32_18.io.opcode <= _ALU64_32_18_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[18].a <= ALU64_32_18.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[18].b <= ALU64_32_18.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_19.io.in_a <= io.d_in[19].a @[BuildingBlock.scala 154:25]
    ALU64_32_19.io.in_b <= io.d_in[19].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_19_io_opcode_T = bits(io.instr, 51, 48) @[BuildingBlock.scala 156:38]
    ALU64_32_19.io.opcode <= _ALU64_32_19_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[19].a <= ALU64_32_19.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[19].b <= ALU64_32_19.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_20.io.in_a <= io.d_in[20].a @[BuildingBlock.scala 154:25]
    ALU64_32_20.io.in_b <= io.d_in[20].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_20_io_opcode_T = bits(io.instr, 47, 44) @[BuildingBlock.scala 156:38]
    ALU64_32_20.io.opcode <= _ALU64_32_20_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[20].a <= ALU64_32_20.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[20].b <= ALU64_32_20.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_21.io.in_a <= io.d_in[21].a @[BuildingBlock.scala 154:25]
    ALU64_32_21.io.in_b <= io.d_in[21].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_21_io_opcode_T = bits(io.instr, 43, 40) @[BuildingBlock.scala 156:38]
    ALU64_32_21.io.opcode <= _ALU64_32_21_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[21].a <= ALU64_32_21.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[21].b <= ALU64_32_21.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_22.io.in_a <= io.d_in[22].a @[BuildingBlock.scala 154:25]
    ALU64_32_22.io.in_b <= io.d_in[22].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_22_io_opcode_T = bits(io.instr, 39, 36) @[BuildingBlock.scala 156:38]
    ALU64_32_22.io.opcode <= _ALU64_32_22_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[22].a <= ALU64_32_22.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[22].b <= ALU64_32_22.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_23.io.in_a <= io.d_in[23].a @[BuildingBlock.scala 154:25]
    ALU64_32_23.io.in_b <= io.d_in[23].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_23_io_opcode_T = bits(io.instr, 35, 32) @[BuildingBlock.scala 156:38]
    ALU64_32_23.io.opcode <= _ALU64_32_23_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[23].a <= ALU64_32_23.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[23].b <= ALU64_32_23.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_24.io.in_a <= io.d_in[24].a @[BuildingBlock.scala 154:25]
    ALU64_32_24.io.in_b <= io.d_in[24].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_24_io_opcode_T = bits(io.instr, 31, 28) @[BuildingBlock.scala 156:38]
    ALU64_32_24.io.opcode <= _ALU64_32_24_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[24].a <= ALU64_32_24.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[24].b <= ALU64_32_24.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_25.io.in_a <= io.d_in[25].a @[BuildingBlock.scala 154:25]
    ALU64_32_25.io.in_b <= io.d_in[25].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_25_io_opcode_T = bits(io.instr, 27, 24) @[BuildingBlock.scala 156:38]
    ALU64_32_25.io.opcode <= _ALU64_32_25_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[25].a <= ALU64_32_25.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[25].b <= ALU64_32_25.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_26.io.in_a <= io.d_in[26].a @[BuildingBlock.scala 154:25]
    ALU64_32_26.io.in_b <= io.d_in[26].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_26_io_opcode_T = bits(io.instr, 23, 20) @[BuildingBlock.scala 156:38]
    ALU64_32_26.io.opcode <= _ALU64_32_26_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[26].a <= ALU64_32_26.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[26].b <= ALU64_32_26.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_27.io.in_a <= io.d_in[27].a @[BuildingBlock.scala 154:25]
    ALU64_32_27.io.in_b <= io.d_in[27].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_27_io_opcode_T = bits(io.instr, 19, 16) @[BuildingBlock.scala 156:38]
    ALU64_32_27.io.opcode <= _ALU64_32_27_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[27].a <= ALU64_32_27.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[27].b <= ALU64_32_27.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_28.io.in_a <= io.d_in[28].a @[BuildingBlock.scala 154:25]
    ALU64_32_28.io.in_b <= io.d_in[28].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_28_io_opcode_T = bits(io.instr, 15, 12) @[BuildingBlock.scala 156:38]
    ALU64_32_28.io.opcode <= _ALU64_32_28_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[28].a <= ALU64_32_28.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[28].b <= ALU64_32_28.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_29.io.in_a <= io.d_in[29].a @[BuildingBlock.scala 154:25]
    ALU64_32_29.io.in_b <= io.d_in[29].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_29_io_opcode_T = bits(io.instr, 11, 8) @[BuildingBlock.scala 156:38]
    ALU64_32_29.io.opcode <= _ALU64_32_29_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[29].a <= ALU64_32_29.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[29].b <= ALU64_32_29.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_30.io.in_a <= io.d_in[30].a @[BuildingBlock.scala 154:25]
    ALU64_32_30.io.in_b <= io.d_in[30].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_30_io_opcode_T = bits(io.instr, 7, 4) @[BuildingBlock.scala 156:38]
    ALU64_32_30.io.opcode <= _ALU64_32_30_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[30].a <= ALU64_32_30.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[30].b <= ALU64_32_30.io.out_b @[BuildingBlock.scala 159:19]
    ALU64_32_31.io.in_a <= io.d_in[31].a @[BuildingBlock.scala 154:25]
    ALU64_32_31.io.in_b <= io.d_in[31].b @[BuildingBlock.scala 155:25]
    node _ALU64_32_31_io_opcode_T = bits(io.instr, 3, 0) @[BuildingBlock.scala 156:38]
    ALU64_32_31.io.opcode <= _ALU64_32_31_io_opcode_T @[BuildingBlock.scala 156:27]
    io.d_out[31].a <= ALU64_32_31.io.out_a @[BuildingBlock.scala 158:19]
    io.d_out[31].b <= ALU64_32_31.io.out_b @[BuildingBlock.scala 159:19]
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>, flip fw_top : UInt<64>, fw_bottom : UInt<64>, fw_right : UInt<64>, flip sel : UInt<1>}
    
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
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
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
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
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
    
  module CLOSingress1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in64 : UInt<64>[64], out64 : UInt<64>[64], flip ctrl : UInt<128>}
    
    inst ingress1_0 of CLOScell4 @[BuildingBlock.scala 32:52]
    ingress1_0.clock <= clock
    ingress1_0.reset <= reset
    inst ingress1_1 of CLOScell4_1 @[BuildingBlock.scala 32:52]
    ingress1_1.clock <= clock
    ingress1_1.reset <= reset
    inst ingress1_2 of CLOScell4_2 @[BuildingBlock.scala 32:52]
    ingress1_2.clock <= clock
    ingress1_2.reset <= reset
    inst ingress1_3 of CLOScell4_3 @[BuildingBlock.scala 32:52]
    ingress1_3.clock <= clock
    ingress1_3.reset <= reset
    inst ingress1_4 of CLOScell4_4 @[BuildingBlock.scala 32:52]
    ingress1_4.clock <= clock
    ingress1_4.reset <= reset
    inst ingress1_5 of CLOScell4_5 @[BuildingBlock.scala 32:52]
    ingress1_5.clock <= clock
    ingress1_5.reset <= reset
    inst ingress1_6 of CLOScell4_6 @[BuildingBlock.scala 32:52]
    ingress1_6.clock <= clock
    ingress1_6.reset <= reset
    inst ingress1_7 of CLOScell4_7 @[BuildingBlock.scala 32:52]
    ingress1_7.clock <= clock
    ingress1_7.reset <= reset
    inst ingress1_8 of CLOScell4_8 @[BuildingBlock.scala 32:52]
    ingress1_8.clock <= clock
    ingress1_8.reset <= reset
    inst ingress1_9 of CLOScell4_9 @[BuildingBlock.scala 32:52]
    ingress1_9.clock <= clock
    ingress1_9.reset <= reset
    inst ingress1_10 of CLOScell4_10 @[BuildingBlock.scala 32:52]
    ingress1_10.clock <= clock
    ingress1_10.reset <= reset
    inst ingress1_11 of CLOScell4_11 @[BuildingBlock.scala 32:52]
    ingress1_11.clock <= clock
    ingress1_11.reset <= reset
    inst ingress1_12 of CLOScell4_12 @[BuildingBlock.scala 32:52]
    ingress1_12.clock <= clock
    ingress1_12.reset <= reset
    inst ingress1_13 of CLOScell4_13 @[BuildingBlock.scala 32:52]
    ingress1_13.clock <= clock
    ingress1_13.reset <= reset
    inst ingress1_14 of CLOScell4_14 @[BuildingBlock.scala 32:52]
    ingress1_14.clock <= clock
    ingress1_14.reset <= reset
    inst ingress1_15 of CLOScell4_15 @[BuildingBlock.scala 32:52]
    ingress1_15.clock <= clock
    ingress1_15.reset <= reset
    reg ctrl_reg : UInt<128>, clock with : (reset => (reset, UInt<128>("h00"))) @[BuildingBlock.scala 33:25]
    ctrl_reg <= io.ctrl @[BuildingBlock.scala 34:12]
    ingress1_0.io.in4[0] <= io.in64[0] @[BuildingBlock.scala 39:29]
    io.out64[0] <= ingress1_0.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_0.io.in4[1] <= io.in64[1] @[BuildingBlock.scala 39:29]
    io.out64[16] <= ingress1_0.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_0.io.in4[2] <= io.in64[2] @[BuildingBlock.scala 39:29]
    io.out64[32] <= ingress1_0.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_0.io.in4[3] <= io.in64[3] @[BuildingBlock.scala 39:29]
    io.out64[48] <= ingress1_0.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_1.io.in4[0] <= io.in64[4] @[BuildingBlock.scala 39:29]
    io.out64[1] <= ingress1_1.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_1.io.in4[1] <= io.in64[5] @[BuildingBlock.scala 39:29]
    io.out64[17] <= ingress1_1.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_1.io.in4[2] <= io.in64[6] @[BuildingBlock.scala 39:29]
    io.out64[33] <= ingress1_1.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_1.io.in4[3] <= io.in64[7] @[BuildingBlock.scala 39:29]
    io.out64[49] <= ingress1_1.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_2.io.in4[0] <= io.in64[8] @[BuildingBlock.scala 39:29]
    io.out64[2] <= ingress1_2.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_2.io.in4[1] <= io.in64[9] @[BuildingBlock.scala 39:29]
    io.out64[18] <= ingress1_2.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_2.io.in4[2] <= io.in64[10] @[BuildingBlock.scala 39:29]
    io.out64[34] <= ingress1_2.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_2.io.in4[3] <= io.in64[11] @[BuildingBlock.scala 39:29]
    io.out64[50] <= ingress1_2.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_3.io.in4[0] <= io.in64[12] @[BuildingBlock.scala 39:29]
    io.out64[3] <= ingress1_3.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_3.io.in4[1] <= io.in64[13] @[BuildingBlock.scala 39:29]
    io.out64[19] <= ingress1_3.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_3.io.in4[2] <= io.in64[14] @[BuildingBlock.scala 39:29]
    io.out64[35] <= ingress1_3.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_3.io.in4[3] <= io.in64[15] @[BuildingBlock.scala 39:29]
    io.out64[51] <= ingress1_3.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_4.io.in4[0] <= io.in64[16] @[BuildingBlock.scala 39:29]
    io.out64[4] <= ingress1_4.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_4.io.in4[1] <= io.in64[17] @[BuildingBlock.scala 39:29]
    io.out64[20] <= ingress1_4.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_4.io.in4[2] <= io.in64[18] @[BuildingBlock.scala 39:29]
    io.out64[36] <= ingress1_4.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_4.io.in4[3] <= io.in64[19] @[BuildingBlock.scala 39:29]
    io.out64[52] <= ingress1_4.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_5.io.in4[0] <= io.in64[20] @[BuildingBlock.scala 39:29]
    io.out64[5] <= ingress1_5.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_5.io.in4[1] <= io.in64[21] @[BuildingBlock.scala 39:29]
    io.out64[21] <= ingress1_5.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_5.io.in4[2] <= io.in64[22] @[BuildingBlock.scala 39:29]
    io.out64[37] <= ingress1_5.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_5.io.in4[3] <= io.in64[23] @[BuildingBlock.scala 39:29]
    io.out64[53] <= ingress1_5.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_6.io.in4[0] <= io.in64[24] @[BuildingBlock.scala 39:29]
    io.out64[6] <= ingress1_6.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_6.io.in4[1] <= io.in64[25] @[BuildingBlock.scala 39:29]
    io.out64[22] <= ingress1_6.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_6.io.in4[2] <= io.in64[26] @[BuildingBlock.scala 39:29]
    io.out64[38] <= ingress1_6.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_6.io.in4[3] <= io.in64[27] @[BuildingBlock.scala 39:29]
    io.out64[54] <= ingress1_6.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_7.io.in4[0] <= io.in64[28] @[BuildingBlock.scala 39:29]
    io.out64[7] <= ingress1_7.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_7.io.in4[1] <= io.in64[29] @[BuildingBlock.scala 39:29]
    io.out64[23] <= ingress1_7.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_7.io.in4[2] <= io.in64[30] @[BuildingBlock.scala 39:29]
    io.out64[39] <= ingress1_7.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_7.io.in4[3] <= io.in64[31] @[BuildingBlock.scala 39:29]
    io.out64[55] <= ingress1_7.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_8.io.in4[0] <= io.in64[32] @[BuildingBlock.scala 39:29]
    io.out64[8] <= ingress1_8.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_8.io.in4[1] <= io.in64[33] @[BuildingBlock.scala 39:29]
    io.out64[24] <= ingress1_8.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_8.io.in4[2] <= io.in64[34] @[BuildingBlock.scala 39:29]
    io.out64[40] <= ingress1_8.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_8.io.in4[3] <= io.in64[35] @[BuildingBlock.scala 39:29]
    io.out64[56] <= ingress1_8.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_9.io.in4[0] <= io.in64[36] @[BuildingBlock.scala 39:29]
    io.out64[9] <= ingress1_9.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_9.io.in4[1] <= io.in64[37] @[BuildingBlock.scala 39:29]
    io.out64[25] <= ingress1_9.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_9.io.in4[2] <= io.in64[38] @[BuildingBlock.scala 39:29]
    io.out64[41] <= ingress1_9.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_9.io.in4[3] <= io.in64[39] @[BuildingBlock.scala 39:29]
    io.out64[57] <= ingress1_9.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_10.io.in4[0] <= io.in64[40] @[BuildingBlock.scala 39:29]
    io.out64[10] <= ingress1_10.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_10.io.in4[1] <= io.in64[41] @[BuildingBlock.scala 39:29]
    io.out64[26] <= ingress1_10.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_10.io.in4[2] <= io.in64[42] @[BuildingBlock.scala 39:29]
    io.out64[42] <= ingress1_10.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_10.io.in4[3] <= io.in64[43] @[BuildingBlock.scala 39:29]
    io.out64[58] <= ingress1_10.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_11.io.in4[0] <= io.in64[44] @[BuildingBlock.scala 39:29]
    io.out64[11] <= ingress1_11.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_11.io.in4[1] <= io.in64[45] @[BuildingBlock.scala 39:29]
    io.out64[27] <= ingress1_11.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_11.io.in4[2] <= io.in64[46] @[BuildingBlock.scala 39:29]
    io.out64[43] <= ingress1_11.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_11.io.in4[3] <= io.in64[47] @[BuildingBlock.scala 39:29]
    io.out64[59] <= ingress1_11.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_12.io.in4[0] <= io.in64[48] @[BuildingBlock.scala 39:29]
    io.out64[12] <= ingress1_12.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_12.io.in4[1] <= io.in64[49] @[BuildingBlock.scala 39:29]
    io.out64[28] <= ingress1_12.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_12.io.in4[2] <= io.in64[50] @[BuildingBlock.scala 39:29]
    io.out64[44] <= ingress1_12.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_12.io.in4[3] <= io.in64[51] @[BuildingBlock.scala 39:29]
    io.out64[60] <= ingress1_12.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_13.io.in4[0] <= io.in64[52] @[BuildingBlock.scala 39:29]
    io.out64[13] <= ingress1_13.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_13.io.in4[1] <= io.in64[53] @[BuildingBlock.scala 39:29]
    io.out64[29] <= ingress1_13.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_13.io.in4[2] <= io.in64[54] @[BuildingBlock.scala 39:29]
    io.out64[45] <= ingress1_13.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_13.io.in4[3] <= io.in64[55] @[BuildingBlock.scala 39:29]
    io.out64[61] <= ingress1_13.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_14.io.in4[0] <= io.in64[56] @[BuildingBlock.scala 39:29]
    io.out64[14] <= ingress1_14.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_14.io.in4[1] <= io.in64[57] @[BuildingBlock.scala 39:29]
    io.out64[30] <= ingress1_14.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_14.io.in4[2] <= io.in64[58] @[BuildingBlock.scala 39:29]
    io.out64[46] <= ingress1_14.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_14.io.in4[3] <= io.in64[59] @[BuildingBlock.scala 39:29]
    io.out64[62] <= ingress1_14.io.out4[3] @[BuildingBlock.scala 40:24]
    ingress1_15.io.in4[0] <= io.in64[60] @[BuildingBlock.scala 39:29]
    io.out64[15] <= ingress1_15.io.out4[0] @[BuildingBlock.scala 40:24]
    ingress1_15.io.in4[1] <= io.in64[61] @[BuildingBlock.scala 39:29]
    io.out64[31] <= ingress1_15.io.out4[1] @[BuildingBlock.scala 40:24]
    ingress1_15.io.in4[2] <= io.in64[62] @[BuildingBlock.scala 39:29]
    io.out64[47] <= ingress1_15.io.out4[2] @[BuildingBlock.scala 40:24]
    ingress1_15.io.in4[3] <= io.in64[63] @[BuildingBlock.scala 39:29]
    io.out64[63] <= ingress1_15.io.out4[3] @[BuildingBlock.scala 40:24]
    node _ingress1_0_io_ctrl_T = bits(ctrl_reg, 127, 120) @[BuildingBlock.scala 44:36]
    ingress1_0.io.ctrl <= _ingress1_0_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_1_io_ctrl_T = bits(ctrl_reg, 119, 112) @[BuildingBlock.scala 44:36]
    ingress1_1.io.ctrl <= _ingress1_1_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_2_io_ctrl_T = bits(ctrl_reg, 111, 104) @[BuildingBlock.scala 44:36]
    ingress1_2.io.ctrl <= _ingress1_2_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_3_io_ctrl_T = bits(ctrl_reg, 103, 96) @[BuildingBlock.scala 44:36]
    ingress1_3.io.ctrl <= _ingress1_3_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_4_io_ctrl_T = bits(ctrl_reg, 95, 88) @[BuildingBlock.scala 44:36]
    ingress1_4.io.ctrl <= _ingress1_4_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_5_io_ctrl_T = bits(ctrl_reg, 87, 80) @[BuildingBlock.scala 44:36]
    ingress1_5.io.ctrl <= _ingress1_5_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_6_io_ctrl_T = bits(ctrl_reg, 79, 72) @[BuildingBlock.scala 44:36]
    ingress1_6.io.ctrl <= _ingress1_6_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_7_io_ctrl_T = bits(ctrl_reg, 71, 64) @[BuildingBlock.scala 44:36]
    ingress1_7.io.ctrl <= _ingress1_7_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_8_io_ctrl_T = bits(ctrl_reg, 63, 56) @[BuildingBlock.scala 44:36]
    ingress1_8.io.ctrl <= _ingress1_8_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_9_io_ctrl_T = bits(ctrl_reg, 55, 48) @[BuildingBlock.scala 44:36]
    ingress1_9.io.ctrl <= _ingress1_9_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_10_io_ctrl_T = bits(ctrl_reg, 47, 40) @[BuildingBlock.scala 44:36]
    ingress1_10.io.ctrl <= _ingress1_10_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_11_io_ctrl_T = bits(ctrl_reg, 39, 32) @[BuildingBlock.scala 44:36]
    ingress1_11.io.ctrl <= _ingress1_11_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_12_io_ctrl_T = bits(ctrl_reg, 31, 24) @[BuildingBlock.scala 44:36]
    ingress1_12.io.ctrl <= _ingress1_12_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_13_io_ctrl_T = bits(ctrl_reg, 23, 16) @[BuildingBlock.scala 44:36]
    ingress1_13.io.ctrl <= _ingress1_13_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_14_io_ctrl_T = bits(ctrl_reg, 15, 8) @[BuildingBlock.scala 44:36]
    ingress1_14.io.ctrl <= _ingress1_14_io_ctrl_T @[BuildingBlock.scala 44:25]
    node _ingress1_15_io_ctrl_T = bits(ctrl_reg, 7, 0) @[BuildingBlock.scala 44:36]
    ingress1_15.io.ctrl <= _ingress1_15_io_ctrl_T @[BuildingBlock.scala 44:25]
    
  module CrossBarCell_256 : 
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
    
  module CrossBarCell_257 : 
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
    
  module CrossBarCell_258 : 
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
    
  module CrossBarCell_259 : 
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
    
  module CrossBarCell_260 : 
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
    
  module CrossBarCell_261 : 
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
    
  module CrossBarCell_262 : 
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
    
  module CrossBarCell_263 : 
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
    
  module CrossBarCell_264 : 
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
    
  module CrossBarCell_265 : 
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
    
  module CrossBarCell_266 : 
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
    
  module CrossBarCell_267 : 
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
    
  module CrossBarCell_268 : 
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
    
  module CrossBarCell_269 : 
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
    
  module CrossBarCell_270 : 
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
    
  module CrossBarCell_271 : 
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
    
  module CrossBarSwitch_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_256 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_257 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_258 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_259 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_260 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_261 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_262 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_263 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_264 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_265 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_266 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_267 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_268 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_269 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_270 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_271 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_16 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_272 : 
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
    
  module CrossBarCell_273 : 
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
    
  module CrossBarCell_274 : 
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
    
  module CrossBarCell_275 : 
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
    
  module CrossBarCell_276 : 
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
    
  module CrossBarCell_277 : 
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
    
  module CrossBarCell_278 : 
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
    
  module CrossBarCell_279 : 
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
    
  module CrossBarCell_280 : 
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
    
  module CrossBarCell_281 : 
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
    
  module CrossBarCell_282 : 
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
    
  module CrossBarCell_283 : 
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
    
  module CrossBarCell_284 : 
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
    
  module CrossBarCell_285 : 
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
    
  module CrossBarCell_286 : 
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
    
  module CrossBarCell_287 : 
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
    
  module CrossBarSwitch_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_272 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_273 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_274 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_275 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_276 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_277 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_278 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_279 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_280 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_281 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_282 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_283 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_284 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_285 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_286 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_287 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_17 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_288 : 
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
    
  module CrossBarCell_289 : 
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
    
  module CrossBarCell_290 : 
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
    
  module CrossBarCell_291 : 
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
    
  module CrossBarCell_292 : 
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
    
  module CrossBarCell_293 : 
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
    
  module CrossBarCell_294 : 
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
    
  module CrossBarCell_295 : 
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
    
  module CrossBarCell_296 : 
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
    
  module CrossBarCell_297 : 
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
    
  module CrossBarCell_298 : 
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
    
  module CrossBarCell_299 : 
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
    
  module CrossBarCell_300 : 
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
    
  module CrossBarCell_301 : 
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
    
  module CrossBarCell_302 : 
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
    
  module CrossBarCell_303 : 
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
    
  module CrossBarSwitch_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_288 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_289 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_290 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_291 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_292 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_293 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_294 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_295 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_296 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_297 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_298 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_299 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_300 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_301 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_302 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_303 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_18 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_304 : 
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
    
  module CrossBarCell_305 : 
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
    
  module CrossBarCell_306 : 
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
    
  module CrossBarCell_307 : 
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
    
  module CrossBarCell_308 : 
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
    
  module CrossBarCell_309 : 
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
    
  module CrossBarCell_310 : 
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
    
  module CrossBarCell_311 : 
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
    
  module CrossBarCell_312 : 
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
    
  module CrossBarCell_313 : 
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
    
  module CrossBarCell_314 : 
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
    
  module CrossBarCell_315 : 
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
    
  module CrossBarCell_316 : 
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
    
  module CrossBarCell_317 : 
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
    
  module CrossBarCell_318 : 
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
    
  module CrossBarCell_319 : 
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
    
  module CrossBarSwitch_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_304 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_305 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_306 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_307 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_308 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_309 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_310 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_311 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_312 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_313 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_314 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_315 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_316 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_317 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_318 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_319 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_19 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_320 : 
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
    
  module CrossBarCell_321 : 
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
    
  module CrossBarCell_322 : 
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
    
  module CrossBarCell_323 : 
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
    
  module CrossBarCell_324 : 
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
    
  module CrossBarCell_325 : 
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
    
  module CrossBarCell_326 : 
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
    
  module CrossBarCell_327 : 
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
    
  module CrossBarCell_328 : 
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
    
  module CrossBarCell_329 : 
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
    
  module CrossBarCell_330 : 
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
    
  module CrossBarCell_331 : 
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
    
  module CrossBarCell_332 : 
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
    
  module CrossBarCell_333 : 
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
    
  module CrossBarCell_334 : 
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
    
  module CrossBarCell_335 : 
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
    
  module CrossBarSwitch_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_320 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_321 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_322 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_323 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_324 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_325 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_326 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_327 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_328 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_329 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_330 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_331 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_332 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_333 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_334 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_335 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_20 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_336 : 
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
    
  module CrossBarCell_337 : 
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
    
  module CrossBarCell_338 : 
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
    
  module CrossBarCell_339 : 
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
    
  module CrossBarCell_340 : 
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
    
  module CrossBarCell_341 : 
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
    
  module CrossBarCell_342 : 
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
    
  module CrossBarCell_343 : 
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
    
  module CrossBarCell_344 : 
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
    
  module CrossBarCell_345 : 
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
    
  module CrossBarCell_346 : 
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
    
  module CrossBarCell_347 : 
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
    
  module CrossBarCell_348 : 
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
    
  module CrossBarCell_349 : 
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
    
  module CrossBarCell_350 : 
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
    
  module CrossBarCell_351 : 
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
    
  module CrossBarSwitch_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_336 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_337 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_338 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_339 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_340 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_341 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_342 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_343 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_344 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_345 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_346 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_347 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_348 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_349 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_350 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_351 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_21 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_352 : 
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
    
  module CrossBarCell_353 : 
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
    
  module CrossBarCell_354 : 
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
    
  module CrossBarCell_355 : 
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
    
  module CrossBarCell_356 : 
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
    
  module CrossBarCell_357 : 
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
    
  module CrossBarCell_358 : 
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
    
  module CrossBarCell_359 : 
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
    
  module CrossBarCell_360 : 
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
    
  module CrossBarCell_361 : 
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
    
  module CrossBarCell_362 : 
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
    
  module CrossBarCell_363 : 
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
    
  module CrossBarCell_364 : 
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
    
  module CrossBarCell_365 : 
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
    
  module CrossBarCell_366 : 
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
    
  module CrossBarCell_367 : 
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
    
  module CrossBarSwitch_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_352 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_353 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_354 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_355 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_356 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_357 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_358 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_359 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_360 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_361 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_362 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_363 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_364 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_365 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_366 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_367 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_22 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_368 : 
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
    
  module CrossBarCell_369 : 
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
    
  module CrossBarCell_370 : 
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
    
  module CrossBarCell_371 : 
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
    
  module CrossBarCell_372 : 
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
    
  module CrossBarCell_373 : 
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
    
  module CrossBarCell_374 : 
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
    
  module CrossBarCell_375 : 
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
    
  module CrossBarCell_376 : 
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
    
  module CrossBarCell_377 : 
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
    
  module CrossBarCell_378 : 
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
    
  module CrossBarCell_379 : 
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
    
  module CrossBarCell_380 : 
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
    
  module CrossBarCell_381 : 
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
    
  module CrossBarCell_382 : 
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
    
  module CrossBarCell_383 : 
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
    
  module CrossBarSwitch_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_368 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_369 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_370 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_371 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_372 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_373 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_374 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_375 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_376 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_377 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_378 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_379 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_380 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_381 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_382 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_383 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_23 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_384 : 
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
    
  module CrossBarCell_385 : 
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
    
  module CrossBarCell_386 : 
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
    
  module CrossBarCell_387 : 
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
    
  module CrossBarCell_388 : 
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
    
  module CrossBarCell_389 : 
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
    
  module CrossBarCell_390 : 
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
    
  module CrossBarCell_391 : 
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
    
  module CrossBarCell_392 : 
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
    
  module CrossBarCell_393 : 
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
    
  module CrossBarCell_394 : 
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
    
  module CrossBarCell_395 : 
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
    
  module CrossBarCell_396 : 
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
    
  module CrossBarCell_397 : 
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
    
  module CrossBarCell_398 : 
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
    
  module CrossBarCell_399 : 
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
    
  module CrossBarSwitch_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_384 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_385 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_386 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_387 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_388 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_389 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_390 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_391 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_392 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_393 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_394 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_395 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_396 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_397 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_398 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_399 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_24 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_400 : 
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
    
  module CrossBarCell_401 : 
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
    
  module CrossBarCell_402 : 
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
    
  module CrossBarCell_403 : 
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
    
  module CrossBarCell_404 : 
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
    
  module CrossBarCell_405 : 
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
    
  module CrossBarCell_406 : 
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
    
  module CrossBarCell_407 : 
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
    
  module CrossBarCell_408 : 
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
    
  module CrossBarCell_409 : 
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
    
  module CrossBarCell_410 : 
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
    
  module CrossBarCell_411 : 
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
    
  module CrossBarCell_412 : 
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
    
  module CrossBarCell_413 : 
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
    
  module CrossBarCell_414 : 
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
    
  module CrossBarCell_415 : 
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
    
  module CrossBarSwitch_25 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_400 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_401 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_402 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_403 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_404 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_405 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_406 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_407 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_408 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_409 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_410 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_411 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_412 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_413 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_414 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_415 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_25 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_25 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_416 : 
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
    
  module CrossBarCell_417 : 
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
    
  module CrossBarCell_418 : 
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
    
  module CrossBarCell_419 : 
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
    
  module CrossBarCell_420 : 
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
    
  module CrossBarCell_421 : 
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
    
  module CrossBarCell_422 : 
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
    
  module CrossBarCell_423 : 
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
    
  module CrossBarCell_424 : 
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
    
  module CrossBarCell_425 : 
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
    
  module CrossBarCell_426 : 
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
    
  module CrossBarCell_427 : 
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
    
  module CrossBarCell_428 : 
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
    
  module CrossBarCell_429 : 
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
    
  module CrossBarCell_430 : 
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
    
  module CrossBarCell_431 : 
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
    
  module CrossBarSwitch_26 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_416 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_417 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_418 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_419 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_420 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_421 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_422 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_423 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_424 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_425 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_426 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_427 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_428 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_429 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_430 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_431 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_26 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_26 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_432 : 
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
    
  module CrossBarCell_433 : 
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
    
  module CrossBarCell_434 : 
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
    
  module CrossBarCell_435 : 
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
    
  module CrossBarCell_436 : 
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
    
  module CrossBarCell_437 : 
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
    
  module CrossBarCell_438 : 
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
    
  module CrossBarCell_439 : 
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
    
  module CrossBarCell_440 : 
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
    
  module CrossBarCell_441 : 
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
    
  module CrossBarCell_442 : 
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
    
  module CrossBarCell_443 : 
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
    
  module CrossBarCell_444 : 
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
    
  module CrossBarCell_445 : 
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
    
  module CrossBarCell_446 : 
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
    
  module CrossBarCell_447 : 
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
    
  module CrossBarSwitch_27 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_432 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_433 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_434 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_435 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_436 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_437 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_438 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_439 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_440 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_441 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_442 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_443 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_444 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_445 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_446 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_447 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_27 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_27 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_448 : 
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
    
  module CrossBarCell_449 : 
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
    
  module CrossBarCell_450 : 
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
    
  module CrossBarCell_451 : 
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
    
  module CrossBarCell_452 : 
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
    
  module CrossBarCell_453 : 
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
    
  module CrossBarCell_454 : 
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
    
  module CrossBarCell_455 : 
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
    
  module CrossBarCell_456 : 
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
    
  module CrossBarCell_457 : 
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
    
  module CrossBarCell_458 : 
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
    
  module CrossBarCell_459 : 
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
    
  module CrossBarCell_460 : 
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
    
  module CrossBarCell_461 : 
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
    
  module CrossBarCell_462 : 
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
    
  module CrossBarCell_463 : 
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
    
  module CrossBarSwitch_28 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_448 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_449 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_450 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_451 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_452 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_453 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_454 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_455 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_456 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_457 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_458 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_459 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_460 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_461 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_462 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_463 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_28 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_28 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_464 : 
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
    
  module CrossBarCell_465 : 
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
    
  module CrossBarCell_466 : 
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
    
  module CrossBarCell_467 : 
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
    
  module CrossBarCell_468 : 
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
    
  module CrossBarCell_469 : 
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
    
  module CrossBarCell_470 : 
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
    
  module CrossBarCell_471 : 
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
    
  module CrossBarCell_472 : 
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
    
  module CrossBarCell_473 : 
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
    
  module CrossBarCell_474 : 
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
    
  module CrossBarCell_475 : 
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
    
  module CrossBarCell_476 : 
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
    
  module CrossBarCell_477 : 
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
    
  module CrossBarCell_478 : 
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
    
  module CrossBarCell_479 : 
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
    
  module CrossBarSwitch_29 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_464 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_465 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_466 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_467 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_468 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_469 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_470 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_471 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_472 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_473 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_474 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_475 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_476 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_477 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_478 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_479 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_29 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_29 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_480 : 
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
    
  module CrossBarCell_481 : 
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
    
  module CrossBarCell_482 : 
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
    
  module CrossBarCell_483 : 
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
    
  module CrossBarCell_484 : 
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
    
  module CrossBarCell_485 : 
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
    
  module CrossBarCell_486 : 
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
    
  module CrossBarCell_487 : 
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
    
  module CrossBarCell_488 : 
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
    
  module CrossBarCell_489 : 
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
    
  module CrossBarCell_490 : 
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
    
  module CrossBarCell_491 : 
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
    
  module CrossBarCell_492 : 
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
    
  module CrossBarCell_493 : 
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
    
  module CrossBarCell_494 : 
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
    
  module CrossBarCell_495 : 
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
    
  module CrossBarSwitch_30 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_480 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_481 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_482 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_483 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_484 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_485 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_486 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_487 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_488 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_489 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_490 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_491 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_492 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_493 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_494 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_495 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_30 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_30 @[BuildingBlock.scala 17:21]
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
    
  module CrossBarCell_496 : 
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
    
  module CrossBarCell_497 : 
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
    
  module CrossBarCell_498 : 
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
    
  module CrossBarCell_499 : 
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
    
  module CrossBarCell_500 : 
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
    
  module CrossBarCell_501 : 
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
    
  module CrossBarCell_502 : 
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
    
  module CrossBarCell_503 : 
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
    
  module CrossBarCell_504 : 
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
    
  module CrossBarCell_505 : 
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
    
  module CrossBarCell_506 : 
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
    
  module CrossBarCell_507 : 
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
    
  module CrossBarCell_508 : 
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
    
  module CrossBarCell_509 : 
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
    
  module CrossBarCell_510 : 
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
    
  module CrossBarCell_511 : 
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
    
  module CrossBarSwitch_31 : 
    input clock : Clock
    input reset : Reset
    output io : {flip fw_left : UInt<64>[4], fw_bottom : UInt<64>[4], flip select : UInt<2>[4]}
    
    reg fw_left_reg : UInt<64>[4], clock @[CrossBarSwitch.scala 33:28]
    fw_left_reg[0] <= io.fw_left[0] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[1] <= io.fw_left[1] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[2] <= io.fw_left[2] @[CrossBarSwitch.scala 33:28]
    fw_left_reg[3] <= io.fw_left[3] @[CrossBarSwitch.scala 33:28]
    inst cells_2d_0 of CrossBarCell_496 @[CrossBarSwitch.scala 37:53]
    cells_2d_0.clock <= clock
    cells_2d_0.reset <= reset
    inst cells_2d_1 of CrossBarCell_497 @[CrossBarSwitch.scala 37:53]
    cells_2d_1.clock <= clock
    cells_2d_1.reset <= reset
    inst cells_2d_2 of CrossBarCell_498 @[CrossBarSwitch.scala 37:53]
    cells_2d_2.clock <= clock
    cells_2d_2.reset <= reset
    inst cells_2d_3 of CrossBarCell_499 @[CrossBarSwitch.scala 37:53]
    cells_2d_3.clock <= clock
    cells_2d_3.reset <= reset
    inst cells_2d_4 of CrossBarCell_500 @[CrossBarSwitch.scala 37:53]
    cells_2d_4.clock <= clock
    cells_2d_4.reset <= reset
    inst cells_2d_5 of CrossBarCell_501 @[CrossBarSwitch.scala 37:53]
    cells_2d_5.clock <= clock
    cells_2d_5.reset <= reset
    inst cells_2d_6 of CrossBarCell_502 @[CrossBarSwitch.scala 37:53]
    cells_2d_6.clock <= clock
    cells_2d_6.reset <= reset
    inst cells_2d_7 of CrossBarCell_503 @[CrossBarSwitch.scala 37:53]
    cells_2d_7.clock <= clock
    cells_2d_7.reset <= reset
    inst cells_2d_8 of CrossBarCell_504 @[CrossBarSwitch.scala 37:53]
    cells_2d_8.clock <= clock
    cells_2d_8.reset <= reset
    inst cells_2d_9 of CrossBarCell_505 @[CrossBarSwitch.scala 37:53]
    cells_2d_9.clock <= clock
    cells_2d_9.reset <= reset
    inst cells_2d_10 of CrossBarCell_506 @[CrossBarSwitch.scala 37:53]
    cells_2d_10.clock <= clock
    cells_2d_10.reset <= reset
    inst cells_2d_11 of CrossBarCell_507 @[CrossBarSwitch.scala 37:53]
    cells_2d_11.clock <= clock
    cells_2d_11.reset <= reset
    inst cells_2d_12 of CrossBarCell_508 @[CrossBarSwitch.scala 37:53]
    cells_2d_12.clock <= clock
    cells_2d_12.reset <= reset
    inst cells_2d_13 of CrossBarCell_509 @[CrossBarSwitch.scala 37:53]
    cells_2d_13.clock <= clock
    cells_2d_13.reset <= reset
    inst cells_2d_14 of CrossBarCell_510 @[CrossBarSwitch.scala 37:53]
    cells_2d_14.clock <= clock
    cells_2d_14.reset <= reset
    inst cells_2d_15 of CrossBarCell_511 @[CrossBarSwitch.scala 37:53]
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
    
  module CLOScell4_31 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in4 : UInt<64>[4], out4 : UInt<64>[4], flip ctrl : UInt<8>}
    
    inst CrossBarSwitch of CrossBarSwitch_31 @[BuildingBlock.scala 17:21]
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
    
  module CLOSingress2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in64 : UInt<64>[64], out64 : UInt<64>[64], flip ctrl : UInt<128>}
    
    inst ingress2_0 of CLOScell4_16 @[BuildingBlock.scala 54:52]
    ingress2_0.clock <= clock
    ingress2_0.reset <= reset
    inst ingress2_1 of CLOScell4_17 @[BuildingBlock.scala 54:52]
    ingress2_1.clock <= clock
    ingress2_1.reset <= reset
    inst ingress2_2 of CLOScell4_18 @[BuildingBlock.scala 54:52]
    ingress2_2.clock <= clock
    ingress2_2.reset <= reset
    inst ingress2_3 of CLOScell4_19 @[BuildingBlock.scala 54:52]
    ingress2_3.clock <= clock
    ingress2_3.reset <= reset
    inst ingress2_4 of CLOScell4_20 @[BuildingBlock.scala 54:52]
    ingress2_4.clock <= clock
    ingress2_4.reset <= reset
    inst ingress2_5 of CLOScell4_21 @[BuildingBlock.scala 54:52]
    ingress2_5.clock <= clock
    ingress2_5.reset <= reset
    inst ingress2_6 of CLOScell4_22 @[BuildingBlock.scala 54:52]
    ingress2_6.clock <= clock
    ingress2_6.reset <= reset
    inst ingress2_7 of CLOScell4_23 @[BuildingBlock.scala 54:52]
    ingress2_7.clock <= clock
    ingress2_7.reset <= reset
    inst ingress2_8 of CLOScell4_24 @[BuildingBlock.scala 54:52]
    ingress2_8.clock <= clock
    ingress2_8.reset <= reset
    inst ingress2_9 of CLOScell4_25 @[BuildingBlock.scala 54:52]
    ingress2_9.clock <= clock
    ingress2_9.reset <= reset
    inst ingress2_10 of CLOScell4_26 @[BuildingBlock.scala 54:52]
    ingress2_10.clock <= clock
    ingress2_10.reset <= reset
    inst ingress2_11 of CLOScell4_27 @[BuildingBlock.scala 54:52]
    ingress2_11.clock <= clock
    ingress2_11.reset <= reset
    inst ingress2_12 of CLOScell4_28 @[BuildingBlock.scala 54:52]
    ingress2_12.clock <= clock
    ingress2_12.reset <= reset
    inst ingress2_13 of CLOScell4_29 @[BuildingBlock.scala 54:52]
    ingress2_13.clock <= clock
    ingress2_13.reset <= reset
    inst ingress2_14 of CLOScell4_30 @[BuildingBlock.scala 54:52]
    ingress2_14.clock <= clock
    ingress2_14.reset <= reset
    inst ingress2_15 of CLOScell4_31 @[BuildingBlock.scala 54:52]
    ingress2_15.clock <= clock
    ingress2_15.reset <= reset
    reg ctrl_reg : UInt<128>, clock with : (reset => (reset, UInt<128>("h00"))) @[BuildingBlock.scala 55:25]
    ctrl_reg <= io.ctrl @[BuildingBlock.scala 56:12]
    ingress2_0.io.in4[0] <= io.in64[0] @[BuildingBlock.scala 62:35]
    io.out64[0] <= ingress2_0.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_0.io.in4[1] <= io.in64[1] @[BuildingBlock.scala 62:35]
    io.out64[4] <= ingress2_0.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_0.io.in4[2] <= io.in64[2] @[BuildingBlock.scala 62:35]
    io.out64[8] <= ingress2_0.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_0.io.in4[3] <= io.in64[3] @[BuildingBlock.scala 62:35]
    io.out64[12] <= ingress2_0.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_1.io.in4[0] <= io.in64[4] @[BuildingBlock.scala 62:35]
    io.out64[1] <= ingress2_1.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_1.io.in4[1] <= io.in64[5] @[BuildingBlock.scala 62:35]
    io.out64[5] <= ingress2_1.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_1.io.in4[2] <= io.in64[6] @[BuildingBlock.scala 62:35]
    io.out64[9] <= ingress2_1.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_1.io.in4[3] <= io.in64[7] @[BuildingBlock.scala 62:35]
    io.out64[13] <= ingress2_1.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_2.io.in4[0] <= io.in64[8] @[BuildingBlock.scala 62:35]
    io.out64[2] <= ingress2_2.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_2.io.in4[1] <= io.in64[9] @[BuildingBlock.scala 62:35]
    io.out64[6] <= ingress2_2.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_2.io.in4[2] <= io.in64[10] @[BuildingBlock.scala 62:35]
    io.out64[10] <= ingress2_2.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_2.io.in4[3] <= io.in64[11] @[BuildingBlock.scala 62:35]
    io.out64[14] <= ingress2_2.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_3.io.in4[0] <= io.in64[12] @[BuildingBlock.scala 62:35]
    io.out64[3] <= ingress2_3.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_3.io.in4[1] <= io.in64[13] @[BuildingBlock.scala 62:35]
    io.out64[7] <= ingress2_3.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_3.io.in4[2] <= io.in64[14] @[BuildingBlock.scala 62:35]
    io.out64[11] <= ingress2_3.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_3.io.in4[3] <= io.in64[15] @[BuildingBlock.scala 62:35]
    io.out64[15] <= ingress2_3.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_4.io.in4[0] <= io.in64[16] @[BuildingBlock.scala 62:35]
    io.out64[16] <= ingress2_4.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_4.io.in4[1] <= io.in64[17] @[BuildingBlock.scala 62:35]
    io.out64[20] <= ingress2_4.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_4.io.in4[2] <= io.in64[18] @[BuildingBlock.scala 62:35]
    io.out64[24] <= ingress2_4.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_4.io.in4[3] <= io.in64[19] @[BuildingBlock.scala 62:35]
    io.out64[28] <= ingress2_4.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_5.io.in4[0] <= io.in64[20] @[BuildingBlock.scala 62:35]
    io.out64[17] <= ingress2_5.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_5.io.in4[1] <= io.in64[21] @[BuildingBlock.scala 62:35]
    io.out64[21] <= ingress2_5.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_5.io.in4[2] <= io.in64[22] @[BuildingBlock.scala 62:35]
    io.out64[25] <= ingress2_5.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_5.io.in4[3] <= io.in64[23] @[BuildingBlock.scala 62:35]
    io.out64[29] <= ingress2_5.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_6.io.in4[0] <= io.in64[24] @[BuildingBlock.scala 62:35]
    io.out64[18] <= ingress2_6.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_6.io.in4[1] <= io.in64[25] @[BuildingBlock.scala 62:35]
    io.out64[22] <= ingress2_6.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_6.io.in4[2] <= io.in64[26] @[BuildingBlock.scala 62:35]
    io.out64[26] <= ingress2_6.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_6.io.in4[3] <= io.in64[27] @[BuildingBlock.scala 62:35]
    io.out64[30] <= ingress2_6.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_7.io.in4[0] <= io.in64[28] @[BuildingBlock.scala 62:35]
    io.out64[19] <= ingress2_7.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_7.io.in4[1] <= io.in64[29] @[BuildingBlock.scala 62:35]
    io.out64[23] <= ingress2_7.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_7.io.in4[2] <= io.in64[30] @[BuildingBlock.scala 62:35]
    io.out64[27] <= ingress2_7.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_7.io.in4[3] <= io.in64[31] @[BuildingBlock.scala 62:35]
    io.out64[31] <= ingress2_7.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_8.io.in4[0] <= io.in64[32] @[BuildingBlock.scala 62:35]
    io.out64[32] <= ingress2_8.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_8.io.in4[1] <= io.in64[33] @[BuildingBlock.scala 62:35]
    io.out64[36] <= ingress2_8.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_8.io.in4[2] <= io.in64[34] @[BuildingBlock.scala 62:35]
    io.out64[40] <= ingress2_8.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_8.io.in4[3] <= io.in64[35] @[BuildingBlock.scala 62:35]
    io.out64[44] <= ingress2_8.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_9.io.in4[0] <= io.in64[36] @[BuildingBlock.scala 62:35]
    io.out64[33] <= ingress2_9.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_9.io.in4[1] <= io.in64[37] @[BuildingBlock.scala 62:35]
    io.out64[37] <= ingress2_9.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_9.io.in4[2] <= io.in64[38] @[BuildingBlock.scala 62:35]
    io.out64[41] <= ingress2_9.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_9.io.in4[3] <= io.in64[39] @[BuildingBlock.scala 62:35]
    io.out64[45] <= ingress2_9.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_10.io.in4[0] <= io.in64[40] @[BuildingBlock.scala 62:35]
    io.out64[34] <= ingress2_10.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_10.io.in4[1] <= io.in64[41] @[BuildingBlock.scala 62:35]
    io.out64[38] <= ingress2_10.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_10.io.in4[2] <= io.in64[42] @[BuildingBlock.scala 62:35]
    io.out64[42] <= ingress2_10.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_10.io.in4[3] <= io.in64[43] @[BuildingBlock.scala 62:35]
    io.out64[46] <= ingress2_10.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_11.io.in4[0] <= io.in64[44] @[BuildingBlock.scala 62:35]
    io.out64[35] <= ingress2_11.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_11.io.in4[1] <= io.in64[45] @[BuildingBlock.scala 62:35]
    io.out64[39] <= ingress2_11.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_11.io.in4[2] <= io.in64[46] @[BuildingBlock.scala 62:35]
    io.out64[43] <= ingress2_11.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_11.io.in4[3] <= io.in64[47] @[BuildingBlock.scala 62:35]
    io.out64[47] <= ingress2_11.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_12.io.in4[0] <= io.in64[48] @[BuildingBlock.scala 62:35]
    io.out64[48] <= ingress2_12.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_12.io.in4[1] <= io.in64[49] @[BuildingBlock.scala 62:35]
    io.out64[52] <= ingress2_12.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_12.io.in4[2] <= io.in64[50] @[BuildingBlock.scala 62:35]
    io.out64[56] <= ingress2_12.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_12.io.in4[3] <= io.in64[51] @[BuildingBlock.scala 62:35]
    io.out64[60] <= ingress2_12.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_13.io.in4[0] <= io.in64[52] @[BuildingBlock.scala 62:35]
    io.out64[49] <= ingress2_13.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_13.io.in4[1] <= io.in64[53] @[BuildingBlock.scala 62:35]
    io.out64[53] <= ingress2_13.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_13.io.in4[2] <= io.in64[54] @[BuildingBlock.scala 62:35]
    io.out64[57] <= ingress2_13.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_13.io.in4[3] <= io.in64[55] @[BuildingBlock.scala 62:35]
    io.out64[61] <= ingress2_13.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_14.io.in4[0] <= io.in64[56] @[BuildingBlock.scala 62:35]
    io.out64[50] <= ingress2_14.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_14.io.in4[1] <= io.in64[57] @[BuildingBlock.scala 62:35]
    io.out64[54] <= ingress2_14.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_14.io.in4[2] <= io.in64[58] @[BuildingBlock.scala 62:35]
    io.out64[58] <= ingress2_14.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_14.io.in4[3] <= io.in64[59] @[BuildingBlock.scala 62:35]
    io.out64[62] <= ingress2_14.io.out4[3] @[BuildingBlock.scala 63:30]
    ingress2_15.io.in4[0] <= io.in64[60] @[BuildingBlock.scala 62:35]
    io.out64[51] <= ingress2_15.io.out4[0] @[BuildingBlock.scala 63:30]
    ingress2_15.io.in4[1] <= io.in64[61] @[BuildingBlock.scala 62:35]
    io.out64[55] <= ingress2_15.io.out4[1] @[BuildingBlock.scala 63:30]
    ingress2_15.io.in4[2] <= io.in64[62] @[BuildingBlock.scala 62:35]
    io.out64[59] <= ingress2_15.io.out4[2] @[BuildingBlock.scala 63:30]
    ingress2_15.io.in4[3] <= io.in64[63] @[BuildingBlock.scala 62:35]
    io.out64[63] <= ingress2_15.io.out4[3] @[BuildingBlock.scala 63:30]
    node _ingress2_0_io_ctrl_T = bits(ctrl_reg, 127, 120) @[BuildingBlock.scala 67:36]
    ingress2_0.io.ctrl <= _ingress2_0_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_1_io_ctrl_T = bits(ctrl_reg, 119, 112) @[BuildingBlock.scala 67:36]
    ingress2_1.io.ctrl <= _ingress2_1_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_2_io_ctrl_T = bits(ctrl_reg, 111, 104) @[BuildingBlock.scala 67:36]
    ingress2_2.io.ctrl <= _ingress2_2_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_3_io_ctrl_T = bits(ctrl_reg, 103, 96) @[BuildingBlock.scala 67:36]
    ingress2_3.io.ctrl <= _ingress2_3_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_4_io_ctrl_T = bits(ctrl_reg, 95, 88) @[BuildingBlock.scala 67:36]
    ingress2_4.io.ctrl <= _ingress2_4_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_5_io_ctrl_T = bits(ctrl_reg, 87, 80) @[BuildingBlock.scala 67:36]
    ingress2_5.io.ctrl <= _ingress2_5_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_6_io_ctrl_T = bits(ctrl_reg, 79, 72) @[BuildingBlock.scala 67:36]
    ingress2_6.io.ctrl <= _ingress2_6_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_7_io_ctrl_T = bits(ctrl_reg, 71, 64) @[BuildingBlock.scala 67:36]
    ingress2_7.io.ctrl <= _ingress2_7_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_8_io_ctrl_T = bits(ctrl_reg, 63, 56) @[BuildingBlock.scala 67:36]
    ingress2_8.io.ctrl <= _ingress2_8_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_9_io_ctrl_T = bits(ctrl_reg, 55, 48) @[BuildingBlock.scala 67:36]
    ingress2_9.io.ctrl <= _ingress2_9_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_10_io_ctrl_T = bits(ctrl_reg, 47, 40) @[BuildingBlock.scala 67:36]
    ingress2_10.io.ctrl <= _ingress2_10_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_11_io_ctrl_T = bits(ctrl_reg, 39, 32) @[BuildingBlock.scala 67:36]
    ingress2_11.io.ctrl <= _ingress2_11_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_12_io_ctrl_T = bits(ctrl_reg, 31, 24) @[BuildingBlock.scala 67:36]
    ingress2_12.io.ctrl <= _ingress2_12_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_13_io_ctrl_T = bits(ctrl_reg, 23, 16) @[BuildingBlock.scala 67:36]
    ingress2_13.io.ctrl <= _ingress2_13_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_14_io_ctrl_T = bits(ctrl_reg, 15, 8) @[BuildingBlock.scala 67:36]
    ingress2_14.io.ctrl <= _ingress2_14_io_ctrl_T @[BuildingBlock.scala 67:25]
    node _ingress2_15_io_ctrl_T = bits(ctrl_reg, 7, 0) @[BuildingBlock.scala 67:36]
    ingress2_15.io.ctrl <= _ingress2_15_io_ctrl_T @[BuildingBlock.scala 67:25]
    
  module SMtest : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : {a : UInt<64>, b : UInt<64>}[32], d_out : {a : UInt<64>, b : UInt<64>}[32], flip wr_en_mem1 : UInt<1>, flip wr_instr_mem1 : UInt<128>, flip run : UInt<1>}
    
    cmem Mem1 : UInt<128>[256] @[SMtest.scala 14:17]
    reg PC1 : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[SMtest.scala 15:20]
    reg wrAddr1 : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[SMtest.scala 16:24]
    reg instr1 : UInt<128>, clock with : (reset => (reset, UInt<128>("h00"))) @[SMtest.scala 17:23]
    inst peCol of PEcol @[SMtest.scala 20:21]
    peCol.clock <= clock
    peCol.reset <= reset
    inst ingress1 of CLOSingress1 @[SMtest.scala 21:24]
    ingress1.clock <= clock
    ingress1.reset <= reset
    inst ingress2 of CLOSingress2 @[SMtest.scala 22:24]
    ingress2.clock <= clock
    ingress2.reset <= reset
    reg stageReg1 : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[SMtest.scala 25:26]
    node _T = eq(UInt<2>("h00"), stageReg1) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      when io.run : @[SMtest.scala 86:19]
        stageReg1 <= UInt<2>("h01") @[SMtest.scala 87:19]
        node _PC1_T = add(PC1, UInt<1>("h01")) @[SMtest.scala 88:20]
        node _PC1_T_1 = tail(_PC1_T, 1) @[SMtest.scala 88:20]
        PC1 <= _PC1_T_1 @[SMtest.scala 88:13]
        infer mport instr1_MPORT = Mem1[PC1], clock @[SMtest.scala 89:23]
        instr1 <= instr1_MPORT @[SMtest.scala 89:16]
        skip @[SMtest.scala 86:19]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<2>("h01"), stageReg1) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        node _T_2 = eq(io.run, UInt<1>("h00")) @[SMtest.scala 93:12]
        when _T_2 : @[SMtest.scala 93:21]
          stageReg1 <= UInt<2>("h00") @[SMtest.scala 94:19]
          skip @[SMtest.scala 93:21]
        else : @[SMtest.scala 95:19]
          stageReg1 <= UInt<2>("h02") @[SMtest.scala 96:19]
          node _PC1_T_2 = add(PC1, UInt<1>("h01")) @[SMtest.scala 97:20]
          node _PC1_T_3 = tail(_PC1_T_2, 1) @[SMtest.scala 97:20]
          PC1 <= _PC1_T_3 @[SMtest.scala 97:13]
          infer mport instr1_MPORT_1 = Mem1[PC1], clock @[SMtest.scala 98:23]
          instr1 <= instr1_MPORT_1 @[SMtest.scala 98:16]
          skip @[SMtest.scala 95:19]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_3 = eq(UInt<2>("h02"), stageReg1) @[Conditional.scala 37:30]
        when _T_3 : @[Conditional.scala 39:67]
          node _T_4 = eq(io.run, UInt<1>("h00")) @[SMtest.scala 102:12]
          when _T_4 : @[SMtest.scala 102:21]
            stageReg1 <= UInt<2>("h00") @[SMtest.scala 103:19]
            skip @[SMtest.scala 102:21]
          else : @[SMtest.scala 104:19]
            stageReg1 <= UInt<2>("h03") @[SMtest.scala 105:19]
            node _PC1_T_4 = add(PC1, UInt<1>("h01")) @[SMtest.scala 106:20]
            node _PC1_T_5 = tail(_PC1_T_4, 1) @[SMtest.scala 106:20]
            PC1 <= _PC1_T_5 @[SMtest.scala 106:13]
            infer mport instr1_MPORT_2 = Mem1[PC1], clock @[SMtest.scala 107:23]
            instr1 <= instr1_MPORT_2 @[SMtest.scala 107:16]
            skip @[SMtest.scala 104:19]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_5 = eq(UInt<2>("h03"), stageReg1) @[Conditional.scala 37:30]
          when _T_5 : @[Conditional.scala 39:67]
            node _T_6 = eq(io.run, UInt<1>("h00")) @[SMtest.scala 111:12]
            when _T_6 : @[SMtest.scala 111:21]
              stageReg1 <= UInt<2>("h00") @[SMtest.scala 112:19]
              skip @[SMtest.scala 111:21]
            else : @[SMtest.scala 113:19]
              stageReg1 <= UInt<2>("h01") @[SMtest.scala 114:19]
              node _PC1_T_6 = add(PC1, UInt<1>("h01")) @[SMtest.scala 115:20]
              node _PC1_T_7 = tail(_PC1_T_6, 1) @[SMtest.scala 115:20]
              PC1 <= _PC1_T_7 @[SMtest.scala 115:13]
              infer mport instr1_MPORT_3 = Mem1[PC1], clock @[SMtest.scala 116:23]
              instr1 <= instr1_MPORT_3 @[SMtest.scala 116:16]
              skip @[SMtest.scala 113:19]
            skip @[Conditional.scala 39:67]
    node _peCol_io_instr_T = eq(stageReg1, UInt<2>("h01")) @[SMtest.scala 128:37]
    node _peCol_io_instr_T_1 = mux(_peCol_io_instr_T, instr1, UInt<1>("h00")) @[SMtest.scala 128:26]
    peCol.io.instr <= _peCol_io_instr_T_1 @[SMtest.scala 128:20]
    node _ingress1_io_ctrl_T = eq(stageReg1, UInt<2>("h02")) @[SMtest.scala 129:39]
    node _ingress1_io_ctrl_T_1 = mux(_ingress1_io_ctrl_T, instr1, UInt<1>("h00")) @[SMtest.scala 129:28]
    ingress1.io.ctrl <= _ingress1_io_ctrl_T_1 @[SMtest.scala 129:22]
    node _ingress2_io_ctrl_T = eq(stageReg1, UInt<2>("h03")) @[SMtest.scala 130:39]
    node _ingress2_io_ctrl_T_1 = mux(_ingress2_io_ctrl_T, instr1, UInt<1>("h00")) @[SMtest.scala 130:28]
    ingress2.io.ctrl <= _ingress2_io_ctrl_T_1 @[SMtest.scala 130:22]
    when io.wr_en_mem1 : @[SMtest.scala 134:22]
      infer mport MPORT = Mem1[wrAddr1], clock @[SMtest.scala 135:9]
      MPORT <= io.wr_instr_mem1 @[SMtest.scala 135:19]
      node _wrAddr1_T = add(wrAddr1, UInt<1>("h01")) @[SMtest.scala 136:24]
      node _wrAddr1_T_1 = tail(_wrAddr1_T, 1) @[SMtest.scala 136:24]
      wrAddr1 <= _wrAddr1_T_1 @[SMtest.scala 136:13]
      skip @[SMtest.scala 134:22]
    peCol.io.d_in[0].b <= io.d_in[0].b @[SMtest.scala 139:17]
    peCol.io.d_in[0].a <= io.d_in[0].a @[SMtest.scala 139:17]
    peCol.io.d_in[1].b <= io.d_in[1].b @[SMtest.scala 139:17]
    peCol.io.d_in[1].a <= io.d_in[1].a @[SMtest.scala 139:17]
    peCol.io.d_in[2].b <= io.d_in[2].b @[SMtest.scala 139:17]
    peCol.io.d_in[2].a <= io.d_in[2].a @[SMtest.scala 139:17]
    peCol.io.d_in[3].b <= io.d_in[3].b @[SMtest.scala 139:17]
    peCol.io.d_in[3].a <= io.d_in[3].a @[SMtest.scala 139:17]
    peCol.io.d_in[4].b <= io.d_in[4].b @[SMtest.scala 139:17]
    peCol.io.d_in[4].a <= io.d_in[4].a @[SMtest.scala 139:17]
    peCol.io.d_in[5].b <= io.d_in[5].b @[SMtest.scala 139:17]
    peCol.io.d_in[5].a <= io.d_in[5].a @[SMtest.scala 139:17]
    peCol.io.d_in[6].b <= io.d_in[6].b @[SMtest.scala 139:17]
    peCol.io.d_in[6].a <= io.d_in[6].a @[SMtest.scala 139:17]
    peCol.io.d_in[7].b <= io.d_in[7].b @[SMtest.scala 139:17]
    peCol.io.d_in[7].a <= io.d_in[7].a @[SMtest.scala 139:17]
    peCol.io.d_in[8].b <= io.d_in[8].b @[SMtest.scala 139:17]
    peCol.io.d_in[8].a <= io.d_in[8].a @[SMtest.scala 139:17]
    peCol.io.d_in[9].b <= io.d_in[9].b @[SMtest.scala 139:17]
    peCol.io.d_in[9].a <= io.d_in[9].a @[SMtest.scala 139:17]
    peCol.io.d_in[10].b <= io.d_in[10].b @[SMtest.scala 139:17]
    peCol.io.d_in[10].a <= io.d_in[10].a @[SMtest.scala 139:17]
    peCol.io.d_in[11].b <= io.d_in[11].b @[SMtest.scala 139:17]
    peCol.io.d_in[11].a <= io.d_in[11].a @[SMtest.scala 139:17]
    peCol.io.d_in[12].b <= io.d_in[12].b @[SMtest.scala 139:17]
    peCol.io.d_in[12].a <= io.d_in[12].a @[SMtest.scala 139:17]
    peCol.io.d_in[13].b <= io.d_in[13].b @[SMtest.scala 139:17]
    peCol.io.d_in[13].a <= io.d_in[13].a @[SMtest.scala 139:17]
    peCol.io.d_in[14].b <= io.d_in[14].b @[SMtest.scala 139:17]
    peCol.io.d_in[14].a <= io.d_in[14].a @[SMtest.scala 139:17]
    peCol.io.d_in[15].b <= io.d_in[15].b @[SMtest.scala 139:17]
    peCol.io.d_in[15].a <= io.d_in[15].a @[SMtest.scala 139:17]
    peCol.io.d_in[16].b <= io.d_in[16].b @[SMtest.scala 139:17]
    peCol.io.d_in[16].a <= io.d_in[16].a @[SMtest.scala 139:17]
    peCol.io.d_in[17].b <= io.d_in[17].b @[SMtest.scala 139:17]
    peCol.io.d_in[17].a <= io.d_in[17].a @[SMtest.scala 139:17]
    peCol.io.d_in[18].b <= io.d_in[18].b @[SMtest.scala 139:17]
    peCol.io.d_in[18].a <= io.d_in[18].a @[SMtest.scala 139:17]
    peCol.io.d_in[19].b <= io.d_in[19].b @[SMtest.scala 139:17]
    peCol.io.d_in[19].a <= io.d_in[19].a @[SMtest.scala 139:17]
    peCol.io.d_in[20].b <= io.d_in[20].b @[SMtest.scala 139:17]
    peCol.io.d_in[20].a <= io.d_in[20].a @[SMtest.scala 139:17]
    peCol.io.d_in[21].b <= io.d_in[21].b @[SMtest.scala 139:17]
    peCol.io.d_in[21].a <= io.d_in[21].a @[SMtest.scala 139:17]
    peCol.io.d_in[22].b <= io.d_in[22].b @[SMtest.scala 139:17]
    peCol.io.d_in[22].a <= io.d_in[22].a @[SMtest.scala 139:17]
    peCol.io.d_in[23].b <= io.d_in[23].b @[SMtest.scala 139:17]
    peCol.io.d_in[23].a <= io.d_in[23].a @[SMtest.scala 139:17]
    peCol.io.d_in[24].b <= io.d_in[24].b @[SMtest.scala 139:17]
    peCol.io.d_in[24].a <= io.d_in[24].a @[SMtest.scala 139:17]
    peCol.io.d_in[25].b <= io.d_in[25].b @[SMtest.scala 139:17]
    peCol.io.d_in[25].a <= io.d_in[25].a @[SMtest.scala 139:17]
    peCol.io.d_in[26].b <= io.d_in[26].b @[SMtest.scala 139:17]
    peCol.io.d_in[26].a <= io.d_in[26].a @[SMtest.scala 139:17]
    peCol.io.d_in[27].b <= io.d_in[27].b @[SMtest.scala 139:17]
    peCol.io.d_in[27].a <= io.d_in[27].a @[SMtest.scala 139:17]
    peCol.io.d_in[28].b <= io.d_in[28].b @[SMtest.scala 139:17]
    peCol.io.d_in[28].a <= io.d_in[28].a @[SMtest.scala 139:17]
    peCol.io.d_in[29].b <= io.d_in[29].b @[SMtest.scala 139:17]
    peCol.io.d_in[29].a <= io.d_in[29].a @[SMtest.scala 139:17]
    peCol.io.d_in[30].b <= io.d_in[30].b @[SMtest.scala 139:17]
    peCol.io.d_in[30].a <= io.d_in[30].a @[SMtest.scala 139:17]
    peCol.io.d_in[31].b <= io.d_in[31].b @[SMtest.scala 139:17]
    peCol.io.d_in[31].a <= io.d_in[31].a @[SMtest.scala 139:17]
    ingress1.io.in64[0] <= peCol.io.d_out[0].a @[SMtest.scala 141:27]
    ingress1.io.in64[1] <= peCol.io.d_out[0].b @[SMtest.scala 142:29]
    ingress1.io.in64[2] <= peCol.io.d_out[1].a @[SMtest.scala 141:27]
    ingress1.io.in64[3] <= peCol.io.d_out[1].b @[SMtest.scala 142:29]
    ingress1.io.in64[4] <= peCol.io.d_out[2].a @[SMtest.scala 141:27]
    ingress1.io.in64[5] <= peCol.io.d_out[2].b @[SMtest.scala 142:29]
    ingress1.io.in64[6] <= peCol.io.d_out[3].a @[SMtest.scala 141:27]
    ingress1.io.in64[7] <= peCol.io.d_out[3].b @[SMtest.scala 142:29]
    ingress1.io.in64[8] <= peCol.io.d_out[4].a @[SMtest.scala 141:27]
    ingress1.io.in64[9] <= peCol.io.d_out[4].b @[SMtest.scala 142:29]
    ingress1.io.in64[10] <= peCol.io.d_out[5].a @[SMtest.scala 141:27]
    ingress1.io.in64[11] <= peCol.io.d_out[5].b @[SMtest.scala 142:29]
    ingress1.io.in64[12] <= peCol.io.d_out[6].a @[SMtest.scala 141:27]
    ingress1.io.in64[13] <= peCol.io.d_out[6].b @[SMtest.scala 142:29]
    ingress1.io.in64[14] <= peCol.io.d_out[7].a @[SMtest.scala 141:27]
    ingress1.io.in64[15] <= peCol.io.d_out[7].b @[SMtest.scala 142:29]
    ingress1.io.in64[16] <= peCol.io.d_out[8].a @[SMtest.scala 141:27]
    ingress1.io.in64[17] <= peCol.io.d_out[8].b @[SMtest.scala 142:29]
    ingress1.io.in64[18] <= peCol.io.d_out[9].a @[SMtest.scala 141:27]
    ingress1.io.in64[19] <= peCol.io.d_out[9].b @[SMtest.scala 142:29]
    ingress1.io.in64[20] <= peCol.io.d_out[10].a @[SMtest.scala 141:27]
    ingress1.io.in64[21] <= peCol.io.d_out[10].b @[SMtest.scala 142:29]
    ingress1.io.in64[22] <= peCol.io.d_out[11].a @[SMtest.scala 141:27]
    ingress1.io.in64[23] <= peCol.io.d_out[11].b @[SMtest.scala 142:29]
    ingress1.io.in64[24] <= peCol.io.d_out[12].a @[SMtest.scala 141:27]
    ingress1.io.in64[25] <= peCol.io.d_out[12].b @[SMtest.scala 142:29]
    ingress1.io.in64[26] <= peCol.io.d_out[13].a @[SMtest.scala 141:27]
    ingress1.io.in64[27] <= peCol.io.d_out[13].b @[SMtest.scala 142:29]
    ingress1.io.in64[28] <= peCol.io.d_out[14].a @[SMtest.scala 141:27]
    ingress1.io.in64[29] <= peCol.io.d_out[14].b @[SMtest.scala 142:29]
    ingress1.io.in64[30] <= peCol.io.d_out[15].a @[SMtest.scala 141:27]
    ingress1.io.in64[31] <= peCol.io.d_out[15].b @[SMtest.scala 142:29]
    ingress1.io.in64[32] <= peCol.io.d_out[16].a @[SMtest.scala 141:27]
    ingress1.io.in64[33] <= peCol.io.d_out[16].b @[SMtest.scala 142:29]
    ingress1.io.in64[34] <= peCol.io.d_out[17].a @[SMtest.scala 141:27]
    ingress1.io.in64[35] <= peCol.io.d_out[17].b @[SMtest.scala 142:29]
    ingress1.io.in64[36] <= peCol.io.d_out[18].a @[SMtest.scala 141:27]
    ingress1.io.in64[37] <= peCol.io.d_out[18].b @[SMtest.scala 142:29]
    ingress1.io.in64[38] <= peCol.io.d_out[19].a @[SMtest.scala 141:27]
    ingress1.io.in64[39] <= peCol.io.d_out[19].b @[SMtest.scala 142:29]
    ingress1.io.in64[40] <= peCol.io.d_out[20].a @[SMtest.scala 141:27]
    ingress1.io.in64[41] <= peCol.io.d_out[20].b @[SMtest.scala 142:29]
    ingress1.io.in64[42] <= peCol.io.d_out[21].a @[SMtest.scala 141:27]
    ingress1.io.in64[43] <= peCol.io.d_out[21].b @[SMtest.scala 142:29]
    ingress1.io.in64[44] <= peCol.io.d_out[22].a @[SMtest.scala 141:27]
    ingress1.io.in64[45] <= peCol.io.d_out[22].b @[SMtest.scala 142:29]
    ingress1.io.in64[46] <= peCol.io.d_out[23].a @[SMtest.scala 141:27]
    ingress1.io.in64[47] <= peCol.io.d_out[23].b @[SMtest.scala 142:29]
    ingress1.io.in64[48] <= peCol.io.d_out[24].a @[SMtest.scala 141:27]
    ingress1.io.in64[49] <= peCol.io.d_out[24].b @[SMtest.scala 142:29]
    ingress1.io.in64[50] <= peCol.io.d_out[25].a @[SMtest.scala 141:27]
    ingress1.io.in64[51] <= peCol.io.d_out[25].b @[SMtest.scala 142:29]
    ingress1.io.in64[52] <= peCol.io.d_out[26].a @[SMtest.scala 141:27]
    ingress1.io.in64[53] <= peCol.io.d_out[26].b @[SMtest.scala 142:29]
    ingress1.io.in64[54] <= peCol.io.d_out[27].a @[SMtest.scala 141:27]
    ingress1.io.in64[55] <= peCol.io.d_out[27].b @[SMtest.scala 142:29]
    ingress1.io.in64[56] <= peCol.io.d_out[28].a @[SMtest.scala 141:27]
    ingress1.io.in64[57] <= peCol.io.d_out[28].b @[SMtest.scala 142:29]
    ingress1.io.in64[58] <= peCol.io.d_out[29].a @[SMtest.scala 141:27]
    ingress1.io.in64[59] <= peCol.io.d_out[29].b @[SMtest.scala 142:29]
    ingress1.io.in64[60] <= peCol.io.d_out[30].a @[SMtest.scala 141:27]
    ingress1.io.in64[61] <= peCol.io.d_out[30].b @[SMtest.scala 142:29]
    ingress1.io.in64[62] <= peCol.io.d_out[31].a @[SMtest.scala 141:27]
    ingress1.io.in64[63] <= peCol.io.d_out[31].b @[SMtest.scala 142:29]
    ingress2.io.in64[0] <= ingress1.io.out64[0] @[SMtest.scala 145:20]
    ingress2.io.in64[1] <= ingress1.io.out64[1] @[SMtest.scala 145:20]
    ingress2.io.in64[2] <= ingress1.io.out64[2] @[SMtest.scala 145:20]
    ingress2.io.in64[3] <= ingress1.io.out64[3] @[SMtest.scala 145:20]
    ingress2.io.in64[4] <= ingress1.io.out64[4] @[SMtest.scala 145:20]
    ingress2.io.in64[5] <= ingress1.io.out64[5] @[SMtest.scala 145:20]
    ingress2.io.in64[6] <= ingress1.io.out64[6] @[SMtest.scala 145:20]
    ingress2.io.in64[7] <= ingress1.io.out64[7] @[SMtest.scala 145:20]
    ingress2.io.in64[8] <= ingress1.io.out64[8] @[SMtest.scala 145:20]
    ingress2.io.in64[9] <= ingress1.io.out64[9] @[SMtest.scala 145:20]
    ingress2.io.in64[10] <= ingress1.io.out64[10] @[SMtest.scala 145:20]
    ingress2.io.in64[11] <= ingress1.io.out64[11] @[SMtest.scala 145:20]
    ingress2.io.in64[12] <= ingress1.io.out64[12] @[SMtest.scala 145:20]
    ingress2.io.in64[13] <= ingress1.io.out64[13] @[SMtest.scala 145:20]
    ingress2.io.in64[14] <= ingress1.io.out64[14] @[SMtest.scala 145:20]
    ingress2.io.in64[15] <= ingress1.io.out64[15] @[SMtest.scala 145:20]
    ingress2.io.in64[16] <= ingress1.io.out64[16] @[SMtest.scala 145:20]
    ingress2.io.in64[17] <= ingress1.io.out64[17] @[SMtest.scala 145:20]
    ingress2.io.in64[18] <= ingress1.io.out64[18] @[SMtest.scala 145:20]
    ingress2.io.in64[19] <= ingress1.io.out64[19] @[SMtest.scala 145:20]
    ingress2.io.in64[20] <= ingress1.io.out64[20] @[SMtest.scala 145:20]
    ingress2.io.in64[21] <= ingress1.io.out64[21] @[SMtest.scala 145:20]
    ingress2.io.in64[22] <= ingress1.io.out64[22] @[SMtest.scala 145:20]
    ingress2.io.in64[23] <= ingress1.io.out64[23] @[SMtest.scala 145:20]
    ingress2.io.in64[24] <= ingress1.io.out64[24] @[SMtest.scala 145:20]
    ingress2.io.in64[25] <= ingress1.io.out64[25] @[SMtest.scala 145:20]
    ingress2.io.in64[26] <= ingress1.io.out64[26] @[SMtest.scala 145:20]
    ingress2.io.in64[27] <= ingress1.io.out64[27] @[SMtest.scala 145:20]
    ingress2.io.in64[28] <= ingress1.io.out64[28] @[SMtest.scala 145:20]
    ingress2.io.in64[29] <= ingress1.io.out64[29] @[SMtest.scala 145:20]
    ingress2.io.in64[30] <= ingress1.io.out64[30] @[SMtest.scala 145:20]
    ingress2.io.in64[31] <= ingress1.io.out64[31] @[SMtest.scala 145:20]
    ingress2.io.in64[32] <= ingress1.io.out64[32] @[SMtest.scala 145:20]
    ingress2.io.in64[33] <= ingress1.io.out64[33] @[SMtest.scala 145:20]
    ingress2.io.in64[34] <= ingress1.io.out64[34] @[SMtest.scala 145:20]
    ingress2.io.in64[35] <= ingress1.io.out64[35] @[SMtest.scala 145:20]
    ingress2.io.in64[36] <= ingress1.io.out64[36] @[SMtest.scala 145:20]
    ingress2.io.in64[37] <= ingress1.io.out64[37] @[SMtest.scala 145:20]
    ingress2.io.in64[38] <= ingress1.io.out64[38] @[SMtest.scala 145:20]
    ingress2.io.in64[39] <= ingress1.io.out64[39] @[SMtest.scala 145:20]
    ingress2.io.in64[40] <= ingress1.io.out64[40] @[SMtest.scala 145:20]
    ingress2.io.in64[41] <= ingress1.io.out64[41] @[SMtest.scala 145:20]
    ingress2.io.in64[42] <= ingress1.io.out64[42] @[SMtest.scala 145:20]
    ingress2.io.in64[43] <= ingress1.io.out64[43] @[SMtest.scala 145:20]
    ingress2.io.in64[44] <= ingress1.io.out64[44] @[SMtest.scala 145:20]
    ingress2.io.in64[45] <= ingress1.io.out64[45] @[SMtest.scala 145:20]
    ingress2.io.in64[46] <= ingress1.io.out64[46] @[SMtest.scala 145:20]
    ingress2.io.in64[47] <= ingress1.io.out64[47] @[SMtest.scala 145:20]
    ingress2.io.in64[48] <= ingress1.io.out64[48] @[SMtest.scala 145:20]
    ingress2.io.in64[49] <= ingress1.io.out64[49] @[SMtest.scala 145:20]
    ingress2.io.in64[50] <= ingress1.io.out64[50] @[SMtest.scala 145:20]
    ingress2.io.in64[51] <= ingress1.io.out64[51] @[SMtest.scala 145:20]
    ingress2.io.in64[52] <= ingress1.io.out64[52] @[SMtest.scala 145:20]
    ingress2.io.in64[53] <= ingress1.io.out64[53] @[SMtest.scala 145:20]
    ingress2.io.in64[54] <= ingress1.io.out64[54] @[SMtest.scala 145:20]
    ingress2.io.in64[55] <= ingress1.io.out64[55] @[SMtest.scala 145:20]
    ingress2.io.in64[56] <= ingress1.io.out64[56] @[SMtest.scala 145:20]
    ingress2.io.in64[57] <= ingress1.io.out64[57] @[SMtest.scala 145:20]
    ingress2.io.in64[58] <= ingress1.io.out64[58] @[SMtest.scala 145:20]
    ingress2.io.in64[59] <= ingress1.io.out64[59] @[SMtest.scala 145:20]
    ingress2.io.in64[60] <= ingress1.io.out64[60] @[SMtest.scala 145:20]
    ingress2.io.in64[61] <= ingress1.io.out64[61] @[SMtest.scala 145:20]
    ingress2.io.in64[62] <= ingress1.io.out64[62] @[SMtest.scala 145:20]
    ingress2.io.in64[63] <= ingress1.io.out64[63] @[SMtest.scala 145:20]
    io.d_out[0].a <= ingress2.io.out64[0] @[SMtest.scala 147:19]
    io.d_out[0].b <= ingress2.io.out64[1] @[SMtest.scala 148:19]
    io.d_out[1].a <= ingress2.io.out64[2] @[SMtest.scala 147:19]
    io.d_out[1].b <= ingress2.io.out64[3] @[SMtest.scala 148:19]
    io.d_out[2].a <= ingress2.io.out64[4] @[SMtest.scala 147:19]
    io.d_out[2].b <= ingress2.io.out64[5] @[SMtest.scala 148:19]
    io.d_out[3].a <= ingress2.io.out64[6] @[SMtest.scala 147:19]
    io.d_out[3].b <= ingress2.io.out64[7] @[SMtest.scala 148:19]
    io.d_out[4].a <= ingress2.io.out64[8] @[SMtest.scala 147:19]
    io.d_out[4].b <= ingress2.io.out64[9] @[SMtest.scala 148:19]
    io.d_out[5].a <= ingress2.io.out64[10] @[SMtest.scala 147:19]
    io.d_out[5].b <= ingress2.io.out64[11] @[SMtest.scala 148:19]
    io.d_out[6].a <= ingress2.io.out64[12] @[SMtest.scala 147:19]
    io.d_out[6].b <= ingress2.io.out64[13] @[SMtest.scala 148:19]
    io.d_out[7].a <= ingress2.io.out64[14] @[SMtest.scala 147:19]
    io.d_out[7].b <= ingress2.io.out64[15] @[SMtest.scala 148:19]
    io.d_out[8].a <= ingress2.io.out64[16] @[SMtest.scala 147:19]
    io.d_out[8].b <= ingress2.io.out64[17] @[SMtest.scala 148:19]
    io.d_out[9].a <= ingress2.io.out64[18] @[SMtest.scala 147:19]
    io.d_out[9].b <= ingress2.io.out64[19] @[SMtest.scala 148:19]
    io.d_out[10].a <= ingress2.io.out64[20] @[SMtest.scala 147:19]
    io.d_out[10].b <= ingress2.io.out64[21] @[SMtest.scala 148:19]
    io.d_out[11].a <= ingress2.io.out64[22] @[SMtest.scala 147:19]
    io.d_out[11].b <= ingress2.io.out64[23] @[SMtest.scala 148:19]
    io.d_out[12].a <= ingress2.io.out64[24] @[SMtest.scala 147:19]
    io.d_out[12].b <= ingress2.io.out64[25] @[SMtest.scala 148:19]
    io.d_out[13].a <= ingress2.io.out64[26] @[SMtest.scala 147:19]
    io.d_out[13].b <= ingress2.io.out64[27] @[SMtest.scala 148:19]
    io.d_out[14].a <= ingress2.io.out64[28] @[SMtest.scala 147:19]
    io.d_out[14].b <= ingress2.io.out64[29] @[SMtest.scala 148:19]
    io.d_out[15].a <= ingress2.io.out64[30] @[SMtest.scala 147:19]
    io.d_out[15].b <= ingress2.io.out64[31] @[SMtest.scala 148:19]
    io.d_out[16].a <= ingress2.io.out64[32] @[SMtest.scala 147:19]
    io.d_out[16].b <= ingress2.io.out64[33] @[SMtest.scala 148:19]
    io.d_out[17].a <= ingress2.io.out64[34] @[SMtest.scala 147:19]
    io.d_out[17].b <= ingress2.io.out64[35] @[SMtest.scala 148:19]
    io.d_out[18].a <= ingress2.io.out64[36] @[SMtest.scala 147:19]
    io.d_out[18].b <= ingress2.io.out64[37] @[SMtest.scala 148:19]
    io.d_out[19].a <= ingress2.io.out64[38] @[SMtest.scala 147:19]
    io.d_out[19].b <= ingress2.io.out64[39] @[SMtest.scala 148:19]
    io.d_out[20].a <= ingress2.io.out64[40] @[SMtest.scala 147:19]
    io.d_out[20].b <= ingress2.io.out64[41] @[SMtest.scala 148:19]
    io.d_out[21].a <= ingress2.io.out64[42] @[SMtest.scala 147:19]
    io.d_out[21].b <= ingress2.io.out64[43] @[SMtest.scala 148:19]
    io.d_out[22].a <= ingress2.io.out64[44] @[SMtest.scala 147:19]
    io.d_out[22].b <= ingress2.io.out64[45] @[SMtest.scala 148:19]
    io.d_out[23].a <= ingress2.io.out64[46] @[SMtest.scala 147:19]
    io.d_out[23].b <= ingress2.io.out64[47] @[SMtest.scala 148:19]
    io.d_out[24].a <= ingress2.io.out64[48] @[SMtest.scala 147:19]
    io.d_out[24].b <= ingress2.io.out64[49] @[SMtest.scala 148:19]
    io.d_out[25].a <= ingress2.io.out64[50] @[SMtest.scala 147:19]
    io.d_out[25].b <= ingress2.io.out64[51] @[SMtest.scala 148:19]
    io.d_out[26].a <= ingress2.io.out64[52] @[SMtest.scala 147:19]
    io.d_out[26].b <= ingress2.io.out64[53] @[SMtest.scala 148:19]
    io.d_out[27].a <= ingress2.io.out64[54] @[SMtest.scala 147:19]
    io.d_out[27].b <= ingress2.io.out64[55] @[SMtest.scala 148:19]
    io.d_out[28].a <= ingress2.io.out64[56] @[SMtest.scala 147:19]
    io.d_out[28].b <= ingress2.io.out64[57] @[SMtest.scala 148:19]
    io.d_out[29].a <= ingress2.io.out64[58] @[SMtest.scala 147:19]
    io.d_out[29].b <= ingress2.io.out64[59] @[SMtest.scala 148:19]
    io.d_out[30].a <= ingress2.io.out64[60] @[SMtest.scala 147:19]
    io.d_out[30].b <= ingress2.io.out64[61] @[SMtest.scala 148:19]
    io.d_out[31].a <= ingress2.io.out64[62] @[SMtest.scala 147:19]
    io.d_out[31].b <= ingress2.io.out64[63] @[SMtest.scala 148:19]
    
