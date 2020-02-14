;buildInfoPackage: chisel3, version: 3.1.3, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2018-09-12 19:37:29.007, builtAtMillis: 1536781049007
circuit EnableShiftRegister : 
  module EnableShiftRegister : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>, flip shift : UInt<1>, out : UInt<4>}
    
    reg r0 : UInt, clock @[Sequential.scala 13:15]
    reg r1 : UInt, clock @[Sequential.scala 14:15]
    reg r2 : UInt, clock @[Sequential.scala 15:15]
    reg r3 : UInt, clock @[Sequential.scala 16:15]
    node _T_15 = bits(reset, 0, 0) @[Sequential.scala 18:15]
    when _T_15 : @[Sequential.scala 18:23]
      r0 <= UInt<4>("h00") @[Sequential.scala 19:8]
      r1 <= UInt<4>("h00") @[Sequential.scala 20:8]
      r2 <= UInt<4>("h00") @[Sequential.scala 21:8]
      r3 <= UInt<4>("h00") @[Sequential.scala 22:8]
      skip @[Sequential.scala 18:23]
    else : @[Sequential.scala 23:26]
      when io.shift : @[Sequential.scala 23:26]
        r0 <= io.in @[Sequential.scala 24:8]
        r1 <= r0 @[Sequential.scala 25:8]
        r2 <= r1 @[Sequential.scala 26:8]
        r3 <= r2 @[Sequential.scala 27:8]
        skip @[Sequential.scala 23:26]
    io.out <= r3 @[Sequential.scala 30:10]
    
