
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tbLatchSR_AB IS
END tbLatchSR_AB;
 
ARCHITECTURE behavior OF tbLatchSR_AB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LatchSR_AB
    PORT(
         Sn : IN  std_logic;
         Rn : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Sn : std_logic := '0';
   signal Rn : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LatchSR_AB PORT MAP (
          Sn => Sn,
          Rn => Rn,
          Q => Q,
          Qn => Qn
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- S <= '0' y R <= '0'
      wait for 100 ns;	
		Rn <= '1';
		--S <= '0' y R <= '1'
		wait for 100 ns;	
		Rn <= '0';
		Sn <= '1';
		--S <= '1' y R <= '0'
		wait for 100 ns;	
		Rn <= '1';
		--S <= '1' y R <= '1'
		wait for 100 ns;	
      -- insert stimulus here 

      wait;
   end process;

END;
