module tb();
  reg ain,bin,cin;
  wire sum,carry;

  FA dut(
    .ain(ain),
    .bin(bin),
    .cin(cin),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    ain = 1'b0;
    bin = 1'b0;
    cin = 1'b0;
    #10;
    ain = 1'b0;
    bin = 1'b0;
    cin = 1'b1;
    #10;
    ain = 1'b0;
    bin = 1'b1;
    cin = 1'b0;
    #10;
    ain = 1'b0;
    bin = 1'b1;
    cin = 1'b1;
    #10;
    ain = 1'b1;
    bin = 1'b0;
    cin = 1'b0;
    #10;
    ain = 1'b1;
    bin = 1'b0;
    cin = 1'b1;
    #10;
    ain = 1'b1;
    bin = 1'b1;
    cin = 1'b0;
    #10;
    ain = 1'b1;
    bin = 1'b1;
    cin = 1'b1;
    #10;
    
    
  end
endmodule
