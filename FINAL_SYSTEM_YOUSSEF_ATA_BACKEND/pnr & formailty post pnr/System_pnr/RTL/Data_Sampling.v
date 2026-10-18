module Data_Sampling #(
    parameter Prescale_width = 6
)(
    input  wire           CLK,
    input  wire           RST,
    input  wire           RX_IN,
    input  wire [Prescale_width -1:0] Prescale,
    input  wire [Prescale_width -1:0] edge_cnt,
    input  wire           dat_samp_en,
    output reg            sampled_bit
);
 reg [2:0] samples;
wire [Prescale_width -1:0] half_edge;
assign half_edge = Prescale >> 1;   //middel bit




always @(posedge CLK or negedge RST) begin
if (!RST) begin
  samples     <= 3'b0;
  sampled_bit <= 1'b0;
         end
  else if (dat_samp_en) begin
    if (edge_cnt == (half_edge - 1))
       samples[0] <= RX_IN;
 else if (edge_cnt == half_edge)
    samples[1] <= RX_IN;
 else if (edge_cnt == (half_edge + 1)) begin
    samples[2] <= RX_IN;
     
     
sampled_bit <= (samples[0] & samples[1]) | (samples[0] & RX_IN) | (samples[1] & RX_IN);
            end
  end else begin
       samples <= 3'b0; // if not dat_samp_en 
        end
    end

endmodule