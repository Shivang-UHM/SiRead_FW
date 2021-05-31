# file: simcmds.tcl

# create the simulation script
vcd dumpfile isim.vcd
vcd dumpvars -m /BMD_DC_CLK_GEN_tb -l 0
wave add /
run 50000ns
quit
