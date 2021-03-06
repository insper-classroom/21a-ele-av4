library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_tabelaVerdade is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_tabelaVerdade is

  component tabelaVerdade is  port (
    A,B,C,D    : in  std_logic;
    S0, S1          : out std_logic);
  end component;

signal S0, S1 : std_logic;
signal w : std_logic_vector(3 downto 0);

begin

  u1 : tabelaVerdade port map(a => w(3), b=> w(2), c=> w(1), d=> w(0),s0 => S0, s1 => s1);

  main : process
  begin
    test_runner_setup(runner, runner_cfg);


    test_runner_cleanup(runner); -- Simulacao acaba aqui
  end process;
end architecture;
