module MUX(
    input sel,P,Q,
    output Y);
    
    assign Y = sel ? Q : P;
    
endmodule

module MUX_XNOR(
    input A,B,
    output Y);
    
    MUX M1(
        .sel(A),
        .P(~B),
        .Q(B),
        .Y(Y)
        );

endmodule
