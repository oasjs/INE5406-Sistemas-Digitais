LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bc IS
PORT (CLK, INICIO : in std_logic;
		ini, pronto : out std_logic);
END bc;

ARCHITECTURE estrutura OF bc IS

TYPE state_type IS (ESPERANDO, S1, S2, S3, S4);
SIGNAL STATE: state_type;

BEGIN

	process (clk)
		begin
			if (clk'EVENT AND clk = '1') THEN
				CASE state IS
				WHEN ESPERANDO =>
				pronto <= '1';
				
				if inicio = '1' then
					ini <= '1';
					state <= S1;
				elsif inicio = '0' then
					ini <= '0';
				end if;
				
				WHEN S1 =>
				pronto <= '0';
				ini <= '0';
				state <= S2;
				WHEN S2 =>
				pronto <= '0';
				ini <= '0';
				state <= S3;
				WHEN S3 =>
				pronto <= '0';
				ini <= '0';
				state <= S4;
				WHEN S4 =>
				pronto <= '0';
				ini <= '0';
				state <= ESPERANDO;
				END CASE;
			END if;
		END process;

END estrutura;