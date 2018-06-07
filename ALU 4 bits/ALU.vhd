library ieee;
use IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY ALU IS
	PORT (A : in STD_LOGIC_VECTOR(3 DOWNTO 0);
			B : in STD_LOGIC_VECTOR(3 DOWNTO 0);
			Op : in STD_LOGIC_VECTOR(3 DOWNTO 0);
			Ci : in STD_LOGIC;
			R : out STD_LOGIC_VECTOR(3 DOWNTO 0);
			Zo : out STD_LOGIC;
			Co : out STD_LOGIC);
END ENTITY ALU;

ARCHITECTURE arch_ALU OF ALU IS
SIGNAL preR: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL preCo: STD_LOGIC;

 BEGIN
		PROCESS(Op, A, B, Ci, preR, preCo)
		BEGIN
		preCo <= '0';
			CASE NOT Op IS		--Se pone NOT para invertir la lógica de los PUSH BUTTONS
				WHEN "0000" =>
						preR <= "00000";
				WHEN "0001" =>
						preR <= "00000";
				WHEN "0010" =>
				--Rotate left A
						preR(0) <= Ci;
						preR(1) <= A(0);
						preR(2) <= A(1);
						preR(3) <= A(2);
						preCo   <= A(3);
				WHEN "0011" =>
				--Rotate right A
						preCo   <= A(0);
						preR(0) <= A(1);
						preR(1) <= A(2);
						preR(2) <= A(3);
						preR(3) <= Ci;
				WHEN "0100" =>
						preR <= ('0' & (A AND B));
				WHEN "0101" =>
						preR <= ('0' & (A OR B));
				WHEN "0110" =>
						preR <= ('0' & (A XOR B));
				WHEN "0111" =>
						preR <= ('0' & (NOT A));
				WHEN "1000" =>
						preR <= ('0' & A);
				WHEN "1001" =>
						preR <= ('0'  & B);
				WHEN "1010" =>
						preR <= A + "00001";
						preCo <= preR(4);
				WHEN "1011" =>
						preR <= A - "00001";
						preCo <= preR(4);
				WHEN "1100" =>
						preR <= A + B + Ci + "00000";
						preCo <= preR(4);
				WHEN "1101" =>
						preR <= A - B - Ci + "00000";
						preCo <= preR(4);
				WHEN "1110" =>
						preR <= "01111";
				WHEN "1111" =>
						preR <= "01111";
			END CASE;
			IF preR(3 downto 0) <= "0000" THEN
				Zo <= '1';
			ELSE
				Zo <= '0';
			END IF;
			
			R <= preR(3 downto 0);
			Co <= preCo;
		END PROCESS;
	END ARCHITECTURE arch_ALU;
