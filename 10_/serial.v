module serial (q, a, clk);

output q,a;
input clk;
reg q,a;

always @(negedge clk ) begin
    q = ~q;
    a = ~q;
    /*
    a = ~q;
    q = ~q; 
    */    
end

    
endmodule