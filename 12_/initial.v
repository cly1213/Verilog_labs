...
parameter size = 16;
reg[3:0] addr;
reg reg1;
reg[7:0] memory[15:0];

initial begin
    reg1 = 0;
    for (addr = 0; addr < size ; addr++) begin
        memory[addr] = 0;
    end
end

...