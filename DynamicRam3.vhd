architecture beh of dram1024 is
begin
  p0: process(RAS, CAS, WE) is
  begin
    data <= (others => ‘Z’);
    if falling_edge(RAS) then row_address := address;
    elsif falling_edge(CAS) then
      mem_address := row_address*2**5 + address;
      if RAS = ‘0’ and WE = ‘0’ then
      mem(mem_address) := data;
      end if;
   if CAS = ‘0’ and RAS = ‘0’ and WE = ‘1’ then
      data <= mem(mem_address);
   end if;
  end process p0;
end architecture;
