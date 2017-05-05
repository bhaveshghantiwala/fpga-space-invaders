##Clock signal
##IO_L11P_T1_SRCC_35	
set_property PACKAGE_PIN L16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.58 [get_ports clk]

##Switches
##IO_L19N_T3_VREF_35
#this is the on switch for the entire circuit (reset-like feature)
#set_property PACKAGE_PIN G15 [get_ports {on_sw}]
#set_property IOSTANDARD LVCMOS33 [get_ports {on_sw}]

##IO_L24P_T3_34
#set_property PACKAGE_PIN P15 [get_ports {sw[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]

##IO_L4N_T0_34
#set_property PACKAGE_PIN W13 [get_ports {sw[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]

##IO_L9P_T1_DQS_34
set_property PACKAGE_PIN T16 [get_ports {clk_rst}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_rst}]

##Buttons
##IO_L20N_T3_34
set_property PACKAGE_PIN R18 [get_ports {cont_btn}]
set_property IOSTANDARD LVCMOS33 [get_ports {cont_btn}]

##IO_L24N_T3_34
set_property PACKAGE_PIN P16 [get_ports {move_rt_btn}]
set_property IOSTANDARD LVCMOS33 [get_ports {move_rt_btn}]

##IO_L18P_T2_34
set_property PACKAGE_PIN V16 [get_ports {shoot_btn}]
set_property IOSTANDARD LVCMOS33 [get_ports {shoot_btn}]

##IO_L7P_T1_34
set_property PACKAGE_PIN Y16 [get_ports {move_lft_btn}]
set_property IOSTANDARD LVCMOS33 [get_ports {move_lft_btn}]

##LEDs
##IO_L23P_T3_35
#set_property PACKAGE_PIN M14 [get_ports {led[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

##IO_L23N_T3_35
#set_property PACKAGE_PIN M15 [get_ports {led[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

##IO_0_35
#set_property PACKAGE_PIN G14 [get_ports {led[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

##IO_L3N_T0_DQS_AD1N_35
#set_property PACKAGE_PIN D18 [get_ports {led[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

##I2S Audio Codec
##IO_L12N_T1_MRCC_35
#set_property PACKAGE_PIN K18 [get_ports ac_bclk]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_bclk]

##IO_25_34
#set_property PACKAGE_PIN T19 [get_ports ac_mclk]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_mclk]

##IO_L23N_T3_34
#set_property PACKAGE_PIN P18 [get_ports ac_muten]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_muten]

##IO_L8P_T1_AD10P_35
#set_property PACKAGE_PIN M17 [get_ports ac_pbdat]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_pbdat]

##IO_L11N_T1_SRCC_35
#set_property PACKAGE_PIN L17 [get_ports ac_pblrc]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_pblrc]

##IO_L12P_T1_MRCC_35
#set_property PACKAGE_PIN K17 [get_ports ac_recdat]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_recdat]

##IO_L8N_T1_AD10N_35
#set_property PACKAGE_PIN M18 [get_ports ac_reclrc]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_reclrc]

##Audio Codec/external EEPROM IIC bus
##IO_L13P_T2_MRCC_34
#set_property PACKAGE_PIN N18 [get_ports ac_scl]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_scl]

##IO_L23P_T3_34
#set_property PACKAGE_PIN N17 [get_ports ac_sda]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_sda]


##USB-OTG overcurrent detect pin
##IO_L3P_T0_DQS_PUDC_B_34
#set_property PACKAGE_PIN U13 [get_ports otg_oc]
#set_property IOSTANDARD LVCMOS33 [get_ports otg_oc]


##VGA Connector
##IO_L7P_T1_AD2P_35
set_property PACKAGE_PIN M19 [get_ports {vga_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]

##IO_L9N_T1_DQS_AD3N_35
set_property PACKAGE_PIN L20 [get_ports {vga_r[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]

##IO_L17P_T2_AD5P_35
set_property PACKAGE_PIN J20 [get_ports {vga_r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]

##IO_L18N_T2_AD13N_35
set_property PACKAGE_PIN G20 [get_ports {vga_r[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]

##IO_L15P_T2_DQS_AD12P_35
set_property PACKAGE_PIN F19 [get_ports {vga_r[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[4]}]

##IO_L14N_T2_AD4N_SRCC_35
set_property PACKAGE_PIN H18 [get_ports {vga_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]

##IO_L14P_T2_SRCC_34
set_property PACKAGE_PIN N20 [get_ports {vga_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]

##IO_L9P_T1_DQS_AD3P_35
set_property PACKAGE_PIN L19 [get_ports {vga_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]

##IO_L10N_T1_AD11N_35
set_property PACKAGE_PIN J19 [get_ports {vga_g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]

##IO_L17N_T2_AD5N_35
set_property PACKAGE_PIN H20 [get_ports {vga_g[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[4]}]

##IO_L15N_T2_DQS_AD12N_35
set_property PACKAGE_PIN F20 [get_ports {vga_g[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[5]}]

##IO_L14N_T2_SRCC_34
set_property PACKAGE_PIN P20 [get_ports {vga_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]

##IO_L7N_T1_AD2N_35
set_property PACKAGE_PIN M20 [get_ports {vga_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]

##IO_L10P_T1_AD11P_35
set_property PACKAGE_PIN K19 [get_ports {vga_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]

##IO_L14P_T2_AD4P_SRCC_35
set_property PACKAGE_PIN J18 [get_ports {vga_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]

##IO_L18P_T2_AD13P_35
set_property PACKAGE_PIN G19 [get_ports {vga_b[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[4]}]

##IO_L13N_T2_MRCC_34
set_property PACKAGE_PIN P19 [get_ports hsync]
set_property IOSTANDARD LVCMOS33 [get_ports hsync]

##IO_0_34
set_property PACKAGE_PIN R19 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]

