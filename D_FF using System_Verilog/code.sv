module DFF(
  input logic clock,
  input logic reset,
  input logic Din,
  output logic Dout );

  always_ff@(posedge clock) begin
    if(reset) begin
        Dout<= 1'b0;
    end
    else begin
        Dout <= Din;
    end
  end
