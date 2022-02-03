module fulladder (A, B, Cin, Cout);
    input A, B, Cin;
    output Sum, Cout;

    
endmodule


module Top (...);

    fulladder FA(.Sum(W1),
                 .Cout(W2),
                 .Cin(W3),
                 .A(W4).
                 .B(W5)    );
    
endmodule