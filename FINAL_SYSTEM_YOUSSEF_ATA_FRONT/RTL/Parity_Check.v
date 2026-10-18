module Parity_Check (
    input  wire       CLK,
    input  wire       RST,
    input  wire       par_chk_en,
    input  wire       PAR_TYP,
    input  wire       sampled_bit,
    input  wire [7:0] P_DATA,
    output reg        par_err
);

reg calculated_parity;

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        par_err <= 1'b0;
    end
    else if (par_chk_en) begin

        // calculate Parity
        if (PAR_TYP == 1'b0)
            calculated_parity = ^P_DATA;     // Even Parity
        else
            calculated_parity = ~(^P_DATA);  // Odd Parity
            
       // Comparing the calculated parity with the received one
            if (calculated_parity == sampled_bit)
            par_err <= 1'b0;
        else
            par_err <= 1'b1;
    end
    
end

endmodule
