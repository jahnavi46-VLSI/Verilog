

module XOR_FSM(
    input clock,
    input reset,
    input A,B,
    output  reg Y
   );
   
   reg present_state,next_state;
   parameter Q0=1'b0,Q1=1'b1;
   
   always@(posedge clock) begin
        if(reset) begin
            present_state<=Q0;
        end
        else begin
            present_state<=next_state;
        end
        
   end
   
   always@(*) begin
        case(present_state)
            Q0: begin
                if(A==1'b0 && B==1'b0) begin
                    next_state = Q0;
                end
                if(A==1'b0 && B==1'b1) begin
                    next_state = Q1;
                end
                if(A==1'b1 && B==1'b0) begin
                    next_state = Q1;
                end
                if(A==1'b1 && B==1'b1) begin
                    next_state = Q0;
                end
                
            end
            
            
        
                    Q1: begin
                        if(A==1'b0 && B==1'b0) begin
                            next_state = Q0;
                        end
                        if(A==1'b0 && B==1'b1) begin
                            next_state = Q1;
                        end
                        if(A==1'b1 && B==1'b0) begin
                            next_state = Q1;
                        end
                        if(A==1'b1 && B==1'b1) begin
                            next_state = Q0;
                        end
                        
                    end
                    default : next_state=Q0;
           
        endcase
   end
   
        always@(*) begin
            case(present_state) 
                Q0: Y=1'b0;
                Q1: Y=1'b1;
            endcase
        end
endmodule
