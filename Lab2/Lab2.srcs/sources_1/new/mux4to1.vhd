library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity mux4to1 is
 port(
     a,b,c,d : in STD_LOGIC;
     S0,S1: in STD_LOGIC;
     ou_t: out STD_LOGIC
  );
end mux4to1;
architecture behavior of mux4to1 is

begin
process (a,b,c,d,S0,S1) is
begin
  if (S0 ='0' and S1 = '0') then
      ou_t <= a;
  elsif (S0 ='1' and S1 = '0') then
      ou_t <= b;
  elsif (S0 ='0' and S1 = '1') then
      ou_t <= c;
  else
      ou_t <= d;
  end if;
 
end process;
end behavior;