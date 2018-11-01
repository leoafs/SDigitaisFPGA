library ieee;
  use ieee.std_logic_1164.all;
  entity dram1024 is
    port(address: in integer range 0 to 2**5-1;
      data: inout std_ulogic_vector(7 downto 0);
      RAS, CAS, WE: in std_ulogic);
  end entity;
  
