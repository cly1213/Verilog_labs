reg FF1, FF2, FF3;

always @(posedge clk) begin

    FF1 <= Input;
    FF2 <= FF1;
    FF3 <= FF2;
    Output <= FF3; //順序可換
    
end


always @(posedge clk) begin

    Output = FF3;
    FF3 = FF2;
    FF2 = FF1;
    FF1 = Input; //Blocking 順序要一致

end