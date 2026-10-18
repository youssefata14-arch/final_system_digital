module PARITY (
    input  wire       CLK,
    input  wire       RST,
    input  wire [7:0] P_DATA,
    input  wire       Data_Valid,
    input  wire       PAR_TYP, 
    output reg        par_bit
    );
    
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            par_bit <= 1'b0;
          end
          
      else if (Data_Valid) begin
            if (PAR_TYP == 1'b0)
                par_bit <= ^P_DATA;     // Even parity
            else
                par_bit <= ~(^P_DATA);  // Odd parity
        end
        
                                     end
                                     
                                     
      endmodule

