current_design ElemRVTop

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_fanout 8 [current_design]
set_max_capacitance 0.5 [current_design]
set_max_transition 3 [current_design]
set_max_area 0

set clock_ports [get_ports { \
    io_clock_PAD \
    io_jtag_tck_PAD \
}]

set clk_input_ports [get_ports { \
    io_reset_PAD \
    io_uartStd_rxd_PAD \
    io_uartStd_cts_PAD \
}]

set clk_inout_ports [get_ports { \
    io_gpioStatus_0_PAD \
    io_gpioStatus_0_PAD \
    io_gpioStatus_0_PAD \
    io_gpioStatus_0_PAD \
    io_spi_dq_0_PAD \
    io_spi_dq_1_PAD \
}]
set clk_inout_30mA_ports [get_ports { \
    io_hyperbus_dq_0_PAD \
    io_hyperbus_dq_1_PAD \
    io_hyperbus_dq_2_PAD \
    io_hyperbus_dq_3_PAD \
    io_hyperbus_dq_4_PAD \
    io_hyperbus_dq_5_PAD \
    io_hyperbus_dq_6_PAD \
    io_hyperbus_dq_7_PAD \
    io_hyperbus_rwds_PAD \
}]

set clk_output_ports [get_ports { \
    io_uartStd_txd_PAD \
    io_uartStd_rts_PAD \
    io_hyperbus_cs_0_PAD \
    io_hyperbus_reset_PAD \
    io_spi_cs_0_PAD \
    io_spi_sck_PAD \
}]

set clk_output_30mA_ports [get_ports { \
    io_hyperbus_ck_PAD \
}]

set jtag_input_ports [get_ports { \
    io_jtag_tms_PAD \
    io_jtag_tdi_PAD \
}]

set jtag_output_ports [get_ports { \
    io_jtag_tdo_PAD \
}]

# clock
set_driving_cell -lib_cell sg13g2_IOPadIn -pin pad $clock_ports
set_driving_cell -lib_cell sg13g2_IOPadIn -pin pad $clk_input_ports
set_driving_cell -lib_cell sg13g2_IOPadInOut4mA -pin pad $clk_inout_ports
set_driving_cell -lib_cell sg13g2_IOPadInOut30mA -pin pad $clk_inout_30mA_ports
set_driving_cell -lib_cell sg13g2_IOPadOut4mA -pin pad $clk_output_ports
set_driving_cell -lib_cell sg13g2_IOPadOut30mA -pin pad $clk_output_30mA_ports
# jtag
set_driving_cell -lib_cell sg13g2_IOPadIn -pin pad $jtag_input_ports
set_driving_cell -lib_cell sg13g2_IOPadOut4mA -pin pad $jtag_output_ports

set_ideal_network [get_pins sg13g2_IOPadIn_1/p2c]
create_clock [get_pins sg13g2_IOPadIn_1/p2c] -name clk_core -period 40 -waveform {0 20}
set_clock_uncertainty 0.15 [get_clocks clk_core]
set_clock_transition 0.25 [get_clocks clk_core]

set_ideal_network [get_pins sg13g2_IOPadIn_5/p2c]
create_clock [get_pins sg13g2_IOPadIn_5/p2c] -name clk_jtag -period 100 -waveform {0 50}
set_clock_uncertainty 0.15 [get_clocks clk_jtag]
set_clock_transition 0.25 [get_clocks clk_jtag]

set_false_path -from [get_clocks clk_core] -to [get_clocks clk_jtag]
set_false_path -from [get_clocks clk_jtag] -to [get_clocks clk_core]

set_input_delay  8 -clock clk_core [get_ports { io_clock_PAD }]
set_input_delay  8 -clock clk_core $clk_input_ports
set_input_delay  8 -clock clk_core $clk_inout_ports
set_input_delay  8 -clock clk_core $clk_inout_30mA_ports
set_output_delay 8 -clock clk_core $clk_output_ports
set_output_delay 8 -clock clk_core $clk_output_30mA_ports
set_output_delay 8 -clock clk_core $clk_inout_ports
set_output_delay 8 -clock clk_core $clk_inout_30mA_ports

set_input_delay  8 -clock clk_jtag [get_ports { io_jtag_tck_PAD }]
set_input_delay  8 -clock clk_jtag $jtag_input_ports
set_output_delay 8 -clock clk_jtag $jtag_output_ports

set_load -pin_load 5 [all_inputs]
set_load -pin_load 5 [all_outputs]
