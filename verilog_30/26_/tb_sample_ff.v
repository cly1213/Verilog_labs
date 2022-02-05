`timescale 1ns/100ps
`include "sample_ff.v"

module tb_sample_ff;
reg[3:0] din;
wire[3:0] dout;
reg rst_n,clk;

sample_ff u0(clk, rst_n, din, dout);

initial begin
    forever begin
        #10 clk = ~clk;
    end
end

initial begin
    $monitor($time, "clk=%b, din=%b, dout=%b, data=%b", clk, din, dout, u0.data);
end

initial begin
    clk = 0;
    rst_n = 0;
    din = 4'b0101;
    #20 rst_n = 1;
    #20 din = 4'b1010;
    #40 $stop;
end

endmodule