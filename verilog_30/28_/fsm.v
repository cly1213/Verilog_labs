module fsm (
    input clk,
    input rstn,
    input in,
    output out0,
    output out1
);

reg out0, out1;
reg[1:0] current_state, next_state;

parameter 
    Idel = 2'b00,
    Start = 2'b01,
    Stop = 2'b10,
    Clear = 2'b11;
    
endmodule