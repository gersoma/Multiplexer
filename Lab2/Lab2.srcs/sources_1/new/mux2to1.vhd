LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY mux2to1 IS
PORT (a, b, S2 : IN STD_LOGIC ;
ou_t : OUT STD_LOGIC ) ;
END mux2to1 ;

ARCHITECTURE Behavior OF mux2to1 IS
BEGIN
ou_t <= a WHEN S2 = '0' ELSE b ;
END Behavior ;