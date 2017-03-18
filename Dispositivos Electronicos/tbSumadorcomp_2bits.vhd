--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:39:55 03/18/2017
-- Design Name:   
-- Module Name:   C:/Users/Stiven/Desktop/Documentos/Fundamentos/Sumadorcomp_2bits/tbSumadorcomp_2bits.vhd
-- Project Name:  Sumadorcomp_2bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumadorcomp_2bits
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
 
ENTITY tbSumadorcomp_2bits IS
END tbSumadorcomp_2bits;
 
ARCHITECTURE behavior OF tbSumadorcomp_2bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumadorcomp_2bits
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C_IN : IN  std_logic;
         Suma : OUT  std_logic;
         C_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C_IN : std_logic := '0';

 	--Outputs
   signal Suma : std_logic;
   signal C_OUT : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumadorcomp_2bits PORT MAP (
          A => A,
          B => B,
          C_IN => C_IN,
          Suma => Suma,
          C_OUT => C_OUT
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- A = 0, B = 0, C_IN = 0
      wait for 50 ns;	
		-- A = 0, B = 0, C_IN = 1
		C_IN <= '1';
		wait for 50 ns;
		-- A = 0, B = 1, C_IN = 0
		C_IN <= '0';
		B <= '1';
		wait for 50 ns;
		-- A = 0, B = 1, C_IN = 1
		C_IN <= '1';
		wait for 50 ns;
		-- A = 1, B = 0, C_IN = 0
		C_IN <= '0';
		B <= '0';
		A <= '1';
		wait for 50 ns;
		-- A = 1, B = 0, C_IN = 1
		C_IN <= '1';
		wait for 50 ns;
		-- A = 1, B = 1, C_IN = 0
		C_IN <= '0';
		B <= '1';
		wait for 50 ns;		
		-- A = 1, B = 1, C_IN = 1
		C_IN <= '1';
      wait;
   end process;

END;
