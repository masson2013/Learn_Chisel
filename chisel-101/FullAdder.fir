;buildInfoPackage: chisel3, version: 3.1.3, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2018-09-12 19:37:29.007, builtAtMillis: 1536781049007
circuit FullAdder : 
  module FullAdder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, sum : UInt<1>, cout : UInt<1>}
    
    node a_xor_b = xor(io.a, io.b) @[Main.scala 17:22]
    node _T_15 = xor(a_xor_b, io.cin) @[Main.scala 18:21]
    io.sum <= _T_15 @[Main.scala 18:10]
    node a_and_b = and(io.a, io.b) @[Main.scala 21:24]
    node b_and_cin = and(io.b, io.cin) @[Main.scala 22:24]
    node a_and_cin = and(io.a, io.cin) @[Main.scala 23:24]
    node _T_16 = or(a_and_b, b_and_cin) @[Main.scala 24:22]
    node _T_17 = or(_T_16, a_and_cin) @[Main.scala 24:34]
    io.cout <= _T_17 @[Main.scala 24:11]
    
