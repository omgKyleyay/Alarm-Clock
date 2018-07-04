----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:58:23 12/03/2016 
-- Design Name: 
-- Module Name:    Counter3bit - Behavioral 
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

entity Counter3bit is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           cnt : in  STD_LOGIC;
			  trigger : out STD_LOGIC;
           countOut : out  STD_LOGIC_VECTOR (2 downto 0));
end Counter3bit;

architecture Behavioral of Counter3bit is

signal temp: STD_LOGIC_VECTOR (2 downto 0);
begin
process (clk, reset, cnt, temp)
begin
if reset = '1' then --boolean just =
temp <= "000"; --assignment <=
elsif cnt = '0' then
temp <= temp;
else
if rising_edge(clk) then
if temp < 5 then
temp <= temp + 1;
else
temp <= "000";

end if;
end if;
end if;
end process;

trigger <= '1' when temp = "101" and cnt = '1' 
else '0';
countOut <= temp;
end Behavioral;
