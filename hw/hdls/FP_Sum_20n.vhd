----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.06.2018 13:59:19
-- Design Name: 
-- Module Name: FP_Sum_20n - Behavioral
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

entity FP_Sum_20n is
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
end FP_Sum_20n; 

architecture Behavioral of FP_Sum_20n is
signal s_ready : std_logic_vector(5 downto 0);
signal s_start_sum_sec : std_logic;
type somas is array (0 to 5) of std_logic_vector(31 downto 0);
signal s_soma : somas;

signal s_somatorio : std_logic_vector(FP_WIDTH-1 downto 0);

begin
------------------------------------------------------------------
------------------------------------------------------------------
-- SOMAS PRIMARIAS
soma1: FP_Sum_4n Port Map(
            clk => clk,
            reset => reset,
            start => start,
            ready => s_ready(0),
            opA => oP1,
            opB => oP2,
            opC => oP3,
            opD => oP4,
            sum => s_soma(0)
);

soma2: FP_Sum_4n Port Map(
            clk => clk,
            reset => reset,
            start => start,
            ready => s_ready(1),
            opA => oP5,
            opB => oP6,
            opC => oP7,
            opD => oP8,
            sum => s_soma(1)
);

soma3: FP_Sum_4n Port Map(
            clk => clk,
            reset => reset,
            start => start,
            ready => s_ready(2),
            opA => oP9,
            opB => oP10,
            opC => oP11,
            opD => oP12,
            sum => s_soma(2)
);

soma4: FP_Sum_4n Port Map(
            clk => clk,
            reset => reset,
            start => start,
            ready => s_ready(3),
            opA => oP13,
            opB => oP14,
            opC => oP15,
            opD => oP16,
            sum => s_soma(3)
);

soma5: FP_Sum_4n Port Map(
            clk => clk,
            reset => reset,
            start => start,
            ready => s_ready(4),
            opA => oP17,
            opB => oP18,
            opC => oP19,
            opD => oP20,
            sum => s_soma(4)
);
------------------------------------------------------------------
------------------------------------------------------------------

-- SOMA SECUNDARIA
------------------------------------------------------------------
------------------------------------------------------------------
s_start_sum_sec <= s_ready(4) or s_ready(3) or s_ready(2) or s_ready(1) or s_ready(0);

soma6: FP_Sum_4n Port Map(
            clk => clk,
            reset => reset,
            start => s_start_sum_sec,
            ready => s_ready(5),
            opA => s_soma(0),
            opB => s_soma(1),
            opC => s_soma(2),
            opD => s_soma(3),
            sum => s_soma(5)
);
------------------------------------------------------------------
------------------------------------------------------------------

-- SOMATORIO FINAL
------------------------------------------------------------------
------------------------------------------------------------------
somatorio: addsubfsm_v6 Port Map(
            reset       => reset,
             clk        => clk,
             op			=> '0',
             op_a 		=> s_soma(4)(31 downto 5),
             op_b 		=> s_soma(5)(31 downto 5),
             start_i    => s_ready(5),
             addsub_out => s_somatorio,
             ready_as   => ready
);

soma <= s_somatorio&"00000";


end Behavioral;