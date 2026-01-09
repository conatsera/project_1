`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2025 07:13:01 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module top
   (fan_en_b,
    som240_1_connector_User_led_tri_o,
    som240_1_connector_hpa_clk0p_clk,
    som240_1_connector_pl_gem2_reset,
    som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdc,
    som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_io,
    som240_1_connector_pl_gem2_rgmii_rd,
    som240_1_connector_pl_gem2_rgmii_rx_ctl,
    som240_1_connector_pl_gem2_rgmii_rxc,
    som240_1_connector_pl_gem2_rgmii_td,
    som240_1_connector_pl_gem2_rgmii_tx_ctl,
    som240_1_connector_pl_gem2_rgmii_txc,
    som240_1_connector_sfp_led,
    som240_2_connector_hpb_clk0p_clk,
    som240_2_connector_pl_gem3_reset,
    som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdc,
    som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_io,
    som240_2_connector_pl_gem3_rgmii_rd,
    som240_2_connector_pl_gem3_rgmii_rx_ctl,
    som240_2_connector_pl_gem3_rgmii_rxc,
    som240_2_connector_pl_gem3_rgmii_td,
    som240_2_connector_pl_gem3_rgmii_tx_ctl,
    som240_2_connector_pl_gem3_rgmii_txc);
  output [0:0]fan_en_b;
  output [1:0]som240_1_connector_User_led_tri_o;
  input som240_1_connector_hpa_clk0p_clk;
  output [0:0]som240_1_connector_pl_gem2_reset;
  output som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdc;
  inout som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_io;
  input [3:0]som240_1_connector_pl_gem2_rgmii_rd;
  input som240_1_connector_pl_gem2_rgmii_rx_ctl;
  input som240_1_connector_pl_gem2_rgmii_rxc;
  output [3:0]som240_1_connector_pl_gem2_rgmii_td;
  output som240_1_connector_pl_gem2_rgmii_tx_ctl;
  output som240_1_connector_pl_gem2_rgmii_txc;
  output [1:0]som240_1_connector_sfp_led;
  input som240_2_connector_hpb_clk0p_clk;
  output [0:0]som240_2_connector_pl_gem3_reset;
  output som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdc;
  inout som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_io;
  input [3:0]som240_2_connector_pl_gem3_rgmii_rd;
  input som240_2_connector_pl_gem3_rgmii_rx_ctl;
  input som240_2_connector_pl_gem3_rgmii_rxc;
  output [3:0]som240_2_connector_pl_gem3_rgmii_td;
  output som240_2_connector_pl_gem3_rgmii_tx_ctl;
  output som240_2_connector_pl_gem3_rgmii_txc;

  wire [0:0]fan_en_b;
  wire [1:0]som240_1_connector_User_led_tri_o;
  wire som240_1_connector_hpa_clk0p_clk;
  wire [0:0]som240_1_connector_pl_gem2_reset;
  wire som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdc;
  wire som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_i;
  wire som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_io;
  wire som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_o;
  wire som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_t;
  wire [3:0]som240_1_connector_pl_gem2_rgmii_rd;
  wire som240_1_connector_pl_gem2_rgmii_rx_ctl;
  wire som240_1_connector_pl_gem2_rgmii_rxc;
  wire [3:0]som240_1_connector_pl_gem2_rgmii_td;
  wire som240_1_connector_pl_gem2_rgmii_tx_ctl;
  wire som240_1_connector_pl_gem2_rgmii_txc;
  wire [1:0]som240_1_connector_sfp_led;
  wire som240_2_connector_hpb_clk0p_clk;
  wire [0:0]som240_2_connector_pl_gem3_reset;
  wire som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdc;
  wire som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_i;
  wire som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_io;
  wire som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_o;
  wire som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_t;
  wire [3:0]som240_2_connector_pl_gem3_rgmii_rd;
  wire som240_2_connector_pl_gem3_rgmii_rx_ctl;
  wire som240_2_connector_pl_gem3_rgmii_rxc;
  wire [3:0]som240_2_connector_pl_gem3_rgmii_td;
  wire som240_2_connector_pl_gem3_rgmii_tx_ctl;
  wire som240_2_connector_pl_gem3_rgmii_txc;

  design_top design_top_i
       (.fan_en_b(fan_en_b),
        .som240_1_connector_User_led_tri_o(som240_1_connector_User_led_tri_o),
        .som240_1_connector_hpa_clk0p_clk(som240_1_connector_hpa_clk0p_clk),
        .som240_1_connector_pl_gem2_reset(som240_1_connector_pl_gem2_reset),
        .som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdc(som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdc),
        .som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_i(som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_i),
        .som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_o(som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_o),
        .som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_t(som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_t),
        .som240_1_connector_pl_gem2_rgmii_rd(som240_1_connector_pl_gem2_rgmii_rd),
        .som240_1_connector_pl_gem2_rgmii_rx_ctl(som240_1_connector_pl_gem2_rgmii_rx_ctl),
        .som240_1_connector_pl_gem2_rgmii_rxc(som240_1_connector_pl_gem2_rgmii_rxc),
        .som240_1_connector_pl_gem2_rgmii_td(som240_1_connector_pl_gem2_rgmii_td),
        .som240_1_connector_pl_gem2_rgmii_tx_ctl(som240_1_connector_pl_gem2_rgmii_tx_ctl),
        .som240_1_connector_pl_gem2_rgmii_txc(som240_1_connector_pl_gem2_rgmii_txc),
        .som240_1_connector_sfp_led(som240_1_connector_sfp_led),
        .som240_2_connector_hpb_clk0p_clk(som240_2_connector_hpb_clk0p_clk),
        .som240_2_connector_pl_gem3_reset(som240_2_connector_pl_gem3_reset),
        .som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdc(som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdc),
        .som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_i(som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_i),
        .som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_o(som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_o),
        .som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_t(som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_t),
        .som240_2_connector_pl_gem3_rgmii_rd(som240_2_connector_pl_gem3_rgmii_rd),
        .som240_2_connector_pl_gem3_rgmii_rx_ctl(som240_2_connector_pl_gem3_rgmii_rx_ctl),
        .som240_2_connector_pl_gem3_rgmii_rxc(som240_2_connector_pl_gem3_rgmii_rxc),
        .som240_2_connector_pl_gem3_rgmii_td(som240_2_connector_pl_gem3_rgmii_td),
        .som240_2_connector_pl_gem3_rgmii_tx_ctl(som240_2_connector_pl_gem3_rgmii_tx_ctl),
        .som240_2_connector_pl_gem3_rgmii_txc(som240_2_connector_pl_gem3_rgmii_txc));
  IOBUF som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_iobuf
       (.I(som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_o),
        .IO(som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_io),
        .O(som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_i),
        .T(som240_1_connector_pl_gem2_rgmii_mdio_mdc_mdio_t));
  IOBUF som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_iobuf
       (.I(som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_o),
        .IO(som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_io),
        .O(som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_i),
        .T(som240_2_connector_pl_gem3_rgmii_mdio_mdc_mdio_t));

endmodule
