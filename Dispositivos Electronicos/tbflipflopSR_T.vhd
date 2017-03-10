--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:15:12 03/09/2017
-- Design Name:   
-- Module Name:   C:/Users/Stiven/Desktop/Documentos/Fundamentos/flipflopSR_T/tbflipflopSR_T.vhd
-- Project Name:  flipflopSR_T
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flipflopSR_T
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
 
ENTITY tbflipflopSR_T IS
END tbflipflopSR_T;
 
ARCHITECTURE behavior OF tbflipflopSR_T IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flipflopSR_T
    PORT(
         T : IN  std_logic;
         CLK : IN  std_logic;
         PRE : IN  std_logic;
         CLR : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '1';
   signal CLK : std_logic := '0';
   signal PRE : std_logic := '1';
   signal CLR : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flipflopSR_T PORT MAP (
          T => T,
          CLK => CLK,
          PRE => PRE,
          CLR => CLR,
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
      wait for 80 ns;
		CLR<='1';
		wait for 40 ns;
		PRE<='0';
		wait for 40 ns;
		CLR<='0';
		T <= '1';
		wait for 40 ns;
		T <= '0';
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
