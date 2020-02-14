module Inner( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   io_dataIn, // @[:@6.4]
  output  io_dataOut // @[:@6.4]
);
  reg  data; // @[Nested.scala 12:21:@8.4]
  reg [31:0] _RAND_0;
  assign io_dataOut = data; // @[Nested.scala 13:14:@10.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  data = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    data <= io_dataIn;
  end
endmodule
module Outer( // @[:@12.2]
  input   clock, // @[:@13.4]
  input   reset, // @[:@14.4]
  input   io_dataIn, // @[:@15.4]
  output  io_dataOut // @[:@15.4]
);
  wire  Inner_clock; // @[Nested.scala 22:20:@17.4]
  wire  Inner_io_dataIn; // @[Nested.scala 22:20:@17.4]
  wire  Inner_io_dataOut; // @[Nested.scala 22:20:@17.4]
  Inner Inner ( // @[Nested.scala 22:20:@17.4]
    .clock(Inner_clock),
    .io_dataIn(Inner_io_dataIn),
    .io_dataOut(Inner_io_dataOut)
  );
  assign io_dataOut = Inner_io_dataOut; // @[Nested.scala 24:14:@21.4]
  assign Inner_clock = clock; // @[:@18.4]
  assign Inner_io_dataIn = io_dataIn; // @[Nested.scala 23:15:@20.4]
endmodule
