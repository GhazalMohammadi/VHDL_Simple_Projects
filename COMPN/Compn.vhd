entity Compn is
	port(
		x_vec: in bit_vector (7 downto 0);
		y_vec: in bit_vector (7 downto 0);
		result: out bit);
end Compn;

architecture BEHAV of Compn is
	component Parity is
		port(
			vec : in bit_vector(7 downto 0);
			result: out bit );
	end component; 

	component OrGate is
		port( 
			a : in bit;
			b : in bit;
			result : out bit );
	end component;

	signal parity1 , parity2 : bit ;
begin

	U1: Parity port map (x_vec , parity1);
	U2: Parity port map (y_vec , parity2);
	U3: OrGate port map (parity1 , parity2 , result);

end BEHAV;
		