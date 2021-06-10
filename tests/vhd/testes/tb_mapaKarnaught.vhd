library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_mapaKarnaught is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_mapaKarnaught is

  component mapaKarnaught is port (
      A,B,C,D  : in  std_logic;
      S0,S1,S2,S3 : out std_logic );
  end component;

  signal inA, inB, inC, inD: std_logic;
  signal outS0, outS1, outS2, outS3: std_logic;

  -- Clock
  constant CLK_PERIOD : time := 1 ns;
  signal clk : STD_LOGIC := '0';

begin

  u1 : mapaKarnaught port map(inA, inB, inC, inD,
                              outS0, outS1, outS2, outS3);

                              clk_process :process
  begin
    clk <= '0';
    wait for clk_period/2;  --for 0.5 ns signal is '0'.
    clk <= '1';
    wait for clk_period/2;  --for next 0.5 ns signal is '1'.
  end process;

  main : process
  begin
    test_runner_setup(runner, runner_cfg);


    test_runner_cleanup(runner); -- Simulacao acaba aqui
  end process;
end architecture;
