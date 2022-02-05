module count1s_for_good (count, rega, clk);
    output[3:0] count;
    input[7:0] rega;
    input clk;
    reg[3:0] count;

    always @(rega) begin:block
        integer i;
        count = 0;
        
        for(i = 0; i <= 7; i++)begin
            if(rega[i] == 1)
                count += 1;
        end
             
    end
    
endmodule