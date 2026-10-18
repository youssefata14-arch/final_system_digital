
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################
set hdlin_ignore_parallel_designware true
set hdlin_dw_foundation_symbols false

set synopsys_auto_setup false

set_svf /home/ICer/Labs/syn_system/syn/SYS_TOP.svf


set SSLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################
## 1. Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

## Read Reference Design Files (.v)
read_verilog -container Ref [list \
  /home/ICer/Labs/syn_system/rtl/alu_edit.v \
  /home/ICer/Labs/syn_system/rtl/ASYNC_FIFO_TOP.v \
  /home/ICer/Labs/syn_system/rtl/CLK_DIV.v \
  /home/ICer/Labs/syn_system/rtl/CLK_GATE.v \
  /home/ICer/Labs/syn_system/rtl/CLOCK_DIV_MUX.v \
  /home/ICer/Labs/syn_system/rtl/Data_Sampling.v \
  /home/ICer/Labs/syn_system/rtl/DATA_SYNC.v \
  /home/ICer/Labs/syn_system/rtl/Deserializer.v \
  /home/ICer/Labs/syn_system/rtl/DF_SYNC.v \
  /home/ICer/Labs/syn_system/rtl/edge_bit_counter.v \
  /home/ICer/Labs/syn_system/rtl/FIFO_MEM_CNTRL.v \
  /home/ICer/Labs/syn_system/rtl/FIFO_RD.v \
  /home/ICer/Labs/syn_system/rtl/FIFO_WR.v \
  /home/ICer/Labs/syn_system/rtl/MUX.v \
  /home/ICer/Labs/syn_system/rtl/PARITY.v \
  /home/ICer/Labs/syn_system/rtl/Parity_Check.v \
  /home/ICer/Labs/syn_system/rtl/pulse_gen.v \
  /home/ICer/Labs/syn_system/rtl/reg_file_edit.v \
  /home/ICer/Labs/syn_system/rtl/RST_SYNC.v \
  /home/ICer/Labs/syn_system/rtl/SERIALIZER.v \
  /home/ICer/Labs/syn_system/rtl/Start_Check.v \
  /home/ICer/Labs/syn_system/rtl/Stop_Check.v \
  /home/ICer/Labs/syn_system/rtl/SYS_TOP.v \
  /home/ICer/Labs/syn_system/rtl/TOP_UART.v \
  /home/ICer/Labs/syn_system/rtl/TOP_UART_RX.v \
  /home/ICer/Labs/syn_system/rtl/TOP_UART_TX.v \
]

## Read SystemVerilog Files (.sv)
read_sverilog -container Ref [list \
  /home/ICer/Labs/syn_system/rtl/FSM.sv \
  /home/ICer/Labs/syn_system/rtl/FSM_tx.sv \
  /home/ICer/Labs/syn_system/rtl/sys_ctrl.sv \
]

## 4. Set Reference Design
set_reference_design $top_module
set_top $top_module

######################## Implementation Container #########################

## Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB ]

## Read Implementation Design Files
 read_verilog -container Imp "/home/ICer/Labs/syn_system/syn/netlists/SYS_TOP.v"


## set the top Implementation Design

set_implementation_design $top_module
set_top $top_module

## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}


report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
