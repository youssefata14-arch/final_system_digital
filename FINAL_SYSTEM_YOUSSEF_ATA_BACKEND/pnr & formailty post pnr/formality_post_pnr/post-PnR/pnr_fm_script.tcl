set SSLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

# Synopsys setup variable
set synopsys_auto_setup true

# The DFT svf forces test_mode=1 during match (see log: "Set test_mode to constant 1"),
# so by default we read ONLY the synthesis svf.
# Set USE_DFT_SVF to 1 to bring the DFT svf back.
set USE_DFT_SVF 0
if {$USE_DFT_SVF} {
  set_svf [list /home/ICer/Labs/syn_system/syn/SYS_TOP.svf /home/ICer/Labs/DFT_sys/dft/SYS_TOP_dft.svf]
} else {
  set_svf /home/ICer/Labs/syn_system/syn/SYS_TOP.svf
}

######################### Reference Container ############################

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
  /home/ICer/Labs/syn_system/rtl/mux2X1.v \
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

## Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design
set_reference_design SYS_TOP
set_top SYS_TOP

#################### Implementation Container #####################

read_verilog -container Imp "/home/ICer/Labs/formality_post_pnr/SYS_TOP.v"
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

set_implementation_design SYS_TOP_dft
set_top SYS_TOP_dft

########################## Don't verify ###########################


set_dont_verify_points -type port Imp:/WORK/*/SI*

#scan_out

set_dont_verify_points -type port Imp:/WORK/*/SO*
############################ Constants ############################
# Must be done in SETUP mode, i.e. BEFORE match
set_constant Imp:/WORK/SYS_TOP_dft/test_mode 0
set_constant Imp:/WORK/SYS_TOP_dft/SE 0

###################### Matching Compare points ####################

match

# Debug info after match
report_constants
catch {report_unmatched_points > "reports/unmatched_points.rpt"}
catch {report_guidance -status rejected > "reports/rejected_guidance.rpt"}

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
  diagnose
  analyze_points -failing
}

########################### Reporting #############################

report_passing_points    > "reports/passing_points.rpt"
report_failing_points    > "reports/failing_points.rpt"
report_aborted_points    > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"

########################### Start GUI #############################
start_gui
