entity Parity is
	port(
		vec : in bit_vector(7 downto 0);
		result: out bit );
end Parity;

architecture BEHAV of Parity is begin
	result <= vec(0) xor
		  vec(1) xor
		  vec(2) xor
		  vec(3) xor
		  vec(4) xor
		  vec(5) xor
		  vec(6) ;
end BEHAV;