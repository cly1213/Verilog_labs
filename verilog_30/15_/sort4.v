module sort4 (ra, rb, rc, rd, a, b, c, d);
    output[3:0] ra,rb,rc,rd;
    input[3:0] a, b, c,d;
    reg[3:0] ra,rb,rc,rd;
    reg[3:0] va, vb, vc, vd;

    always @(a or b or c or d) begin
        {va, vb, vc, vd} = {a, b, c, d};
        //-- task
        sort2(va, vc); //-- va <-> vc
        sort2(vb, vd); //-- vb <-> vd
        sort2(va, vb); //-- va <-> vb
        sort2(vc, vd); //-- vc <-> vd
        sort2(vb, vc); //-- vb <-> vc
        {ra, rb, rc, rd} = {va, vb, vc, vd};
 
    end

    task sort2;
        inout[3:0] x,y;
        reg[3:0] tmp;
        if(x < y)begin
            tmp = x;
            x = y;
            y = tmp;
        end
    endtask

    
endmodule