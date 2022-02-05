module count1s_while (count, rega, clk);
    output[3:0] count;
    input[7:0] rega;
    input clk;
    reg[3:0] count;

    always @(posedge clk) begin:count1
        reg[7:0] tempreg;
        count = 0;
        tempreg = rega;
        while (tempreg) begin
            if(tempreg[0]) count += 1;

            tempreg = tempreg >> 1;      
        end
    end
    
endmodule