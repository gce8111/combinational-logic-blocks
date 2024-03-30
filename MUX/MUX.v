module MUX(
	input wire [1:0] S,
	input wire [3:0] I,
	
	output wire out_ledr
);


assign out_ledr = (I[0] && !S[0] && !S[1]) || (I[1] && S[0] && !S[1]) || (I[2] && !S[0] && S[1]) ||(I[3] && S[0] && S[1]);

endmodule