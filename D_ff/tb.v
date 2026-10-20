module tb();
    reg clock,reset,din;
    wire dout;

  dff dut(.clock(clock), .reset(reset), .din(din), .dout(dout));

  initial begin 
      clock = 1'b0;
    forever #5 clock = ~clock;
  end 

  initial begin 
      reset = 1'b1;
    #5;
    reset = 1'b0;
    #5;
    din = 1'b1;
    #5;
    din = 1'b0;

    #10;
    $finish();
  end 
endmodule
