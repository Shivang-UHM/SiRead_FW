gui_open_window Wave
gui_sg_create BMD_DC_CLK_GEN_group
gui_list_add_group -id Wave.1 {BMD_DC_CLK_GEN_group}
gui_sg_addsignal -group BMD_DC_CLK_GEN_group {BMD_DC_CLK_GEN_tb.test_phase}
gui_set_radix -radix {ascii} -signals {BMD_DC_CLK_GEN_tb.test_phase}
gui_sg_addsignal -group BMD_DC_CLK_GEN_group {{Input_clocks}} -divider
gui_sg_addsignal -group BMD_DC_CLK_GEN_group {BMD_DC_CLK_GEN_tb.CLK_IN1}
gui_sg_addsignal -group BMD_DC_CLK_GEN_group {{Output_clocks}} -divider
gui_sg_addsignal -group BMD_DC_CLK_GEN_group {BMD_DC_CLK_GEN_tb.dut.clk}
gui_list_expand -id Wave.1 BMD_DC_CLK_GEN_tb.dut.clk
gui_sg_addsignal -group BMD_DC_CLK_GEN_group {{Counters}} -divider
gui_sg_addsignal -group BMD_DC_CLK_GEN_group {BMD_DC_CLK_GEN_tb.COUNT}
gui_sg_addsignal -group BMD_DC_CLK_GEN_group {BMD_DC_CLK_GEN_tb.dut.counter}
gui_list_expand -id Wave.1 BMD_DC_CLK_GEN_tb.dut.counter
gui_zoom -window Wave.1 -full
