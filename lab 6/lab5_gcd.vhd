----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:57 11/13/2019 
-- Design Name: 
-- Module Name:    lab5_gcd - Behavioral 
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

entity lab5_gcd is

port (
clk : in std_logic;
a_i: in std_logic_vector (7 downto 0);
b_i: in std_logic_vector (7 downto 0);
push_i : in std_logic;
pushbutton : in std_logic; 
load : out std_logic;
sub : out std_logic;
op_valid : out std_logic;
cathode : out std_logic_vector ( 6 downto 0);
anode : out std_logic_vector (3 downto 0)
);



end lab5_gcd;

architecture Behavioral of lab5_gcd is
component ValidityCheck 

port(
a_i: in std_logic_vector (7 downto 0);
b_i: in std_logic_vector (7 downto 0);
Final : out std_logic 

);

end component;


component seg7_decoder
port (
        bcd1 : in std_logic_vector(3 downto 0);  
        bcd2 : in std_logic_vector(3 downto 0);  
        bcd3 : in std_logic_vector(3 downto 0);  
        bcd4 : in std_logic_vector(3 downto 0);  
        segment7 : out std_logic_vector(6 downto 0);  
        line: out std_logic_vector(3 downto 0); 
        clock_100Mhz : in STD_LOGIC;
      reset : in STD_LOGIC 
    );

end component;




signal condition: std_logic;
signal l,s: std_logic:='0' ;
signal slow_clock: std_logic;
signal counter : std_logic_vector (28 downto 0):=(others=> '0');
signal a0,a1: std_logic_vector (3 downto 0):=(others=> '0');
signal b0,b1: std_logic_vector (3 downto 0):=(others=> '1');
signal yes: std_logic :='0';
begin


process(push_i,l,s,a0,a1,b0,b1,slow_clock,yes,condition)
begin

if(condition='0')then
l<='0';
s<='0';

elsif(a0=b0 and a1=b1 and push_i='0') then 
	s<='0';
	l<='0';

elsif(push_i='1' and condition='1') then 
	l<='1';
	s<='0';
elsif(yes='1')then 
	l<='0';
	s<='1';


end if;	



end process;


process(clk,pushbutton)
begin 
    if(rising_edge(clk)) then
    if(pushbutton='1') then
        counter <= counter +1;
		  slow_clock<= counter(24);

    elsif(pushbutton='0') then
	 counter <= counter +1;
	 slow_clock<= counter(25);
	end if;
    end if;
end process;



process(slow_clock,s,l,push_i)
begin
if(rising_edge(slow_clock)) then 
if(l='1') then 

		a1<=a_i(7 downto 4);
		a0<=a_i(3 downto 0);
		b1<=b_i(7 downto 4);
		b0<=b_i(3 downto 0);
	yes<='1';
	

elsif(s='1' and push_i='0') then 
	
		yes<='0';
		
		
		IF (a1>b1 OR (a1=b1 AND a0>b0)) THEN 
                                IF a0>=b0 THEN
                                    a0 <= a0-b0;
                                    a1 <= a1-b1;
                                ELSE 
                                    a0 <= 10+a0-b0;
                                    a1 <= a1-b1-1;                
                                END IF;
                            ELSIF (b1>a1 OR (b1=a1 AND b0>a0)) THEN         
                                IF b0>=a0 THEN
                                    b0 <= b0-a0;
                                    b1 <= b1-a1;
                                ELSE 
                                    b0 <= 10+b0-a0;
                                    b1 <= b1-a1-1;                
                                END IF;
                            
                            END IF;
                            
                            
                                 
		
end if;
end if;
	
end process;



bcd_Check: ValidityCheck port map(a_i=>a_i,b_i=>b_i,final=>condition);
led: seg7_decoder port map(bcd4=>a1,bcd3=>a0,bcd2=>b1,bcd1=>b0,segment7=>cathode,line=>anode,
clock_100MHZ=>clk,reset=>'0');


op_valid<=condition;
load<=l;
sub<=s;

end Behavioral;

