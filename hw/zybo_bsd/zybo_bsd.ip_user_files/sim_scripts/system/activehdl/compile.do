vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_i2s_adi_v1_00_a
vlib activehdl/adi_common_v1_00_a
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_2_1
vlib activehdl/axi_data_fifo_v2_1_14
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_15
vlib activehdl/axi_protocol_converter_v2_1_15
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_fifo_v1_0_10
vlib activehdl/blk_mem_gen_v8_4_1
vlib activehdl/lib_bmg_v1_0_10
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_datamover_v5_1_17
vlib activehdl/axi_vdma_v6_3_3
vlib activehdl/xlconstant_v1_1_3
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_1
vlib activehdl/axi_vip_v1_1_1
vlib activehdl/processing_system7_vip_v1_0_3
vlib activehdl/axi_crossbar_v2_1_16

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_i2s_adi_v1_00_a activehdl/axi_i2s_adi_v1_00_a
vmap adi_common_v1_00_a activehdl/adi_common_v1_00_a
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_1 activehdl/fifo_generator_v13_2_1
vmap axi_data_fifo_v2_1_14 activehdl/axi_data_fifo_v2_1_14
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_15 activehdl/axi_register_slice_v2_1_15
vmap axi_protocol_converter_v2_1_15 activehdl/axi_protocol_converter_v2_1_15
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_10 activehdl/lib_fifo_v1_0_10
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1
vmap lib_bmg_v1_0_10 activehdl/lib_bmg_v1_0_10
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_17 activehdl/axi_datamover_v5_1_17
vmap axi_vdma_v6_3_3 activehdl/axi_vdma_v6_3_3
vmap xlconstant_v1_1_3 activehdl/xlconstant_v1_1_3
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 activehdl/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 activehdl/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 activehdl/processing_system7_vip_v1_0_3
vmap axi_crossbar_v2_1_16 activehdl/axi_crossbar_v2_1_16

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/axi_dispctrl_v1_0.vhd" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/vdma_to_vga.vhd" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/axi_dispctrl_v1_0_S_AXI.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/mmcme2_drp.v" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/sim/system_axi_dispctrl_0_0.v" \
"../../../bd/system/ip/system_axi_dispctrl_1_1/sim/system_axi_dispctrl_1_1.v" \

vcom -work axi_i2s_adi_v1_00_a -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_tx.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_controller.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/work/hdl/axi_i2s_adi.vhd" \

vcom -work axi_i2s_adi_v1_00_a -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/fifo_synchronizer.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_rx.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_clkgen.vhd" \

vcom -work adi_common_v1_00_a -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_streaming_dma_rx_fifo.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_ctrlif.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/pl330_dma_fifo.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_streaming_dma_tx_fifo.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/dma_fifo.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/sim/system_axi_i2s_adi_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_14  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_15  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_protocol_converter_0_0/sim/system_axi_protocol_converter_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_10 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_10 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_17 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/71f3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_3  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_3 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \
"../../../bd/system/ip/system_axi_vdma_1_1/sim/system_axi_vdma_1_1.vhd" \

vlog -work xlconstant_v1_1_3  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_ground_0/sim/system_ground_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/hdmi_tx.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/TMDSEncoder.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/SerializerN_1.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/DVITransmitter.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/sim/system_hdmi_tx_0_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3  -sv2k12 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/ip/system_vdd_1/sim/system_vdd_1.v" \
"../../../bd/system/ip/system_xlconstant_0_2/sim/system_xlconstant_0_2.v" \

vlog -work axi_crossbar_v2_1_16  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ipshared/e5a4/src/fpupack.vhd" \
"../../../bd/system/ipshared/e5a4/src/entities.vhd" \
"../../../bd/system/ipshared/e5a4/src/Equacao_Cov.vhd" \
"../../../bd/system/ipshared/e5a4/hdl/FP_Mean_Cov_v1_0_S00_AXI.vhd" \
"../../../bd/system/ipshared/e5a4/src/FP_Sum_4n.vhd" \
"../../../bd/system/ipshared/e5a4/src/addsubfsm_v6.vhd" \
"../../../bd/system/ipshared/e5a4/src/divNR.vhd" \
"../../../bd/system/ipshared/e5a4/src/fixMul.vhd" \
"../../../bd/system/ipshared/e5a4/src/multiplierfsm_v2.vhd" \
"../../../bd/system/ipshared/e5a4/hdl/FP_Mean_Cov_v1_0.vhd" \
"../../../bd/system/ip/system_FP_Mean_Cov_0_0/sim/system_FP_Mean_Cov_0_0.vhd" \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f8d8/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_m07_regslice_0/sim/system_m07_regslice_0.v" \
"../../../bd/system/ip/system_m06_regslice_0/sim/system_m06_regslice_0.v" \
"../../../bd/system/ip/system_m05_regslice_0/sim/system_m05_regslice_0.v" \
"../../../bd/system/ip/system_m04_regslice_0/sim/system_m04_regslice_0.v" \
"../../../bd/system/ip/system_m03_regslice_0/sim/system_m03_regslice_0.v" \
"../../../bd/system/ip/system_m02_regslice_0/sim/system_m02_regslice_0.v" \
"../../../bd/system/ip/system_m01_regslice_0/sim/system_m01_regslice_0.v" \
"../../../bd/system/ip/system_m00_regslice_0/sim/system_m00_regslice_0.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

