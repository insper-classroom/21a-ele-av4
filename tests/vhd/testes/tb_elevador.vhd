library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_elevador is
  generic (runner_cfg : string);
end entity;
architecture tb of tb_elevador is

  component elevador is
  port (
    M, F1, F2, F3 : in  std_logic;
    ABRIR, TRAVA : out std_logic );
end component;

signal F : std_logic_vector(3 downto 0);
signal abrir    : std_logic;
signal TRAVA   : std_logic;

begin

  u1 : elevador port map(f(3), f(2), f(1), f(0), abrir, TRAVA);

  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    f <= "1000"; wait for 200 ps;
    assert(abrir = '0' and trava = '1') report "Falha em teste s0" severity error;

    f <= "1010"; wait for 200 ps;
    assert(abrir = '0' and trava = '1') report "Falha em teste s0" severity error;

    f <= "0001"; wait for 200 ps;
    assert(abrir = '1' and trava = '0') report "Falha em teste s0" severity error;

    f <= "0010"; wait for 200 ps;
    assert(abrir = '1' and trava = '0') report "Falha em teste s0" severity error;

    f <= "0100"; wait for 200 ps;
    assert(abrir = '1' and trava = '0') report "Falha em teste s0" severity error;

    f <= "1001"; wait for 200 ps;
    assert(abrir = '0' and trava = '1') report "Falha em teste s0" severity error;

    test_runner_cleanup(runner); -- Simulacao acaba aqui
  end process;
end architecture;
