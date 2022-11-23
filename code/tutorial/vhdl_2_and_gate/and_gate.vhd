-- Libraries and packages

-- Entity
entity and_gate is
    port(
        a, b    :   in bit;
        z       :   out bit
    );

end entity and_gate;

-- Architecture
architecture main of and_gate is
begin

    z <= a and b;

end architecture;

-- Configurations