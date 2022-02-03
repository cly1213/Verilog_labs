
module test;
    reg a,b,c,d,e,out;
    `define expression a+b+c+d; //error
    assign out = `expression + e; //out = a+b+c+d; + e; 


endmodule