LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY tbLatchSR_ABEA IS
END tbLatchSR_ABEA;
 
ARCHITECTURE behavior OF tbLatchSR_ABEA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LatchSR_ABEA
    PORT(
         Sn : IN  std_logic;
         Rn : IN  std_logic;
         En : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Sn : std_logic := '0';
   signal Rn : std_logic := '0';
   signal En : std_logic := '1';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LatchSR_ABEA PORT MAP (
          Sn => Sn,
          Rn => Rn,
          En => En,
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
		En <= '0';
		wait for 100 ns;
		wait;
   end process;

END;
