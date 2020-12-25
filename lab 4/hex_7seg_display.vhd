----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:05:22 09/23/2019 
-- Design Name: 
-- Module Name:    hex_7seg_display - Behavioral 
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

entity hex_7seg_display is
port( b0,b1,b2,b3 : in std_logic_vector (3 downto 0);
		clk , pushBtn : in std_logic;
		l :out std_logic_vector(6 downto 0);
		an :out std_logic_vector(3 downto 0));		
		
end hex_7seg_display;

architecture Behavioral of hex_7seg_display is

	component mux4 is
		port(d0      : in  std_logic_vector(3 downto 0);
				d1      : in  std_logic_vector(3 downto 0);
				d2      : in  std_logic_vector(3 downto 0);
				d3      : in  std_logic_vector(3 downto 0);
				sel     : in  std_logic_vector(1 downto 0);
				b       : out std_logic_vector(3 downto 0));
	end component;
	
	signal w0,w1,w2,w3,w4,w9 : std_logic_vector(3 downto 0);
	signal w5,w10 : std_logic_vector(1 downto 0);
	
	component to_7seg is
		port(A : in  STD_LOGIC_VECTOR (3 downto 0);
          seg7 : out  STD_LOGIC_VECTOR (6 downto 0));
	end component;
	
	signal w6 : std_logic_vector(6 downto 0);
	signal w7,w8 : std_logic;
	
	component Anode_selector is
		port(c       : in std_logic_vector(1 downto 0);
			  anode   : out std_logic_vector(3 downto 0));
	end component;
	
	component Clock_Divider is
		port(clk,reset: in std_logic;
			  clock_out: out std_logic);
	end component;

	component Clock_Divider_2 is
		port(clk,reset: in std_logic;
           clock_out: out std_logic);
	end component;

begin

	u0 : mux4 port map(d0=>w0 , d1=>w1 , d2=>w2 , d3=>w3 , b=>w4 , sel=>w5);
	
	g1 : for i in 0 to 3 generate
		w3(i) <= b3(i);
		w2(i) <=b2(i);
		w1(i) <=b1(i);
		w0(i) <=b0(i);
	end generate;

	u1 : to_7seg port map(A => w4 , seg7 => w6);
		
	g2 : for i in 0 to 6 generate
		l(i) <=w6(i);
	end generate;
	
	u2 : Clock_Divider port map (clk =>w7 , reset =>w8 , clock_out =>w10(1));
	w7<=clk;
	w5(1)<=w10(1);
	
	u3 : Clock_Divider_2 port map(clk=>w10(1) , reset=>w8 , clock_out =>w10(0));
	w8<=pushBtn;
	w5(0)<=w10(0);
	
	u4 : Anode_selector port map(c=>w5 , anode=>w9);
	g3 : for i in 0 to 3 generate
		an(i)<=w9(i);

end generate;

end Behavioral;
		



