module HS(
    input ain,
    input bin,
    output difference,
  output borrow
);

  assign difference = ain ^ bin;
  assign borrow = ~ain & bin;
endmodule
  
