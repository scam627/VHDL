--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:03:00 10/22/2017
-- Design Name:   
-- Module Name:   C:/Users/Stiven/Desktop/ARQUITECTURA/PROCESADOR_III/PSR_MODIFIER_MODULE_TB.vhd
-- Project Name:  PROCESADOR_III
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSR_MODIFIER_MODULE
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
 
ENTITY PSR_MODIFIER_MODULE_TB IS
END PSR_MODIFIER_MODULE_TB;
 
ARCHITECTURE behavior OF PSR_MODIFIER_MODULE_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSR_MODIFIER_MODULE
    PORT(
         CRS1 : IN  std_logic_vector(31 downto 0);
         OP2 : IN  std_logic_vector(31 downto 0);
         ALUOP : IN  std_logic_vector(5 downto 0);
         ALU_RESULT : IN  std_logic_vector(31 downto 0);
         NZVC : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CRS1 : std_logic_vector(31 downto 0) := (others => '0');
   signal OP2 : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUOP : std_logic_vector(5 downto 0) := (others => '0');
   signal ALU_RESULT : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal NZVC : std_logic_vector(3 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSR_MODIFIER_MODULE PORT MAP (
          CRS1 => CRS1,
          OP2 => OP2,
          ALUOP => ALUOP,
          ALU_RESULT => ALU_RESULT,
          NZVC => NZVC
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      
      wait;
   end process;

END;
