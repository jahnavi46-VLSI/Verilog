
module tb( );
    reg clock;
    reg reset;
    reg A,B;
    wire Y;
    
    XOR_FSM dut(
        .clock(clock),
        .reset(reset),
        .A(A),
        .B(B),
        .Y(Y)
        );
        
    initial begin
        clock = 1'b0;
    end
    
    always #5 clock=~clock;
    
    initial begin
        reset=1'b1;
        A=1'b0;
        B=1'b0;
        #10;
        reset=1'b0;
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
