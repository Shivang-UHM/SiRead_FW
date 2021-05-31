gui_open_window Wave
gui_sg_create clockgen_bytelink_group
gui_list_add_group -id Wave.1 {clockgen_bytelink_group}
gui_sg_addsignal -group clockgen_bytelink_group {clockgen_bytelink_tb.test_phase}
gui_set_radix -radix {ascii} -signals {clockgen_bytelink_tb.test_phase}
gui_sg_addsignal -group clockgen_bytelink_group {{Input_clocks}} -divider
gui_sg_addsignal -group clockgen_bytelink_group {clockgen_bytelink_tb.CLK_IN1}
gui_sg_addsignal -group clockgen_bytelink_group {{Output_clocks}} -divider
gui_sg_addsignal -group clockgen_bytelink_group {clockgen_bytelink_tb.dut.clk}
gui_list_expand -id Wave.1 clockgen_bytelink_tb.dut.clk
gui_sg_addsignal -group clockgen_bytelink_group {{Status_control}} -divider
gui_sg_addsignal -group clockgen_bytelink_group {clockgen_bytelink_tb.RESET}
gui_sg_addsignal -group clockgen_bytelink_group {clockgen_bytelink_tb.LOCKED}
gui_sg_addsignal -group clockgen_bytelink_group {{Counters}} -divider
gui_sg_addsignal -group clockgen_bytelink_group {clockgen_bytelink_tb.COUNT}
gui_sg_addsignal -group clockgen_bytelink_group {clockgen_bytelink_tb.dut.counter}
gui_list_expand -id Wave.1 clockgen_bytelink_tb.dut.counter
gui_zoom -window Wave.1 -full
