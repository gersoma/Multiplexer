
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux8to1 is
    PORT(
        a : IN  std_logic;
        b : IN  std_logic;
        c : IN  std_logic;
        d : IN  std_logic;
        e : IN  std_logic;
        f : IN  std_logic;
        g : IN  std_logic;
        h : IN  std_logic;
        S0 : IN  std_logic;
        S1 : IN  std_logic;
        S2 : IN  std_logic;
        ou_t : OUT  std_logic
       );
end mux8to1;

architecture Behavioral of mux8to1 is

SIGNAL m0, m1 : STD_LOGIC:='0';
COMPONENT mux_4to1 is
 port(
 
     a,b,c,d : in STD_LOGIC;
     S0,S1: in STD_LOGIC;
     ou_t: out STD_LOGIC
  );
end COMPONENT;

COMPONENT mux2to1 IS
PORT (a, b, S2 : IN STD_LOGIC ;
ou_t : OUT STD_LOGIC ) ;
END COMPONENT ;
 
begin
Mux1: entity work.mux4to1 PORT MAP ( a, b, c, d, S0,S1, m0 ) ;
Mux2: entity work.mux4to1 PORT MAP ( e, f, g, h, S0,S1, m1 ) ;
Mux3: entity work.mux2to1 PORT MAP ( m0, m1,S2, ou_t ) ;

end Behavioral;
