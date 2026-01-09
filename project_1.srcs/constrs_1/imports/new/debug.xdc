#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_top_i/mpsoc/zynq_ultra_ps_e_0/inst/pl_clk_unbuffered[2]]
# design_top_i/mpsoc/zynq_ultra_ps_e_0/inst/buffer_pl_clk_2.



#create_pblock pblock_1
#add_cells_to_pblock [get_pblocks pblock_1] [get_cells -quiet [list design_top_i/clk_wiz_2 u_ila_0]]
#resize_pblock [get_pblocks pblock_1] -add {SLICE_X23Y180:SLICE_X23Y239 \
#                                           IOB_X1Y156:IOB_X1Y207 \
#                                           BUFGCE_X0Y95:BUFGCE_X0Y72 \
#                                           BUFCE_ROW_X0Y95:BUFCE_ROW_X0Y72 \
#                                           BUFGCE_DIV_X0Y15:BUFGCE_DIV_X0Y12 \
#                                           BUFGCTRL_X0Y24:BUFGCTRL_X0Y31 \
#                                           PLL_X0Y6PLL_X0Y7 \
#                                           CLOCKREGION_X0Y1:CLOCKREGION_X0Y3 \
#}
#
#create_debug_core u_ila_0 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
#set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
#set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
#set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
#set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
#set_property C_INPUT_PIPE_STAGES 1 [get_debug_cores u_ila_0]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
#set_property port_width 1 [get_debug_ports u_ila_0/clk]
#connect_debug_port u_ila_0/clk [get_nets design_top_i/clk_wiz_2/clk_out1]
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
#set_property port_width 1 [get_debug_ports u_ila_0/probe0]
#connect_debug_port u_ila_0/probe0 [get_nets design_top_i/mpsoc/zynq_ultra_ps_e_0_pl_clk0]
#set_property C_CLK_INPUT_FREQ_HZ 400000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets design_top_i/clk_wiz_2/clk_out1]