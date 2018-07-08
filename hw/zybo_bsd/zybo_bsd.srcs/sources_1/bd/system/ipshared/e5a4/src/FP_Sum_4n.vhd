----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.06.2018 09:49:22
-- Design Name: 
-- Module Name: FP_Sum_4n - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.fpupack.all;
use work.entities.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FP_Sum_4n is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           opA : in STD_LOGIC_VECTOR(31 downto 0);
           opB : in STD_LOGIC_VECTOR(31 downto 0);
           opC : in STD_LOGIC_VECTOR(31 downto 0);
           opD : in STD_LOGIC_VECTOR(31 downto 0);
           sum : out STD_LOGIC_VECTOR(31 downto 0));
end FP_Sum_4n;

architecture Behavioral of FP_Sum_4n is

signal s_sum1 : STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0) := (others => '0');
signal s_sum2 : STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0) := (others => '0');
signal s_sum3 : STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0) := (others => '0');
signal s_ready1 : STD_LOGIC := '0';
signal s_ready2 : STD_LOGIC := '0';
signal s_start : STD_LOGIC := '0';

begin

soma_primaria1: addsubfsm_v6 Port Map(   
                 reset    => reset,
                 clk      => clk,
                 op       => '0',
                 op_a 	  => opA(31 downto 5),
                 op_b 	  => opB(31 downto 5),
                 start_i  => start,
                 addsub_out => s_sum1,
                 ready_as   => s_ready1
);

soma_primaria2: addsubfsm_v6 Port Map(   
                 reset    => reset,
                 clk      => clk,
                 op       => '0',
                 op_a 	  => opC(31 downto 5),
                 op_b 	  => opD(31 downto 5),
                 start_i  => start,
                 addsub_out => s_sum2,
                 ready_as   => s_ready2
);
s_start <= (s_ready1 and s_ready2);

soma_secundaria: addsubfsm_v6 Port Map(   
                 reset    => reset,
                 clk      => clk,
                 op       => '0',
                 op_a 	  => s_sum1,
                 op_b 	  => s_sum2,
                 start_i  => s_start,
                 addsub_out => s_sum3,
                 ready_as   => ready
);

sum <= s_sum3&"00000";

end Behavioral;
