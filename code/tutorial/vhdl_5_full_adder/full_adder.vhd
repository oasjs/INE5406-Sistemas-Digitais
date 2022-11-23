

entity full_adder is
    port(
        A, B    : in    bit;    -- Entradas
        TE      : in    bit;    -- Transporte de entrada
        S       : out   bit;    -- Saída
        TS      : out   bit     -- Transporte de saída
    );
end entity;

architecture main of full_adder is
begin

    S <= (A xor B) xor TE;
    TS <= (A and B) or (A and TE) or (B and TE);

end architecture;