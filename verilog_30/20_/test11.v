//when A 在10, 20, 30產生變化，而B一直保持X狀態，求Ｂ在50時的值為多少？
//Ans: Count = 1;

reg[7:0] Count;

initial begin

    Count = 0;

    always begin
        @(A) Count = Count + 1;
        @(B) Count = Count + 1;  
    end    
end

