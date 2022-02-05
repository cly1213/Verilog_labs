`timescale 1ns/100ps
`include "clk_div8.v"

module clk_div8_tb();
    reg clk_in;
    reg rstn;
    wire clk_out;

    initial begin
        clk_in = 0;
        rstn = 0;
    end

    always #5 clk_in = !clk_in;

    initial begin
        #10;
        rstn = 1;
    end

    initial begin
        #1000 $finish;
    end

    clk_div8 #(4) inst_clk_div8(
        .clk_in (clk_in),
        .rstn (rstn),
        .clk_out (clk_out)
    );

    initial begin
        $fsdbDumpfile("soc.fsdb");
        $fsdbDumpvars;
    end
    
    
endmodule