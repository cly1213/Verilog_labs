module mult_for(out, a, b);
    parameter size = 8;
    
    output[2*size:1] out;
    input[size:1] a,b; // implement a*b 8 bits multiplication using repeat
    reg[2*size:1] out;
    reg[2*size:1] temp_a;
    reg[size:1] temp_b;


    always @(a or b) begin
        out = 0;
        temp_a = a;
        temp_b = b;

        repeat(size) begin
            if(temp_b[1])
                out = out + temp_a;
            temp_a = temp_a << 1;
            temp_b = temp_b >> 1; //get temp_b[1]
        end

    end

endmodule