--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:47:01 03/09/2017
-- Design Name:   
-- Module Name:   C:/Users/Stiven/Desktop/Documentos/Fundamentos/fliflopSR_JK/tbflipflopSR_JK.vhd
-- Project Name:  fliflopSR_JK
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flipflopSR_JK
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tbflipflopSR_JK IS
END tbflipflopSR_JK;
 
ARCHITECTURE behavior OF tbflipflopSR_JK IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flipflopSR_JK
    PORT(
         CLK : IN  std_logic;
         J : IN  std_logic;
         K : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal J : std_logic := '1';
   signal K : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flipflopSR_JK PORT MAP (
          CLK => CLK,
          J => J,
          K => K,
          Q => Q,
          Qn => Qn
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 60 ns;
		K <= '1';
		wait for 100 ns;
		K <= '0';
		J <= '0';
		wait for 60 ns;
		K <= '1';
		J <= '0';
      wait;
   end process;

END;
