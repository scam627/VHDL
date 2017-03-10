----------------------------------------------------------------------------------
-- University: Universidad Tecnológica de Pereira
-- Engineer: Stiven Cardona Monsalve
-- 
-- Create Date:    14:40:44 03/09/2017 
-- Module Name:    flipflopSR - Behavioral 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LatchSR_AAEB is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Enn : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end LatchSR_AAEB;

architecture Behavioral of LatchSR_AAEB is

signal Q_aux : std_logic :='0';
signal Qn_aux : std_logic :='0';

begin

Q <= Q_aux;
Qn <= Qn_aux;

Q_aux <= (S nand not Enn) nand Qn_aux;
Qn_aux <= (R nand not Enn) nand Q_aux;

end Behavioral;

