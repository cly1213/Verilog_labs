 always @(posedge clk) begin

     b <= a;

     c <= b; //c的值會比b落後一個clk週期
     
 end