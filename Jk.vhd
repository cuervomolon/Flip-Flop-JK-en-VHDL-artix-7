    library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    
    entity Jk is
        Port ( JK : in std_logic_vector (1 downto 0);
               CLK,Reset, Set : in STD_LOGIC;
               Q : out STD_LOGIC);
    end Jk;
    
    architecture Behavioral of Jk is
    signal q_n: std_logic;
    
    begin
    process (CLK)
        begin
        if rising_edge(CLK) then
         if reset = '1' then
             q_n <= '0';
             elsif Set = '1' then
             q_n <= '1';    
         else
               case JK is
                    when "00" => q_n <= q_n;
                    when "01" => q_n <= '0';
                    when "10" => q_n <= '1';
                    when "11" => q_n <= not q_n;
                    when others => q_n <= q_n; 
                end case;
        end if;
        end if;
    end process;
        Q <= q_n;
    end Behavioral;
