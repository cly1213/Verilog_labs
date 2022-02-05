//當V產生變化時且為-1，問，問執行完always後Count為多少？
//Ans: Count = 0;

// V = -1, 8b'1111_1111

reg[7:0] V;
reg[2:0] Count;

always @(V) begin
    Count = 0;

    while (~V[Count]) begin
        Count = Count + 1;
    end
    
end

