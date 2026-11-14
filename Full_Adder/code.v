module FA(
    input ain,
    input bin;
    input cin,
    output sum,
    output carry
);

  assign sum = ain ^ bin ^ cin;
  assign carry = (ain & bin) | (bin & cin) | (cin &  ain);

endmodule
  
  
    
