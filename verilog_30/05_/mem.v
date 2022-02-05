reg [n-1:0] rega; // 1 個 register

reg mema [n-1:0]; // n 個 1 bit registers

rega = 0; //O
mema = 0; //X
mema[8] = 1; //O
mema[1023:0] = 0; //O
