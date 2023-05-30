
entity half_adder is
port(x,y,z: in bit;
sum, cout:out bit);
end entity;

architecture half_adder_arch of half_adder is
begin
sum <= x xor y xor z;
cout <= (x and y) or (z and (x xor y));
end architecture;


