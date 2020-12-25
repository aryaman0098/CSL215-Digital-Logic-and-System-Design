----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:48:50 10/24/2019 
-- Design Name: 
-- Module Name:    register1 - Behavioral 
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
use ieee.numeric_std.all ;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register1 is
   Port(clock: in std_logic;
	write_enable: in std_logic;
	mode: in std_logic;
	reset: in std_logic;
	wr_addr: in std_logic_vector (2 downto 0);
	rd_addr1: in std_logic_vector (2 downto 0);
	rd_addr2: in std_logic_vector (2 downto 0);
	wr_data: in std_logic_vector (3 downto 0);
	rd_data1:out std_logic_vector (3 downto 0);
	rd_data2: out std_logic_vector (3 downto 0);
	rd_data1_xor_data2: out std_logic_vector (3 downto 0));
end register1;

architecture Behavioral of register1 is


type reg_arr is array(0 to 7) of std_logic_vector(3 downto 0);
signal rData: reg_arr := (others => (others => '0'));

signal my_clock: std_logic;
signal counter : std_logic_vector (26 downto 0):=(others=> '0');
begin
rd_data1<=rData(to_integer(unsigned(rd_addr1)));
rd_data2<=rData(to_integer(unsigned(rd_addr2)));
rd_data1_xor_data2<=(rData(to_integer(unsigned(rd_addr1))) )xor (rData(to_integer(unsigned(rd_addr2))));

process(clock,reset)
begin 
    if(rising_edge(clock)) then
    if(reset='1') then
        counter <= counter +1;
		  my_clock<= counter(26);

    elsif(reset='0') then
	 counter <= counter +1;
	 my_clock<= counter(0);
	end if;
    end if;
end process;



process(my_clock)
begin

if (rising_edge(my_clock)) then
	if (write_enable='1') then
		if(mode='0') then 
			rData(to_integer(unsigned(wr_addr)))<=wr_data;
		elsif(mode='1') then
			rData(to_integer(unsigned(wr_addr)))<=(rData(to_integer(unsigned(rd_addr1))) )xor (rData(to_integer(unsigned(rd_addr2))));
			
		end if;
	end if;
 
 end if;

end process;
end Behavioral;

