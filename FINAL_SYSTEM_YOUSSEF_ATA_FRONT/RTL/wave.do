onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sys_tb/U0/U0_UART/TX_P_DATA
add wave -noupdate /sys_tb/U0/U0_UART/TX_Data_Valid
add wave -noupdate /sys_tb/U0/U0_UART/parity_enable
add wave -noupdate /sys_tb/U0/U0_UART/parity_type
add wave -noupdate /sys_tb/U0/U0_UART/TX_CLK
add wave -noupdate /sys_tb/U0/U0_UART/RX_CLK
add wave -noupdate /sys_tb/U0/U0_UART/RX_IN
add wave -noupdate /sys_tb/U0/U0_UART/Prescale
add wave -noupdate /sys_tb/U0/U0_UART/TX_OUT
add wave -noupdate /sys_tb/U0/U0_UART/busy
add wave -noupdate -radix hexadecimal /sys_tb/U0/U0_UART/RX_P_DATA
add wave -noupdate -color Firebrick -itemcolor Firebrick /sys_tb/U0/U0_UART/RX_data_valid
add wave -noupdate /sys_tb/U0/U0_UART/Stop_Error
add wave -noupdate /sys_tb/U0/U0_UART/Parity_Error
add wave -noupdate -color Magenta -itemcolor Magenta /sys_tb/U0/U0_ref_sync/unsync_bus
add wave -noupdate -color Magenta -itemcolor Magenta /sys_tb/U0/U0_ref_sync/bus_enable
add wave -noupdate -color Magenta -itemcolor Magenta -radix hexadecimal /sys_tb/U0/U0_ref_sync/sync_bus
add wave -noupdate -color Magenta -itemcolor Magenta /sys_tb/U0/U0_ref_sync/pulse_gen_ff
add wave -noupdate -color Magenta -itemcolor Magenta /sys_tb/U0/U0_ref_sync/sync_reg
add wave -noupdate -color Magenta -itemcolor Magenta /sys_tb/U0/U0_ref_sync/enable_pulse
add wave -noupdate -color Magenta -itemcolor Magenta /sys_tb/U0/U0_ref_sync/generated_pulse
add wave -noupdate -radix decimal /sys_tb/U0/U0_SYS_CTRL/ALU_OUT
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/OUT_Valid
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/current_state
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/next_state
add wave -noupdate -color Gold -itemcolor Gold -radix hexadecimal /sys_tb/U0/U0_SYS_CTRL/TX_P_DATA
add wave -noupdate -color Gold -itemcolor Gold /sys_tb/U0/U0_SYS_CTRL/TX_D_VLD
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/ALU_FUN_WD
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/ALU_OPER_W_OP
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/ALU_OPER_W_NOP
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/CLK
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/RST
add wave -noupdate -radix hexadecimal /sys_tb/U0/U0_SYS_CTRL/RX_P_DATA
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/RX_D_VLD
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/RdData
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/RdData_Valid
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/FIFO_FULL
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/Address
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/WrEn
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/RdEn
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/WrData
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/ALU_FUN
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/EN
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/CLK_EN
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/clk_div_en
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/addr_reg
add wave -noupdate /sys_tb/U0/U0_SYS_CTRL/alu_out_reg
add wave -noupdate /sys_tb/U0/U0_RegFile/CLK
add wave -noupdate /sys_tb/U0/U0_RegFile/RST
add wave -noupdate /sys_tb/U0/U0_RegFile/WrEn
add wave -noupdate -color Magenta -itemcolor Magenta /sys_tb/U0/U0_RegFile/RdEn
add wave -noupdate -radix decimal /sys_tb/U0/U0_RegFile/Address
add wave -noupdate /sys_tb/U0/U0_RegFile/WrData
add wave -noupdate -radix hexadecimal /sys_tb/U0/U0_RegFile/RdData
add wave -noupdate /sys_tb/U0/U0_RegFile/RdData_VLD
add wave -noupdate /sys_tb/U0/U0_RegFile/REG0
add wave -noupdate /sys_tb/U0/U0_RegFile/REG1
add wave -noupdate /sys_tb/U0/U0_RegFile/REG2
add wave -noupdate /sys_tb/U0/U0_RegFile/REG3
add wave -noupdate /sys_tb/U0/U0_RegFile/reg_file
add wave -noupdate /sys_tb/U0/U0_FIFO/R_CLK
add wave -noupdate /sys_tb/U0/U0_FIFO/W_CLK
add wave -noupdate /sys_tb/U0/U0_FIFO/W_RST
add wave -noupdate /sys_tb/U0/U0_FIFO/W_INC
add wave -noupdate /sys_tb/U0/U0_FIFO/WR_DATA
add wave -noupdate /sys_tb/U0/U0_FIFO/R_RST
add wave -noupdate /sys_tb/U0/U0_FIFO/R_INC
add wave -noupdate /sys_tb/U0/U0_FIFO/FULL
add wave -noupdate /sys_tb/U0/U0_FIFO/RD_DATA
add wave -noupdate /sys_tb/U0/U0_FIFO/EMPTY
add wave -noupdate /sys_tb/U0/U0_FIFO/waddr
add wave -noupdate /sys_tb/U0/U0_FIFO/raddr
add wave -noupdate /sys_tb/U0/U0_FIFO/wptr
add wave -noupdate /sys_tb/U0/U0_FIFO/rptr
add wave -noupdate /sys_tb/U0/U0_FIFO/wq2_rptr
add wave -noupdate /sys_tb/U0/U0_FIFO/rq2_wptr
add wave -noupdate /sys_tb/U0/U0_ALU/OPER_WIDTH
add wave -noupdate /sys_tb/U0/U0_ALU/OUT_WIDTH
add wave -noupdate /sys_tb/U0/U0_ALU/A
add wave -noupdate /sys_tb/U0/U0_ALU/B
add wave -noupdate /sys_tb/U0/U0_ALU/EN
add wave -noupdate /sys_tb/U0/U0_ALU/ALU_FUN
add wave -noupdate /sys_tb/U0/U0_ALU/CLK
add wave -noupdate /sys_tb/U0/U0_ALU/RST
add wave -noupdate /sys_tb/U0/U0_ALU/ALU_OUT
add wave -noupdate /sys_tb/U0/U0_ALU/OUT_VALID
add wave -noupdate /sys_tb/U0/U0_ALU/ALU_OUT_Comb
add wave -noupdate /sys_tb/U0/U0_ALU/OUT_VALID_Comb
add wave -noupdate /sys_tb/U0/U0_RST_SYNC/SYNC_RST
add wave -noupdate /sys_tb/U0/U0_RST_SYNC/sync_reg
add wave -noupdate /sys_tb/U0/U1_RST_SYNC/CLK
add wave -noupdate /sys_tb/U0/U1_RST_SYNC/RST
add wave -noupdate /sys_tb/U0/U1_RST_SYNC/SYNC_RST
add wave -noupdate /sys_tb/U0/U1_RST_SYNC/sync_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4110760389 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 251
configure wave -valuecolwidth 141
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {3014257173 ps} {4282557423 ps}
