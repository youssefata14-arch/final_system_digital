module DF_SYNC #(
    parameter PTR_WIDTH = 4
)(
    input  wire  CLK,
    input  wire   RST,
    input  wire [PTR_WIDTH-1:0] async_ptr,
    output reg  [PTR_WIDTH-1:0] sync_ptr
);

reg [PTR_WIDTH-1:0] sync_reg;
always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            sync_reg <= 0;
            sync_ptr <= 0;
        end else begin
            sync_reg <= async_ptr;
            sync_ptr <= sync_reg;
        end
    end

endmodule