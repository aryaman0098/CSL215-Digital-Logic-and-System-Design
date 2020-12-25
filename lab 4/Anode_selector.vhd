----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:01:59 09/23/2019 
-- Design Name: 
-- Module Name:    Anode_selector - Behavioral 
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

entity Anode_selector is
port(
 c       : in std_logic_vector(1 downto 0);
 anode   : out std_logic_vector(3 downto 0));
end Anode_selector;

architecture Behavioral of Anode_selector is

begin
	with c select
		anode<="1110" when "00",
										"1101" when "01",
										"1011" when "10",
										"0111" when "11",
										"1111" when others;
end Behavioral;

