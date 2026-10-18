module FIFO_WR #(
    parameter ADDRSIZE = 4
)(
    input  wire       wclk,
    input  wire    wrst_n,
    input  wire                 winc,
    input  wire [ADDRSIZE:0]    wq2_rptr,
    output reg                  wfull,
    output wire [ADDRSIZE-1:0]  waddr,
    output reg  [ADDRSIZE:0]    wptr  // GRAY WRITE POINTER
    
);

reg  [ADDRSIZE:0] wbin; //BINARY WRITE POINTER
wire [ADDRSIZE:0] wgraynext, wbinnext; //NEXT VALUE FOR BINARY WRITE POINTER,NEXT VALUE FOR GRAY WRITE POINTER
wire      wfull_val;


always @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n) begin
            wbin <= 0;
            wptr <= 0;
        end else begin
            wbin <= wbinnext; 
            wptr <= wgraynext;
        end
    end

assign waddr     = wbin[ADDRSIZE-1:0];
assign wbinnext  = wbin + (winc & ~wfull);
assign wgraynext = (wbinnext >> 1) ^ wbinnext;   //CONVER BINARY TO GRAY
assign wfull_val =
       (wgraynext[ADDRSIZE]   != wq2_rptr[ADDRSIZE]) &&
       (wgraynext[ADDRSIZE-1] != wq2_rptr[ADDRSIZE-1]) &&
       (wgraynext[ADDRSIZE-2:0] == wq2_rptr[ADDRSIZE-2:0]);
       
       
  always @(posedge wclk or negedge wrst_n) begin

        if (!wrst_n) begin
            wfull <= 1'b0;
        end

        else begin
            wfull <= wfull_val;
        end

    end

endmodule
