#create_pblock pblock_platform_core_0
#add_cells_to_pblock [get_pblocks pblock_platform_core_0] [get_cells -quiet [list \
#          design_top_i/core_0/GND \
#          design_top_i/core_0/axi_intc_0 \
#          design_top_i/core_0/axi_intc_0_i_1 \
#          design_top_i/core_0/axi_intc_0_i_2 \
#          design_top_i/core_0/axi_timer_0 \
#          design_top_i/core_0/axi_vdma_0 \
#          design_top_i/core_0/blk_mem_gen_0 \
#          design_top_i/core_0/clk_wiz_0 \
#          design_top_i/core_0/dlmb \
#          design_top_i/core_0/dlmb_bram_if_cntlr \
#          design_top_i/core_0/ilmb \
#          design_top_i/core_0/ilmb_bram_if_cntlr \
#          design_top_i/core_0/iomodule_0 \
#          design_top_i/core_0/microblaze_riscv_0 \
#          design_top_i/core_0/proc_sys_reset_0 \
#          design_top_i/core_0/smartconnect_0]]
#resize_pblock [get_pblocks pblock_platform_core_0] -add {SLICE_X6Y0:SLICE_X22Y59 \
#                                                         DSP48E2_X2Y0:DSP48E2_X5Y23 \
#                                                         CLOCKREGION_X1Y0:CLOCKREGION_X2Y0 \
#}
#create_pblock pblock_platform_core_1
#add_cells_to_pblock [get_pblocks pblock_platform_core_1] [get_cells -quiet [list design_top_i/core_0/core_1]]
#resize_pblock [get_pblocks pblock_platform_core_1] -add {SLICE_X6Y60:SLICE_X22Y119 \
#                                                         DSP48E2_X2Y24:DSP48E2_X5Y47 \
#                                                         CLOCKREGION_X1Y1:CLOCKREGION_X2Y1 \
#}



create_pblock vitis_half
add_cells_to_pblock [get_pblocks vitis_half] [get_cells -quiet [list design_top_i/VitisRegion]]
resize_pblock [get_pblocks vitis_half] -add {CLOCKREGION_X1Y0:CLOCKREGION_X2Y1 \
                                             SLICE_X41Y120:SLICE_X60Y179 \
                                             BUFG_GT_X0Y48:BUFG_GT_X0Y71 \
                                             BUFG_GT_SYNC_X0Y30:BUFG_GT_SYNC_X0Y44 \
                                             DSP48E2_X12Y48:DSP48E2_X12Y71 \
                                             GTHE4_CHANNEL_X0Y8:GTHE4_CHANNEL_X0Y11 \
                                             GTHE4_COMMON_X0Y2:GTHE4_COMMON_X0Y2 \
                                             RAMB18_X1Y48:RAMB18_X2Y71 \
                                             RAMB36_X1Y24:RAMB36_X2Y35 \
                                             URAM288_X0Y32:URAM288_X0Y47 \
                                             SLICE_X24Y120:SLICE_X40Y239 \
                                             DSP48E2_X6Y48:DSP48E2_X11Y95 \
                                             RAMB18_X0Y48:RAMB18_X0Y95 \
                                             RAMB36_X0Y24:RAMB36_X0Y47 \
                                             CLOCKREGION_X2Y3}
# CLOCKREGION_X2Y2:CLOCKREGION_X2Y3 \
#SLICE_X20Y60:SLICE_X22Y239 DSP48E2_X5Y24:DSP48E2_X5Y95 IOB_X1Y52:IOB_X1Y103 \
#SLICE_X29Y120:SLICE_X40Y239 DSP48E2_X7Y48:DSP48E2_X11Y95}
set_property SNAPPING_MODE ON [get_pblocks vitis_half]

#set_property LOC PLL_X0Y3 [get_cell design_top_i/VitisRegion_0/clk_wiz_5/inst/plle4_adv_inst]