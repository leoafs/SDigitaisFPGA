architecture beh of dram1024 is
begin
  p0: process(RAS, CAS, WE) is
    type dram_array is array (0 to 2**10-1) of
      std_ulogic_vector (7 downto 0);
    variable row_address: integer range 0 to 2**5-1;
    variable mem_address: integer range 0 to 2**10-1;
    variable mem: dram_array;
  begin
...
end process p0;
end architecture;
