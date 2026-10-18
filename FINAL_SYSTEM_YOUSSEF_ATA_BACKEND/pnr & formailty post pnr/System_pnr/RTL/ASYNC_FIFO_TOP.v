
module ASYNC_FIFO_TOP #(
    parameter DATA_WIDTH = 8,
    parameter ADDRSIZE   = 4
)(

    input  wire R_CLK,
    input  wire W_CLK,
    input  wire W_RST,    
    input  wire W_INC,
    input  wire [DATA_WIDTH-1:0] WR_DATA,
    input  wire  R_RST, 
    input  wire R_INC,
    output wire FULL,
    output wire [DATA_WIDTH-1:0] RD_DATA,
    output wire  EMPTY
);
    
 wire [ADDRSIZE-1:0] waddr, raddr;
wire [ADDRSIZE:0]   wptr, rptr, wq2_rptr, rq2_wptr; 

FIFO_WR #(.ADDRSIZE(ADDRSIZE)) fifo_wr (
        .wclk(W_CLK),
        .wrst_n(W_RST),
        .winc(W_INC),
        .wq2_rptr(wq2_rptr),
        .wfull(FULL),
        .waddr(waddr),
        .wptr(wptr)
    );
    
    FIFO_RD #(.ADDRSIZE(ADDRSIZE)) fifo_rd (
        .rclk(R_CLK),
        .rrst_n(R_RST),
        .rinc(R_INC),
        .rq2_wptr(rq2_wptr),
        .rempty(EMPTY),
        .raddr(raddr),
        .rptr(rptr)
    );
    
    
    FIFO_MEM_CNTRL #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDRSIZE(ADDRSIZE)
    ) fifo_mem (
        .wclk(W_CLK),
        .winc(W_INC),
        .wfull(FULL),
        .waddr(waddr),
        .raddr(raddr),
        .wdata(WR_DATA),
        .rdata(RD_DATA)
    );
    
    DF_SYNC #(.PTR_WIDTH(ADDRSIZE + 1)) sync_r2w (
        .CLK(W_CLK),
        .RST(W_RST),
        .async_ptr(rptr),
        .sync_ptr(wq2_rptr)
    );
    
    
    DF_SYNC #(.PTR_WIDTH(ADDRSIZE + 1)) sync_w2r (
        .CLK(R_CLK),
        .RST(R_RST),
        .async_ptr(wptr),
        .sync_ptr(rq2_wptr)
    );
  endmodule
