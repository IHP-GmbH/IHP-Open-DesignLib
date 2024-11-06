current_design chip_top

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_fanout 8 [current_design]
set_max_capacitance 0.5 [current_design]
set_max_transition 3 [current_design]


set clk_period 20
set clk_io_pct 0.2
set non_clock_inputs [lsearch -inline -all -not -exact [all_inputs] clk_pad]


create_clock -name clk -period 20 [get_ports clk_pad]

set_clock_uncertainty 0.2 clk
set_clock_transition 0.3 clk

set_input_delay  [expr $clk_period * $clk_io_pct] -clock clk $non_clock_inputs 
set_output_delay [expr $clk_period * $clk_io_pct] -clock clk [all_outputs]

set_load -pin_load 5 [all_inputs]
set_load -pin_load 5 [all_outputs]