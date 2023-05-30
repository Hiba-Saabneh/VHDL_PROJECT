
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity project_TB is
end entity;


architecture project_TB_arch of project_TB is

component project 
port(x,y,z :in std_logic_vector(3 downto 0);
sum :out std_logic_vector(4 downto 0);
cout: out std_logic);
end component;

signal x_TB,y_TB,z_TB : std_logic_vector(3 downto 0);
signal sum_TB : std_logic_vector(4 downto 0);
signal cout_TB : std_logic;
begin 
DUT : project port map(x_TB,y_TB,z_TB,sum_TB,cout_TB);

STIM:process
begin 
for i in 0 to 15 loop
for j in 0 to 15 loop
for t in 0 to 15 loop
x_TB <= std_logic_vector( to_unsigned(i,4));
y_TB <= std_logic_vector( to_unsigned(j,4));
z_TB <= std_logic_vector( to_unsigned(t,4));
wait for 30 ns;

end loop;
end loop;
end loop;

end process;

end architecture;





