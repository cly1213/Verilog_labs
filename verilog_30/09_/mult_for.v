module mult_for(out, a, b);
    parameter size = 8;
    output[2*size:1] out;
    input[size:1] a,b; // implement a*b 8 bits multiplication
    reg[2*size:1] out;
    integer i;

    always @(a or b) begin
        out = 0;
        for (i = 1; i <= size ; i++ ) begin
            if(b[i]) out = out + (a << (i-1)); 
        end
    end

endmodule