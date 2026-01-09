set_false_path -from [get_clocks clk_out375M_design_top_clk_wiz_0_0] -to [get_clocks {mdio2_mdc_clock mdio3_mdc_clock}]

#set_multicycle_path -setup -from [get_pins {design_top_i/clk_reset_gen/sync_0/inst/block[0].data_sync_reg3/C}] 3
#set_multicycle_path -hold -from [get_pins {design_top_i/clk_reset_gen/sync_0/inst/block[0].data_sync_reg3/C}] 2

set_property HD.NO_ROUTE_CONTAINMENT true [get_nets -segments -of [get_pins -of [get_cells -hier -filter {PRIMITIVE_SUBGROUP == BUFFER && NAME =~ *design_top_i/clk_reset_gen*}] -filter {DIRECTION == OUT}]]

#set_false_path -from [get_clocks clk_out375M_design_top_clk_wiz_0_0] -to [get_clocks clk_pl_0]


#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]
# CONFIG.CLK_DOMAIN	design_top_clk_wiz_0_clk_out_250M
#set_false_path -from [get_clocks  "clk_out300M_VitisRegion_inst_0_clk_wiz_5_0"] -to [get_clocks clk_pl_1]
set_false_path -from [get_pins -hier -filter { PARENT_CELL =~  "design_top_i/VitisRegion/*/int_interrupt_reg"}] -to [get_pins -hierarchical -filter { PARENT_CELL =~  "design_top_i/ila_0/*" }]
