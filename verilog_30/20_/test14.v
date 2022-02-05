//Find V=?
//Ans: 

reg[3:0] A;
reg V, W;
integer K;

...

A = 4'b1010;

for (K = 2 ; K >= 0; K = K - 1 ) begin
    
    V = V ^ A[K];
    W = A[K] ^ A[K+1]; 

end

// K = 2, V = V0, W = 1;
// K = 1, V = ~V0, W = 1;
// K = 0, V = ~V0, W = 1;
