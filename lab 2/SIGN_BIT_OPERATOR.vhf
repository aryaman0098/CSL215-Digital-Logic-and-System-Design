--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SIGN_BIT_OPERATOR.vhf
-- /___/   /\     Timestamp : 09/06/2019 02:54:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl /home/aryaman/PROJECT_3/Project_3/SIGN_BIT_OPERATOR.vhf -w /home/aryaman/PROJECT_3/Project_3/SIGN_BIT_OPERATOR.sch
--Design Name: SIGN_BIT_OPERATOR
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL NOR6_HXILINX_SIGN_BIT_OPERATOR -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR6_HXILINX_SIGN_BIT_OPERATOR is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end NOR6_HXILINX_SIGN_BIT_OPERATOR;

architecture NOR6_HXILINX_SIGN_BIT_OPERATOR_V of NOR6_HXILINX_SIGN_BIT_OPERATOR is
begin
  O <= not (I0 or I1 or I2 or I3 or I4 or I5);
end NOR6_HXILINX_SIGN_BIT_OPERATOR_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity basic_MUSER_SIGN_BIT_OPERATOR is
   port ( a        : in    std_logic; 
          b        : in    std_logic; 
          a_not_b  : out   std_logic; 
          a_xnor_b : out   std_logic; 
          not_a_b  : out   std_logic);
end basic_MUSER_SIGN_BIT_OPERATOR;

architecture BEHAVIORAL of basic_MUSER_SIGN_BIT_OPERATOR is
   attribute BOX_TYPE   : string ;
   signal XLXN_3   : std_logic;
   signal XLXN_7   : std_logic;
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
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : INV
      port map (I=>a,
                O=>XLXN_3);
   
   XLXI_2 : AND2
      port map (I0=>b,
                I1=>XLXN_3,
                O=>not_a_b);
   
   XLXI_3 : XNOR2
      port map (I0=>b,
                I1=>a,
                O=>a_xnor_b);
   
   XLXI_4 : INV
      port map (I=>b,
                O=>XLXN_7);
   
   XLXI_5 : AND2
      port map (I0=>XLXN_7,
                I1=>a,
                O=>a_not_b);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Modulus_comparator_MUSER_SIGN_BIT_OPERATOR is
   port ( a0      : in    std_logic; 
          a1      : in    std_logic; 
          a2      : in    std_logic; 
          b0      : in    std_logic; 
          b1      : in    std_logic; 
          b2      : in    std_logic; 
          equal   : out   std_logic; 
          greater : out   std_logic; 
          less    : out   std_logic);
end Modulus_comparator_MUSER_SIGN_BIT_OPERATOR;

architecture BEHAVIORAL of Modulus_comparator_MUSER_SIGN_BIT_OPERATOR is
   attribute BOX_TYPE   : string ;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   component basic_MUSER_SIGN_BIT_OPERATOR
      port ( a        : in    std_logic; 
             a_not_b  : out   std_logic; 
             a_xnor_b : out   std_logic; 
             b        : in    std_logic; 
             not_a_b  : out   std_logic);
   end component;
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
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
   
begin
   XLXI_1 : basic_MUSER_SIGN_BIT_OPERATOR
      port map (a=>a2,
                b=>b2,
                a_not_b=>XLXN_22,
                a_xnor_b=>XLXN_14,
                not_a_b=>XLXN_9);
   
   XLXI_2 : basic_MUSER_SIGN_BIT_OPERATOR
      port map (a=>a1,
                b=>b1,
                a_not_b=>XLXN_16,
                a_xnor_b=>XLXN_18,
                not_a_b=>XLXN_20);
   
   XLXI_3 : basic_MUSER_SIGN_BIT_OPERATOR
      port map (a=>a0,
                b=>b0,
                a_not_b=>XLXN_19,
                a_xnor_b=>XLXN_17,
                not_a_b=>XLXN_21);
   
   XLXI_4 : OR3
      port map (I0=>XLXN_11,
                I1=>XLXN_10,
                I2=>XLXN_9,
                O=>less);
   
   XLXI_5 : AND2
      port map (I0=>XLXN_14,
                I1=>XLXN_20,
                O=>XLXN_10);
   
   XLXI_6 : AND3
      port map (I0=>XLXN_14,
                I1=>XLXN_18,
                I2=>XLXN_21,
                O=>XLXN_11);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_14,
                I1=>XLXN_16,
                O=>XLXN_12);
   
   XLXI_8 : AND3
      port map (I0=>XLXN_18,
                I1=>XLXN_14,
                I2=>XLXN_19,
                O=>XLXN_13);
   
   XLXI_9 : AND3
      port map (I0=>XLXN_17,
                I1=>XLXN_18,
                I2=>XLXN_14,
                O=>equal);
   
   XLXI_10 : OR3
      port map (I0=>XLXN_13,
                I1=>XLXN_12,
                I2=>XLXN_22,
                O=>greater);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SIGN_BIT_OPERATOR is
   port ( a0      : in    std_logic; 
          a1      : in    std_logic; 
          a2      : in    std_logic; 
          a3      : in    std_logic; 
          b0      : in    std_logic; 
          b1      : in    std_logic; 
          b2      : in    std_logic; 
          b3      : in    std_logic; 
          EQUAL   : out   std_logic; 
          GREATER : out   std_logic; 
          LESS    : out   std_logic);
end SIGN_BIT_OPERATOR;

architecture BEHAVIORAL of SIGN_BIT_OPERATOR is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_11       : std_logic;
   signal XLXN_15       : std_logic;
   signal XLXN_16       : std_logic;
   signal XLXN_19       : std_logic;
   signal XLXN_20       : std_logic;
   signal XLXN_21       : std_logic;
   signal XLXN_23       : std_logic;
   signal XLXN_25       : std_logic;
   signal XLXN_27       : std_logic;
   signal XLXN_28       : std_logic;
   signal XLXN_29       : std_logic;
   signal XLXN_30       : std_logic;
   signal GREATER_DUMMY : std_logic;
   signal EQUAL_DUMMY   : std_logic;
   component Modulus_comparator_MUSER_SIGN_BIT_OPERATOR
      port ( a0      : in    std_logic; 
             a1      : in    std_logic; 
             a2      : in    std_logic; 
             b0      : in    std_logic; 
             b1      : in    std_logic; 
             b2      : in    std_logic; 
             equal   : out   std_logic; 
             greater : out   std_logic; 
             less    : out   std_logic);
   end component;
   
   component NOR6_HXILINX_SIGN_BIT_OPERATOR
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
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
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_0";
begin
   EQUAL <= EQUAL_DUMMY;
   GREATER <= GREATER_DUMMY;
   XLXI_1 : Modulus_comparator_MUSER_SIGN_BIT_OPERATOR
      port map (a0=>a0,
                a1=>a1,
                a2=>a2,
                b0=>b0,
                b1=>b1,
                b2=>b2,
                equal=>XLXN_20,
                greater=>XLXN_25,
                less=>XLXN_27);
   
   XLXI_2 : NOR6_HXILINX_SIGN_BIT_OPERATOR
      port map (I0=>a0,
                I1=>a1,
                I2=>a2,
                I3=>b0,
                I4=>b1,
                I5=>b2,
                O=>XLXN_16);
   
   XLXI_3 : INV
      port map (I=>a3,
                O=>XLXN_11);
   
   XLXI_4 : INV
      port map (I=>b3,
                O=>XLXN_15);
   
   XLXI_5 : XNOR2
      port map (I0=>b3,
                I1=>a3,
                O=>XLXN_19);
   
   XLXI_6 : AND2
      port map (I0=>XLXN_19,
                I1=>XLXN_20,
                O=>XLXN_21);
   
   XLXI_7 : OR2
      port map (I0=>XLXN_21,
                I1=>XLXN_16,
                O=>EQUAL_DUMMY);
   
   XLXI_8 : AND3
      port map (I0=>XLXN_23,
                I1=>b3,
                I2=>XLXN_11,
                O=>XLXN_28);
   
   XLXI_9 : INV
      port map (I=>XLXN_16,
                O=>XLXN_23);
   
   XLXI_10 : AND3
      port map (I0=>XLXN_25,
                I1=>XLXN_15,
                I2=>XLXN_11,
                O=>XLXN_29);
   
   XLXI_11 : AND3
      port map (I0=>XLXN_27,
                I1=>b3,
                I2=>a3,
                O=>XLXN_30);
   
   XLXI_12 : OR3
      port map (I0=>XLXN_30,
                I1=>XLXN_29,
                I2=>XLXN_28,
                O=>GREATER_DUMMY);
   
   XLXI_13 : NOR2
      port map (I0=>EQUAL_DUMMY,
                I1=>GREATER_DUMMY,
                O=>LESS);
   
end BEHAVIORAL;


