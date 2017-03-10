library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LatchSR_ABEB is
    Port ( Sn : in  STD_LOGIC;
           Rn : in  STD_LOGIC;
           Enn : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end LatchSR_ABEB;

architecture Behavioral of LatchSR_ABEB is

signal Q_aux : std_logic := '1';
signal Qn_aux : std_logic := '1';

begin

Q <= Q_aux;
Qn <=Qn_aux;

Qn_aux <= (Sn nor Enn) nor Q_aux;
Q_aux <= (Rn nor Enn) nor Qn_aux;

end Behavioral;

