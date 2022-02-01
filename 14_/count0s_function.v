//Count the number of 0 in rega[7:0]
module count0s_function (number, rega);
    output[7:0] number;
    input[7:0] rega;

    function[7:0] gefun;
        input[7:0] x;
        reg[7:0] count;
        integer i;

        begin
            count = 0;
            
            for (i = 0; i <= 7; i++) begin
                if(x[i] == 1'b0) count += 1;
            gefun = count;
            end

        end        
    endfunction

    assign number = gefun(rega);
    
endmodule