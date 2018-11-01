entity dataMemory is
  Port (
    clk : in std_logic;
    dmAddress : in std_logic_vector (31 downto 0);
    wData : in std_logic_vector (31 downto 0);
    rData : out std_logic_vector (31 downto 0);
    memRead : in std_logic;
    memWrite : in std_logic);
end dataMemory;
architecture Behavioral of dataMemory is
  type TRAM is array(0 to 255) of std_logic_vector(31 downto 0);
  signal ram_block : TRAM;
begin
process(clk)
begin
  if falling_edge(clk) then
    if memRead = ’1’ then
      rData <= ram_block(conv_integer(dmAddress(7 downto 0)));
    end if;
  end if;
  if rising_edge(clk) then
    if memWrite = ’1’ then
      ram_block(conv_integer(dmAddress(7 downto 0))) <= wData;
    end if;
  end if;
end process;
end Behavioral;
