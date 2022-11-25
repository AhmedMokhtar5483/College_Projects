create_clock -period 10.000 -name clk_100M -waveform {0.000 5.000} [get_ports clk_100M]
create_clock -period 40.000 -name clk_25M -waveform {0.000 20.000} [get_ports clk_25M]
set_false_path -from [get_clocks clk_25M] -to [get_clocks clk_100M]
