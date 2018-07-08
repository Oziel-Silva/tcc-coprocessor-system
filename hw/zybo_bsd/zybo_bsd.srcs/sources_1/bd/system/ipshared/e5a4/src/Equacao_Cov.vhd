----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.06.2018 09:43:27
-- Design Name: 
-- Module Name: Equacao_Cov - Behavioral
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

entity Equacao_Cov is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           opA : in STD_LOGIC_VECTOR (31 downto 0);
           M_a : in STD_LOGIC_VECTOR (31 downto 0);
           opB : in STD_LOGIC_VECTOR (31 downto 0);
           M_b : in STD_LOGIC_VECTOR (31 downto 0);
           ready : out STD_LOGIC;
           S_i : out STD_LOGIC_VECTOR (31 downto 0));
end Equacao_Cov;

architecture Behavioral of Equacao_Cov is

signal s_sub1 : std_logic_vector(FP_WIDTH-1 downto 0);
signal s_sub2 : std_logic_vector(FP_WIDTH-1 downto 0);
signal s_mult : std_logic_vector(FP_WIDTH-1 downto 0);
signal s_div: std_logic_vector(FP_WIDTH-1 downto 0);
signal s_ready_sub1 : std_logic;
signal s_ready_sub2 : std_logic;
signal s_ready_mult : std_logic;
constant divisor : std_logic_vector(FP_WIDTH-1 downto 0):= "010000101001111000000000000";


begin

--opA-M_a
sub_1: addsubfsm_v6 Port Map(
            reset      => reset,
            clk        => clk,
            op		   => '1',
            op_a 	   => opA(31 downto 5),
            op_b 	   => M_a(31 downto 5),
            start_i    => start,
            addsub_out => s_sub1,
            ready_as   => s_ready_sub1
);

--opB-M_B
sub_2: addsubfsm_v6 Port Map(
            reset      => reset,
            clk        => clk,
            op		   => '1',
            op_a 	   => opB(31 downto 5),
            op_b 	   => M_b(31 downto 5),
            start_i    => start,
            addsub_out => s_sub2,
            ready_as   => s_ready_sub2
);

--(opA-M_A)*(opB-M_B)
multplicacao: multiplierfsm_v2 Port Map(
            reset 	 => reset, 
            clk	 	 => clk,          
            op_a	 => s_sub1,
            op_b	 => s_sub2,
            start_i	 => s_ready_sub2,
            mul_out  => s_mult,
            ready_mul=> s_ready_mult
);

divisao: divNR Port Map(
            reset      => reset,
            clk        => clk,
            op_a 	   => s_mult,
            op_b 	   => divisor,
            start_i    => s_ready_mult,
            div_out    => s_div,
            ready_div  => ready
);

S_i <= s_div&"00000";
end Behavioral;
