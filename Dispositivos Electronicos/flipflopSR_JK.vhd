----------------------------------------------------------------------------------
-- University: Universidad Tecnológica de Pereira
-- Engineer: Stiven Cardona Monsalve
-- 
-- Create Date:    14:40:44 03/09/2017 
-- Module Name:    flipflopSR - Behavioral 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflopSR_JK is
    Port ( CLK : in  STD_LOGIC;
           J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end flipflopSR_JK;

architecture Behavioral of flipflopSR_JK is

signal Q_aux : std_logic := '0';
signal Qn_aux : std_logic := '0';

begin 
	flip: process(CLK,Q_aux,Qn_aux) begin
	if (clk'event and clk='1') then
		if(J = '1' and K = '1') then
		Q_aux <= Qn_aux;
		Qn_aux <= Q_aux;
		end if;
		if(J = '1' and K = '0') then
		Q_aux <= '1';
		Qn_aux <= '0';
		end if;
		if(J = '0' and K = '1') then
		Q_aux <= '0';
		Qn_aux <= '1';
		end if;
	end if;
		Q <= Q_aux;
		Qn <= Qn_aux;
 end process;
end Behavioral;
