----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:47:08 09/23/2019 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux4 is
port(
  d0      : in  std_logic_vector(3 downto 0);
  d1      : in  std_logic_vector(3 downto 0);
  d2      : in  std_logic_vector(3 downto 0);
  d3      : in  std_logic_vector(3 downto 0);
  sel     : in  std_logic_vector(1 downto 0);
  b       : out std_logic_vector(3 downto 0));
end mux4;
architecture Behavioral of mux4 is
  -- declarative part: empty
begin
p_mux : process(d0,d1,d2,d3,sel)
begin
  case sel is
    when "00" => b <= d0 ;
    when "01" => b <= d1 ;
    when "10" => b <= d2 ;
    when others => b <= d3 ;
  end case;
end process p_mux;
end Behavioral;