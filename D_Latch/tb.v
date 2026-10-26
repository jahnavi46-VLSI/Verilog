`timescale 1ns / 1ps

module tb();

    reg D;
    reg enable;
    wire Q;

    DLatch dut(
        .Q(Q),
        .D(D),
        .enable(enable)
    );

    initial begin
        enable = 0;
        D = 0;
        #10;

        enable = 1;
        D = 0;
        #10;

        D = 1;
        #10;

        D = 0;
        #10;

        enable = 0;
        D = 1;
        #10;

        D = 0;
        #10;

        enable = 1;
        D = 1;
        #10;

        enable = 0;
        #10;

      $finish();
    end

endmodule
