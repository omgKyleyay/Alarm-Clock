----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:00:34 12/03/2016 
-- Design Name: 
-- Module Name:    Counter4bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter4bit is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           cnt : in  STD_LOGIC;
			  trigger : out STD_LOGIC;
           countOut : out  STD_LOGIC_VECTOR (3 downto 0));
end Counter4bit;

architecture Behavioral of Counter4bit is

signal temp: STD_LOGIC_VECTOR (3 downto 0);
begin
process (clk, reset, cnt, temp)
begin
if reset = '1' then 
temp <= "0000"; 
elsif cnt = '0' then
temp <= temp;
else
if rising_edge(clk) then
if temp < 9 then
temp <= temp + 1;
else
temp <= "0000";
end if;
end if;
end if;
end process;
trigger <= '1' when temp = "1001" and cnt = '1' 
else '0';
countOut <= temp;
end Behavioral;
