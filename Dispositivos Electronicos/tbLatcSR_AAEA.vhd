LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tbLatcSR_AAEA IS
END tbLatcSR_AAEA;
 
ARCHITECTURE behavior OF tbLatcSR_AAEA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LatchSR_AAEA
    PORT(
         R : IN  std_logic;
         S : IN  std_logic;
         En : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic := '1';
   signal S : std_logic := '1';
   signal En : std_logic := '1';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LatchSR_AAEA PORT MAP (
          R => R,
          S => S,
          En => En,
          Q => Q,
          Qn => Qn
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- En <= '1' , R<='1' y S<='1'
      wait for 100 ns;
		-- En <= '1' , R<='0' y S<='1'
		R <= '0';
		wait for 100 ns;
		-- En <= '1' , R<='1' y S<='0'
		R <= '1';
		S <= '0';
		wait for 100 ns;
		-- En <= '1' , R<='0' y S<='0'
		R <= '0';
		wait for 100 ns;
		-- En <= '0' , R<='0' y S<='0'
		En <= '0';
		wait for 100 ns;
      wait;
   end process;

END;
