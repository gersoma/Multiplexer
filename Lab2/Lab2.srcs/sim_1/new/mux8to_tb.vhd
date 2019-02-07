LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY mux8to1_tb IS
END mux8to1_tb;
ARCHITECTURE behavior OF mux8to1_tb IS
 
    COMPONENT mux8to1
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
    END COMPONENT;
 
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal e : std_logic := '0';
   signal f : std_logic := '0';
   signal g : std_logic := '0';
   signal h : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';
   signal ou_t : std_logic;
 
BEGIN
   uut: mux8to1 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
 	      e => e,
          f => f,
          g => g,
          h => h,
          S0 => S0,
          S1 => S1,
	      S2 => S2,
          ou_t => ou_t
        );
 
   stim_proc: process
   begin
       wait for 10 ms; 
 -- arbituary 8 bits
    a <= '0';
    b <= '0';
    c <= '1';
    d <= '1';  
    e <= '1';
    f <= '0';
    g <= '0';
    h <= '1';       
 
     S0 <= '0'; S1 <= '0'; S2 <= '0';
        wait for 10 ms;  
    S0 <= '0'; S1 <= '0'; S2 <= '1';
         wait for 10 ms;  
    S0 <= '0'; S1 <= '1'; S2 <= '0';
        wait for 10 ms;  
    S0 <= '0'; S1 <= '1'; S2 <= '1';
          wait for 10 ms;    
    S0 <= '1'; S1 <= '0';   S2 <= '0';
          wait for 10 ms;   
    S0 <= '1'; S1 <= '0';   S2 <= '1';   
         wait for 10 ms;    
    S0 <= '1'; S1 <= '1';   S2 <= '0';  
          wait for 10 ms;     
    S0 <= '1'; S1 <= '1';   S2 <= '1';                
           wait for 10 ms;   
                  
    end process;
END;