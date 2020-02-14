;buildInfoPackage: chisel3, version: 3.1.3, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2018-09-12 19:37:29.007, builtAtMillis: 1536781049007
circuit Outer : 
  module Inner : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataIn : UInt<1>, dataOut : UInt<1>}
    
    reg data : UInt, clock @[Nested.scala 12:21]
    data <= io.dataIn @[Nested.scala 12:21]
    io.dataOut <= data @[Nested.scala 13:14]
    
  module Outer : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataIn : UInt<1>, dataOut : UInt<1>}
    
    inst Inner of Inner @[Nested.scala 22:20]
    Inner.clock <= clock
    Inner.reset <= reset
    Inner.io.dataIn <= io.dataIn @[Nested.scala 23:15]
    io.dataOut <= Inner.io.dataOut @[Nested.scala 24:14]
    
