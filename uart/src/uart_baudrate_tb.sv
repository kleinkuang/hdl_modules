// File:    uart_baudrate.sv
// Author:  Lei Kuang
// Date:    25th October 2020
// @ Imperial College London

module uart_baudrate_tb;

logic clk;
logic nrst;
logic rx_tick;
logic tx_tick;

uart_baudrate dut (.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    nrst = '0;
    
    @ (posedge clk)
        nrst <= '1;
end

endmodule
