module MUX(
    input sel,P,Q,
    output Y);
    
    assign Y = sel ? Q : P;
    
endmodule

module MUX_AND(
    input A,B,
    output Y);

   MUX M1(
     .sel(A),
     .P(1'b0),
     .Q(B),
     .Y(Y)
     );
endmodule
