module always_demo (counter, tick, clk);
//Use always statement to generate T'FF and counter binary.
    output[7:0] counter;
    output tick;
    input clk;
    reg[7:0] counter;
    reg tick;

    always @(posedge clk) begin
        tick = ~tick;
        counter += 1;
    end
    
endmodule