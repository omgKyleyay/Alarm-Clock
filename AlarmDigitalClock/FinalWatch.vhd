----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:33 12/03/2016 
-- Design Name: 
-- Module Name:    FinalWatch - Structural 
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

entity FinalWatch is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           cnt : in  STD_LOGIC;
--			  secLSB: out  STD_LOGIC_VECTOR (3 downto 0);
--			  secMSB: out  STD_LOGIC_VECTOR (2 downto 0);
--			  minLSB: out  STD_LOGIC_VECTOR (3 downto 0);
			  minMSB: inout  STD_LOGIC_VECTOR (2 downto 0);
--			  hourLSB: out STD_LOGIC_VECTOR(3 downto 0);
--			  hourMSB: out STD_LOGIC;
			  hours4bits: inout STD_LOGIC_VECTOR(3 downto 0);
			  alarm: out STD_LOGIC;
			  alarmMin: in STD_LOGIC_VECTOR(2 downto 0);
			  alarmHr: in STD_LOGIC_VECTOR(3 downto 0)
			  --hour: out  STD_LOGIC_VECTOR (4 downto 0);
			  --PM: inout std_logic
			  );
end FinalWatch;

architecture Structural of FinalWatch is
---COMPONENT Counter1bit
--    PORT(
--         clk : IN  std_logic;
--         reset : IN  std_logic;
--         cnt : IN  std_logic;
--         countOut : OUT  std_logic
--        );
--    END COMPONENT;
	 
COMPONENT Counter3bit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         cnt : IN  std_logic;
			trigger : OUT std_logic;
         countOut : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
	 
COMPONENT Counter4bit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         cnt : IN  std_logic;
			trigger : OUT std_logic;
         countOut : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
COMPONENT Counter5bit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         cnt : IN  std_logic;
			trigger : OUT std_logic;
         countOut : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
	 
--COMPONENT AM_PM
--    PORT(
--         reset : IN  std_logic;
--         trigger : IN  std_logic;
--         countOut : OUT  std_logic
--        );
--    END COMPONENT;
    
signal trigger0,trigger1,trigger2,trigger3,trigger4: STD_LOGIC;
signal temp: STD_LOGIC_vector(4 downto 0);
--signal temp1: STD_LOGIC_vector(2 downto 0);
signal slow_clk: STD_LOGIC;
signal count: integer:= 0;


begin

process(clk, reset)
begin
	if reset = '1' then
		slow_clk <= '0';
		
	elsif rising_edge(clk) then
		if count < 50000000 then
			count <= count + 1;
		else 
			count <= 0;
			slow_clk <= not slow_clk;
		end if;
	end if;
end process;


--sec0: Counter4bit port map(
--clk => clk,
--reset => reset,
--cnt => '1',
--trigger=> trigger0,
--countOut => secLSB
--);
--
--sec1: Counter3bit port map(
--clk => clk,
--reset => reset,
--cnt => trigger0,
--trigger=> trigger1,
--countOut => secMSB
--);
--
--min0: Counter4bit port map(
--clk => clk,
--reset => reset,
--cnt => trigger1,
--trigger=> trigger2,
--countOut => minLSB
--);
--
min1: Counter3bit port map(
clk => slow_clk,
reset => reset,
cnt => '1',
trigger=> trigger3,
countOut => minMSB
);

hours: Counter5bit port map(
clk => slow_clk,
reset => reset,
cnt => trigger3,
trigger=> trigger4,
countOut => temp
);

--AM: AM_PM port map(
--reset => reset,
--trigger => trigger4,
--countOut => PM
--);


--PM <= NOT PM when trigger3 = '1' and temp = "10001" else
--'0';
--hourLSB<= temp(3 downto 0);
--hourMSB <= temp(4);
--hourLSB <= temp(3 downto 0);

process(slow_clk)
begin
if rising_edge(slow_clk) then
	--minMSB <= temp1;
	if temp(4) = '1' then
		hours4bits <= temp(3 downto 0) + 10;
	else
		hours4bits <= temp(3 downto 0);
	end if;
	
end if;
end process;

--process(slow_clk)
--begin
--
--if rising_edge(slow_clk) then
--	if alarmHr = hours4bits then
--		if alarmMin = minMSB then
--			alarm <= '1';
--		else
--			alarm <= '0';
--		end if;
--	else
--		alarm <= '0';
--	end if;
--	
--end if;
--end process;
alarm <= '1' when alarmHr = hours4bits and alarmMin = minMSB else
			'0';
--alarm <= '1';
--alarmMin <= "000";
--alarmHr <= "1100";
--hours4bits <= "1011";
end Structural;
