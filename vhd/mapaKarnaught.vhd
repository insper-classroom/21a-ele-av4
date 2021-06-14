library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mapaKarnaught is
  port (
    A,B,C,D  : in  std_logic;
    S0,S1,S2,S3 : out std_logic );
end entity;

architecture  rtl OF mapaKarnaught IS

begin

  S0 <= ((not A) and (not B) and (not D)) or (C and (not D)) or ((not A) and B and (not C));

  S1 <= ((not A) and (not B) and (not C) and (not D)) or
        (A and (not B) and C and (not D));

  S2 <= ((not C) and A);

  S3 <= ((not B) and (not C) and (not D)) or (A and (not B) and (not C));

end architecture;
