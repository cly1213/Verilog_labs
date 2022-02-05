module mux4 (sel, a, b, c, d, z);

input[1:0] sel;
input a, b, c, d;
output z;
reg z;

always @(sel or a or b or c or d) begin
    case (sel)
        2'b00: z <= a;
        2'b01: z <= d;
        2'b10: z <= c;
        2'b11: z <= d; 
        default: z <= 0;
    endcase
end

    
endmodule