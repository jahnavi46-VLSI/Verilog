module tb();
    reg [1:0]I;
    reg sel;
    wire y;
    
    Mux_2x1 M1(
        .I(I[1:0]),
        .sel(sel),
        .y(y));
    
    initial begin
        I[0]=1'b0;
        I[1]=1'b0;
        sel=1'b0;
        #10;
        I[0]=1'b0;
        I[1]=1'b1;
        sel=1'b0;
        #10;
        I[0]=1'b1;
        I[1]=1'b0;
        sel=1'b1;
        #10;
        I[0]=1'b1;
        I[1]=1'b1;
        sel=1'b1;
        #10;
        $finish();
             
    end
endmodule
