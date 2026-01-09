create_clock -period 8.000 [get_ports som240_1_connector_pl_gem2_rgmii_rxc]
create_clock -period 8.000 [get_ports som240_2_connector_pl_gem3_rgmii_rxc]

#create_clock -period 40.000 -name mdio2_mdc_clock [get_pins platform_top_i/zynq_ultra_ps_e_0/inst/PS8_i/EMIOENET2MDIOMDC]
#create_clock -period 40.000 -name mdio3_mdc_clock [get_pins platform_top_i/zynq_ultra_ps_e_0/inst/PS8_i/EMIOENET3MDIOMDC]
#create_clock -period 400.000 -name clk_out2_5M_design_top_clk_wiz_0_0 [get_pins platform_top_i/z

set_property CLOCK_DELAY_GROUP rgmii_clocks [get_nets {design_top_i/clk_reset_gen/bufgce_div_2_5M/U0/BUFGCE_O[0]}]
#set_property CLOCK_DELAY_GROUP rp_clks [get_nets {design_top_i/clk_reset_gen/clk_wiz_hpb_clk_out_300M PATH	design_top_i/clk_reset_gen/clk_wiz_hpb_clk_out_300M_rp}]