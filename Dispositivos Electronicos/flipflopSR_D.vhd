----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:02 03/09/2017 
-- Design Name: 
-- Module Name:    flipflopSR_D - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flipflopSR_D is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end flipflopSR_D;

architecture Behavioral of flipflopSR_D is

signal Q_aux : std_logic := '0';
signal Qn_aux : std_logic := '0';

begin 
	flip: process(CLK,Q_aux,Qn_aux) begin
	if (clk'event and clk='1') then
		if(D = '1') then
		Q_aux <= '1';
		Qn_aux <= '0';
		end if;
		if(D = '0') then
		Q_aux <= '0';
		Qn_aux <= '1';
		end if;
	end if;
		Q <= Q_aux;
		Qn <= Qn_aux;
 end process;
end Behavioral;
