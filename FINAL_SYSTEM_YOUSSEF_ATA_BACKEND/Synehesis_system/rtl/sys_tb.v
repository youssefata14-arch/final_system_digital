`timescale 1ns / 1ps

module sys_tb;

    // Parameters
    parameter DATA_WIDTH     = 8;
    parameter REF_CLK_PERIOD  = 10;     // 100 MHz Reference Clock
    parameter UART_CLK_PERIOD = 271.26; // 3.6864 MHz UART Clock

    // Testbench Signals
    reg  tb_REF_CLK;
    reg  tb_UART_CLK;
    reg  tb_RST_N;
    reg  tb_UART_RX_IN;
    wire tb_UART_TX_O;
    wire tb_parity_error;
    wire tb_STOP_error;

    // Command Opcodes
    localparam WR_CMD    = 8'hAA;
    localparam RD_CMD    = 8'hBB;
    localparam ALU_W_OP  = 8'hCC;
    localparam ALU_W_NOP = 8'hDD;

    integer correct_count = 0;
    integer error_count   = 0;

    // Instantiate DUT
    SYS_TOP #(
        .DATA_WIDTH(DATA_WIDTH)
    ) U0 (
        .RST_N(tb_RST_N),
        .UART_CLK(tb_UART_CLK),
        .REF_CLK(tb_REF_CLK),
        .UART_RX_IN(tb_UART_RX_IN),
        .UART_TX_O(tb_UART_TX_O),
        .parity_error(tb_parity_error),
        .STOP_error(tb_STOP_error)
    );

    // Clock Generation
    always #(REF_CLK_PERIOD  / 2.0) tb_REF_CLK  = ~tb_REF_CLK;
    always #(UART_CLK_PERIOD / 2.0) tb_UART_CLK = ~tb_UART_CLK;

    // Prescale = 32
    localparam BIT_PERIOD = 32 * UART_CLK_PERIOD;

    initial begin
        $dumpfile("SYS_TOP.vcd");
        $dumpvars;
    end

    initial begin
        init_system();
        reset_system();

        // 1- System Configurations (REG2 & REG3)
        // REG2 Config: Prescale=32, Parity Type=Even (0), Parity Enable=1 -> 0x21
       write_cmd_sequence(8'h02, 8'b10000001);
        // REG3 Config: Div Ratio = 32 -> 0x20
        write_cmd_sequence(8'h03, 8'h20);
        #(BIT_PERIOD * 10);


        // 2: Testing RegFile Write & Read Operations
        write_cmd_sequence(8'h05, 8'hA5);
        write_cmd_sequence(8'h0A, 8'h5B);

        read_and_check_cmd(8'h05, 8'hA5);
        read_and_check_cmd(8'h0A, 8'h5B);

        // 3: Testing ALU Operations with Operands
        // ADD: OpA = 10, OpB = 5, FUN = 0 -> Result = 15
         alu_w_op_cmd_sequence(8'h0A, 8'h05, 8'h00, 16'h000F);
         // MUL: OpA = 200, OpB = 10, FUN = 2 -> Result = 2000
         alu_w_op_cmd_sequence(8'd200, 8'd10, 8'd2, 16'h07D0);
          // XOR OpA = 10, OpB = 5, FUN = 8 -> Result = 15
           alu_w_op_cmd_sequence(8'h0A, 8'h05, 8'h08, 16'h000F);
          
        // 4: Testing ALU Operations with NO Operands
        
        alu_w_nop_cmd_sequence(8'h00, 16'd15);

       
        $display("At the end of test --> Error Count = %0d | Correct Count = %0d", error_count, correct_count);
               #100;
        $stop;
    end 

    // Tasks
    task init_system;
        begin
            tb_REF_CLK    = 1'b0;
            tb_UART_CLK   = 1'b0;
            tb_RST_N      = 1'b1;
            tb_UART_RX_IN = 1'b1;
        end
    endtask

    task reset_system;
        begin
            #(REF_CLK_PERIOD * 2);
            tb_RST_N = 1'b0;
            #(REF_CLK_PERIOD * 10);
            tb_RST_N = 1'b1;
            #(REF_CLK_PERIOD * 10);
        end
    endtask

    // Task to Send 1 Byte over UART RX line (Start + 8 Data + Parity(Even) + Stop)
    task send_uart_byte;
        input [7:0] data;
        integer i;
        reg parity_bit;
        begin
            parity_bit = ^data; // Even Parity Calculation

            // Start Bit (0)
            tb_UART_RX_IN = 1'b0;
            #(BIT_PERIOD);

            // Data Bits (LSB First)
            for (i = 0; i < 8; i = i + 1) begin
                tb_UART_RX_IN = data[i];
                #(BIT_PERIOD);
            end

            // Parity Bit
            tb_UART_RX_IN = parity_bit;
            #(BIT_PERIOD);

            // Stop Bit (1)
            tb_UART_RX_IN = 1'b1;
            #(BIT_PERIOD);
        end
    endtask 

    // Task to Receive and Check 1 Byte over UART TX line 
    task receive_and_check_byte;
        input [7:0] expected_data;
        integer i;
        reg [7:0] received_data;
        begin
            
            @(negedge tb_UART_TX_O);

            #(BIT_PERIOD / 2.0); // Center sampling of Start bit

            if (tb_UART_TX_O !== 1'b0) begin
                $display("UART ERROR: NOT Start Bit");
            end

            // Sample 8 Data Bits
            for (i = 0; i < 8; i = i + 1) begin
                #(BIT_PERIOD);
                received_data[i] = tb_UART_TX_O;
            end

            // Skip Parity and Stop bits
            #(BIT_PERIOD * 2);

            // Compare Results
            if (received_data === expected_data) begin
                $display("PASS: Expected = 0x%0h, Received = 0x%0h", expected_data, received_data);
                correct_count = correct_count + 1;
            end else begin
                $display("FAIL: Expected = 0x%0h, Received = 0x%0h", expected_data, received_data);
                error_count = error_count + 1;
            end
        end
    endtask

    task write_cmd_sequence;
        input [7:0] addr;
        input [7:0] data;
        begin
            $display("[WRITE REG]: Addr = 0x%0h, Data = 0x%0h", addr, data);
            send_uart_byte(WR_CMD);
            send_uart_byte(addr);
            send_uart_byte(data);
            #(BIT_PERIOD * 2);
        end
    endtask

    task read_and_check_cmd;
        input [7:0] addr;
        input [7:0] expected_data;
        begin
            $display("[READ REG]: Addr = 0x%0h", addr);
            send_uart_byte(RD_CMD);
            send_uart_byte(addr);
            receive_and_check_byte(expected_data);
        end
    endtask

    task alu_w_op_cmd_sequence;
        input [7:0] opa;
        input [7:0] opb;
        input [7:0] fun;
        input [15:0] expected_result;
        begin
            $display("[ALU W_OP]: OpA = 0x%0h, OpB = 0x%0h, FUN = 0x%0h", opa, opb, fun);
            send_uart_byte(ALU_W_OP);
            send_uart_byte(opa);
            send_uart_byte(opb);
            send_uart_byte(fun);
         
            // Check Low Byte first then High Byte
            receive_and_check_byte(expected_result[7:0]);
            receive_and_check_byte(expected_result[15:8]);
            #(BIT_PERIOD * 2);
        end
    endtask

    task alu_w_nop_cmd_sequence;
        input [7:0] fun;
        input [15:0] expected_result;
        begin
            $display("[ALU W_NOP]: FUN = 0x%0h", fun);
            send_uart_byte(ALU_W_NOP);
            send_uart_byte(fun);

            // Check Low Byte first then High Byte
            receive_and_check_byte(expected_result[7:0]);
            receive_and_check_byte(expected_result[15:8]);
        end
    endtask

endmodule







