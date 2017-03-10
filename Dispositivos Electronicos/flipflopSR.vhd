----------------------------------------------------------------------------------
-- University: Universidad Tecnológica de Pereira
-- Engineer: Stiven Cardona Monsalve
-- 
-- Create Date:    14:40:44 03/09/2017 
-- Module Name:    flipflopSR - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity flipflopSR is
    Port ( CLK : in  STD_LOGIC;
           S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end flipflopSR;

architecture Behavioral of flipflopSR is

signal Q_aux : std_logic := '0';
signal Qn_aux : std_logic := '0';

begin 
	flip: process(CLK,Q_aux,Qn_aux) begin
	if (clk'event and clk='1') then
		if(S = '1' and R = '1') then
		Q_aux <= '1';
		Qn_aux <= '1';
		end if;
		if(S = '1' and R = '0') then
		Q_aux <= '1';
		Qn_aux <= '0';
		end if;
		if(S = '0' and R = '1') then
		Q_aux <= '0';
		Qn_aux <= '1';
		end if;
	end if;
		Q <= Q_aux;
		Qn <= Qn_aux;
 end process;
end Behavioral;


