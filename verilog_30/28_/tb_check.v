`timescale 1ns/1ps
`include "check.v"

module check_tb();
reg clk, rstn, num;
wire hold, result;
wire[3:0] num_cnt;

always #5 clk = ~clk;

initial begin
    clk = 0;
    num = 0;
    rstn = 0;
    #10
    rstn = 1;
    repeat(2000) begin
        #10;
        num = {$random} % 2;
    end
end

initial #5000 $finish;

check inst_check(clk, rstn, num, hold, num_cnt, result);

initial begin
    $fsdbDumpfile("soc.fsdb");
    $fsdbDumpvars;
end

endmodule