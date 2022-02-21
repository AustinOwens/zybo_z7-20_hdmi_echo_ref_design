--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
--Date        : Sat Feb 19 23:28:03 2022
--Host        : austin-ubuntu running 64-bit Ubuntu 18.04.6 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_rx_clk_n : in STD_LOGIC;
    hdmi_rx_clk_p : in STD_LOGIC;
    hdmi_rx_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_rx_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_rx_ddc_scl_io : inout STD_LOGIC;
    hdmi_rx_ddc_sda_io : inout STD_LOGIC;
    hdmi_rx_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sysclk : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    hdmi_rx_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_rx_clk_p : in STD_LOGIC;
    hdmi_rx_clk_n : in STD_LOGIC;
    hdmi_rx_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_rx_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_rx_ddc_scl_i : in STD_LOGIC;
    hdmi_rx_ddc_scl_o : out STD_LOGIC;
    hdmi_rx_ddc_scl_t : out STD_LOGIC;
    hdmi_rx_ddc_sda_i : in STD_LOGIC;
    hdmi_rx_ddc_sda_o : out STD_LOGIC;
    hdmi_rx_ddc_sda_t : out STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sysclk : in STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal hdmi_rx_ddc_scl_i : STD_LOGIC;
  signal hdmi_rx_ddc_scl_o : STD_LOGIC;
  signal hdmi_rx_ddc_scl_t : STD_LOGIC;
  signal hdmi_rx_ddc_sda_i : STD_LOGIC;
  signal hdmi_rx_ddc_sda_o : STD_LOGIC;
  signal hdmi_rx_ddc_sda_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      btn(3 downto 0) => btn(3 downto 0),
      hdmi_rx_clk_n => hdmi_rx_clk_n,
      hdmi_rx_clk_p => hdmi_rx_clk_p,
      hdmi_rx_data_n(2 downto 0) => hdmi_rx_data_n(2 downto 0),
      hdmi_rx_data_p(2 downto 0) => hdmi_rx_data_p(2 downto 0),
      hdmi_rx_ddc_scl_i => hdmi_rx_ddc_scl_i,
      hdmi_rx_ddc_scl_o => hdmi_rx_ddc_scl_o,
      hdmi_rx_ddc_scl_t => hdmi_rx_ddc_scl_t,
      hdmi_rx_ddc_sda_i => hdmi_rx_ddc_sda_i,
      hdmi_rx_ddc_sda_o => hdmi_rx_ddc_sda_o,
      hdmi_rx_ddc_sda_t => hdmi_rx_ddc_sda_t,
      hdmi_rx_hpd(0) => hdmi_rx_hpd(0),
      hdmi_tx_clk_n => hdmi_tx_clk_n,
      hdmi_tx_clk_p => hdmi_tx_clk_p,
      hdmi_tx_data_n(2 downto 0) => hdmi_tx_data_n(2 downto 0),
      hdmi_tx_data_p(2 downto 0) => hdmi_tx_data_p(2 downto 0),
      led(3 downto 0) => led(3 downto 0),
      sysclk => sysclk
    );
hdmi_rx_ddc_scl_iobuf: component IOBUF
     port map (
      I => hdmi_rx_ddc_scl_o,
      IO => hdmi_rx_ddc_scl_io,
      O => hdmi_rx_ddc_scl_i,
      T => hdmi_rx_ddc_scl_t
    );
hdmi_rx_ddc_sda_iobuf: component IOBUF
     port map (
      I => hdmi_rx_ddc_sda_o,
      IO => hdmi_rx_ddc_sda_io,
      O => hdmi_rx_ddc_sda_i,
      T => hdmi_rx_ddc_sda_t
    );
end STRUCTURE;
