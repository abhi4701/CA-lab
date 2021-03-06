--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:10:49 05/26/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/half_adder/half_test.vhd
-- Project Name:  half_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_rtl
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
 
ENTITY half_test IS
END half_test;
 
ARCHITECTURE behavior OF half_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : OUT  std_logic;
         CY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal CY : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_rtl PORT MAP (
          A => A,
          B => B,
          S => S,
          CY => CY
        );

   -- Stimulus process
   stim_proc: process
   begin		
     A <= '0'; B <= '0'; wait for 1 ps;
A <= '0'; B <= '1'; wait for 1 ps;
A <= '1'; B <= '0'; wait for 1 ps;
A <= '1'; B <= '1'; wait for 1 ps;
   end process;

END;
