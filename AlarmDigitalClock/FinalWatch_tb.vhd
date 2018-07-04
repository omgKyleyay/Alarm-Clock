--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:19:13 12/03/2016
-- Design Name:   
-- Module Name:   I:/DigitalClock/FinalWatch_tb.vhd
-- Project Name:  DigitalClock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FinalWatch
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
 
ENTITY FinalWatch_tb IS
END FinalWatch_tb;
 
ARCHITECTURE behavior OF FinalWatch_tb IS 
 
    -- C-omponent Declaration for the Unit Under Test (UUT)
 
    COMPONENT FinalWatch
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         cnt : IN  std_logic;
			alarmMin: in STD_LOGIC_VECTOR(2 downto 0);
			alarmHr: in STD_LOGIC_VECTOR(3 downto 0);
         secLSB : OUT  std_logic_vector(3 downto 0);
			secMSB : OUT  std_logic_vector(2 downto 0);
         minLSB : OUT  std_logic_vector(3 downto 0);
			minMSB : OUT  std_logic_vector(2 downto 0);
			hourLSB : OUT  std_logic_vector(3 downto 0);
			hourMSB : OUT  std_logic;
			hours4bits: OUT  std_logic_vector(3 downto 0);
			alarm: out STD_LOGIC
         --hour : OUT  std_logic_vector(4 downto 0);
         --PM : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal cnt : std_logic := '1';
	signal alarmMin: STD_LOGIC_VECTOR(2 downto 0):= "000";
	signal alarmHr: STD_LOGIC_VECTOR(3 downto 0) := "1100";

 	--Outputs
   signal secLSB : std_logic_vector(3 downto 0);
	signal secMSB : std_logic_vector(2 downto 0);
   signal minLSB : std_logic_vector(3 downto 0);
	signal minMSB : std_logic_vector(2 downto 0);
   signal hourLSB : std_logic_vector(3 downto 0);
	signal hours4bits : std_logic_vector(3 downto 0);
	signal hourMSB : std_logic;
   --signal PM : std_logic:= '0';
	signal alarm: STD_LOGIC;

   -- Clock period definitions

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FinalWatch PORT MAP (
          clk => clk,
          reset => reset,
          cnt => cnt,
          secLSB => secLSB,
			 secMSB => secMSB,
          minLSB => minLSB,
			 minMSB => minMSB,
			 hourLSB => hourLSB,
			 hourMSB => hourMSB,
			 hours4bits => hours4bits,
			 alarm=> alarm,
			 alarmMin => alarmMin,
			 alarmHr => alarmHr
          --hour => hour,
          --PM => PM
        );

   -- Clock process definitions
   clk_process :process
   begin
	clk <= NOT clk;
	wait for 1 ns;
   end process;
 

   
   reset_proc: process
   begin		
   reset <= '1';
   wait for 1 ns;	
	reset <= '0';
   wait for 25000000 ns;

   end process;
	
--	cnt_proc: process
--   begin		
--   cnt <= '0';
--   wait for 1 ns;	
--	cnt <= '1';
--   wait for 25000000 ns;
--
--   end process;

END;
