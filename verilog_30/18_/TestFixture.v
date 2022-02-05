module TestFixture ;

    reg A,B,SEL;
    wire F;

    MUX2 M(SEL, A, B, F);

    initial begin

        SEL = 0; A = 0; B = 0;
        #10 A = 1;
        #10 SEL = 1;
        #10 B = 1;
        
    end
    
    initial begin
       $monitor(SEL, A, B, F); 
       //        0   0  0  0
       //        0   1  0  1
       //        1   1  0  0
       //        1   1  1  1
    end

endmodule