LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tbLatchSR_ABEB IS
END tbLatchSR_ABEB;
 
ARCHITECTURE behavior OF tbLatchSR_ABEB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LatchSR_ABEB
    PORT(
         Sn : IN  std_logic;
         Rn : IN  std_logic;
         Enn : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Sn : std_logic := '0';
   signal Rn : std_logic := '0';
   signal Enn : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LatchSR_ABEB PORT MAP (
          Sn => Sn,
          Rn => Rn,
          Enn => Enn,
          Q => Q,
          Qn => Qn
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- Enn <= '0' , Rn <= '0' y Sn <= '0'
      wait for 100 ns;
		-- Enn <= '0' , Rn <= '1' y Sn <= '0'
		Rn <= '1';
		wait for 100 ns;
		-- Enn <= '0' , Rn <= '0' y Sn <= '1'
		Rn <= '0';
		Sn <= '1';
		wait for 100 ns;
		-- Enn <= '0' , Rn <= '1' y Sn <= '1'
		Rn <= '1';
		wait for 100 ns;
		-- Enn <= '1' , Rn <= '0' y Sn <= '1'
		Rn <= '0';
		Enn <= '1';
		wait for 100 ns;
      wait;
   end process;

END;
