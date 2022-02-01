module clk_div8(
    input wire clk_in,
    input wire rstn,
    output reg clk_out
);

parameter N = 8;

reg[3:0] cnt_s;

always @(posedge clk_in or negedge rstn ) begin
    if(!rstn)begin
        clk_out <= 0;
        cnt_s <= 4'b0000;
    end

    else if (cnt_s == (N/2 -1))begin
        clk_out <= ~clk_out;
        cnt_s <= 4'b0000;
    end

    else
        cnt_s <= cnt_s + 1;
    
end

    
endmodule