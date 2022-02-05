module block1 (a, b , c, d);
    input a, b, c;
    output d; // default wire type
    wire x;

    assign d = a | x;
    assign x = (b & ~c);
    
    //alway裡不能有assign

endmodule