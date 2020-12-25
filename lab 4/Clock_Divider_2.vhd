----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:02:45 09/23/2019 
-- Design Name: 
-- Module Name:    Clock_Divider_2 - Behavioral 
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

entity Clock_Divider_2 is
port ( clk,reset: in std_logic;
clock_out: out std_logic);
end Clock_Divider_2;
 
architecture bhv of Clock_Divider_2 is
 
signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
 
process(clk,reset)
begin
if(reset='1') then
count<=1;
tmp<='0';
elsif(clk'event and clk='1') then
count <=count+1;
if (count = 1) then
tmp <= NOT tmp;
count <= 1;
end if;
end if;
clock_out <= tmp;
end process;
 
end bhv;

