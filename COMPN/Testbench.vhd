entity Testbench is
end Testbench;

architecture TEST of Testbench is
	component Compn is
		port(
			x_vec: in bit_vector (7 downto 0);
			y_vec: in bit_vector (7 downto 0);
			result: out bit);
	end component;

	signal x_vec , y_vec : bit_vector(7 downto 0);
	signal result : bit ;
begin

	--Instantiate
	U1: Compn port map ( x_vec => x_vec ,
			     y_vec => y_vec ,
			     result => result);

	--Stimulus
	process begin
		x_vec <= "01000011" ;
		y_vec <= "00000000" ;
		wait for 1ns;
		x_vec <= "00000000" ;
		y_vec <= "00000000" ;
		wait for 1ns;
		x_vec <= "01111111" ;
		y_vec <= "00000000" ;
		wait for 1ns;
		wait;
	end process;

end TEST;

