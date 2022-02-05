
always @(posedge min_clk or negedge reset) begin
    if(reset)
        min <= 0;
    else if (min =8'h59)begin
        min <= 0;
        h_clk <= 1;
    end
    
end