 ## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
#Bank = 34, Pin name = ,					Sch name = CLK100MHZ
#		set_property PACKAGE_PIN W5 [get_ports CLK]
#		set_property IOSTANDARD LVCMOS33 [get_ports CLK]
#		create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK]

# Switches
set_property PACKAGE_PIN W16 [get_ports din2]
set_property IOSTANDARD LVCMOS33 [get_ports din2]

set_property PACKAGE_PIN W17 [get_ports dest2_0]
set_property IOSTANDARD LVCMOS33 [get_ports dest2_0]

set_property PACKAGE_PIN W15 [get_ports dest2_1]
set_property IOSTANDARD LVCMOS33 [get_ports dest2_1]

set_property PACKAGE_PIN V15 [get_ports req2]
set_property IOSTANDARD LVCMOS33 [get_ports req2]

set_property PACKAGE_PIN W13 [get_ports din1]
set_property IOSTANDARD LVCMOS33 [get_ports din1]

set_property PACKAGE_PIN V2 [get_ports dest1_0]
set_property IOSTANDARD LVCMOS33 [get_ports dest1_0]

set_property PACKAGE_PIN T3 [get_ports dest1_1]
set_property IOSTANDARD LVCMOS33 [get_ports dest1_1]

set_property PACKAGE_PIN T2 [get_ports req1]
set_property IOSTANDARD LVCMOS33 [get_ports req1]

set_property PACKAGE_PIN W2 [get_ports din0]
set_property IOSTANDARD LVCMOS33 [get_ports din0]

set_property PACKAGE_PIN U1 [get_ports dest0_1]
set_property IOSTANDARD LVCMOS33 [get_ports dest0_1]

set_property PACKAGE_PIN T1 [get_ports dest0_0]
set_property IOSTANDARD LVCMOS33 [get_ports dest0_0]

set_property PACKAGE_PIN R2 [get_ports req0]
set_property IOSTANDARD LVCMOS33 [get_ports req0]

# LEDs
set_property PACKAGE_PIN P1 [get_ports ack0]
set_property IOSTANDARD LVCMOS33 [get_ports ack0]

set_property PACKAGE_PIN N3 [get_ports dout0]
set_property IOSTANDARD LVCMOS33 [get_ports dout0]

set_property PACKAGE_PIN V3 [get_ports ack1]
set_property IOSTANDARD LVCMOS33 [get_ports ack1]

set_property PACKAGE_PIN V13 [get_ports dout1]
set_property IOSTANDARD LVCMOS33 [get_ports dout1]

set_property PACKAGE_PIN W18 [get_ports ack2]
set_property IOSTANDARD LVCMOS33 [get_ports ack2]

set_property PACKAGE_PIN V19 [get_ports dout2]
set_property IOSTANDARD LVCMOS33 [get_ports dout2]

set_property PACKAGE_PIN E19 [get_ports src1]
set_property IOSTANDARD LVCMOS33 [get_ports src1]

set_property PACKAGE_PIN U16 [get_ports src0]
set_property IOSTANDARD LVCMOS33 [get_ports src0]

# Others (BITSTREAM, CONFIG)
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]


