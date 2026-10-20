module dff(
  input din,clock,reset,
  output reg dout
);

  always@(posedge clock) begin 
    if(reset) begin 
        dout <= 1'b0;
    end
    else begin 
        dout <= din;
    end 
  end

endmodule
