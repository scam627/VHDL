----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:51:21 03/09/2017 
-- Design Name: 
-- Module Name:    flipflopSR_T - Behavioral 
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

