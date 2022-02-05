//Check "10010"
module check (
    input clk,
    input rstn, 
    input num,
    output hold,
    output[3:0] num_cnt,
    output result
);

// -- reg define
    reg hold;
    reg[3:0] num_cnt;
    reg[3:0] num_cnt_nxt;
    reg result;

// -- parameter define
parameter [2:0] IDLE = 3'b000;
parameter [2:0] S1 = 3'b001;
parameter [2:0] S2 = 3'b011;
parameter [2:0] S3 = 3'b010;
parameter [2:0] S4 = 3'b110;
parameter [2:0] S5 = 3'b111; 

// -- current_state
reg [2:0] current_state, next_state;

// -- state define(transfer)
always @(posedge clk or negedge rstn) begin
    if(!rstn)
        current_state <= IDLE;
    else
        current_state <= next_state;
end

// -- state switch
always @(num or current_state) begin
    case (current_state)
    IDLE: if(num)
            next_state = S1;
        else
            next_state = IDLE;
    
    S1: if(num)
            next_state = S1;
        else
            next_state = S2;

    S2: if(num)
            next_state = S1;
        else
            next_state = S3;
    
    S3: if(num)
            next_state = S4;
        else
            next_state = IDLE;

    S4: if(num)
            next_state = S1;
        else
            next_state = S5;

    S5: if(num)
            next_state = S1;
        else
            next_state = S3;
    
    default:
        next_state = IDLE;

    endcase
    
end

// -- Output
always @(current_state) begin
    if(current_state == IDLE)
        hold = 1'b0;
    else
        hold = 1'b1; 
end

always @(current_state) begin
    if(current_state == S5) begin
        result = 1'b1;
        num_cnt_nxt = num_cnt + 1;
    end

    else begin
        result = 1'b0;
        num_cnt_nxt = num_cnt; 
    end
    
end

always @(posedge clk or negedge rstn) begin
    if(!rstn)
        num_cnt  <= 4'h0;
    else
        num_cnt <= num_cnt_nxt;
end
    
endmodule