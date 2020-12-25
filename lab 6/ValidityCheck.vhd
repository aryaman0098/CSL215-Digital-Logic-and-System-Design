----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:22:41 11/13/2019 
-- Design Name: 
-- Module Name:    validity_check - Behavioral 
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

entity ValidityCheck is

port(
a_i: in std_logic_vector (7 downto 0);
b_i: in std_logic_vector (7 downto 0);
Final : out std_logic 

);
end ValidityCheck;

architecture Behavioral of ValidityCheck is

component Check_bcd 
port(

n1: in  std_logic_vector (3 downto 0);
n2: in std_logic_vector (3 downto 0);

k: out std_logic



);
end component;

signal a,b : std_logic;

begin

one: Check_bcd port map (n1=>a_i(7 downto 4),n2=>a_i(3 downto 0),k=>a);
two: Check_bcd port map (n1=>b_i(7 downto 4),n2=>b_i(3 downto 0),k=>b);

Final <= a and b ;

end Behavioral;

