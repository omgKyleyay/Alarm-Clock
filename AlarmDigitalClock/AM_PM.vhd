----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:03:52 12/03/2016 
-- Design Name: 
-- Module Name:    AM_PM - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AM_PM is
    Port ( reset : in  STD_LOGIC;
           trigger : in  STD_LOGIC;
           countOut : out  STD_LOGIC);
end AM_PM;

architecture Behavioral of AM_PM is
signal temp: std_logic;

begin
process(reset, trigger, temp)
begin
if reset = '1' then
temp <= '0';
else
case trigger is
when '0' => countOut<= temp;
when '1' => countOut<= NOT temp;
when others => countOut <= 'X';
end case;
end if;
end process;

end Behavioral;
