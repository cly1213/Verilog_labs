//factorial function
module tryfunct (result, clk, reset, n);
    function[31:0] factorial;
        input[3:0] op;
        reg[3:0] ina;

        begin
            factorial = op?1:0;
            for (ina = 2; ina<=op; ina++ ) begin
                factorial = ina * factorial;
            end

        end
        
    endfunction

    output[31:0] result;
    input[3:0] n;
    input clk, reset;
    reg[31:0] result;

    always @(posedge clk ) begin
        if(!reset) result <= 0;
        else result <= factorial(n);
    end
    
endmodule