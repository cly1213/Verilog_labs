module fbosc1 (y1, y2, clk, rst);
    output y1, y2;
    input clk, rst;
    reg y1, y2;

    always @(posedge clk or posedge rst) begin
        if(rst)
            y1 = 0;
        else 
            y1 = y2;
    end

    always @(posedge clk or posedge rst) begin
        if(rst)
            y2 = 1;
        else
            y2 = y1;
    end

    //? 不確定性太大，不建議這樣寫
    
endmodule