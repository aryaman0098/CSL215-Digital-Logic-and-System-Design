----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:43:33 09/23/2019 
-- Design Name: 
-- Module Name:    to_7seg - Behavioral 
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

entity to_7seg is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
          seg7 : out  STD_LOGIC_VECTOR (6 downto 0)
             );
end to_7seg;

architecture Behavioral of to_7seg is

begin

--'a' corresponds to MSB of seg7 and 'g' corresponds to LSB of seg7.
process (A)
BEGIN
    case A is
        when "0000"=> seg7 <="0000001";  -- '0'
        when "0001"=> seg7 <="1001111";  -- '1'
        when "0010"=> seg7 <="0010010";  -- '2'
        when "0011"=> seg7 <="0000110";  -- '3'
        when "0100"=> seg7 <="1001100";  -- '4' 
        when "0101"=> seg7 <="0100100";  -- '5'
        when "0110"=> seg7 <="0100000";  -- '6'
        when "0111"=> seg7 <="0001111";  -- '7'
        when "1000"=> seg7 <="0000000";  -- '8'
        when "1001"=> seg7 <="0000100";  -- '9'
        when "1010"=> seg7 <="0001000";  -- 'A'
        when "1011"=> seg7 <="1100000";  -- 'b'
        when "1100"=> seg7 <="0110001";  -- 'C'
        when "1101"=> seg7 <="1000010";  -- 'd'
        when "1110"=> seg7 <="0110000";  -- 'E'
        when "1111"=> seg7 <="0111000";  -- 'F'
        when others =>  NULL;
    end case;
end process;

end Behavioral;