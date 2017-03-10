LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tbLatchSR_AA IS
END tbLatchSR_AA;
 
ARCHITECTURE behavior OF tbLatchSR_AA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LatchSR_AA
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
   
   --Inputs
   signal S : std_logic := '1';
   signal R : std_logic := '1';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LatchSR_AA PORT MAP (
          S => S,
          R => R,
          Q => Q,
          Qn => Qn
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
		-- S <= '1' y R <= '1'
      wait for 100 ns;
		-- S <= '1' y R <= '0'
		R <= '0';
		wait for 100 ns;
		-- S <= '0' y R <= '1'
		R <= '1';
		S <= '0';
		wait for 100 ns;
		-- S <= '0' y R <= '0'
		R <= '0';
		wait for 100 ns;
      wait;
   end process;

END;
