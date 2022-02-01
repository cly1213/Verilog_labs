`include "select.v"

module select_tb();
    reg[1:0] sel;
    reg a,b,c,d;
    wire out;

    initial begin
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        sel = 2'b00;
        #20;
        a = 0;
        b = 0;
        #20;
        sel = 2'b10;
        c = 1;
        d = 0;
        #20;
        sel = 2'b01;
        #20;
        sel = 2'b11;
        d = 1;
        #20;
        sel = 2'b00;
        a = 1; 
    end

initial begin
    #100 $finish;
end

select inst_select(.a(a), .b(b), .c(c), .d(d), .sel(sel), .out(out));

endmodule