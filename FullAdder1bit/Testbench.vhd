entity Testbench is 
end Testbench;

architecture TEST of Testbench is
	component FullAdder1bit is
		port(
			a : in bit ;
			b : in bit ;
			cin : in bit ;
			sum : out bit ;
			carry_out : out bit 
		);
	end component;

	signal a , b ,cin , sum , carry_out : bit ;
begin

	--Instantiate
	U1: FullAdder1bit port map (a , b ,cin , sum , carry_out);

	--Stimulus
	process begin
		a<='0';
		b<='1';
		cin<='1';
		wait for 1 ns;
		a<='1';
		b<='1';
		cin<='1';
		wait for 1 ns;
		a<='0';
		b<='0';
		cin<='0';
		wait for 1 ns;
		wait;
	end process;
end TEST;
		
