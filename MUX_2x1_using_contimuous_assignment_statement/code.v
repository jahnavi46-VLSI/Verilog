module mux(
  input A,
  input B,
  input sel,
  output y
);

  assign y = sel ? A:B;
endmodule
