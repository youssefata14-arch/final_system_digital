module DATA_SYNC #(
  parameter NUM_STAGES = 2,
  parameter BUS_WIDTH  = 8
)(
    input  wire                   CLK,
    input  wire                   RST,
    input  wire [BUS_WIDTH-1:0]   unsync_bus,
    input  wire                   bus_enable,
    output reg  [BUS_WIDTH-1:0]   sync_bus,
    output reg                    enable_pulse
);
// 1. Multi Flip Flop
reg [NUM_STAGES-1:0] sync_reg;
always @(posedge CLK or negedge RST) begin
if (!RST) begin
sync_reg <= {NUM_STAGES{1'b0}};end
 else begin
sync_reg <= {sync_reg[NUM_STAGES-2:0], bus_enable};end
end
////////////////////////////////////////////////////////////
// 2. Pulse Generator
reg pulse_gen_ff;
wire generated_pulse;

always @(posedge CLK or negedge RST) begin
if (!RST) begin
 pulse_gen_ff <= 1'b0;end
else begin
   pulse_gen_ff <= sync_reg[NUM_STAGES-1];end
  end

  assign generated_pulse = sync_reg[NUM_STAGES-1] & (~pulse_gen_ff);
  ///////////////////////////////////////////////////////////
  // 3. Registering enable_pulse output
  always @(posedge CLK or negedge RST) begin
        if (!RST) begin
  enable_pulse <= 1'b0; end
   else begin
   enable_pulse <= generated_pulse; end
   end
   /////////////////////////////////////////////////////////////////
   // 4. Mux and Register for sync_bus
   always @(posedge CLK or negedge RST) begin
    if (!RST) begin
    sync_bus <= {BUS_WIDTH{1'b0}};end
    else if (generated_pulse) begin
    sync_bus <= unsync_bus;end
   else begin
            sync_bus <= sync_bus;   end
    end

endmodule
    
    
    
    