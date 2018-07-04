--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:59:32 12/03/2016
-- Design Name:   
-- Module Name:   I:/DigitalClock/Counter3bit_tb.vhd
-- Project Name:  DigitalClock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter3bit
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
 
ENTITY Counter3bit_tb IS
END Counter3bit_tb;
 
ARCHITECTURE behavior OF Counter3bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter3bit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         cnt : IN  std_logic;
			trigger : OUT std_logic;
         countOut : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal cnt : std_logic := '0';

 	--Outputs
   signal countOut : std_logic_vector(2 downto 0);
	signal trigger : std_logic;

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter3bit PORT MAP (
          clk => clk,
          reset => reset,
          cnt => cnt,
			 trigger => trigger,
          countOut => countOut
        );

clk_process :process
begin
clk <= NOT clk;
wait for 3 ns;
end process;	

reset_process: process
begin
reset <= '1';
wait for 4 ns;
reset <= '0';
wait for 2500 ns;
end process;

cnt_process: process
begin
cnt <= '0';
wait for 4 ns;
cnt <= '1';
wait for 2500 ns;
end process;
	
	
END;