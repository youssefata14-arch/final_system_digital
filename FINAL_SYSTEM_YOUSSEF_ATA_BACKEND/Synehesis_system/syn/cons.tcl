
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

# Clocks Parameters Setup 
set REF_CLK_PER      20.0     ; # 50 MHz 
set UART_CLK_PER     271.267  ; # 3.6864 MHz 

set CLK_SETUP_SKEW  0.2      ; # Setup Uncertainty = 0.2 ns
set CLK_HOLD_SKEW   0.1      ; # Hold Uncertainty = 0.1 ns
set CLK_TRANS       0.05     ; # Transition = 0.05 ns


#1. Master Clocks
# 1. Master Clocks Definitions
create_clock -name REF_CLK  -period $REF_CLK_PER  [get_ports REF_CLK]
create_clock -name UART_CLK -period $UART_CLK_PER [get_ports UART_CLK]

#2. Generated clocks
# ALU_CLK (from REF_CLK via Clock Gating Cell)
create_generated_clock -name ALU_CLK -source [get_ports REF_CLK] -divide_by 1 [get_pins U0_CLK_GATE/GATED_CLK]

# TX_CLK (from UART_CLK via U0_ClkDiv)
create_generated_clock -name TX_CLK -source [get_ports UART_CLK] -divide_by 32 [get_pins U0_ClkDiv/o_div_clk]

# RX_CLK (from UART_CLK via U1_ClkDiv)
create_generated_clock -name RX_CLK -source [get_ports UART_CLK] -divide_by 1 [get_pins U1_ClkDiv/o_div_clk]

set ALL_CLOCKS [get_clocks "REF_CLK UART_CLK ALU_CLK RX_CLK TX_CLK"]
set MASTER_CLOCKS [get_clocks "REF_CLK UART_CLK"]
# 3. Clock Uncertainties
set_clock_uncertainty -setup $CLK_SETUP_SKEW $ALL_CLOCKS
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  $ALL_CLOCKS

# 4. Clock Transitions
set_clock_transition $CLK_TRANS $MASTER_CLOCKS

# 5. Don't Touch Network
set_dont_touch_network $ALL_CLOCKS

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous \
                 -group [get_clocks "REF_CLK ALU_CLK"] \
                 -group [get_clocks "UART_CLK RX_CLK TX_CLK"]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.2 * $UART_CLK_PER]
set out_delay [expr 0.2 * $UART_CLK_PER]

# Constrain Input Paths (excluding CLK & RST)
set inputs [list UART_RX_IN]
set_input_delay $in_delay -clock UART_CLK [get_ports $inputs]

# Constrain Output Paths
set outputs [list UART_TX_O parity_error STOP_error]
set_output_delay $out_delay -clock UART_CLK [get_ports $outputs]
####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M  [get_ports $inputs]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports $outputs]
####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################
set_wire_load_model -name tsmc13_wl20 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################
           #########################################################
                  #### Section 8 : premapped cells ####
           #########################################################
####################################################################################


####################################################################################

