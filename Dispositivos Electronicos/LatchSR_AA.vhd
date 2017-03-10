----------------------------------------------------------------------------------
-- University: Universidad Tecnológica de Pereira
-- Engineer: Stiven Cardona Monsalve
-- 
-- Create Date:    14:40:44 03/09/2017 
-- Module Name:    flipflopSR - Behavioral 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LatchSR_AA is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end LatchSR_AA;

architecture Behavioral of LatchSR_AA is

signal Q_aux : std_logic := '1';
signal Qn_aux : std_logic := '1';

begin

Q<=Q_aux;
Qn<=Qn_aux;

Q_aux<= R nor Qn_aux;
Qn_aux<= S nor Q_aux;

end Behavioral;

