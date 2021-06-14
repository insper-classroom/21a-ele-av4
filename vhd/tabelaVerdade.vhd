library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tabelaVerdade is
  port (
    A,B,C,D    : in  std_logic;
    S0, S1     : out std_logic);
end entity;

architecture  rtl OF tabelaVerdade IS

begin

  S0 <= (C and B) or (A and (not B) and (not C)) ;

  S1 <= (A and (not B));

end architecture;
