module half_adder (
    input ain,
    input bin,
    output sum,
    output cout
);

/*
xor inst_xor(sum, ain, bin);
and inst_and(cout, aib, bin);
*/

assign sum = ain ^ bin;
assign cout = ain & bin;
    
endmodule