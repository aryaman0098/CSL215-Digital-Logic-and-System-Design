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

set_property PACKAGE_PIN W2 [get_ports {b3[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b3[0]}]

set_property PACKAGE_PIN U1 [get_ports {b3[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b3[1]}]

set_property PACKAGE_PIN T1 [get_ports {b3[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b3[2]}]

set_property PACKAGE_PIN R2 [get_ports {b3[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b3[3]}]

set_property PACKAGE_PIN V2 [get_ports {b2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b2[0]}]

set_property PACKAGE_PIN T3 [get_ports {b2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b2[1]}]

set_property PACKAGE_PIN T2 [get_ports {b2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b2[2]}]

set_property PACKAGE_PIN R3 [get_ports {b2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b2[3]}]

set_property PACKAGE_PIN W15 [get_ports {b1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b1[0]}]

set_property PACKAGE_PIN V15 [get_ports {b1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b1[1]}]

set_property PACKAGE_PIN W14 [get_ports {b1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b1[2]}]

set_property PACKAGE_PIN W13 [get_ports {b1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b1[3]}]

set_property PACKAGE_PIN V17 [get_ports {b0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b0[0]}]

set_property PACKAGE_PIN V16 [get_ports {b0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b0[1]}]

set_property PACKAGE_PIN W16 [get_ports {b0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b0[2]}]

set_property PACKAGE_PIN W17 [get_ports {b0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b0[3]}]

set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN U17 [get_ports pushBtn]
set_property IOSTANDARD LVCMOS33 [get_ports pushBtn]

# LEDs
set_property PACKAGE_PIN W7 [get_ports {l[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[6]}]

set_property PACKAGE_PIN W6 [get_ports {l[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[5]}]

set_property PACKAGE_PIN U8 [get_ports {l[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[4]}]

set_property PACKAGE_PIN V8 [get_ports {l[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[3]}]

set_property PACKAGE_PIN U5 [get_ports {l[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[2]}]

set_property PACKAGE_PIN V5 [get_ports {l[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[1]}]

set_property PACKAGE_PIN U7 [get_ports {l[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[0]}]

set_property PACKAGE_PIN W4 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]

set_property PACKAGE_PIN V4 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]

set_property PACKAGE_PIN U4 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]

set_property PACKAGE_PIN U2 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]

# Others (BITSTREAM, CONFIG)
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]


