##
## Core Generator Run Script, generator for Project Navigator checkversion command
##

proc findRtfPath { relativePath } {
   set xilenv ""
   if { [info exists ::env(XILINX) ] } {
      if { [info exists ::env(MYXILINX)] } {
         set xilenv [join [list $::env(MYXILINX) $::env(XILINX)] $::xilinx::path_sep ]
      } else {
         set xilenv $::env(XILINX)
      }
   }
   foreach path [ split $xilenv $::xilinx::path_sep ] {
      set fullPath [ file join $path $relativePath ]
      if { [ file exists $fullPath ] } {
         return $fullPath
      }
   }
   return ""
}

source [ findRtfPath "data/projnav/scripts/dpm_cgUtils.tcl" ]

set result [ run_cg_vcheck {/home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/serializationFifo.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/CMD_FIFO_w8r32.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/clockgen_bytelink.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/fifo8x64.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/udp64kfifo.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/QBLtxFIFO.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/bram8x3000.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/fifo16x64.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/fifoDist8x16.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/fifo18x16.xco /home/ise/xilinx/github/SiRead_FW/build/SCRODQB_Top/coregen/fifo32x512RxAxi.xco} xc6slx150t-3fgg676 ]

if { $result == 0 } {
   puts "Core Generator checkversion command completed successfully."
} elseif { $result == 1 } {
   puts "Core Generator checkversion command failed."
} elseif { $result == 3 || $result == 4 } {
   # convert 'version check' result to real return range, bypassing any messages.
   set result [ expr $result - 3 ]
} else {
   puts "Core Generator checkversion cancelled."
}
exit $result
