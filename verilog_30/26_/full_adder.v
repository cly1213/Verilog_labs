`include "half_adder.v"

module full_adder (
    input ain,
    input bin,
    input ci,
    output sum,
    output cout
);

wire s0, s1, c0, c1;

half_adder inst_half_adder0(
    .ain(ain),
    .bin(bin),
    .sum(s0),
    .cout(c0)
);

half_adder inst_half_adder1(
    .ain(s0),
    .bin(ci),
    .sum(s1),
    .cout(c1)
);

assign sum = s1;
assign cout = c0 | c1;
    
endmodule