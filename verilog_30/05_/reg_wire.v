module rw1 (a, b, out1, out2);
    input a, b;
    output out1, out2;
    
    reg out1;
    wire out2;

    assign out2 = a;

    always @(b) begin
        out1 <= ~b;
    end 
    
endmodule