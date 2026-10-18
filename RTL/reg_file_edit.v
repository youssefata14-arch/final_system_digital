module reg_file_edit
(
    input  wire                 CLK,
    input  wire                 RST,
    input  wire                 WrEn,
    input  wire                 RdEn,
    input  wire [3:0]           Address,
    input  wire [7:0]           WrData,

    output reg  [7:0]           RdData,
    output reg                  RdData_VLD,

    output wire [7:0]           REG0,
    output wire [7:0]           REG1,
    output wire [7:0]           REG2,
    output wire [7:0]           REG3
);

reg [7:0] reg_file [15:0];

always @(posedge CLK or negedge RST)
begin
    if(!RST)
    begin
        RdData_VLD <= 1'b0;
        RdData     <= 8'b0;

            reg_file[0]  <= 8'b0; 
            reg_file[1]  <= 8'b0; 
            reg_file[2]  <= 8'b10000001; // UART Config
            reg_file[3]  <= 8'b00100000; // Clock Divider Ratio
            reg_file[4]  <= 8'b0; 
            reg_file[5]  <= 8'b0; 
            reg_file[6]  <= 8'b0; 
            reg_file[7]  <= 8'b0; 
            reg_file[8]  <= 8'b0;
            reg_file[9]  <= 8'b0;
            reg_file[10] <= 8'b0;
            reg_file[11] <= 8'b0;
            reg_file[12] <= 8'b0;
            reg_file[13] <= 8'b0;
            reg_file[14] <= 8'b0;
            reg_file[15] <= 8'b0;
    end

    else if(WrEn && !RdEn)
    begin
        reg_file[Address] <= WrData;
    end

    else if(RdEn && !WrEn)
    begin
        RdData     <= reg_file[Address];
        RdData_VLD <= 1'b1;
    end

    else
    begin
        RdData_VLD <= 1'b0;
    end
end

    assign REG0 = reg_file[0]; // ALU Operand A
    assign REG1 = reg_file[1]; // ALU Operand B
    assign REG2 = reg_file[2]; // UART Config
    assign REG3 = reg_file[3]; // Clock Divider Ratio
endmodule