integer I;

reg[3:0] A;
reg[7:0] B;

initial begin
    I = -1;
    A = I; 4'b1111
    B = A; 8'b0000_1111
    $display("%b", B); //8'b0000_1111
    A = A / 2;
    $display("%b", A); //4'b0111
    B = A + 14;
    $display("%b", B); //21
    A = A + 14; //10101
    $display("%b", A); //5 = 4'b0101
    A = -2; 4'b1110
    I = A / 2; 111  
    $display("%b", I); //7
end
