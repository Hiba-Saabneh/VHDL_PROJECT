
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity project is
port(x,y,z :in std_logic_vector(3 downto 0);
sum :out std_logic_vector(4 downto 0);
cout: out std_logic);
end entity;


architecture project_arch of project is
signal xx,yy,zz :bit_vector(3 downto 0);
signal s :std_logic_vector( 3 downto 0);
signal c:std_logic_vector( 3 downto 0);
signal s1:bit_vector(3 downto 0);
signal c1:bit_vector(3 downto 0);
signal sumOffullAdder : unsigned (4 downto 0);
signal temp1:std_logic_vector(3 downto 0);
signal temp2:unsigned(4 downto 0);
 component half_adder is
 port(x,y,z: in bit;
sum, cout:out bit);
end component;
begin
xx <= To_bitvector(x);
yy <= To_bitvector(y);
zz <= To_bitvector(z);

HA1: half_adder port map (xx(0),yy(0),zz(0),s1(0),c1(0));
HA2: half_adder port map (xx(1),yy(1),zz(1),s1(1),c1(1));
HA3: half_adder port map (xx(2),yy(2),zz(2),s1(2),c1(2));
HA4: half_adder port map (xx(3),yy(3),zz(3),s1(3),c1(3));
s <= To_StdLogicVector(s1);
c <= To_StdLogicVector(C1);

 sumOffullAdder <= unsigned('0' & c) + unsigned("00" & s(3 downto 1));
 temp1 <= std_logic_vector(sumOffullAdder(3 downto 0));
 temp2 <= unsigned (temp1 & s(0));
 sum <= std_logic_vector(temp2);
 cout <= sumOffullAdder(4);
 end architecture;
 
 
 

