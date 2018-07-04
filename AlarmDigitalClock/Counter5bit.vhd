----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:02:24 12/03/2016 
-- Design Name: 
-- Module Name:    Counter5bit - Behavioral 
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

entity Counter5bit is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           cnt : in  STD_LOGIC;
			  trigger : out STD_LOGIC;
           countOut : out  STD_LOGIC_VECTOR (4 downto 0));
end Counter5bit;

architecture Behavioral of Counter5bit is

signal temp: STD_LOGIC_VECTOR (4 downto 0);
begin
process (clk, reset, cnt, temp)
begin
if reset = '1' then 
trigger <= '0';
temp <= "00000"; 
elsif cnt = '0' then
trigger <= '0';
temp <= temp;
else
if rising_edge(clk) then
if temp < 9 then
temp <= temp + 1;
trigger <= '0';
elsif temp = 9 then
temp <= "10000";
trigger <= '0';
elsif temp < 17 then --10001
temp<= temp +1;
trigger <= '0';
elsif temp = 17 then
temp<= temp +1;
trigger <= '1';
--18 represents 10010 which is 12 in hour slots
elsif temp = 18 then
temp <= "00001";

end if;
end if;
end if;
end process;
--temp(3 downto 0) <= hour0,
--temp(4) <= hour1;
countOut <= temp;

end Behavioral;
