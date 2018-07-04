--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:07:28 12/03/2016
-- Design Name:   
-- Module Name:   I:/DigitalClock/AM_PM_tb.vhd
-- Project Name:  DigitalClock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AM_PM
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
 
ENTITY AM_PM_tb IS
END AM_PM_tb;
 
ARCHITECTURE behavior OF AM_PM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AM_PM
    PORT(
         reset : IN  std_logic;
         trigger : IN  std_logic;
         countOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal trigger : std_logic := '0';

 	--Outputs
   signal countOut : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AM_PM PORT MAP (
          reset => reset,
          trigger => trigger,
          countOut => countOut
        );

   -- Clock process definitions

   -- Stimulus process
   reset_proc: process
   begin		
   reset <= '1';
   wait for 4 ns;	
	reset <= '0';
	wait for 2500 ns;

   end process;
	
	trigger_proc: process
	begin
	trigger <= '1';
	wait for 4 ns;
	trigger <= '0';
	wait for 2500 ns;
	end process;
	

END;