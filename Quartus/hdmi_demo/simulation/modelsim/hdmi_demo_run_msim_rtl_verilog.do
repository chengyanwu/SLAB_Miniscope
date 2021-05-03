transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {/home/slab/intelFPGA_lite/20.1/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {/home/slab/intelFPGA_lite/20.1/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {/home/slab/intelFPGA_lite/20.1/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {/home/slab/intelFPGA_lite/20.1/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {/home/slab/intelFPGA_lite/20.1/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/fiftyfivenm_ver
vmap fiftyfivenm_ver ./verilog_libs/fiftyfivenm_ver
vlog -vlog01compat -work fiftyfivenm_ver {/home/slab/intelFPGA_lite/20.1/quartus/eda/sim_lib/fiftyfivenm_atoms.v}
vlog -vlog01compat -work fiftyfivenm_ver {/home/slab/intelFPGA_lite/20.1/quartus/eda/sim_lib/mentor/fiftyfivenm_atoms_ncrypt.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/db {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/db/altlvds_tx_inst_lvds_tx.v}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/tmds_channel.sv}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/source_product_description_info_frame.sv}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/serializer.sv}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/packet_assembler.sv}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/auxiliary_video_information_info_frame.sv}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/audio_sample_packet.sv}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/audio_info_frame.sv}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/audio_clock_regeneration_packet.sv}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/hdmi_demo.sv}
vlog -sv -work work +incdir+/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl {/home/slab/Desktop/SLAB_Mousecam/Quartus/hdmi_demo/rtl/packet_picker.sv}

