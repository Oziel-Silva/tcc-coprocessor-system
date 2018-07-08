onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+system -L xil_defaultlib -L xpm -L axi_i2s_adi_v1_00_a -L adi_common_v1_00_a -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_1 -L axi_data_fifo_v2_1_14 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_15 -L axi_protocol_converter_v2_1_15 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_10 -L blk_mem_gen_v8_4_1 -L lib_bmg_v1_0_10 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_17 -L axi_vdma_v6_3_3 -L xlconstant_v1_1_3 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L axi_crossbar_v2_1_16 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {system.udo}

run -all

endsim

quit -force
