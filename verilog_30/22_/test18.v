always @(posedge Clk) begin: Blk
    reg B,C;
    
    C = B;
    D <= C;
    B = A;    
end

//2個register: B,D