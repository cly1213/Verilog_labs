module adder (cout, sum, a, b, cin);

output cout;
parameter size = 1;
output[size-1:0] sum;
input[size-1:0] a,b;
input cin;

assign {cout, cin} = a + b + cin;
    
endmodule