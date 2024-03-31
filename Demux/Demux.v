
module Demux(
    input wire [1:0] S,
	input wire I,
	
	output wire [3:0] out_ledr
);

    assign out_ledr[0] = !S[0] && !S[1] && I;
    assign out_ledr[1] = !S[0] && S[1] && I;
    assign out_ledr[2] = S[0] && !S[1] && I;
    assign out_ledr[3] = S[0] && S[1] && I;


    
endmodule
