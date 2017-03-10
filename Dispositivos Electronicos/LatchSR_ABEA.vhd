----------------------------------------------------------------------------------
-- University: Universidad Tecnológica de Pereira
-- Engineer: Stiven Cardona Monsalve
-- 
-- Create Date:    14:40:44 03/09/2017 
-- Module Name:    flipflopSR - Behavioral 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LatchSR_ABEA is
    Port ( Sn : in  STD_LOGIC;
           Rn : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end LatchSR_ABEA;

architecture Behavioral of LatchSR_ABEA is

signal Q_aux : std_logic := '1';
signal Qn_aux: std_logic := '1';

begin

Q <= Q_aux;
Qn <= Qn_aux;

Q_aux <= (Rn nor not En) nor Qn_aux;
Qn_aux <= (Sn nor not En) nor Q_aux;

end Behavioral;

