----------------------------------------------------------------------------------
-- University: Universidad Tecnológica de Pereira
-- Engineer: Stiven Cardona Monsalve
-- 
-- Create Date:    14:40:44 03/09/2017 
-- Module Name:    flipflopSR - Behavioral 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LatchSR_AAEA is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end LatchSR_AAEA;

architecture Behavioral of LatchSR_AAEA is
signal Q_aux : std_logic := '0';
signal Qn_aux : std_logic := '0';

begin

Q <= Q_aux;
Qn <= Qn_aux;

Q_aux <= (S nand En) nand Qn_aux;
Qn_aux <= (R nand En) nand Q_aux;

end Behavioral;

