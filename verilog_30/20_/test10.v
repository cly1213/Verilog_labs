A = 0;
B = 0;

//When ADDRESS=5'b0X000, find A, B value? 

//Ans: A = 1; B = 0;

casex (ADDRESS)
    5'b00???: A = 1;
    5'b01???: B = 1;
    5'b00???, 5'b11?:
        begin
            A = 1;
            B = 1;
        end 
    default: 
endcase

//case: 完全相同才為True
//casez: 有z態, 對應的位就不去做比較
//casex: 有x,z態, 則對應的位就都不去做比較