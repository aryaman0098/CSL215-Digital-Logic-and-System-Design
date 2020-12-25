

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seg7_decoder is
port (
        bcd1 : in std_logic_vector(3 downto 0);  
        bcd2 : in std_logic_vector(3 downto 0);  
        bcd3 : in std_logic_vector(3 downto 0);  
        bcd4 : in std_logic_vector(3 downto 0);  
        segment7 : out std_logic_vector(6 downto 0);  
       	line: out std_logic_vector(3 downto 0); 
	clock_100Mhz : in STD_LOGIC; 
      	reset : in STD_LOGIC );

end seg7_decoder;


architecture Behavioral of seg7_decoder is


signal selection:  std_logic_vector(1 downto 0); 




signal  segment1 :  std_logic_vector(6 downto 0);  
signal  segment2 :  std_logic_vector(6 downto 0);  
signal  segment3 :  std_logic_vector(6 downto 0);  
signal  segment4 :  std_logic_vector(6 downto 0);  

signal refresh_counter: STD_LOGIC_VECTOR (19 downto 0);





begin
process (bcd1)
BEGIN

case  bcd1 is
when "0000"=> segment1 <="0000001";  
when "0001"=> segment1 <="1001111";  
when "0010"=> segment1 <="0010010";  
when "0011"=> segment1 <="0000110";  
when "0100"=> segment1 <="1001100";   
when "0101"=> segment1 <="0100100";  
when "0110"=> segment1 <="0100000";  
when "0111"=> segment1 <="0001111";  
when "1000"=> segment1 <="0000000";  
when "1001"=> segment1 <="0000100";  





  
when others=> segment1 <="1111111"; 
end case;


end process;

process (bcd2)
BEGIN

case  bcd2 is
when "0000"=> segment2 <="0000001";  
when "0001"=> segment2 <="1001111";  
when "0010"=> segment2 <="0010010"; 
when "0011"=> segment2 <="0000110"; 
when "0100"=> segment2 <="1001100"; 
when "0101"=> segment2 <="0100100"; 
when "0110"=> segment2 <="0100000";  
when "0111"=> segment2 <="0001111";  
when "1000"=> segment2 <="0000000";  
when "1001"=> segment2 <="0000100";  





  
when others=> segment2 <="1111111"; 
end case;


end process;



process (bcd3)
BEGIN

case  bcd3 is
when "0000"=> segment3 <="0000001";  -- '0'
when "0001"=> segment3 <="1001111";  -- '1'
when "0010"=> segment3 <="0010010";  -- '2'
when "0011"=> segment3 <="0000110";  -- '3'
when "0100"=> segment3 <="1001100";  -- '4' 
when "0101"=> segment3 <="0100100";  -- '5'
when "0110"=> segment3 <="0100000";  -- '6'
when "0111"=> segment3 <="0001111";  -- '7'
when "1000"=> segment3 <="0000000";  -- '8'
when "1001"=> segment3 <="0000100";  -- '9'




 
when others=> segment3 <="1111111"; 
end case;


end process;

process (bcd4)
BEGIN

case  bcd4 is
when "0000"=> segment4 <="0000001"; 
when "0001"=> segment4 <="1001111"; 
when "0010"=> segment4 <="0010010";  
when "0011"=> segment4 <="0000110";  
when "0100"=> segment4 <="1001100";   
when "0101"=> segment4 <="0100100";  
when "0110"=> segment4 <="0100000";  
when "0111"=> segment4 <="0001111";  
when "1000"=> segment4 <="0000000";  
when "1001"=> segment4 <="0000100"; 





  
when others=> segment4 <="1111111"; 
end case;


end process;

process(clock_100Mhz,reset)
begin 
    if(reset='1') then
        refresh_counter <= (others => '0');
    elsif(rising_edge(clock_100Mhz)) then
        refresh_counter <= refresh_counter + 1;
    end if;
end process;
 selection <= refresh_counter(19 downto 18); --Reducing the frequency





process (selection)

BEGIN

case selection is

when "00"=> 
line <="1110";
segment7 <= segment1;


when "01"=> 
line <="1101";
segment7 <= segment2;


when "10"=> 
line <="1011";
segment7 <= segment3;

when "11"=> 
line <="0111";
segment7 <= segment4;


when others=> line <="0000";

end case;

end process;

end Behavioral;
 
 
 
