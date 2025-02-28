entity HalfAdder is
	port(
		a : in bit ;
		b : in bit ;
		sum : out bit ;
		carry : out bit
	);
end HalfAdder;


architecture BEHAV of HalfAdder is begin
	process(a , b) begin
		sum <= a xor b ;
		carry <= a and b ;
	end process;
end BEHAV;
