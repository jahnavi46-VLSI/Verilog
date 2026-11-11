module Half_Adder(
    input ain,bin,
    output sum,carry);

assign sum=ain^bin;
assign carry=ain&bin;
endmodule
