----------------------------------------------------------------------------------
-- University: Universidad Tecnológica de Pereira
-- Engineer: Stiven Cardona Monsalve
-- 
-- Create Date:    14:40:44 03/09/2017 
-- Module Name:    flipflopSR - Behavioral 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflopSR_T is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  PRE : in STD_LOGIC;
			  CLR : in std_logic;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end flipflopSR_T;

architecture Behavioral of flipflopSR_T is

signal Q_aux : std_logic := '0';
signal Qn_aux : std_logic := '0';


begin
	process (PRE,CLR,CLK,Q_aux,Qn_aux) begin
		if(CLK = '1' and clk'event and PRE = '0' and CLR = '0') then
			if(T = '1') then
				if(Qn_aux= '1') then
					Qn_aux<= '0';
					Q_aux<= '1';
				end if;
				if(Qn_aux= '0') then
					Qn_aux<= '1';
					Q_aux<= '0';
				end if;
			end if;
		end if;
		Q <= Q_aux;
		Qn <= Qn_aux;
		if(PRE='1') then
			Q <= '1';
			Qn <='0';
			elsif (CLR = '1') then
			Q  <= '0';
			Qn <='1';
	  	end if;
	end process;
end Behavioral;

