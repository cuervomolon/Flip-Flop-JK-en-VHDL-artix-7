library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_testbench is
end JK_testbench;

architecture Behavioral of JK_testbench is
    
    component Jk
        port( Jk : in std_logic_vector (1 downto 0);
              CLK, Reset, Set: in std_logic;
              Q : out std_logic);
    end component;
    
    Signal JK_tb    : std_logic_vector (1 downto 0) := "00";
    signal CLK_tb   : std_logic :='0';
    signal Reset_tb : std_logic :='0';
    signal Set_tb   : std_logic :='0';
    Signal Q_tb     : std_logic;
    
begin
    UUT: JK
        port map(
        JK => JK_tb,
        CLK => CLK_tb,
        Reset => Reset_tb,
        Set => Set_tb,
        Q => Q_tb
        );
    
    CLK_process: process
        begin
        while true loop
            CLK_tb <= '0';
            wait for 10 ns;
            CLK_tb <= '1';
            wait for 10 ns;
        end loop;
    end process;
    
    estim_process: process
    begin
    JK_tb <= "00";
    wait for 60 ns;
    
    JK_tb <= "01";
    wait for 60 ns;
    
    JK_tb <= "10";
    wait for 60 ns;
    
    JK_tb <= "11";
    wait for 60 ns;   
    end process;
    
    set_reset_process: process
    begin
    reset_tb  <= '1';
    wait for 40 ns;
    reset_tb <= '0';
    set_tb <= '1';
    wait for 40 ns;
    set_tb <= '0';
    wait for 100 ns;
    end process;
end Behavioral;
