module rw2 (clk, d, out1, out2);
    input clk, d;
    output out1, out2;
    
    reg out1;
    wire out2;

    assign out2 = d & ~out1;

    always @(posedge clk) begin
        out1 <= d;
    end 
    
endmodule