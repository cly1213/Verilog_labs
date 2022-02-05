reg[2:0] A;
reg[3:0] B;

integer I,J;

initial begin
    I = 0;
    A = 0;
    I = I - 1; // -1
    J = I; // -1
    A = A - 1; // 3'b111 => A = 7
    B = A; // 4'b0111
    J = J + 1; // 0
    B = B + 1; // 4'b1000 => B = 8
end