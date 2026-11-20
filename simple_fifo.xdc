## ============================================================
## Simple FIFO - Nexys A7-100T Constraints
## FPGA: XC7A100TCSG324-1
## Board: Digilent Nexys A7-100T
## ============================================================

## ============================================================
## CLOCK - 100 MHz
## ============================================================

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]

create_clock -add -name sys_clk_pin \
    -period 10.00 \
    -waveform {0 5} \
    [get_ports clk]


## ============================================================
## RESET / CONTROL BUTTONS
## ============================================================

## Reset - Center Button BTNC
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports rst]

## Write Enable - Up Button BTNU
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports wr_en]

## Read Enable - Down Button BTND
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports rd_en]


## ============================================================
## DATA INPUT [7:0]
## Nexys A7 Switches SW0-SW7
## ============================================================

set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {data_in[0]}]

set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {data_in[1]}]

set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports {data_in[2]}]

set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports {data_in[3]}]

set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {data_in[4]}]

set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {data_in[5]}]

set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {data_in[6]}]

set_property -dict {PACKAGE_PIN R13 IOSTANDARD LVCMOS33} [get_ports {data_in[7]}]


## ============================================================
## DATA OUTPUT [7:0]
## Nexys A7 LEDs LED0-LED7
## ============================================================

set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {data_out[0]}]

set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports {data_out[1]}]

set_property -dict {PACKAGE_PIN J13 IOSTANDARD LVCMOS33} [get_ports {data_out[2]}]

set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {data_out[3]}]

set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {data_out[4]}]

set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {data_out[5]}]

set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {data_out[6]}]

set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {data_out[7]}]


## ============================================================
## FIFO STATUS
## ============================================================

## FULL - LED8
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports full]

## EMPTY - LED9
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports empty]


## ============================================================
## COUNT [3:0]
## LED10-LED13
## ============================================================

set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {count[0]}]

set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports {count[1]}]

set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {count[2]}]

set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {count[3]}]


## ============================================================
## CONFIGURATION VOLTAGE
## ============================================================

set_property CFGBVS VCCO [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]