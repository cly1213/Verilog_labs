module parall (q, a, clk);
//同時進行q,a一致
output q,a;
input clk;
reg q,a;

always @(negedge clk ) begin
    q = ~q; //a = ~q;
end

always @(negedge clk ) begin
    a = ~q; //q = ~q;
end

    
endmodule