module CLK_DIV (
    input  wire       i_ref_clk,
    input  wire       i_rst_n,
    input  wire       i_clk_en,
    input  wire [7:0] i_div_ratio,
    output wire       o_div_clk
);

reg [7:0] counter;
reg       div_clk_reg;
wire      CLK_DIV_EN;


assign CLK_DIV_EN = i_clk_en && (i_div_ratio != 8'd0) && (i_div_ratio != 8'd1);


always @(posedge i_ref_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
        counter     <= 8'd0;
        div_clk_reg <= 1'b0;
    end
    else if (!CLK_DIV_EN) begin
        counter     <= 8'd0;
        
    end
    else begin
        if (counter == (i_div_ratio - 1)) begin
            counter     <= 8'd0;
            div_clk_reg <= ~div_clk_reg; // Toggle at the end of full cycle
        end
        else if (counter == ((i_div_ratio >> 1) - 1)) begin
            counter     <= counter + 1'b1;
            div_clk_reg <= ~div_clk_reg; // Toggle at half cycle
        end
        else begin
            counter     <= counter + 1'b1;
        end
    end
end


assign o_div_clk = CLK_DIV_EN ? div_clk_reg : i_ref_clk;

endmodule
