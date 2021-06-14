library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_mapaKarnaughtS3 is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_mapaKarnaughtS3 is

  component mapaKarnaught is port (
      A,B,C,D  : in  std_logic;
      S0,S1,S2,S3 : out std_logic );
  end component;

  signal w: std_logic_vector(3 downto 0);
  signal S0, S1, S2, S3: std_logic;

begin

  u1 : mapaKarnaught port map(w(3), w(2), w(1), w(0),
                              S0, S1, S2, S3);

  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    w <= "0000"; wait for 200 ps;
    assert(S3 = '1')  report "Falha em teste" severity error;

    w <= "0001"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "0010"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "0011"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "0100"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "0101"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "0110"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "0111"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "1000"; wait for 200 ps;
    assert(S3 = '1')  report "Falha em teste" severity error;

    w <= "1001"; wait for 200 ps;
    assert(S3 = '1')  report "Falha em teste" severity error;

    w <= "1010"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "1011"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "1100"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "1101"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "1110"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    w <= "1111"; wait for 200 ps;
    assert(S3 = '0')  report "Falha em teste" severity error;

    test_runner_cleanup(runner); -- Simulacao acaba aqui
  end process;
end architecture;
