module vote11 (
    output pass,
    input[11:0] vote
);

reg[3:0] sum;
integer i;
reg pass;

always @(vote) begin
    sum = 0;
    for (i = 0; i <= 6 ; i++ ) begin
        if(vote[i]) sum += 1;
    
    if(sum[2] | (sum[2] & sum[1])) pass = 1; //if(sum[2:0] >= 3'd4)
    else pass = 0;
    
    end  
end
    
endmodule