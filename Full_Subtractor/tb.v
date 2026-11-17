module tb();
  reg ain,bin,cin;
  wire difference,borrow;

  FS dut(
    .ain(ain),
    .bin(bin),
    .cin(cin),
    .difference(difference),
    .borrow(borrow)
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
