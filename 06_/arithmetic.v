module moduleName (clk, a, b, c, d, e);
    output [3:0] c,d;
    output [7:0] e;
    input [3:0] a,b;
    input clk;
    
    reg [3:0] c,d;
    reg [7:0] e;

    always @(posedge clk) begin
        c = a / b;
        d = a % b;
        e = a * b; 
    end
    
endmodule