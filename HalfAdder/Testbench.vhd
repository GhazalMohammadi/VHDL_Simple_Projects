entity Testbench is
end Testbench;

architecture TEST of Testbench is
	component HalfAdder is
		port(
			a : in bit ;
			b : in bit ;
			sum : out bit ;
			carry : out bit);
	end component;

	signal a , b ,sum , carry : bit ;
begin

	U1: HalfAdder port map (a , b , sum , carry);

	--Stimulus
	process begin
		a <= '0';
		b <= '1';
		wait for 1ns;
		a <= '1';
		b <= '1';
		wait for 1ns;
		a <= '0';
		b <= '0';
		wait for 1ns;
		wait;
	end process;
end TEST;

