
 add_fsm_encoding \
       {vdma_to_vga.vga_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {mmcme2_drp.current_state} \
       { }  \
       {{0001 0000} {0010 0001} {0011 0010} {0100 0011} {0101 0100} {0110 0101} {0111 0110} {1000 0111} {1001 1000} }

 add_fsm_encoding \
       {axi_dispctrl_v1_0.clk_state} \
       { }  \
       {{000 0000001} {001 0000010} {010 0000100} {011 0001000} {100 0010000} {101 0100000} {110 1000000} }

 add_fsm_encoding \
       {vdma_to_vga__parameterized1.vga_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {mmcme2_drp__parameterized0.current_state} \
       { }  \
       {{0001 0000} {0010 0001} {0011 0010} {0100 0011} {0101 0100} {0110 0101} {0111 0110} {1000 0111} {1001 1000} }

 add_fsm_encoding \
       {axi_dispctrl_v1_0__parameterized0.clk_state} \
       { }  \
       {{000 0000001} {001 0000010} {010 0000100} {011 0001000} {100 0010000} {101 0100000} {110 1000000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_14_axic_reg_srl_fifo.state} \
       { }  \
       {{00 0100} {01 1000} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_datamover_pcc.sig_pcc_sm_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} {111 111} }

 add_fsm_encoding \
       {axi_vdma_sm.dmacntrl_cs} \
       { }  \
       {{000 000} {001 001} {010 010} {011 101} {100 011} {101 100} }
