module tb( );
function bit[7:0] mul(input bit[3:0] num1,num2);
return num1*num2;
endfunction

bit [7:0] result;

initial begin
result = mul(4'b0110 ,4'b0111);
$display("value of multiplication : %d",result);
end
endmodule
