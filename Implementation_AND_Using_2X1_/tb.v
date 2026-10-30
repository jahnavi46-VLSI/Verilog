module tb( );
    reg A,B;
    wire Y;
    
    MUX_AND dut(
        .A(A),
        .B(B),
        .Y(Y)
        );
    
    initial begin
        A=1'b0;
        B=1'b0;
        #10;
        A=1'b0;
        B=1'b1;
        #10;
        A=1'b1;
        B=1'b0;
        #10;
        A=1'b1;
        B=1'b1;
        #10;              
        $finish();
    end
endmodule
