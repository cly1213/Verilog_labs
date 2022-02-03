module test;
    reg a,b,c;
    wire out;

    `define aa a+b
    `define cc a+`aa

    assign out = `cc;


endmodule