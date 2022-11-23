

entity adder is
    port(
        a, b    : in    integer range 0 to 15;
        z       : out   integer range 0 to 15
    );
end entity;

architecture main of adder is
begin
        
    z <= a + b;

end architecture;