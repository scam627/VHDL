library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CONTROL_UNIT_MODULE is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (5 downto 0));
end CONTROL_UNIT_MODULE;

architecture Behavioral of CONTROL_UNIT_MODULE is

begin
process(op,op3)
begin
	case op is
	when "10" => ALUOP <= op3;
	when others => ALUOP <= "000000";
	end case;

end process;

end Behavioral;