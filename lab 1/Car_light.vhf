--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Car_light.vhf
-- /___/   /\     Timestamp : 08/22/2019 23:12:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl /home/aryaman/Project_1/Car_light.vhf -w /home/aryaman/Project_1/Car_light.sch
--Design Name: Car_light
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Car_light is
   port ( D1      : in    std_logic; 
          D2      : in    std_logic; 
          D3      : in    std_logic; 
          D4      : in    std_logic; 
          SW_DOOR : in    std_logic; 
          SW_OFF  : in    std_logic; 
          SW_ON   : in    std_logic; 
          INVALID : out   std_logic; 
          LIGHT   : out   std_logic);
end Car_light;

architecture BEHAVIORAL of Car_light is
   attribute BOX_TYPE   : string ;
   signal Door    : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_31 : std_logic;
   signal XLXN_32 : std_logic;
   signal XLXN_36 : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_2 : OR4
      port map (I0=>D1,
                I1=>D2,
                I2=>D3,
                I3=>D4,
                O=>Door);
   
   XLXI_6 : INV
      port map (I=>SW_ON,
                O=>XLXN_16);
   
   XLXI_7 : INV
      port map (I=>SW_OFF,
                O=>XLXN_19);
   
   XLXI_9 : AND4
      port map (I0=>Door,
                I1=>SW_DOOR,
                I2=>XLXN_19,
                I3=>XLXN_16,
                O=>XLXN_25);
   
   XLXI_10 : AND3
      port map (I0=>XLXN_36,
                I1=>XLXN_19,
                I2=>SW_ON,
                O=>XLXN_26);
   
   XLXI_11 : OR2
      port map (I0=>XLXN_26,
                I1=>XLXN_25,
                O=>LIGHT);
   
   XLXI_12 : AND2
      port map (I0=>SW_OFF,
                I1=>SW_ON,
                O=>XLXN_29);
   
   XLXI_13 : AND2
      port map (I0=>SW_DOOR,
                I1=>SW_OFF,
                O=>XLXN_30);
   
   XLXI_14 : AND2
      port map (I0=>SW_ON,
                I1=>SW_DOOR,
                O=>XLXN_31);
   
   XLXI_15 : AND3
      port map (I0=>XLXN_36,
                I1=>XLXN_19,
                I2=>XLXN_16,
                O=>XLXN_32);
   
   XLXI_16 : OR4
      port map (I0=>XLXN_32,
                I1=>XLXN_31,
                I2=>XLXN_30,
                I3=>XLXN_29,
                O=>INVALID);
   
   XLXI_17 : INV
      port map (I=>SW_DOOR,
                O=>XLXN_36);
   
end BEHAVIORAL;


