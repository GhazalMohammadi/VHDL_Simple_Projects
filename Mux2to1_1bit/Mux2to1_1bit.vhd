entity MUX is 
	port (
		A : in bit;
		B : in bit;
		SEL : in bit;
		C : out bit);
end MUX;

architecture BEHAV of MUX is begin
	process(A , B ,SEL) begin
		if SEL = '1' then
			C <= B ;
		else
			C <= A ;
	end if ;
	end process;
end BEHAV;
