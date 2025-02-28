entity OrGate is
	port( 
		a : in bit;
		b : in bit;
		result : out bit );
end OrGate;

architecture BEHAV of OrGate is begin
	result <= a or b ;
end BEHAV;
