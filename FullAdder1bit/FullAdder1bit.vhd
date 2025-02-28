entity FullAdder1bit is
	port(
		a : in bit ;
		b : in bit ;
		cin : in bit ;
		sum : out bit ;
		carry_out : out bit 
	);
end FullAdder1bit;

architecture BEHAV of FullAdder1bit is
	component HalfAdder is
		port(
			a : in bit ;
			b : in bit ;
			sum : out bit ;
			carry : out bit
		);
	end component ;

	signal sum1 , carry1 , carry2 : bit ;
begin
	
	U1: HalfAdder port map (a , b ,sum1 , carry1);
	U2: HalfAdder port map (cin , sum1 , sum , carry2);
	carry_out <= carry1 or carry2 ;

end BEHAV;
