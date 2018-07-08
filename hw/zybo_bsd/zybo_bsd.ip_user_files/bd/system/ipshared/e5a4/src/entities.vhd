-------------------------------------------------
-- Company:       GRACO-UnB
-- Engineer:      DANIEL MAURICIO MU�OZ ARBOLEDA
-- 
-- Create Date:   12-Oct-2012 
-- Design name:   FPUs
-- Module name:   entities
-- Description:   package defining IO of the components
-- Automatically generated using the vFPU_gen.m v1.0
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.fpupack.all;

package Entities is

component lfsr_fixtofloat_20bits	is
port (reset     :  in std_logic;
      clk       :  in std_logic;
      start     :  in std_logic;
      istart    :  in std_logic;
      init      :  in std_logic_vector(15 downto 0);
      lfsr_out  : out std_logic_vector(FP_WIDTH-1 downto 0);
      ready     : out std_logic);
end component;

component fixMul is
port (op_a    	 :  in std_logic_vector(FRAC_WIDTH downto 0);
      op_b    	 :  in std_logic_vector(FRAC_WIDTH downto 0);
      mul_out   : out std_logic_vector(FRAC_WIDTH*2+1 downto 0));
end component;


component addsubfsm_v6 is
port (reset     :  in std_logic;
      clk       :  in std_logic;
      op        :  in std_logic;
      op_a    	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
      op_b    	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
      start_i	 :  in std_logic;
      addsub_out : out std_logic_vector(FP_WIDTH-1 downto 0);
      ready_as  : out std_logic);
end component;

component multiplierfsm_v2 is
port (reset     :  in std_logic;
      clk       :  in std_logic;
      op_a    	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
      op_b    	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
      start_i	 :  in std_logic;
      mul_out   : out std_logic_vector(FP_WIDTH-1 downto 0);
      ready_mul : out std_logic);
end component;

component divNR is
port (reset     :  in std_logic;
      clk       :  in std_logic;
      op_a    	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
      op_b    	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
      start_i	 :  in std_logic;
      div_out   : out std_logic_vector(FP_WIDTH-1 downto 0);
      ready_div : out std_logic);
end component;

component sqrtNR is
port (reset     :  in std_logic;
      clk       :  in std_logic;
      op_a    	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
      start_i	 :  in std_logic;
      sqrt_out  : out std_logic_vector(FP_WIDTH-1 downto 0);
      ready_sqrt: out std_logic);
end component;

component cordic_atan
	port(reset	:  in std_logic;
	     clk	:  in std_logic;
		 start	:  in std_logic;
		 Ain	:  in std_logic_vector(FP_WIDTH-1 downto 0);
		 atan   : out std_logic_vector(FP_WIDTH-1 downto 0);
		 ready  : out std_logic);
end component;

component decFP is
port (reset    :  in std_logic;
      start	:  in std_logic;
      clk      :  in std_logic;
      Xin    	:  in std_logic_vector(FP_WIDTH-1 downto 0);
      quad     : out std_logic_vector(1 downto 0);
      decX     : out std_logic_vector(FP_WIDTH-1 downto 0);
      ready : out std_logic);
end component;

component serialcom
port( reset	   :  in std_logic;
	   clk 		   :  in std_logic;
	   start       :  in std_logic;
      d1         :  in std_logic_vector(FP_WIDTH-1 downto 0);
      d2         :  in std_logic_vector(FP_WIDTH-1 downto 0);
      d3         :  in std_logic_vector(FP_WIDTH-1 downto 0);
	   din     	   :  in std_logic;
	   data        : out std_logic_vector(7 downto 0);
      rdy_data    : out std_logic;
	   dout        : out std_logic);
end component;

component FP_Sum_4n
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           opA : in STD_LOGIC_VECTOR(31 downto 0);
           opB : in STD_LOGIC_VECTOR(31 downto 0);
           opC : in STD_LOGIC_VECTOR(31 downto 0);
           opD : in STD_LOGIC_VECTOR(31 downto 0);
           sum : out STD_LOGIC_VECTOR(31 downto 0));
end component;

component FSM_Sum_Control is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           start_sum: out STD_LOGIC;
           start_sum_end: out STD_LOGIC;
           sum_ready : in STD_LOGIC;
           add_PortA_RAM1 : out STD_LOGIC_VECTOR (5 downto 0);
           add_PortB_RAM1 : out STD_LOGIC_VECTOR (5 downto 0);
           add_PortA_RAM2 : out STD_LOGIC_VECTOR (5 downto 0);
           add_PortB_RAM2 : out STD_LOGIC_VECTOR (5 downto 0));
end component;

component BRAMs_wrapper is
  port (
    BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BRAM_PORTA_0_clk : in STD_LOGIC;
    BRAM_PORTA_0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_en : in STD_LOGIC;
    BRAM_PORTA_0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_1_addr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BRAM_PORTA_1_clk : in STD_LOGIC;
    BRAM_PORTA_1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_en : in STD_LOGIC;
    BRAM_PORTA_1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTB_0_addr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BRAM_PORTB_0_clk : in STD_LOGIC;
    BRAM_PORTB_0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_en : in STD_LOGIC;
    BRAM_PORTB_0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTB_1_addr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BRAM_PORTB_1_clk : in STD_LOGIC;
    BRAM_PORTB_1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_1_en : in STD_LOGIC;
    BRAM_PORTB_1_we : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end component;

component FP_Sum_BRAM is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           sum_ready : out STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0)
           );
end component;

component FP_Sum_20n is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           oP1 : in STD_LOGIC_VECTOR(31 downto 0);
           oP2 : in STD_LOGIC_VECTOR(31 downto 0);
           oP3 : in STD_LOGIC_VECTOR(31 downto 0);
           oP4 : in STD_LOGIC_VECTOR(31 downto 0);
           oP5 : in STD_LOGIC_VECTOR(31 downto 0);
           oP6 : in STD_LOGIC_VECTOR(31 downto 0);
           oP7 : in STD_LOGIC_VECTOR(31 downto 0);
           oP8 : in STD_LOGIC_VECTOR(31 downto 0);
           oP9 : in STD_LOGIC_VECTOR(31 downto 0);
           oP10 : in STD_LOGIC_VECTOR(31 downto 0);
           oP11 : in STD_LOGIC_VECTOR(31 downto 0);
           oP12 : in STD_LOGIC_VECTOR(31 downto 0);
           oP13 : in STD_LOGIC_VECTOR(31 downto 0);
           oP14 : in STD_LOGIC_VECTOR(31 downto 0);
           oP15 : in STD_LOGIC_VECTOR(31 downto 0);
           oP16 : in STD_LOGIC_VECTOR(31 downto 0);
           oP17 : in STD_LOGIC_VECTOR(31 downto 0);
           oP18 : in STD_LOGIC_VECTOR(31 downto 0);
           oP19 : in STD_LOGIC_VECTOR(31 downto 0);
           oP20 : in STD_LOGIC_VECTOR(31 downto 0);
           soma : out STD_LOGIC_VECTOR(31 downto 0);
           ready : out std_logic
           );
end component; 

component Equacao_Cov is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           opA : in STD_LOGIC_VECTOR (31 downto 0);
           M_a : in STD_LOGIC_VECTOR (31 downto 0);
           opB : in STD_LOGIC_VECTOR (31 downto 0);
           M_b : in STD_LOGIC_VECTOR (31 downto 0);
           ready : out STD_LOGIC;
           S_i : out STD_LOGIC_VECTOR (31 downto 0));
end component;

end Entities;
