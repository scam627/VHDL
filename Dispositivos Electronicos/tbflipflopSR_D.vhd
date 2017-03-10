--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:36:35 03/09/2017
-- Design Name:   
-- Module Name:   C:/Users/Stiven/Desktop/Documentos/Fundamentos/flipflopSR_D/tbflipflopSR_D.vhd
-- Project Name:  flipflopSR_D
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flipflopSR_D
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
 
ENTITY tbflipflopSR_D IS
END tbflipflopSR_D;
 
ARCHITECTURE behavior OF tbflipflopSR_D IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flipflopSR_D
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flipflopSR_D PORT MAP (
          D => D,
          clk => clk,
          Q => Q,
          Qn => Qn
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 70 ns;	
		D<='1';
      -- insert stimulus here 

      wait;
   end process;

END;
