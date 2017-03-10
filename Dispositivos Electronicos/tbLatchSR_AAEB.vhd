--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY tbLatchSR_AAEB IS
END tbLatchSR_AAEB;
 
ARCHITECTURE behavior OF tbLatchSR_AAEB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LatchSR_AAEB
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         Enn : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '1';
   signal R : std_logic := '1';
   signal Enn : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LatchSR_AAEB PORT MAP (
          S => S,
          R => R,
          Enn => Enn,
          Q => Q,
          Qn => Qn
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
      -- Enn <= '0' , S <= '1' y R <= '1'
      wait for 100 ns;	
		-- Enn <= '0' , S <= '1' y R <= '0'
		R <= '0';
      wait for 100 ns;	
		-- Enn <= '0' , S <= '0' y R <= '1'
		R <= '1';
		S <= '0';
      wait for 100 ns;	
		-- Enn <= '0' , S <= '0' y R <= '0'
		R <= '0';
      wait for 100 ns;	
		-- Enn <= '1' , S <= '1' y R <= '0'
		S <= '0';
		Enn <= '1';
      wait for 100 ns;	
      wait;
   end process;

END;
