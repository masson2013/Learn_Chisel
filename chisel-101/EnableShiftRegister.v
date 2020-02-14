module EnableShiftRegister( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [3:0] io_in, // @[:@6.4]
  input        io_shift, // @[:@6.4]
  output [3:0] io_out // @[:@6.4]
);
  reg [3:0] r0; // @[Sequential.scala 13:15:@8.4]
  reg [31:0] _RAND_0;
  reg [3:0] r1; // @[Sequential.scala 14:15:@9.4]
  reg [31:0] _RAND_1;
  reg [3:0] r2; // @[Sequential.scala 15:15:@10.4]
  reg [31:0] _RAND_2;
  reg [3:0] r3; // @[Sequential.scala 16:15:@11.4]
  reg [31:0] _RAND_3;
  wire [3:0] _GEN_0; // @[Sequential.scala 23:26:@20.6]
  wire [3:0] _GEN_1; // @[Sequential.scala 23:26:@20.6]
  wire [3:0] _GEN_2; // @[Sequential.scala 23:26:@20.6]
  wire [3:0] _GEN_3; // @[Sequential.scala 23:26:@20.6]
  assign _GEN_0 = io_shift ? io_in : r0; // @[Sequential.scala 23:26:@20.6]
  assign _GEN_1 = io_shift ? r0 : r1; // @[Sequential.scala 23:26:@20.6]
  assign _GEN_2 = io_shift ? r1 : r2; // @[Sequential.scala 23:26:@20.6]
  assign _GEN_3 = io_shift ? r2 : r3; // @[Sequential.scala 23:26:@20.6]
  assign io_out = r3; // @[Sequential.scala 30:10:@26.4]
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
  r0 = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  r1 = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  r2 = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  r3 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      r0 <= 4'h0;
    end else begin
      if (io_shift) begin
        r0 <= io_in;
      end
    end
    if (reset) begin
      r1 <= 4'h0;
    end else begin
      if (io_shift) begin
        r1 <= r0;
      end
    end
    if (reset) begin
      r2 <= 4'h0;
    end else begin
      if (io_shift) begin
        r2 <= r1;
      end
    end
    if (reset) begin
      r3 <= 4'h0;
    end else begin
      if (io_shift) begin
        r3 <= r2;
      end
    end
  end
endmodule
