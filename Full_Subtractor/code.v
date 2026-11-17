module FS(
    input ain,
    input bin,
    input cin,
    output difference,
    output borrow
);

 assign difference = ain ^ bin ^ cin;
 assign borrow = (~ain & bin) | (bin & cin) | (~ain & cin);
endmodule
