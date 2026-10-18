module SERIALIZER #(parameter DATA_WIDTH = 8)(
    input  wire                  CLK,
    input  wire                  RST,
    input  wire [DATA_WIDTH-1:0] P_DATA,
    input  wire                  ser_en,
    input  wire                  Data_Valid,
    output wire                  ser_data,
    output reg                   ser_done
);

reg [7:0] shift_reg;
reg [2:0] counter;

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        shift_reg <= 8'b0;
        counter   <= 3'b0;
        ser_done  <= 1'b0;
    end else if (Data_Valid && !ser_en) begin
        shift_reg <= P_DATA;
        counter   <= 3'b0;
        ser_done  <= 1'b0;
    end else if (ser_en) begin
        shift_reg <= shift_reg >> 1;
        counter   <= counter + 1'b1;
        
        
        if (counter == 3'd6) 
            ser_done <= 1'b1;
        else
            ser_done <= 1'b0;
            
    end else begin
        ser_done <= 1'b0; 
        counter  <= 3'b0;
    end
end

assign ser_data = shift_reg[0];

endmodule