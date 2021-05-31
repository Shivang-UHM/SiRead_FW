gui_open_window Wave
gui_sg_create clk_Div_group
gui_list_add_group -id Wave.1 {clk_Div_group}
gui_sg_addsignal -group clk_Div_group {clk_Div_tb.test_phase}
gui_set_radix -radix {ascii} -signals {clk_Div_tb.test_phase}
gui_sg_addsignal -group clk_Div_group {{Input_clocks}} -divider
gui_sg_addsignal -group clk_Div_group {clk_Div_tb.CLK_IN1}
gui_sg_addsignal -group clk_Div_group {{Output_clocks}} -divider
gui_sg_addsignal -group clk_Div_group {clk_Div_tb.dut.clk}
gui_list_expand -id Wave.1 clk_Div_tb.dut.clk
gui_sg_addsignal -group clk_Div_group {{Status_control}} -divider
gui_sg_addsignal -group clk_Div_group {clk_Div_tb.RESET}
gui_sg_addsignal -group clk_Div_group {clk_Div_tb.LOCKED}
gui_sg_addsignal -group clk_Div_group {{Counters}} -divider
gui_sg_addsignal -group clk_Div_group {clk_Div_tb.COUNT}
gui_sg_addsignal -group clk_Div_group {clk_Div_tb.dut.counter}
gui_list_expand -id Wave.1 clk_Div_tb.dut.counter
gui_zoom -window Wave.1 -full
