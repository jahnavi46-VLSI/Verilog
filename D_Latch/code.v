module DLatch(Q,D,enable);
input D,enable;
output reg Q;
always @ (D or enable)
begin
  if(enable==1)
  Q=D;
  else
  Q=Q;
  end

endmodule
