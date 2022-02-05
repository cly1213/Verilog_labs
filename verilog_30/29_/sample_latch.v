module sample_latch (clk, rstn, din, dout);
    input clk,rstn;
    input[3:0] din;
    output[3:0] dout;
    reg[3:0] data;

    assign dout = data; //latch
    
    //會產生latch 所以不建議使用(X)
    always @(clk or rstn) begin
        
        if(!rstn) begin
            data <= 4'b0;
        end
        else if(clk) begin
            data <= din;
        end
        
    end
    
endmodule