module edge_bit_counter #(
    parameter Prescale_width = 6
)(
    input  wire           CLK,
    input  wire           RST,
    input  wire           enable,
    input  wire [Prescale_width-1:0] Prescale,
    output reg  [Prescale_width-1:0] edge_cnt,
    output reg  [3:0]     bit_cnt
);



always @(posedge CLK or negedge RST) begin
if (!RST) begin
  edge_cnt <= 'b0;
  bit_cnt  <= 'b0;
         end
else if (enable) begin
 if (edge_cnt == (Prescale - 1)) begin // if prescale=8 -->edge_cnt=7, The sample count for this bit has ended.
     edge_cnt <= 'b0;                  
   bit_cnt  <= bit_cnt + 1'b1;      // move on to the next bit.
                               end
  else begin
                edge_cnt <= edge_cnt + 1'b1;
       end
       end else begin     //enable=0
            edge_cnt <= 'b0;
            bit_cnt  <= 'b0;
        end
    end

endmodule
             