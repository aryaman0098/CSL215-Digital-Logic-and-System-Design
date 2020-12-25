--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ThreePortSwitch.vhf
-- /___/   /\     Timestamp : 09/12/2019 16:25:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl /home/jatin/ThreePortSwitch/ThreePortSwitch.vhf -w /home/jatin/ThreePortSwitch/ThreePortSwitch.sch
--Design Name: ThreePortSwitch
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M4_1E_HXILINX_ThreePortSwitch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_ThreePortSwitch is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_ThreePortSwitch;

architecture M4_1E_HXILINX_ThreePortSwitch_V of M4_1E_HXILINX_ThreePortSwitch is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_ThreePortSwitch_V;
----- CELL D2_4E_HXILINX_ThreePortSwitch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_ThreePortSwitch is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_ThreePortSwitch;

architecture D2_4E_HXILINX_ThreePortSwitch_V of D2_4E_HXILINX_ThreePortSwitch is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_ThreePortSwitch_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ThreePortSwitch is
   port ( dest0_0 : in    std_logic; 
          dest0_1 : in    std_logic; 
          dest1_0 : in    std_logic; 
          dest1_1 : in    std_logic; 
          dest2_0 : in    std_logic; 
          dest2_1 : in    std_logic; 
          din0    : in    std_logic; 
          din1    : in    std_logic; 
          din2    : in    std_logic; 
          req0    : in    std_logic; 
          req1    : in    std_logic; 
          req2    : in    std_logic; 
          ack0    : out   std_logic; 
          ack1    : out   std_logic; 
          ack2    : out   std_logic; 
          dout0   : out   std_logic; 
          dout1   : out   std_logic; 
          dout2   : out   std_logic; 
          src0    : out   std_logic; 
          src1    : out   std_logic);
end ThreePortSwitch;

architecture BEHAVIORAL of ThreePortSwitch is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_4                : std_logic;
   signal XLXN_5                : std_logic;
   signal XLXN_17               : std_logic;
   signal XLXN_26               : std_logic;
   signal XLXN_27               : std_logic;
   signal XLXN_28               : std_logic;
   signal XLXN_30               : std_logic;
   signal XLXN_34               : std_logic;
   signal XLXI_10_D3_openSignal : std_logic;
   signal XLXI_13_D3_openSignal : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component M4_1E_HXILINX_ThreePortSwitch
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component D2_4E_HXILINX_ThreePortSwitch
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_10 : label is "XLXI_10_0";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_1";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_2";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_3";
begin
   XLXI_1 : INV
      port map (I=>req2,
                O=>XLXN_4);
   
   XLXI_2 : INV
      port map (I=>req1,
                O=>XLXN_5);
   
   XLXI_3 : AND2
      port map (I0=>req2,
                I1=>req2,
                O=>ack2);
   
   XLXI_4 : AND2
      port map (I0=>req2,
                I1=>req2,
                O=>src1);
   
   XLXI_5 : AND2
      port map (I0=>req1,
                I1=>XLXN_4,
                O=>XLXN_17);
   
   XLXI_6 : AND2
      port map (I0=>XLXN_17,
                I1=>XLXN_17,
                O=>ack1);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_17,
                I1=>XLXN_17,
                O=>src0);
   
   XLXI_8 : AND3
      port map (I0=>req0,
                I1=>XLXN_5,
                I2=>XLXN_4,
                O=>ack0);
   
   XLXI_9 : OR3
      port map (I0=>req2,
                I1=>req1,
                I2=>req0,
                O=>XLXN_26);
   
   XLXI_10 : M4_1E_HXILINX_ThreePortSwitch
      port map (D0=>din0,
                D1=>din1,
                D2=>din2,
                D3=>XLXI_10_D3_openSignal,
                E=>XLXN_26,
                S0=>XLXN_17,
                S1=>req2,
                O=>XLXN_27);
   
   XLXI_11 : D2_4E_HXILINX_ThreePortSwitch
      port map (A0=>XLXN_28,
                A1=>XLXN_30,
                E=>XLXN_27,
                D0=>dout0,
                D1=>dout1,
                D2=>dout2,
                D3=>open);
   
   XLXI_12 : M4_1E_HXILINX_ThreePortSwitch
      port map (D0=>dest0_0,
                D1=>dest1_0,
                D2=>dest2_0,
                D3=>XLXN_34,
                E=>XLXN_26,
                S0=>XLXN_17,
                S1=>req2,
                O=>XLXN_28);
   
   XLXI_13 : M4_1E_HXILINX_ThreePortSwitch
      port map (D0=>dest0_1,
                D1=>dest1_1,
                D2=>dest2_1,
                D3=>XLXI_13_D3_openSignal,
                E=>XLXN_26,
                S0=>XLXN_17,
                S1=>req2,
                O=>XLXN_30);
   
end BEHAVIORAL;


