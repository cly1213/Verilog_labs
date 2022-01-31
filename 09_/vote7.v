module moduleName (
    output pass,
    input[6:0] vote
);

reg[2:0] sum;
integer i;
reg pass;

always @(vote) begin
    sum = 0;
    for (i = 0; i <= 6 ; i++ ) begin
        if(vote[i]) sum += 1;
    
    if(sum[2]) pass = 1; //if(sum[2:0] >= 3'd4)
    else pass = 0;
    
    end  
end
    
endmodule