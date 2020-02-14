module FullAdder( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  input   io_a, // @[:@6.4]
  input   io_b, // @[:@6.4]
  input   io_cin, // @[:@6.4]
  output  io_sum, // @[:@6.4]
  output  io_cout // @[:@6.4]
);
  wire  a_xor_b; // @[Main.scala 17:22:@8.4]
  wire  a_and_b; // @[Main.scala 21:24:@11.4]
  wire  b_and_cin; // @[Main.scala 22:24:@12.4]
  wire  a_and_cin; // @[Main.scala 23:24:@13.4]
  wire  _T_16; // @[Main.scala 24:22:@14.4]
  assign a_xor_b = io_a ^ io_b; // @[Main.scala 17:22:@8.4]
  assign a_and_b = io_a & io_b; // @[Main.scala 21:24:@11.4]
  assign b_and_cin = io_b & io_cin; // @[Main.scala 22:24:@12.4]
  assign a_and_cin = io_a & io_cin; // @[Main.scala 23:24:@13.4]
  assign _T_16 = a_and_b | b_and_cin; // @[Main.scala 24:22:@14.4]
  assign io_sum = a_xor_b ^ io_cin; // @[Main.scala 18:10:@10.4]
  assign io_cout = _T_16 | a_and_cin; // @[Main.scala 24:11:@16.4]
endmodule