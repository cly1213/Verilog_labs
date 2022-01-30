module mux2to1(out, a, b, s);
    input a, b ,s; //wire
    output out;
    reg out;

    always@(a or b or s)
        if(!s) out = s; //in alway should be reg type 
        else out = b;
    
endmodule

/*
module mux2to1(
    input a,
    input b,
    input s, 
    output out
    );

    always@(a or b or s)
        if(!s) out = s;
        else out = b;
    
endmodule
*/