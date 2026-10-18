
module FIFO_MEM_CNTRL #(
    parameter DATA_WIDTH = 8,
    parameter ADDRSIZE   = 4
)(
    input  wire                  wclk,
    input  wire                  winc,
    input  wire                  wfull,
    input  wire [ADDRSIZE-1:0]   waddr,
    input  wire [ADDRSIZE-1:0]   raddr,
    input  wire [DATA_WIDTH-1:0] wdata,
    
    output wire [DATA_WIDTH-1:0] rdata
);

localparam DEPTH = 1 << ADDRSIZE; //BECAUSE THE DEPTH = 2^ADDRESIZE
reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
always @(posedge wclk) begin
        if (winc && !wfull) begin
            mem[waddr] <= wdata;
        end
    end
    assign rdata = mem[raddr];
endmodule