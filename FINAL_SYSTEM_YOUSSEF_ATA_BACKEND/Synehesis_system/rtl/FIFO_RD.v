
module FIFO_RD #(
    parameter ADDRSIZE = 4
)(
    input  wire                 rclk,
    input  wire                 rrst_n,
    input  wire                 rinc,
    input  wire [ADDRSIZE:0]    rq2_wptr,
    output reg                  rempty,
    output wire [ADDRSIZE-1:0]  raddr,
    output reg  [ADDRSIZE:0]    rptr  // GRAY READ POINTER
);


reg  [ADDRSIZE:0] rbin; //READ POINTER BINARY
 wire [ADDRSIZE:0] rgraynext, rbinnext;
wire          rempty_val;

always @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n) begin
            rbin <= 0;
            rptr <= 0;
        end else begin
            rbin <= rbinnext;
            rptr <= rgraynext;
        end
    end
    
    
assign raddr      = rbin[ADDRSIZE-1:0];
assign rbinnext   = rbin + (rinc & ~rempty);
assign rgraynext  = (rbinnext >> 1) ^ rbinnext; //CONVER BINARY TO GRAY
assign rempty_val = (rgraynext == rq2_wptr);

always @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n) begin
            rempty <= 1'b1;
        end else begin
            rempty <= rempty_val;
        end
    end
endmodule    
    
    