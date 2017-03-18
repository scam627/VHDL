----------------------------------------------------------------------------------
-- University: Universidad Tecnológica de Pereira
-- Engineer: Stiven Cardona Monsalve
-- 
-- Create Date:    14:40:44 03/18/2017 
-- Module Name:    Sumador completo de dos bits - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sumadorcomp_2bits is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C_IN : in  STD_LOGIC;
           Suma : out  STD_LOGIC;
           C_OUT : out  STD_LOGIC);
end Sumadorcomp_2bits;

architecture Behavioral of Sumadorcomp_2bits is

begin

Suma <= (A xor B) xor C_IN;
C_OUT <= ((A xor B) and C_IN) or (A and B);

end Behavioral;

